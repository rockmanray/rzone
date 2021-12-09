#include "TTentry.h"

TTentry::TTentry() {
	m_bSkip = false;		
	m_koPosition = -1;
	m_nodeID = -1;
	m_turnColor = COLOR_NONE;
	m_pNode = UctNodePtr::NULL_PTR;
	m_status = UCT_STATUS_UNKNOWN;
	m_bmBlackPiece.Reset();
	m_bmWhitePiece.Reset();
	m_bmEmptyPiece.Reset();
	m_bmRZone.Reset();	
}

bool TTentry::equal(const TTentry& entry) const {
	return (m_turnColor == entry.m_turnColor &&
		m_bmBlackPiece == entry.m_bmBlackPiece &&
		m_bmWhitePiece == entry.m_bmWhitePiece &&
		m_bmEmptyPiece == entry.m_bmEmptyPiece &&
		m_koPosition == entry.m_koPosition);
}

bool TTentry::isSubsetOf(const TTentry& entry) const {
	return (m_turnColor == entry.m_turnColor &&
		m_bmBlackPiece.isSubsetOf(entry.m_bmBlackPiece) &&
		m_bmWhitePiece.isSubsetOf(entry.m_bmWhitePiece) &&
		m_bmEmptyPiece.isSubsetOf(entry.m_bmEmptyPiece) &&
		m_koPosition == entry.m_koPosition);
}

string TTentry::toString() const {
	ostringstream oss;
	oss << "Skip: " << m_bSkip << endl;	
	oss << "KoPosition: " << m_koPosition << endl;
	oss << "nodeID: " << m_nodeID << endl;
	oss << "toPlay: " << toChar(m_turnColor) << endl;
	oss << "Status: " << getWeichiUctNodeStatus(m_status) << endl;
	for (StaticBoard::iterator it = StaticBoard::getGoguiIterator(); it; ++it) {
		if (m_bmBlackPiece.BitIsOn(*it)) { oss << "B"; }
		else if (m_bmWhitePiece.BitIsOn(*it)) { oss << "W"; }
		else if (m_bmEmptyPiece.BitIsOn(*it)) { oss << " "; }
		else { oss << "."; }

		if (*it%MAX_BOARD_SIZE == WeichiConfigure::BoardSize - 1) { oss << endl; }
	}
	return oss.str();
}

string TTentry::toSgfString() const {
	ostringstream oss;	
	oss << toChar(m_turnColor) << "\t";
	oss << getWeichiUctNodeStatus(m_status) << "\t";
	WeichiBitBoard bm;
	bm = m_bmBlackPiece;
	int pos = 0;
	while ((pos = bm.bitScanForward()) != -1) { oss << WeichiMove(COLOR_BLACK, pos).toSgfString(); }
	oss << "\t";
	bm = m_bmWhitePiece;
	while ((pos = bm.bitScanForward()) != -1) { oss << WeichiMove(COLOR_WHITE, pos).toSgfString(); }
	oss << "\t";
	bm = m_bmEmptyPiece;
	while ((pos = bm.bitScanForward()) != -1) { oss << WeichiMove(COLOR_NONE, pos).toSgfString(); }	
	oss << "\t";
	oss << m_koPosition << endl;
	
	return oss.str();
}


void TTentry::clear()
{
	m_bSkip = false;		
	m_koPosition = -1;
	m_nodeID = -1;
	m_solDiffDepth = -1;
	m_turnColor = COLOR_NONE;
	m_pNode = UctNodePtr::NULL_PTR;
	m_status = UCT_STATUS_UNKNOWN;
	m_bmBlackPiece.Reset();
	m_bmWhitePiece.Reset();
	m_bmEmptyPiece.Reset();
	m_bmRZone.Reset();	

	return;
}