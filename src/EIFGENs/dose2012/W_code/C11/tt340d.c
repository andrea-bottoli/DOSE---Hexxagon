/*
 * Class TTT_PLAYER_AI
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_340 [] = {0,1221,339,0xFFFF};
static EIF_TYPE_INDEX gen_type1_340 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_340 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_340 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_340 [] = {0,0xFFF9,2,734,739,739,0xFFFF};


static struct desc_info desc_340[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_340},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 339, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_340},
	{14, (BODY_INDEX)-1, 0, gen_type2_340},
	{15, (BODY_INDEX)-1, 339, NULL},
	{16, (BODY_INDEX)-1, 339, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_340},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 94, NULL},
	{21, (BODY_INDEX)-1, 787, NULL},
	{22, (BODY_INDEX)-1, 787, NULL},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 93, NULL},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 339, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 339, NULL},
	{6295, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6293, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6296, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6297, (BODY_INDEX)-1, 769, NULL},
	{6290, 0, 338, NULL},
	{6291, 8, 64, NULL},
	{6294, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6298, (BODY_INDEX)-1, 734, gen_type4_340},
};

extern void Init340(void);
void Init340(void)
{
	IDSC(desc_340, 0, 339);
	IDSC(desc_340 + 1, 4, 339);
	IDSC(desc_340 + 32, 380, 339);
	IDSC(desc_340 + 38, 379, 339);
}


#ifdef __cplusplus
}
#endif
