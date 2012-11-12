/*
 * Class WEL_STANDARD_COLORS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_256 [] = {0,1221,255,0xFFFF};
static EIF_TYPE_INDEX gen_type1_256 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_256 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_256 [] = {0,0,0xFFFF};


static struct desc_info desc_256[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_256},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 255, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_256},
	{14, (BODY_INDEX)-1, 0, gen_type2_256},
	{15, (BODY_INDEX)-1, 255, NULL},
	{16, (BODY_INDEX)-1, 255, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_256},
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
	{28, (BODY_INDEX)-1, 255, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 255, NULL},
	{5246, (BODY_INDEX)-1, 1020, NULL},
	{5247, (BODY_INDEX)-1, 1020, NULL},
	{5248, (BODY_INDEX)-1, 1020, NULL},
	{5249, (BODY_INDEX)-1, 1020, NULL},
	{5250, (BODY_INDEX)-1, 1020, NULL},
	{5251, (BODY_INDEX)-1, 1020, NULL},
	{5252, (BODY_INDEX)-1, 1020, NULL},
	{5253, (BODY_INDEX)-1, 1020, NULL},
	{5254, (BODY_INDEX)-1, 1020, NULL},
	{5255, (BODY_INDEX)-1, 1020, NULL},
	{5256, (BODY_INDEX)-1, 1020, NULL},
	{5239, (BODY_INDEX)-1, 1020, NULL},
	{5240, (BODY_INDEX)-1, 1020, NULL},
	{5241, (BODY_INDEX)-1, 1020, NULL},
	{5242, (BODY_INDEX)-1, 1020, NULL},
	{5243, (BODY_INDEX)-1, 1020, NULL},
	{5244, (BODY_INDEX)-1, 1020, NULL},
	{5245, (BODY_INDEX)-1, 1020, NULL},
};

extern void Init256(void);
void Init256(void)
{
	IDSC(desc_256, 0, 255);
	IDSC(desc_256 + 1, 4, 255);
	IDSC(desc_256 + 32, 1171, 255);
}


#ifdef __cplusplus
}
#endif
