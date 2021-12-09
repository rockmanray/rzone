#ifndef H_WEICHILIFEDEATH_GTP_ENGINE
#define H_WEICHILIFEDEATH_GTP_ENGINE

#include "WeichiBaseGtpEngine.h"
#include "concepts.h"
#include "BasicType.h"
#include "GtpRGBColor.h"
#include "WeichiRZoneHandler.h"
#include "Timer.h"

class WeichiLifeDeathGtpEngine : public WeichiBaseGtpEngine
{
	
public:
	WeichiLifeDeathGtpEngine( std::ostream& os, MCTS& instance )
		: WeichiBaseGtpEngine(os,instance)		
	{
		m_LiveStones.reset();
		m_killStones.reset();
	}
	
	void Register();
	string getGoguiAnalyzeCommandsString();

private:
	void cmdBenson();
	void cmdBensonNeutral();
	void cmdOptimisticBenson() ;		
	void cmdSetWinColor();
	void cmdSetCrucialGroup();
	void cmdDragons() ;
	void cmdDragonRZone() ;
	void cmdDragonRZoneAllString() ;
	void cmdSnakes() ;
	void cmdSnakeRZone() ;
	void cmdSnakeRZoneAllString() ;
	void cmdSnakeOpenedAreas() ;
	void cmdImmediateWin();	
	void cmdImmediateLoss();
	void cmdEyes() ;
	void cmdEyeRZone() ;
	void cmdEyeType() ;	
	void cmdDragonOpenedAreas() ;
	void cmdConnectorsThreat() ;
	void cmdConnectorsConn() ;	
	void cmdUctTree() ;	
	void cmdCaptureRZone();
	void cmdOutputResultJsonFile();
	void cmdLifeDeathOptions();	
	void cmdCriticalPoints();
	void cmdBlockConnector();
	void cmdSkeletonHash();
	void cmdEndGameRZone();
	void cmdReleaseKo();
	void cmdInfluenBlock();	
	void cmdConsistentReplayRZone();
	void cmdConsistentReplayRZoneDilateOnce();
	void cmdRZoneDilate();
	void cmdSet7x7killallCrucialMap();
	void cmdResetLifeAndKillBitmap();
	void cmdSetBlackLiveBitmap();
	void cmdSetBlackKillBitmap();
	void cmdSetWhiteLiveBitmap();
	void cmdSetWhiteKillBitmap();	
	void cmdShowLiveAndKillBitmap();
	void cmdSetBlackKoAvailable();
	void cmdSetWhiteKoAvailable();
	void cmdShowKoAvailable();
	void cmdDCNNLiveAndKillNet();
	void cmdShowZone();
	void cmdResetZone();	
	void cmdAddZone();
	void cmdZBorder();
	void cmdToSgfString();
	void cmdComputeEyeSpace();
	void cmdDeadRZone();
	void setLiveAndKillBitmap(Color color, WeichiSearchGoal goal);
	void cmd7x7BlackLifeZone();

private:
	Dual<WeichiBitBoard> m_LiveStones;
	Dual<WeichiBitBoard> m_killStones;
};


#endif