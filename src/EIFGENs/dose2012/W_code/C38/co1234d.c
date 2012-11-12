/*
 * Class CONTAINER [G#1]
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_1234 [] = {0,1221,1233,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type1_1234 [] = {0,1233,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type2_1234 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_1234 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_1234 [] = {0,1233,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type5_1234 [] = {0,1233,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type6_1234 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type7_1234 [] = {0,1233,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type8_1234 [] = {0,1233,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type9_1234 [] = {0,1234,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type10_1234 [] = {0,0xFFF8,1,0xFFFF};


static struct desc_info desc_1234[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_1234},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 1233, gen_type1_1234},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type2_1234},
	{14, (BODY_INDEX)-1, 0, gen_type3_1234},
	{15, (BODY_INDEX)-1, 1233, gen_type4_1234},
	{16, (BODY_INDEX)-1, 1233, gen_type5_1234},
	{17, (BODY_INDEX)-1, 0, gen_type6_1234},
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
	{28, (BODY_INDEX)-1, 1233, gen_type7_1234},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 1233, gen_type8_1234},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 769, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 769, NULL},
	{8031, (BODY_INDEX)-1, 769, NULL},
	{8032, 0, 769, NULL},
	{8033, (BODY_INDEX)-1, 769, NULL},
	{8034, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{8035, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 1234, gen_type9_1234},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, gen_type10_1234},
};

extern void Init1234(void);
void Init1234(void)
{
	IDSC(desc_1234, 0, 1233);
	IDSC(desc_1234 + 1, 4, 1233);
	IDSC(desc_1234 + 32, 367, 1233);
}


#ifdef __cplusplus
}
#endif
