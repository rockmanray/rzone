#ifndef TSUMEGO_SOLVER_H
#define TSUMEGO_SOLVER_H

#include "BasicType.h"
#include "concepts.h"
#include "WeichiGtpUtil.h"

class TsumegoSolver {

public:
	TsumegoSolver(MCTS& instance): m_mcts(instance) {}

public:
	void run();

private:
	void solve(string filename);
	void setFullBoardClosedArea();
	void changeTurnColorIfNeeded(boost::property_tree::ptree& property);
	void changeBoardSize(uint boardsize);
	void changeKomi(float komi);
	void clearBoard();
	void saveResult();
	void saveResultJson();
	void saveSolutionTree();
	string getReusltFileName();

	void setProblemFileName(boost::property_tree::ptree& property);
	void setWinColor(boost::property_tree::ptree& property);
	void setKoRules(boost::property_tree::ptree& property);
	void setEndGameConditions(boost::property_tree::ptree& property);
	void setRegion(boost::property_tree::ptree& property);
	void displaySettings();

private:
	MCTS& m_mcts;
	SgfLoader m_sgfLoader;
	string m_problemName;
	fstream m_fResult;
};

#endif
