#ifndef WEICHIEDGETYPE_H
#define WEICHIEDGETYPE_H

/************************************************************************/
/* U means up; D means down; R means right; L means left                */
/************************************************************************/

enum WeichiEdgeType {
	EDGE_DIAGONAL_RU,		// �y,�r����ܦy����V
	EDGE_DIAGONAL_RD,
	EDGE_DIAGONAL_LD,
	EDGE_DIAGONAL_LU,
	EDGE_JUMP_U,			// ��,�r����ܸ�����V
	EDGE_JUMP_R,
	EDGE_JUMP_D,
	EDGE_JUMP_L,
	EDGE_KNIGHT_RUU,		// �p��,�r����ܭ�����V(RUU��ܭ����l�b�k�@�W�G�B)
	EDGE_KNIGHT_RRU,
	EDGE_KNIGHT_RRD,
	EDGE_KNIGHT_RDD,
	EDGE_KNIGHT_LDD,
	EDGE_KNIGHT_LLD,
	EDGE_KNIGHT_LLU,
	EDGE_KNIGHT_LUU,
	EDGE_BAMBOO_RU,			// ��,�Ĥ@�Ӧr����ܺ��H�l����V;�ĤG�Ӧr�����������V
	EDGE_BAMBOO_LU,
	EDGE_BAMBOO_UR,
	EDGE_BAMBOO_DR,
	EDGE_BAMBOO_RD,
	EDGE_BAMBOO_LD,
	EDGE_BAMBOO_UL,
	EDGE_BAMBOO_DL,
	EDGE_h_BAMBOO_LRU,		// h��,�Ĥ@�Ӧr����ܪ�/�u��(L����;S���u);�ĤG�Ӧr����ܯʤf��V;�ĤT�Ӧr�����h�b������V
	EDGE_h_BAMBOO_LLU,
	EDGE_h_BAMBOO_SRU,
	EDGE_h_BAMBOO_SLU,
	EDGE_h_BAMBOO_LUR,
	EDGE_h_BAMBOO_LDR,
	EDGE_h_BAMBOO_SUR,
	EDGE_h_BAMBOO_SDR,
	EDGE_h_BAMBOO_LRD,
	EDGE_h_BAMBOO_LLD,
	EDGE_h_BAMBOO_SRD,
	EDGE_h_BAMBOO_SLD,
	EDGE_h_BAMBOO_LUL,
	EDGE_h_BAMBOO_LDL,
	EDGE_h_BAMBOO_SUL,
	EDGE_h_BAMBOO_SDL,
	EDGE_L_HALF_BAMBOO_LRU,	// L�b��,�Ĥ@�Ӧr����ܪ�/�u��(L����;S���u);�ĤG�Ӧr����ܺ��H�l/�ʤf����V;�ĤT�Ӧr�����L�b������V
	EDGE_L_HALF_BAMBOO_LLU,
	EDGE_L_HALF_BAMBOO_SRU,
	EDGE_L_HALF_BAMBOO_SLU,
	EDGE_L_HALF_BAMBOO_LUR,
	EDGE_L_HALF_BAMBOO_LDR,
	EDGE_L_HALF_BAMBOO_SUR,
	EDGE_L_HALF_BAMBOO_SDR,
	EDGE_L_HALF_BAMBOO_LRD,
	EDGE_L_HALF_BAMBOO_LLD,
	EDGE_L_HALF_BAMBOO_SRD,
	EDGE_L_HALF_BAMBOO_SLD,
	EDGE_L_HALF_BAMBOO_LUL,
	EDGE_L_HALF_BAMBOO_LDL,
	EDGE_L_HALF_BAMBOO_SUL,
	EDGE_L_HALF_BAMBOO_SDL,
	EDGE_T_HALF_BAMBOO_LU,	// T�b��,���u��Ĥ@�Ӧr����ܪ�/�u��(L����;S���u);�ĤG�Ӧr�����T�b������V
	EDGE_T_HALF_BAMBOO_SU,
	EDGE_T_HALF_BAMBOO_LR,
	EDGE_T_HALF_BAMBOO_SR,
	EDGE_T_HALF_BAMBOO_LD,
	EDGE_T_HALF_BAMBOO_SD,
	EDGE_T_HALF_BAMBOO_LL,
	EDGE_T_HALF_BAMBOO_SL,
	EDGE_Z_HALF_BAMBOO_RU,	// Z�b��,���u��Ĥ@�Ӧr����ܺ��H�l����V;�ĤG�Ӧr�����Z�b������V
	EDGE_Z_HALF_BAMBOO_LU,
	EDGE_Z_HALF_BAMBOO_UR,
	EDGE_Z_HALF_BAMBOO_DR,
	EDGE_Z_HALF_BAMBOO_RD,
	EDGE_Z_HALF_BAMBOO_LD,
	EDGE_Z_HALF_BAMBOO_UL,
	EDGE_Z_HALF_BAMBOO_DL,
	EDGE_WALL_JUMP_U,		// �����,�r����ܸ�����V
	EDGE_WALL_JUMP_R,
	EDGE_WALL_JUMP_D,
	EDGE_WALL_JUMP_L,
	EDGE_WALL_BAMBOO_RU,	// �����,�Ĥ@�Ӧr����ܺ��H�l����V;�ĤG�Ӧr�����������V
	EDGE_WALL_BAMBOO_LU,
	EDGE_WALL_BAMBOO_UR,
	EDGE_WALL_BAMBOO_DR,
	EDGE_WALL_BAMBOO_RD,
	EDGE_WALL_BAMBOO_LD,
	EDGE_WALL_BAMBOO_UL,
	EDGE_WALL_BAMBOO_DL,

	EDGE_SIZE	// total size, add new element before this one
};

inline string getWeichiEdgeTypeString( WeichiEdgeType type )
{
	switch( type ) {
	case EDGE_DIAGONAL_RU:			return "EDGE_DIAGONAL_RU";
	case EDGE_DIAGONAL_RD:			return "EDGE_DIAGONAL_RD";
	case EDGE_DIAGONAL_LD:			return "EDGE_DIAGONAL_LD";
	case EDGE_DIAGONAL_LU:			return "EDGE_DIAGONAL_LU";
	case EDGE_JUMP_U:				return "EDGE_JUMP_U";
	case EDGE_JUMP_R:				return "EDGE_JUMP_R";
	case EDGE_JUMP_D:				return "EDGE_JUMP_D";
	case EDGE_JUMP_L:				return "EDGE_JUMP_L";
	case EDGE_KNIGHT_RUU:			return "EDGE_KNIGHT_RUU";
	case EDGE_KNIGHT_RRU:			return "EDGE_KNIGHT_RRU";
	case EDGE_KNIGHT_RRD:			return "EDGE_KNIGHT_RRD";
	case EDGE_KNIGHT_RDD:			return "EDGE_KNIGHT_RDD";
	case EDGE_KNIGHT_LDD:			return "EDGE_KNIGHT_LDD";
	case EDGE_KNIGHT_LLD:			return "EDGE_KNIGHT_LLD";
	case EDGE_KNIGHT_LLU:			return "EDGE_KNIGHT_LLU";
	case EDGE_KNIGHT_LUU:			return "EDGE_KNIGHT_LUU";
	case EDGE_BAMBOO_RU:			return "EDGE_BAMBOO_RU";
	case EDGE_BAMBOO_LU:			return "EDGE_BAMBOO_LU";
	case EDGE_BAMBOO_UR:			return "EDGE_BAMBOO_UR";
	case EDGE_BAMBOO_DR:			return "EDGE_BAMBOO_DR";
	case EDGE_BAMBOO_RD:			return "EDGE_BAMBOO_RD";
	case EDGE_BAMBOO_LD:			return "EDGE_BAMBOO_LD";
	case EDGE_BAMBOO_UL:			return "EDGE_BAMBOO_UL";
	case EDGE_BAMBOO_DL:			return "EDGE_BAMBOO_DL";
	case EDGE_h_BAMBOO_LRU:			return "EDGE_h_BAMBOO_LRU";
	case EDGE_h_BAMBOO_LLU:			return "EDGE_h_BAMBOO_LLU";
	case EDGE_h_BAMBOO_SRU:			return "EDGE_h_BAMBOO_SRU";
	case EDGE_h_BAMBOO_SLU:			return "EDGE_h_BAMBOO_SLU";
	case EDGE_h_BAMBOO_LUR:			return "EDGE_h_BAMBOO_LUR";
	case EDGE_h_BAMBOO_LDR:			return "EDGE_h_BAMBOO_LDR";
	case EDGE_h_BAMBOO_SUR:			return "EDGE_h_BAMBOO_SUR";
	case EDGE_h_BAMBOO_SDR:			return "EDGE_h_BAMBOO_SDR";
	case EDGE_h_BAMBOO_LRD:			return "EDGE_h_BAMBOO_LRD";
	case EDGE_h_BAMBOO_LLD:			return "EDGE_h_BAMBOO_LLD";
	case EDGE_h_BAMBOO_SRD:			return "EDGE_h_BAMBOO_SRD";
	case EDGE_h_BAMBOO_SLD:			return "EDGE_h_BAMBOO_SLD";
	case EDGE_h_BAMBOO_LUL:			return "EDGE_h_BAMBOO_LUL";
	case EDGE_h_BAMBOO_LDL:			return "EDGE_h_BAMBOO_LDL";
	case EDGE_h_BAMBOO_SUL:			return "EDGE_h_BAMBOO_SUL";
	case EDGE_h_BAMBOO_SDL:			return "EDGE_h_BAMBOO_SDL";
	case EDGE_L_HALF_BAMBOO_LRU:	return "EDGE_L_HALF_BAMBOO_LRU";
	case EDGE_L_HALF_BAMBOO_LLU:	return "EDGE_L_HALF_BAMBOO_LLU";
	case EDGE_L_HALF_BAMBOO_SRU:	return "EDGE_L_HALF_BAMBOO_SRU";
	case EDGE_L_HALF_BAMBOO_SLU:	return "EDGE_L_HALF_BAMBOO_SLU";
	case EDGE_L_HALF_BAMBOO_LUR:	return "EDGE_L_HALF_BAMBOO_LUR";
	case EDGE_L_HALF_BAMBOO_LDR:	return "EDGE_L_HALF_BAMBOO_LDR";
	case EDGE_L_HALF_BAMBOO_SUR:	return "EDGE_L_HALF_BAMBOO_SUR";
	case EDGE_L_HALF_BAMBOO_SDR:	return "EDGE_L_HALF_BAMBOO_SDR";
	case EDGE_L_HALF_BAMBOO_LRD:	return "EDGE_L_HALF_BAMBOO_LRD";
	case EDGE_L_HALF_BAMBOO_LLD:	return "EDGE_L_HALF_BAMBOO_LLD";
	case EDGE_L_HALF_BAMBOO_SRD:	return "EDGE_L_HALF_BAMBOO_SRD";
	case EDGE_L_HALF_BAMBOO_SLD:	return "EDGE_L_HALF_BAMBOO_SLD";
	case EDGE_L_HALF_BAMBOO_LUL:	return "EDGE_L_HALF_BAMBOO_LUL";
	case EDGE_L_HALF_BAMBOO_LDL:	return "EDGE_L_HALF_BAMBOO_LDL";
	case EDGE_L_HALF_BAMBOO_SUL:	return "EDGE_L_HALF_BAMBOO_SUL";
	case EDGE_L_HALF_BAMBOO_SDL:	return "EDGE_L_HALF_BAMBOO_SDL";
	case EDGE_T_HALF_BAMBOO_LU:		return "EDGE_T_HALF_BAMBOO_LU";
	case EDGE_T_HALF_BAMBOO_SU:		return "EDGE_T_HALF_BAMBOO_SU";
	case EDGE_T_HALF_BAMBOO_LR:		return "EDGE_T_HALF_BAMBOO_LR";
	case EDGE_T_HALF_BAMBOO_SR:		return "EDGE_T_HALF_BAMBOO_SR";
	case EDGE_T_HALF_BAMBOO_LD:		return "EDGE_T_HALF_BAMBOO_LD";
	case EDGE_T_HALF_BAMBOO_SD:		return "EDGE_T_HALF_BAMBOO_SD";
	case EDGE_T_HALF_BAMBOO_LL:		return "EDGE_T_HALF_BAMBOO_LL";
	case EDGE_T_HALF_BAMBOO_SL:		return "EDGE_T_HALF_BAMBOO_SL";
	case EDGE_Z_HALF_BAMBOO_RU:		return "EDGE_Z_HALF_BAMBOO_RU";
	case EDGE_Z_HALF_BAMBOO_LU:		return "EDGE_Z_HALF_BAMBOO_LU";
	case EDGE_Z_HALF_BAMBOO_UR:		return "EDGE_Z_HALF_BAMBOO_UR";
	case EDGE_Z_HALF_BAMBOO_DR:		return "EDGE_Z_HALF_BAMBOO_DR";
	case EDGE_Z_HALF_BAMBOO_RD:		return "EDGE_Z_HALF_BAMBOO_RD";
	case EDGE_Z_HALF_BAMBOO_LD:		return "EDGE_Z_HALF_BAMBOO_LD";
	case EDGE_Z_HALF_BAMBOO_UL:		return "EDGE_Z_HALF_BAMBOO_UL";
	case EDGE_Z_HALF_BAMBOO_DL:		return "EDGE_Z_HALF_BAMBOO_DL";
	case EDGE_WALL_JUMP_U:			return "EDGE_WALL_JUMP_U";
	case EDGE_WALL_JUMP_R:			return "EDGE_WALL_JUMP_R";
	case EDGE_WALL_JUMP_D:			return "EDGE_WALL_JUMP_D";
	case EDGE_WALL_JUMP_L:			return "EDGE_WALL_JUMP_L";
	case EDGE_WALL_BAMBOO_RU:		return "EDGE_WALL_BAMBOO_RU";
	case EDGE_WALL_BAMBOO_LU:		return "EDGE_WALL_BAMBOO_LU";
	case EDGE_WALL_BAMBOO_UR:		return "EDGE_WALL_BAMBOO_UR";
	case EDGE_WALL_BAMBOO_DR:		return "EDGE_WALL_BAMBOO_DR";
	case EDGE_WALL_BAMBOO_RD:		return "EDGE_WALL_BAMBOO_RD";
	case EDGE_WALL_BAMBOO_LD:		return "EDGE_WALL_BAMBOO_LD";
	case EDGE_WALL_BAMBOO_UL:		return "EDGE_WALL_BAMBOO_UL";
	case EDGE_WALL_BAMBOO_DL:		return "EDGE_WALL_BAMBOO_DL";
	default:
		//should not happen
		assert( false );
		return "error edge type!";
	}
}

#endif