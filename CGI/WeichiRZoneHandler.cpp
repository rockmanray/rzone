#include "WeichiRZoneHandler.h"

WeichiBitBoard WeichiRZoneHandler::calculateBensonRZone(const WeichiBoard& board, WeichiMove move, bool bIncludeLiberty) 
{
	Color winColor = WeichiGlobalInfo::getTreeInfo().m_winColor ;	
	Color oppColor = AgainstColor(winColor) ;
	
	WeichiBitBoard bmCheckedInvolvedBlock, bmResult ;
	Vector<const WeichiBlock* , MAX_NUM_BLOCKS> vBlocks ;	
	const WeichiGrid& grid = board.getGrid(move);
	if (grid.getColor() == winColor) {
		const WeichiBlock* startBlock = grid.getBlock();	
		if (startBlock==NULL || startBlock->getStatus() != LAD_LIFE) { return bmResult ; }
		vBlocks.push_back(startBlock);
	} else if (grid.getColor() == oppColor || grid.getColor() == COLOR_NONE) {
		const WeichiClosedArea* ca = grid.getClosedArea(winColor);
		if (ca == NULL || ca->getStatus() != LAD_LIFE) { return bmResult ; }
		
		for (int iBlock=0 ; iBlock < ca->getNumBlock() ; ++iBlock ) {
			const WeichiBlock* nbrBlock = board.getBlock(ca->getBlockID(iBlock));			
			bmCheckedInvolvedBlock |= nbrBlock->getStoneMap();
			vBlocks.push_back(nbrBlock);
		}	
	}	
	
	while (!vBlocks.empty()) {		
		const WeichiBlock* block = vBlocks.back() ;		
		bmCheckedInvolvedBlock |= block->getStoneMap() ;
		if( bIncludeLiberty ) { bmResult |= block->getLibertyBitBoard(board.getBitBoard()) ; }
		bmResult |= block->getStoneMap() ; 		
		vBlocks.pop_back() ;
				
		for( int iCA=0 ; iCA < block->getNumClosedArea() ; iCA++ ) {
			const WeichiClosedArea* ca = block->getClosedArea(iCA, board.getCloseArea()) ;
			if( ca->getStatus() != LAD_LIFE || bmCheckedInvolvedBlock.hasIntersection(ca->getStoneMap()) ) { 
				bmCheckedInvolvedBlock |= ca->getStoneMap() ;
				continue ; 
			}
		
			bmResult |= ca->getStoneMap() ;
			bmCheckedInvolvedBlock |= ca->getStoneMap() ;
			for( int iBlock=0 ; iBlock < ca->getNumBlock() ; ++iBlock ) {
				const WeichiBlock* nbrBlock = board.getBlock(ca->getBlockID(iBlock)) ;
				if( bmCheckedInvolvedBlock.hasIntersection(nbrBlock->getStoneMap()) ) { continue ; }

				vBlocks.push_back(nbrBlock) ;
			}				
		}		
	}

	return bmResult ;
}

WeichiBitBoard WeichiRZoneHandler::calculateDeadRZone(const WeichiBoard& board, WeichiMove move)
{
	const WeichiGrid& grid = board.getGrid(move);
	Color deadColor = grid.getColor();
	Color killColor = AgainstColor(deadColor);

	WeichiBitBoard bmCheckedInvolvedBlock, bmResult;
	Vector<const WeichiBlock*, MAX_NUM_BLOCKS> vBlocks;
	const WeichiClosedArea* ca = grid.getClosedArea(killColor);
	for (int iBlock = 0; iBlock < ca->getNumBlock(); ++iBlock) {
		const WeichiBlock* nbrBlock = board.getBlock(ca->getBlockID(iBlock));
		bmCheckedInvolvedBlock |= nbrBlock->getStoneMap();
		vBlocks.push_back(nbrBlock);
	}

	while (!vBlocks.empty()) {
		const WeichiBlock* block = vBlocks.back();
		bmCheckedInvolvedBlock |= block->getStoneMap();		
		bmResult |= block->getStoneMap();
		vBlocks.pop_back();

		for (int iCA = 0; iCA < block->getNumClosedArea(); iCA++) {
			const WeichiClosedArea* ca = block->getClosedArea(iCA, board.getCloseArea());
			if (ca->getStatus() != LAD_LIFE || bmCheckedInvolvedBlock.hasIntersection(ca->getStoneMap())) {
				bmCheckedInvolvedBlock |= ca->getStoneMap();
				continue;
			}

			bmResult |= ca->getStoneMap();
			bmCheckedInvolvedBlock |= ca->getStoneMap();
			for (int iBlock = 0; iBlock < ca->getNumBlock(); ++iBlock) {
				const WeichiBlock* nbrBlock = board.getBlock(ca->getBlockID(iBlock));
				if (bmCheckedInvolvedBlock.hasIntersection(nbrBlock->getStoneMap())) { continue; }

				vBlocks.push_back(nbrBlock);
			}
		}
	}

	return bmResult;
}

WeichiBitBoard WeichiRZoneHandler::calculateConsistentReplayRZone(const WeichiBoard& board, WeichiBitBoard bmBase) 
{
	WeichiBitBoard bmCurrentResult = bmBase;
	WeichiBitBoard bmBeforeResult;
	do {
		bmBeforeResult = bmCurrentResult;
		bmCurrentResult = calculateConsistentReplayRZoneDilateOnce(board, bmCurrentResult);	
	} while (bmBeforeResult != bmCurrentResult);

	return bmCurrentResult;
}

WeichiBitBoard WeichiRZoneHandler::calculateConsistentReplayRZoneDilateOnce(const WeichiBoard& board, WeichiBitBoard bmBase)
{
	WeichiBitBoard bmOutside = StaticBoard::getMaskBorder() - bmBase;
	if (bmBase == StaticBoard::getMaskBorder()) { return bmBase; }

	WeichiBitBoard bmCurrentResult = bmBase;
	WeichiBitBoard bmBorder = calculateZborder(board, bmBase);
	int pos = 0;
	while ((pos = bmBorder.bitScanForward()) != -1) {			
		const WeichiGrid& grid = board.getGrid(pos);
		//CERR() << "[Grid " << WeichiMove(pos).toGtpString() << "]" << endl;
		if (grid.getBlock()) { // check condition 1 (block)
			//CERR() << "is block" << endl;
			const WeichiBlock* block = grid.getBlock();
			WeichiBitBoard bmBlockLib = block->getLibertyBitBoard(board.getBitBoard());
			WeichiBitBoard bmBlockZlib = bmBlockLib & bmCurrentResult;
			int zliberty = bmBlockZlib.bitCount();
			//CERR() << "zliberty: " << zliberty << endl;
			bool bSatisfy = false;
			if (zliberty == 0) { // case 0: zliberty == 0, add one or two z-lib
				WeichiBitBoard bmOutzoneLib = bmBlockLib - bmCurrentResult;
				if (bmOutzoneLib.bitCount() == 1) {
					int randOneLib1 = bmOutzoneLib.bitScanForward();
					bmCurrentResult.SetBitOn(randOneLib1);
					bSatisfy = true;
				}
				else if (bmOutzoneLib.bitCount() >= 2) {
					int randOneLib1 = bmOutzoneLib.bitScanForward();
					int randOneLib2 = bmOutzoneLib.bitScanForward();
					bmCurrentResult.SetBitOn(randOneLib1);
					bmCurrentResult.SetBitOn(randOneLib2);
					bSatisfy = true;
				}
			} else if (zliberty == 1) { // case 1: zliberty == 1 and check another adjacent empty grid 						
				WeichiBitBoard bmOutzoneLib = bmBlockLib - bmCurrentResult;
				if (bmOutzoneLib.bitCount() != 0) {
					int randOneLib = bmOutzoneLib.bitScanForward();
					bmCurrentResult.SetBitOn(randOneLib);
					bSatisfy = true;
				}
			} else if (zliberty >= 2) { // case 2: zliberty == 2, ok, do nothing 
				bSatisfy = true;
			} 
	        
			// case 3: not satisfy for the above
			// Add neighboring blocks into the zone			
			if (!bSatisfy) {
				//CERR() << "case 3" << endl; 
				WeichiBitBoard bmBlockNbr = block->getNbrMap() - bmCurrentResult;
				int nbrPos = 0;
				while ((nbrPos = bmBlockNbr.bitScanForward()) != -1) {
					const WeichiGrid& nbrGrid = board.getGrid(nbrPos);
					if (nbrGrid.isEmpty()) { continue; }
					const WeichiBlock* block = nbrGrid.getBlock();
					bmCurrentResult |= block->getStoneMap();
					bmBlockNbr -= block->getStoneMap();
				}
			}
			bmBorder -= block->getStoneMap();
		}
		else { // check condition 2 (empty grid)
			//CERR() << "is empty grid" << endl;
			// 1. Check if it already holds
			bool bSatisfy = false;
			for (const int *iNbr = grid.getStaticGrid().getAdjacentNeighbors(); *iNbr != -1; ++iNbr) {
				const WeichiGrid& nbrgrid = board.getGrid(*iNbr);
				if (nbrgrid.isEmpty() && bmCurrentResult.BitIsOn(*iNbr)) {
					bSatisfy = true;					
					break;
				}
			}
			if (bSatisfy) { continue; }

			// 2. Check if it can attain another empty grid outside zone
			for (const int *iNbr = grid.getStaticGrid().getAdjacentNeighbors(); *iNbr != -1; ++iNbr) {
				const WeichiGrid& nbrgrid = board.getGrid(*iNbr);
				if (nbrgrid.isEmpty() && !bmCurrentResult.BitIsOn(*iNbr)) {
					bmCurrentResult.SetBitOn(*iNbr);
					bSatisfy = true;					
					break;
				}
			}

			if (bSatisfy) { continue; }

			// 3. Dilate the zone
			for (const int *iNbr = grid.getStaticGrid().getAdjacentNeighbors(); *iNbr != -1; ++iNbr) {
				const WeichiGrid& nbrgrid = board.getGrid(*iNbr);
				if (!nbrgrid.isEmpty() && !bmCurrentResult.BitIsOn(*iNbr)) {
					const WeichiBlock* block = nbrgrid.getBlock();
					bmCurrentResult |= block->getStoneMap();
				}
			}
		}
	} //end checking conditions 	

	return bmCurrentResult;
}

WeichiBitBoard WeichiRZoneHandler::calculateZborder(const WeichiBoard& board, WeichiBitBoard bmBase)
{
	WeichiBitBoard bmOutside = StaticBoard::getMaskBorder() - bmBase;
	WeichiBitBoard bmBorder = bmOutside.dilate() & bmBase;

	return bmBorder;
}

//WeichiBitBoard WeichiRZoneHandler::calculateConsistentReplayRZone(const WeichiBoard& board, WeichiBitBoard bmStart)
//{
//	WeichiBitBoard bmCheckedInvolvedBlock, bmResult;
//	bmCheckedInvolvedBlock = bmStart;
//
//	Vector<const WeichiBlock*, MAX_NUM_BLOCKS> vInvolvedBlocks;
//	int pos = 0;
//
//	// use them as start blocks
//	WeichiBitBoard bmBack = bmStart;
//
//	while ((pos = bmStart.bitScanForward()) != -1) {
//		const WeichiGrid& grid = board.getGrid(pos);
//		if (grid.getBlock() != NULL) {
//			const WeichiBlock* block = grid.getBlock();
//			vInvolvedBlocks.push_back(block);
//			bmStart -= block->getStoneMap();
//		}
//	}
//
//	// wait until bmResult does not change		
//	bmResult |= bmBack;
//	while (!vInvolvedBlocks.empty()) {
//		const WeichiBlock* block = vInvolvedBlocks.back();
//		bmCheckedInvolvedBlock |= block->getStoneMap();
//		bmResult |= block->getStoneMap();
//		vInvolvedBlocks.pop_back();
//
//		if (block->getLiberty() >= 2) {
//			// check if at least two libs in bmResult
//			// if not, add two to them
//			WeichiBitBoard bmLib = block->getLibertyBitBoard(board.getBitBoard());
//			WeichiBitBoard bmRZoneLib = bmLib & bmResult;
//			if (bmRZoneLib.bitCount() == 0) {
//				int pos1 = bmLib.bitScanForward();
//				int pos2 = bmLib.bitScanForward();
//				bmResult.SetBitOn(pos1);
//				bmResult.SetBitOn(pos2);
//			}
//			else if (bmRZoneLib.bitCount() == 1) {
//				// add the liberty that need are not in bmResult
//				WeichiBitBoard bmRemainingLib = bmLib - bmRZoneLib;
//				bmResult.SetBitOn(bmRemainingLib.bitScanForward());
//			}
//		}
//		else if (block->getLiberty() == 1) {
//			WeichiBitBoard bmSuicideZone = block->getStoneMap();
//			bmSuicideZone.SetBitOn(block->getLastLiberty(board.getBitBoard()));
//			WeichiBitBoard bmDilate = (bmSuicideZone.dilate() & StaticBoard::getMaskBorder()) - bmSuicideZone;
//			bmResult |= bmDilate;
//		}
//
//		// add involved
//		WeichiBitBoard bmTemp = bmResult;
//		int pos = 0;
//		while ((pos = bmTemp.bitScanForward()) != -1) {
//			const WeichiGrid& grid = board.getGrid(pos);
//			if (grid.getColor() == COLOR_NONE) {
//				WeichiBitBoard bmBase;
//				bmBase.SetBitOn(pos);
//				WeichiBitBoard bmDilate = bmBase.dilate() & StaticBoard::getMaskBorder();
//				int dilatePos = 0;
//				while ((dilatePos = bmDilate.bitScanForward()) != -1) {
//					const WeichiGrid& dilateGrid = board.getGrid(dilatePos);
//					if (dilateGrid.getBlock() == NULL) { continue; }
//
//					const WeichiBlock* dilateBlock = dilateGrid.getBlock();
//					if (!bmCheckedInvolvedBlock.hasIntersection(dilateBlock->getStoneMap())) {
//						vInvolvedBlocks.push_back(dilateBlock);
//						bmDilate -= dilateBlock->getStoneMap();
//						bmCheckedInvolvedBlock |= dilateBlock->getStoneMap();
//					}
//				}
//			}
//			else {
//				// involved blcok
//				const WeichiBlock* block = grid.getBlock();
//				// not checked
//				if (!bmCheckedInvolvedBlock.hasIntersection(block->getStoneMap())) {
//					vInvolvedBlocks.push_back(block);
//					bmTemp -= block->getStoneMap();
//					bmCheckedInvolvedBlock |= block->getStoneMap();
//				}
//			}
//		}
//	}
//
//	return bmResult;
//}


