/*
 * Class BASIC_ROUTINES
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_162 [] = {0,1221,161,0xFFFF};
static EIF_TYPE_INDEX gen_type1_162 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_162 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_162 [] = {0,0,0xFFFF};


static struct desc_info desc_162[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_162},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 161, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_162},
	{14, (BODY_INDEX)-1, 0, gen_type2_162},
	{15, (BODY_INDEX)-1, 161, NULL},
	{16, (BODY_INDEX)-1, 161, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_162},
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
	{28, (BODY_INDEX)-1, 161, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 161, NULL},
	{3843, (BODY_INDEX)-1, 766, NULL},
	{3844, (BODY_INDEX)-1, 739, NULL},
	{3845, (BODY_INDEX)-1, 739, NULL},
	{3846, (BODY_INDEX)-1, 739, NULL},
	{3847, (BODY_INDEX)-1, 739, NULL},
	{3848, (BODY_INDEX)-1, 739, NULL},
};

extern void Init162(void);
void Init162(void)
{
	IDSC(desc_162, 0, 161);
	IDSC(desc_162 + 1, 4, 161);
	IDSC(desc_162 + 32, 952, 161);
}


#ifdef __cplusplus
}
#endif
