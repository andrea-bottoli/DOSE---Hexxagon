/*
 * Class FINITE [NATURAL_8]
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_1381 [] = {0,1221,1380,757,0xFFFF};
static EIF_TYPE_INDEX gen_type1_1381 [] = {0,1380,757,0xFFFF};
static EIF_TYPE_INDEX gen_type2_1381 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_1381 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_1381 [] = {0,1380,757,0xFFFF};
static EIF_TYPE_INDEX gen_type5_1381 [] = {0,1380,757,0xFFFF};
static EIF_TYPE_INDEX gen_type6_1381 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type7_1381 [] = {0,1380,757,0xFFFF};
static EIF_TYPE_INDEX gen_type8_1381 [] = {0,1380,757,0xFFFF};
static EIF_TYPE_INDEX gen_type9_1381 [] = {0,1365,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type10_1381 [] = {0,0xFFF8,1,0xFFFF};


static struct desc_info desc_1381[] = {
	{(BODY_INDEX) 8435, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_1381},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 1380, gen_type1_1381},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type2_1381},
	{14, (BODY_INDEX)-1, 0, gen_type3_1381},
	{15, (BODY_INDEX)-1, 1380, gen_type4_1381},
	{16, (BODY_INDEX)-1, 1380, gen_type5_1381},
	{17, (BODY_INDEX)-1, 0, gen_type6_1381},
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
	{28, (BODY_INDEX)-1, 1380, gen_type7_1381},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 1380, gen_type8_1381},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 769, NULL},
	{8434, (BODY_INDEX)-1, 769, NULL},
	{8046, (BODY_INDEX)-1, 769, NULL},
	{8047, 0, 769, NULL},
	{8048, (BODY_INDEX)-1, 769, NULL},
	{8049, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{8050, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 1365, gen_type9_1381},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, gen_type10_1381},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 739, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 769, NULL},
};

extern void Init1381(void);
void Init1381(void)
{
	IDSC(desc_1381, 0, 1380);
	IDSC(desc_1381 + 1, 4, 1380);
	IDSC(desc_1381 + 32, 367, 1380);
	IDSC(desc_1381 + 41, 365, 1380);
	IDSC(desc_1381 + 42, 571, 1380);
}


#ifdef __cplusplus
}
#endif
