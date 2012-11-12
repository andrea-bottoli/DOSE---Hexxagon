/*
 * Class CELL [G#1]
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_1256 [] = {0,1221,1255,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type1_1256 [] = {0,1255,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type2_1256 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_1256 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_1256 [] = {0,1255,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type5_1256 [] = {0,1255,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type6_1256 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type7_1256 [] = {0,1255,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type8_1256 [] = {0,1255,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type9_1256 [] = {0,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type10_1256 [] = {0,0xFFF8,1,0xFFFF};


static struct desc_info desc_1256[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_1256},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 1255, gen_type1_1256},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type2_1256},
	{14, (BODY_INDEX)-1, 0, gen_type3_1256},
	{15, (BODY_INDEX)-1, 1255, gen_type4_1256},
	{16, (BODY_INDEX)-1, 1255, gen_type5_1256},
	{17, (BODY_INDEX)-1, 0, gen_type6_1256},
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
	{28, (BODY_INDEX)-1, 1255, gen_type7_1256},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 1255, gen_type8_1256},
	{6727, 0, (EIF_TYPE_INDEX)-1, gen_type9_1256},
	{6728, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6729, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, gen_type10_1256},
};

extern void Init1256(void);
void Init1256(void)
{
	IDSC(desc_1256, 0, 1255);
	IDSC(desc_1256 + 1, 4, 1255);
	IDSC(desc_1256 + 32, 88, 1255);
}


#ifdef __cplusplus
}
#endif
