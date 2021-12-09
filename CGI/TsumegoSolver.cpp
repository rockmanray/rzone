#include "TsumegoSolver.h"
#include "WeichiLogger.h"

void TsumegoSolver::run()
{
	vector<string> vProblemFilter;
	if (WeichiConfigure::problem_filter != "") {
		ifstream prob_filter(WeichiConfigure::problem_filter);	
		string line;
		while (prob_filter >> line) { vProblemFilter.push_back(line); }
		prob_filter.close();
	}
	
	vector<string> vFilenameList;
	boost::filesystem::recursive_directory_iterator dirIterator;
	dirIterator = boost::filesystem::recursive_directory_iterator(WeichiConfigure::problem_dir);	
	while (dirIterator != boost::filesystem::recursive_directory_iterator()) {
		if (is_directory(dirIterator->status())) { ++dirIterator; continue; }

		string fullFileName = dirIterator->path().string();
		string filename_tag = fullFileName.substr(
			fullFileName.find_last_of("/") + 1, fullFileName.length() - fullFileName.find_last_of("/"));
		if (WeichiConfigure::problem_filter != "" && find(vProblemFilter.begin(), vProblemFilter.end(), filename_tag) == vProblemFilter.end()) {
			CERR() << "Filter out " << filename_tag << endl;
			++dirIterator;
			continue;
		}

		vFilenameList.push_back(fullFileName);
		++dirIterator;
	}
	sort(vFilenameList.begin(), vFilenameList.end());
	
	for (int i = 0; i < vFilenameList.size(); ++i) {
		string fileName = vFilenameList[i];
		m_problemName = fileName.substr(
			fileName.find_last_of("/") + 1,
			fileName.find_last_of(".") - fileName.find_last_of("/") - 1);
		ifstream f(getReusltFileName());
		if (f.good()) { 
			CERR() << "Skip \"" << m_problemName << "\"" << endl; 			
			continue;
		}

		m_fResult.open(getReusltFileName(), ios::out);		
		CERR() << "---- Solving " << fileName <<  endl;
		solve(fileName);		
	}
}

void TsumegoSolver::solve(string filename)
{
	boost::property_tree::ptree property;
	boost::property_tree::read_json(filename.c_str(), property);
	
	string masked_sgfstring = property.get<string>("masked_sgf_str");		
	if (!m_sgfLoader.parseFromString(masked_sgfstring)) {
		CERR() << filename << " sgf format error!" << endl;
		return;
	}

	changeBoardSize(m_sgfLoader.getBoardSize());
	changeKomi(m_sgfLoader.getKomi());	
	clearBoard();
	if (!m_mcts.modifyState(m_sgfLoader)) {
		CERR() << filename << " bad sgf" << endl;
		return;
	}

	setFullBoardClosedArea();
	setProblemFileName(property);
	setWinColor(property);
	setKoRules(property);
	setRegion(property);
	setEndGameConditions(property);

	displaySettings();

	changeTurnColorIfNeeded(property);

	WeichiGlobalInfo::get()->cleanSummaryInfo();
	m_mcts.genmove(false);

	saveResult();
}

void TsumegoSolver::setFullBoardClosedArea()
{
	for (int iThread = 0; iThread < m_mcts.getNumThreads(); ++iThread) { const_cast<WeichiThreadState&>(m_mcts.getState(iThread)).m_rootFilter.startFilter(); }
}

void TsumegoSolver::changeTurnColorIfNeeded(boost::property_tree::ptree& property)
{
	string sToPlay = property.get<string>("turn_color");
	Color toPlay = toColor(tolower(sToPlay[0]));
	const WeichiBoard& board = m_mcts.getState().m_board;
	Color turnColor = board.getToPlay();
	if (turnColor != toPlay) { m_mcts.play(Move(turnColor)); }
}

void TsumegoSolver::changeBoardSize(uint boardsize)
{
	if (WeichiConfigure::BoardSize != boardsize) { StaticBoard::initializeBoardSizeArgument(boardsize);	}	
}

void TsumegoSolver::changeKomi(float komi)
{
	if (WeichiConfigure::dcnn_use_forced_komi) { WeichiConfigure::komi = WeichiConfigure::dcnn_forced_komi_value; }
	else { WeichiConfigure::komi = m_sgfLoader.getKomi(); }
}

void TsumegoSolver::clearBoard()
{	
	WeichiGlobalInfo::getSearchInfo().m_territory.clear();
	WeichiDynamicKomi::setHandicapConfigure(0);	
	WeichiGlobalInfo::getTreeInfo().m_bestSD.reset();
	WeichiGlobalInfo::getTreeInfo().m_nMove = 0;
	WeichiGlobalInfo::getTreeInfo().m_predictOrder = WeichiGlobalInfo::getTreeInfo().OUT_OF_ORDER;
	WeichiGlobalInfo::getTreeInfo().m_vPredictOrder.setAllAs(WeichiGlobalInfo::getTreeInfo().OUT_OF_ORDER, MAX_NUM_GRIDS);
	WeichiGlobalInfo::getTreeInfo().m_vPredictInfoOrder.setAllAs(StatisticData(), MAX_NUM_GRIDS);
	WeichiGlobalInfo::getSearchInfo().m_outOfOpeningBook = false;
	WeichiGlobalInfo::getEndGameCondition().reset();	
	Configure::ExpandThreshold = INIT_EXPAND_THRESHOLD;	
	m_mcts.newGame();
}

void TsumegoSolver::saveResult()
{
	saveResultJson();
	saveSolutionTree();
}

void TsumegoSolver::saveResultJson()
{
	m_fResult << WeichiLogger::getResultJsonFile(m_mcts.getState());
	m_fResult.close();
}

void TsumegoSolver::saveSolutionTree()
{
	string filenameEditor = WeichiConfigure::result_dir + "/uct_tree_" + m_problemName + ".esgf";
	fstream fsEditor;

	WeichiGlobalInfo::getTreeInfo().m_problemSgfUctTreeFilename = filenameEditor;

	WeichiLogger::setOutputConfig(false, false);
	string sSgfResultEditor = WeichiLogger::getTsumeGoTree(m_mcts.getState().m_board);
	fsEditor.open(filenameEditor.c_str(), ios::out);
	fsEditor << sSgfResultEditor;
	fsEditor.close();
}

string TsumegoSolver::getReusltFileName()
{
	return WeichiConfigure::result_dir + "/result_" + m_problemName + ".json";
}

void TsumegoSolver::setProblemFileName(boost::property_tree::ptree& property)
{
	string sgf_filename = property.get<string>("filename");
	WeichiGlobalInfo::getTreeInfo().m_problemSgfFilename = sgf_filename;
}

void TsumegoSolver::setWinColor(boost::property_tree::ptree& property)
{
	string sWinColor = property.get<string>("winning_color");
	if (sWinColor == "b") { WeichiConfigure::win_color = 1; }
	else if (sWinColor == "w") { WeichiConfigure::win_color = 2; }
	WeichiGlobalInfo::getTreeInfo().m_winColor = Color(WeichiConfigure::win_color);
}

void TsumegoSolver::setKoRules(boost::property_tree::ptree& property)
{
	string sBlackKoRule = property.get<string>("black_ko_rule");
	string sWhiteKoRule = property.get<string>("white_ko_rule");

	if (sBlackKoRule == "allow_ko") { WeichiConfigure::black_ignore_ko = false; }
	else if (sBlackKoRule == "disallow_ko") { WeichiConfigure::black_ignore_ko = true; }
	else { CERR() << "[WARNING]: Unknown black ko setting."; }
	if (sWhiteKoRule == "allow_ko") { WeichiConfigure::white_ignore_ko = false; }
	else if (sWhiteKoRule == "disallow_ko") { WeichiConfigure::white_ignore_ko = true; }
	else { CERR() << "[WARNING]: Unknown white ko setting."; }
}

void TsumegoSolver::setEndGameConditions(boost::property_tree::ptree& property)
{
	string sBlackSearchGoal = property.get<string>("black_search_goal");
	string sWhiteSearchGoal = property.get<string>("white_search_goal");
	string sBlackCrucialStone = property.get<string>("black_crucial_stone");
	string sWhiteCrucialStone = property.get<string>("white_crucial_stone");

	WeichiGlobalInfo::getEndGameCondition().setCrucialStones(const_cast<WeichiThreadState&>(m_mcts.getState()), COLOR_BLACK, sBlackCrucialStone);
	WeichiGlobalInfo::getEndGameCondition().setSearchGoal(COLOR_BLACK, sBlackSearchGoal);
	WeichiGlobalInfo::getEndGameCondition().setCrucialStones(const_cast<WeichiThreadState&>(m_mcts.getState()), COLOR_WHITE, sWhiteCrucialStone);
	WeichiGlobalInfo::getEndGameCondition().setSearchGoal(COLOR_WHITE, sWhiteSearchGoal);
	for (int iThread = 0; iThread < m_mcts.getNumThreads(); ++iThread) {
		WeichiGlobalInfo::getEndGameCondition().setBoardCrucialStone(const_cast<WeichiThreadState&>(m_mcts.getState(iThread)));
	}	
}

void TsumegoSolver::setRegion(boost::property_tree::ptree& property)
{
	string sRegion;
	if (property.count("region") != 0) { sRegion = property.get<string>("region"); }
	WeichiGlobalInfo::getEndGameCondition().setRegion(sRegion);
}

void TsumegoSolver::displaySettings()
{
	m_mcts.getState().m_board.showColorBoard();
	CERR() << "[Board Size]: " << m_sgfLoader.getBoardSize() << endl;
	CERR() << "[Komi]: " << WeichiConfigure::komi << endl;
	CERR() << "[Win Color]: " << toChar(WeichiGlobalInfo::getTreeInfo().m_winColor) << endl;
	CERR() << "[Black Ignore Ko]: " << WeichiConfigure::black_ignore_ko << endl;
	CERR() << "[White Ignore Ko]: " << WeichiConfigure::white_ignore_ko << endl;
	CERR() << WeichiGlobalInfo::getEndGameCondition().toString() << endl;
}
