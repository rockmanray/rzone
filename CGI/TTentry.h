#ifndef H_TT_ENTRY
#define H_TT_ENTRY

#include "BasicType.h"
#include "Color.h"
#include "WeichiUctNode.h"
#include "StaticBoard.h"

class TTentry
{
public:	
	TTentry();
	void clear();
	bool equal(const TTentry& entry) const;
	bool isSubsetOf(const TTentry& entry) const;
	string toString() const;	
	string toSgfString() const;

public:
	typedef NodePtr<WeichiUctNode> UctNodePtr;

public:
	bool m_bSkip;		
	int m_koPosition;
	int m_nodeID;
	int m_solDiffDepth;
	Color m_turnColor;
	UctNodePtr m_pNode;
	WeichiUctNodeStatus m_status;
	WeichiBitBoard m_bmBlackPiece;
	WeichiBitBoard m_bmWhitePiece;
	WeichiBitBoard m_bmEmptyPiece;
	WeichiBitBoard m_bmRZone;	
};

#endif