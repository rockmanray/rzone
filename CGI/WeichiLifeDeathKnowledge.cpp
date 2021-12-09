#include "WeichiLifeDeathKnowledge.h"

void WeichiLifeDeathKnowledge::computeKoRZoneByPattern( const WeichiGrid& invadeGrid, Color ownColor, WeichiBitBoard& bmRZone ) 
{
	assert (invadeGrid.getColor() == COLOR_NONE) ;
	// Get the ko-RZone by pattern.
	Color oppColor = AgainstColor(ownColor) ;
	WeichiMove invadeMove(oppColor, invadeGrid.getPosition()) ;
	if( m_board.getStoneAfterPlay(invadeMove) == 1 && m_board.getLibertyAfterPlay(invadeMove) == 1 ) {
		WeichiBitBoard bmLastLib = m_board.getLibertyBitBoardAfterPlay(invadeMove) ;
		int oneLibPos = bmLastLib.bitScanForward() ;
		const WeichiGrid& oneLibGrid = m_board.getGrid(oneLibPos) ;
		int patternCheckDir = 0 ;		
		if( (patternCheckDir=oneLibGrid.getPattern().getKoRZoneCheck(ownColor, oneLibGrid.getColor())) != 0 ) {			
			int realDir = m_board.realDirectionDIR4of(patternCheckDir) ;				
			int rzonePos = oneLibGrid.getStaticGrid().getNeighbor(realDir) ;	
			bmRZone.SetBitOn(invadeGrid.getPosition()) ;
			const WeichiBitBoard bmOneLib = m_board.getLibertyBitBoardAfterPlay(invadeMove) ;
			bmRZone |= bmOneLib ;
			bmRZone.SetBitOn(rzonePos) ;
		}
	}

	return ;
}

void WeichiLifeDeathKnowledge::compute1libBlockEscapeRZone( const WeichiBlock* block, WeichiBitBoard& bmRZone) 
{
	assert( block->getLiberty()==1 ) ;

	Color blockColor = block->getColor() ;
	Color liveColor = AgainstColor(blockColor) ;
	int lastLib = block->getLastLiberty(m_board.getBitBoard()) ;
	WeichiMove escapeMove(block->getColor(), lastLib) ;
	bmRZone |= m_board.getLibertyBitBoardAfterPlay(escapeMove) ;
	bmRZone |= m_board.getStoneBitBoardAfterPlay(escapeMove) ;

	WeichiBitBoard bmFindStone = block->getStoneMap() ;
	bmFindStone |= block->getLibertyBitBoard(m_board.getBitBoard()) ;
	bmRZone |= m_board.getEscapedBlockNbrBlocks(bmFindStone, block->getColor()) ; 	

	// Check ko base R-zone.
	WeichiGrid& lastLibGrid = m_board.getGrid(lastLib) ;
	if ( block->getNumStone() == 1 &&
		lastLibGrid.getPattern().getMakeKoBaseDir(blockColor, lastLibGrid.getColor())) {
		int realDir = m_board.realDirectionDIR4of(lastLibGrid.getPattern().getMakeKoBaseDir(blockColor, lastLibGrid.getColor()));
		int koBaseLocation = lastLibGrid.getStaticGrid().getNeighbor(realDir);
		WeichiMove koBaseMove(blockColor, koBaseLocation);				
		if ( m_board.getLibertyAfterPlay(koBaseMove) == 2 ) {
			WeichiBitBoard bm2lib = m_board.getLibertyBitBoardAfterPlay(koBaseMove);
			bm2lib.SetBitOff(lastLib);
			int blockingPos = bm2lib.bitScanForward();
			WeichiMove blockingMove(liveColor, blockingPos);
			if (m_board.getGrid(blockingMove).getColor()==COLOR_NONE && m_board.getLibertyAfterPlay(blockingMove) == 3) {
				bmRZone |= m_board.getLibertyBitBoardAfterPlay(blockingMove) ;
			}
		}
	}

	return ;
}

void WeichiLifeDeathKnowledge::compute2libBlockEscapeRZone(const WeichiBlock* block, WeichiBitBoard& bmRZone) 
{
	assert(block->getLiberty() == 2);

	Color blockColor = block->getColor() ;
	Color liveColor = AgainstColor(blockColor) ;

	// �ݭn�ˬdis2libBlockCanEscape������
	Vector<uint, 2> vLibs;
	block->getLibertyPositions(m_board.getBitBoard(), vLibs);
	for (uint iLib = 0; iLib < vLibs.size(); ++iLib) {
		uint libPos = vLibs[iLib];
		const WeichiGrid& libGrid = m_board.getGrid(libPos);
		WeichiMove atariMove(liveColor, libPos);
		if (m_board.getLibertyAfterPlay(atariMove) == 1) {
			int lastLibAfterPlay = m_board.getLastLibertyPositionAfterPlay(atariMove);
			WeichiMove couterAttackMove(blockColor, lastLibAfterPlay);
			if (!m_board.isIllegalMove(couterAttackMove, m_ht) && m_board.getLibertyAfterPlay(couterAttackMove) == 1 ) { bmRZone |= m_board.getLibertyBitBoardAfterPlay(couterAttackMove) ; }			
			WeichiGrid& lastLibGrid = m_board.getGrid(lastLibAfterPlay) ;
			if (lastLibGrid.getColor() == COLOR_NONE) { computeKoRZoneByPattern(lastLibGrid, liveColor, bmRZone); }
		}

		bmRZone |= m_board.getStoneBitBoardAfterPlay(atariMove); 
		// no need to check lib anymore, just involve it.

		//else if (m_board.getLibertyAfterPlay(atariMove) == 2) {
		//	WeichiBitBoard bm2libAfterPlay = m_board.getLibertyBitBoardAfterPlay(atariMove);
		//	Vector<uint, 2> v2LibsAfterAtari;
		//	bm2libAfterPlay.bitScanAll(v2LibsAfterAtari);
		//	for (uint i2lib = 0; i2lib < v2LibsAfterAtari.size(); ++i2lib) {
		//		WeichiMove couterAttackMove(blockColor, v2LibsAfterAtari[i2lib]) ;
		//		// �ˬd�o���I�Q�O�@��R-zone				
		//		WeichiGrid& invadeGrid = m_board.getGrid(couterAttackMove);
		//		if (invadeGrid.getColor()==COLOR_NONE) { 
		//			computeKoRZoneByPattern(invadeGrid, liveColor, bmRZone); 				 
		//			bmRZone |= m_board.getLibertyBitBoardAfterPlay(couterAttackMove);
		//		}
		//	}
		//}
	}

	WeichiBitBoard bm2Libs = block->getLibertyBitBoard(m_board.getBitBoard()) ;		
	bmRZone |= bm2Libs ;
	// �]�t�k�]���I�n�Ҽ{����
	// �]�n�p��k�]�����I
	Vector<uint, 2> v2libs ;
	block->getLibertyPositions(m_board.getBitBoard(), v2libs) ;	
	for (int iLib=0 ; iLib < v2libs.size() ; ++iLib) {
		WeichiMove escapeMove(blockColor, v2libs[iLib]) ;
		WeichiBitBoard bmNewLib ;
		m_board.getLibertyBitBoardAfterPlay(escapeMove, bmNewLib) ;
		bmRZone |= m_board.getStoneBitBoardAfterPlay(escapeMove);
		bmRZone |= bmNewLib ;
	}

	bmRZone |= m_board.getEscapedBlockNbrBlocks(bm2Libs, block->getColor()) ; 
	// ������Ĳ���I�n�Ҽ{��T��F
	WeichiBitBoard bmStones = block->getStoneMap() ;	
	WeichiBitBoard bmFindBlock = (bmStones.dilate() & StaticBoard::getMaskBorder()) & m_board.getStoneBitBoard(AgainstColor(block->getColor())) ;
	int blockPos = 0 ;
	while( (blockPos=bmFindBlock.bitScanForward()) != -1  ) {
		const WeichiGrid& grid = m_board.getGrid(blockPos) ;
		const WeichiBlock* nbrBlock = grid.getBlock() ;
		assert(nbrBlock!=NULL) ;
		if( nbrBlock->getLiberty() <= 3 ) {			
			bmRZone |=  nbrBlock->getLibertyBitBoard(m_board.getBitBoard()) ;
		}		
		bmFindBlock -= nbrBlock->getStoneMap() ;		
	}

	return ;
}

bool WeichiLifeDeathKnowledge::isBlockCanEscape(const WeichiBlock* block) 
{	
	if (block->getLiberty() == 1) { return is1libBlockCanEscape(block); }
	else if (block->getLiberty() == 2) { return is2libBlockCanEscape(block); }
	
	return true;
}

bool WeichiLifeDeathKnowledge::is1libBlockCanEscape(const WeichiBlock* block)
{
	assert(block->getLiberty() == 1) ;

	Color blockColor = block->getColor() ;
	Color liveColor = AgainstColor(blockColor) ;
	uint lastLib = block->getLastLiberty(m_board.getBitBoard());
	WeichiMove escapeMove(blockColor, lastLib);
	WeichiMove captureMove(AgainstColor(blockColor), lastLib);

	if (m_board.getLibertyAfterPlay(escapeMove) >= 2) { return true; }
	else if (m_board.getLibertyAfterPlay(escapeMove) == 1) {
		// 1-lib after escape, check ko base.
		const WeichiGrid& lastLibGrid = m_board.getGrid(lastLib);
		if (block->getNumStone() == 1) {
			// if eat ko for us, then it escaped.
			if (m_board.isKoEatPlay(captureMove)) { return true; }
			else if (lastLibGrid.getPattern().getMakeKoBaseDir(blockColor, lastLibGrid.getColor())) {
				// Check ko base move
				int realDir = m_board.realDirectionDIR4of(lastLibGrid.getPattern().getMakeKoBaseDir(blockColor, lastLibGrid.getColor()));			
				int koBaseLocation = lastLibGrid.getStaticGrid().getNeighbor(realDir);
				WeichiMove koBaseMove(blockColor, koBaseLocation);		
				if (m_board.getLibertyAfterPlay(koBaseMove) > 2) { return true; }			
				else if (m_board.getLibertyAfterPlay(koBaseMove) == 2) { // If play the koBaseMove 2-lib, then check if we can block it.
					WeichiBitBoard bm2lib = m_board.getLibertyBitBoardAfterPlay(koBaseMove) ;
					bm2lib.SetBitOff(lastLib);
					int blockingPos = bm2lib.bitScanForward();
					WeichiMove blockingMove(liveColor, blockingPos);
					// If 2-lib, it means it would be 1-lib in simulation.					
					if (m_board.getGrid(blockingPos).isEmpty() && m_board.getLibertyAfterPlay(blockingMove) == 2) { return true; }
				}
			}
		}
	}	

	// Consider counter-attack moves
	WeichiBitBoard bmNbr = block->getNbrMap() - block->getStoneMap();	
	int nbrPos = 0 ;
	while ((nbrPos=bmNbr.bitScanForward()) != -1) {
		WeichiGrid& nbrGrid = m_board.getGrid(nbrPos);
		if (nbrGrid.getColor() != liveColor) { continue; }
		
		// live-color block
		WeichiBlock* nbrBlock = nbrGrid.getBlock() ;
		bmNbr -= nbrBlock->getStoneMap() ;

		if (nbrBlock->getLiberty() == 1) { return true; }
	}

	return false;
}

bool WeichiLifeDeathKnowledge::is2libBlockCanEscape(const WeichiBlock* twoLibBlock)
{
	assert(twoLibBlock->getLiberty() == 2);

	Color blockColor = twoLibBlock->getColor();
	Color liveColor = AgainstColor(blockColor);

	// Rules:
	// 1. �o���l�U�o����I���n�k�����C
	//	* getLibertyAfterPlay <= 1 .
	//  * getLibertyAfterPlay still == 2, but there's a immediate move of its 2-lib to make it suicide-forbidden.
	//  * �p�G�U����I���Y�l�A�h�����P�_����k��
	// 2. �����S������A�]�N�O�S���ϰ�C
	// 3. �ݸ�P����Τ@��@�������p�C
	//  * �ˬd�ڤ�U�o���A�O�_�̦h�Φ����l�Τ@��l(libA and libB)�A�Y�̦h�Φ��T��l�h�S�����D
	//  * �ˬd�H�U����:
	//	* 1. �P���۾F�����l
	//	* 2. �ڤ�D�ʤU�o���Φ������l�P�@��l
	//		* �Y�Φ����l�A�h�i�@�B�ˬdlibA�MlibB�O�_���Q�O�@�A�Y�S���Q�O�@�A�h��ܧڤ�M�o���¤l�@�����ѡC 
	//		* �Y���@��U�F�Φ��@��l�A	�h�o�@��ݭn�Q�O�@��C	
	Vector<uint, 2> vLibs;
	twoLibBlock->getLibertyPositions(m_board.getBitBoard(), vLibs);
	WeichiBitBoard bmStoneChecked;
	for (uint iLiberty = 0; iLiberty < vLibs.size(); ++iLiberty) {		
		uint libertyPosition = vLibs[iLiberty] ;				
		const WeichiGrid& libertyGrid = m_board.getGrid(libertyPosition) ;		
		// �T�{���I���n�P�P��block�@��A�]�N�O������N���w���C
		if (libertyGrid.getPattern().get2LibInnerLib(blockColor, COLOR_NONE)) { return true; }

		WeichiMove escapeMove(blockColor, libertyPosition) ;
		WeichiMove atariMove(liveColor, libertyPosition) ;
		if (m_board.isCaptureMove(escapeMove)) { return true; }
		if (m_board.getLibertyAfterPlay(escapeMove) >= 2 && !m_board.is2libMoveImmediateMoveForbidden(escapeMove)) { return true; }
		else if (m_board.getLibertyAfterPlay(atariMove) == 1) {
			///////////
			bmStoneChecked |= m_board.getStoneBitBoardAfterPlay(atariMove);
			///////////
			int lastLibertyAfterPlay = m_board.getLastLibertyPositionAfterPlay(atariMove);
			WeichiMove couterAttackMove(blockColor, lastLibertyAfterPlay);			
			// 1. �p�G�������o�B���l���D�k�B�A�N��L�{���Q�Y���A�ҥH�L�k�����C
			// 2. �p�G�����B�w��(�j����)�Υi�H���T�A�h�����i�H�k���C
			if (m_board.isIllegalMove(couterAttackMove, m_ht)) { continue; }			
			if (m_board.getLibertyAfterPlay(couterAttackMove) >= 2 || m_kb.isMakeKo(m_board, couterAttackMove)) { return true; }
		}
		else if (m_board.getLibertyAfterPlay(atariMove) == 2) {
			///////////
			bmStoneChecked |= m_board.getStoneBitBoardAfterPlay(atariMove);
			///////////
			WeichiBitBoard bm2LibertyAfterPlay = m_board.getLibertyBitBoardAfterPlay(atariMove);
			Vector<uint, 2> v2LibertyAfterAtari;
			bm2LibertyAfterPlay.bitScanAll(v2LibertyAfterAtari);
			for (uint i2lib = 0 ; i2lib < v2LibertyAfterAtari.size() ; ++i2lib) {
				WeichiMove couterAttackMove(blockColor, v2LibertyAfterAtari[i2lib]);
				if (m_board.isIllegalMove(couterAttackMove, m_ht)) { continue; }
				WeichiBitBoard bmLibs = m_board.getLibertyBitBoardAfterPlay(couterAttackMove);
				bmLibs.SetBitOff(atariMove.getPosition());
				if (bmLibs.bitCount() >= 2 || m_kb.isMakeKo(m_board, couterAttackMove)) { return true; }
			}
		} 
		else { 
			///////////
			bmStoneChecked |= m_board.getStoneBitBoardAfterPlay(atariMove); 
			///////////
		}
	}

	// �ˬd�W�z�ˬd�����I�쪺�l�A�O�_�u���ݭn�H�U���e?
	// Check the remaining 2lib blocks, ��P���𪺴���
	WeichiBitBoard bmNbrBlock = twoLibBlock->getNbrMap() - bmStoneChecked ;	
	int nbrPos = 0 ;
	while( (nbrPos=bmNbrBlock.bitScanForward()) != -1 ) {
		WeichiGrid& nbrGrid = m_board.getGrid(nbrPos);
		if( nbrGrid.getColor() != liveColor ) { continue; }
		
		WeichiBlock* nbrBlock = nbrGrid.getBlock() ;
		bmNbrBlock -= nbrBlock->getStoneMap() ;

		if (nbrBlock->getLiberty() == 1) { return true; }
		else if(nbrBlock->getLiberty() == 2) {
			// Check the counter-attack moves
			WeichiBitBoard bm2Lib = nbrBlock->getLibertyBitBoard(m_board.getBitBoard()) ;
			Vector<uint, 2> v2Libs ;
			bm2Lib.bitScanAll(v2Libs);
			for (uint i2lib = 0 ; i2lib < v2Libs.size() ; ++i2lib) {
				WeichiMove couterAttackMove(blockColor, v2Libs[i2lib]) ;
				if (m_board.isIllegalMove(couterAttackMove, m_ht)) { continue; }
				if (m_board.getLibertyAfterPlay(couterAttackMove) >= 2 || m_kb.isMakeKo(m_board, couterAttackMove))
					return true ;
			}
		}		
	}

	return false ;
}

bool WeichiLifeDeathKnowledge::isBlockDead(const WeichiBlock* block)
{
	if (block->getLiberty() == 1) { return is1LibertyBlockDead(block); }
	else if (block->getLiberty() == 2) { return is2LibertyBlockDead(block); }
	
	return false;
}

bool WeichiLifeDeathKnowledge::is1LibertyBlockDead(const WeichiBlock* block) 
{
	assert(block->getLiberty() == 1) ;

	Color color = block->getColor();
	Color oppColor = AgainstColor(color);
	// 1. Check counter-attack: can eat neighbor blocks or not
	WeichiBitBoard bmNbrOneLib;
	m_board.findNeighborOneLibBlocksBitBoard(block,bmNbrOneLib);	
	if (!bmNbrOneLib.empty()) { return false; }

	// 2. Check escape moves
	const WeichiGrid& lastLibertyGrid = m_board.getGrid(block->getLastLiberty(m_board.getBitBoard()));	
	WeichiMove escapeMove(color, lastLibertyGrid.getPosition());	
	
	if (m_board.getLibertyAfterPlay(escapeMove) == 0) { return true; }
	else if (m_board.getLibertyAfterPlay(escapeMove) == 1) {
		if (block->getNumStone() >= 2) { return true; }		
		else if (block->getNumStone() == 1 && lastLibertyGrid.getPattern().getMakeKoBaseDir(color, COLOR_NONE)) {															
			// size(stone)=1, it might has ko base.
			WeichiMove koBaseMove(color, getKoBaseLocation(color, lastLibertyGrid));		
			if (m_board.getLibertyAfterPlay(koBaseMove) == 2) { 
				// If play the koBaseMove 2-lib, then check if we can block it.
				WeichiBitBoard bmRemainLiberty = m_board.getLibertyBitBoardAfterPlay(koBaseMove) ;
				bmRemainLiberty.SetBitOff(lastLibertyGrid.getPosition());
				WeichiMove blockingMove(oppColor, bmRemainLiberty.bitScanForward());
				// If blocking move is safe, then the block is dead.
				// Note: getLibertyAfterPlay(blockingMove) == 2 is not safe.
				if (m_board.getLibertyAfterPlay(blockingMove) >= 3) { return true; }
			}
		}
	}	

	return false;
}

bool WeichiLifeDeathKnowledge::is2LibertyBlockDead(const WeichiBlock * block)
{
	assert(block->getLiberty() == 2);

	Color color = block->getColor();
	Color oppColor = AgainstColor(color);

	// 1. Check counter attack: can eat neighbor blocks or not
	WeichiBitBoard bmNbrOneLib;
	m_board.findNeighborOneLibBlocksBitBoard(block,bmNbrOneLib);	
	if (!bmNbrOneLib.empty()) { return false; }

	// 2. Check escaped moves
	Vector<uint, 2> vLibertyLocations;
	block->getLibertyPositions(m_board.getBitBoard(), vLibertyLocations);	
	for (uint iLiberty = 0 ; iLiberty < vLibertyLocations.size() ; ++iLiberty) {		
		uint libertyLocation = vLibertyLocations[iLiberty] ;				
		const WeichiGrid& libertyGrid = m_board.getGrid(libertyLocation) ;		
		// if has inner lib, then we thik it is not dead
		if (libertyGrid.getPattern().get2LibInnerLib(color, COLOR_NONE)) { return false; }

		WeichiMove escapeMove(color, libertyLocation) ;
		WeichiMove atariMove(oppColor, libertyLocation) ;		
		if (m_board.getLibertyAfterPlay(escapeMove) >= 2 && !m_board.is2libMoveImmediateMoveForbidden(escapeMove)) { return false; }
		else if (m_board.getLibertyAfterPlay(atariMove) == 1) {
			int lastLibertyAfterPlay = m_board.getLastLibertyPositionAfterPlay(atariMove);
			WeichiMove couterAttackMove(color, lastLibertyAfterPlay);			
			// 1. �p�G�������o�B���l���D�k�B�A�N��L�{���Q�Y���A�ҥH�L�k�����C
			// 2. �p�G�����B�w��(�j����)�Υi�H���T�A�h�����i�H�k��(not dead)�C
			if (m_board.isIllegalMove(couterAttackMove, m_ht)) { continue; }			
			if (m_board.getLibertyAfterPlay(couterAttackMove) >= 2 || m_kb.isMakeKo(m_board, couterAttackMove)) { return false; }
		}
		else if (m_board.getLibertyAfterPlay(atariMove) == 2) {
			// Check counter-attack moves for neighbor blocks
			WeichiBitBoard bm2LibertyAfterAtari = m_board.getLibertyBitBoardAfterPlay(atariMove);
			Vector<uint, 2> v2LibertyAfterAtari;
			bm2LibertyAfterAtari.bitScanAll(v2LibertyAfterAtari);
			for (uint iLibertyAfterPlay = 0 ; iLibertyAfterPlay < v2LibertyAfterAtari.size() ; ++iLibertyAfterPlay) {
				WeichiMove couterAttackMove(color, v2LibertyAfterAtari[iLibertyAfterPlay]);
				if (m_board.isIllegalMove(couterAttackMove, m_ht)) { continue; }
				WeichiBitBoard bmLibs = m_board.getLibertyBitBoardAfterPlay(couterAttackMove);
				bmLibs.SetBitOff(atariMove.getPosition());
				if (bmLibs.bitCount() >= 2 || m_kb.isMakeKo(m_board, couterAttackMove)) { return false; }
			}
		} 
	}

	return true;
}

bool WeichiLifeDeathKnowledge::isDoubleAtariSafe( const WeichiMove& atariMove ) 
{
	if( m_board.getLibertyAfterPlay(atariMove)==0 ) { return true ; }
	if( m_board.getLibertyAfterPlay(atariMove)==1 && !m_board.isKoEatPlay(atariMove) ) { return true ; }

	Color invadeColor = atariMove.getColor();
	Color liverColor = AgainstColor(invadeColor);

	const WeichiGrid& grid = m_board.getGrid(atariMove) ;	
	WeichiBitBoard bmOtherLibs ;
	WeichiBlock* lib1NbrBlock = NULL ;	
	
	for ( const int *iNbr = grid.getStaticGrid().getAdjacentNeighbors() ; *iNbr != -1; iNbr++) {
		const WeichiBlock* nbrBlk = m_board.getGrid(*iNbr).getBlock();
		if (nbrBlk == NULL) { continue; }
		if (nbrBlk->getColor() == invadeColor) { continue; }
		if (nbrBlk->getLiberty() == 2 ) { 
			bmOtherLibs |= nbrBlk->getLibertyBitBoard(m_board.getBitBoard()) ;
			bmOtherLibs.SetBitOff(atariMove.getPosition()) ;
			WeichiBitBoard bmNbrOppStone = nbrBlk->getNbrMap() & m_board.getStoneBitBoard(invadeColor) ;
			int pos = 0;
			while ((pos = bmNbrOppStone.bitScanForward()) != -1 ) {
				WeichiGrid& grid = m_board.getGrid(pos);
				if (grid.getBlock()->getLiberty() >= 2 ) {
					bmNbrOppStone -= grid.getBlock()->getStoneMap() ;
					continue ;
				}
				// liberty = 1
				if ( lib1NbrBlock == NULL) { 
					lib1NbrBlock = grid.getBlock();
					break ;
				}
				else { 
					if (lib1NbrBlock==grid.getBlock() ) { return true; }
				}
			}
		}
	}	
	
	// Different escape move.
	if( bmOtherLibs.bitCount() >= 2 ) { return false ; }

	return true ;
}

bool WeichiLifeDeathKnowledge::isKoMove( const WeichiMove& move ) 
{
	if( m_board.getLibertyAfterPlay(move) != 1 ) { return false ; }

	if( m_board.isKoEatPlay(move) ) { return true ; }
	if( m_kb.isMakeKo(m_board, move) ) { return true ; }

	return false ;
}

bool WeichiLifeDeathKnowledge::isConcretPointInRegion( WeichiGrid& grid, WeichiClosedArea* region ) 
{
	Color ownColor = region->getColor() ;
	uint numSafeCorner = 0 ; 
	for( const int *iDig = grid.getStaticGrid().getDiagonalNeighbors() ; *iDig!=-1 ; iDig++ ) {
		const WeichiGrid& digGrid = m_board.getGrid(*iDig) ;
		if( digGrid.getColor() == ownColor ) { ++numSafeCorner ; }
		else if( region->getStoneMap().BitIsOn(*iDig) ) { ++numSafeCorner ; }
	}

	if( grid.getStaticGrid().getLineNo() >= 2 && numSafeCorner >= 3 ) return true ;
	if( grid.getStaticGrid().isCorner() && numSafeCorner == 1 ) return true ;
	if( !grid.getStaticGrid().isCorner() && grid.getStaticGrid().getLineNo()==1 && numSafeCorner == 2 ) return true ;

	return false ;
}

int WeichiLifeDeathKnowledge::getKoBaseLocation(Color koColor, const WeichiGrid& lastLibertyGrid)
{
	assert(koColor != COLOR_NONE);
	assert(lastLibertyGrid.getColor() == COLOR_NONE);

	int realDir = m_board.realDirectionDIR4of(lastLibertyGrid.getPattern().getMakeKoBaseDir(koColor, lastLibertyGrid.getColor()));			
	int koBaseLocation = lastLibertyGrid.getStaticGrid().getNeighbor(realDir);

	return koBaseLocation;
}
