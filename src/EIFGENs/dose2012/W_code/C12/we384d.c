/*
 * Class WEL_BS_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_384 [] = {0,1221,383,0xFFFF};
static EIF_TYPE_INDEX gen_type1_384 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_384 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_384 [] = {0,0,0xFFFF};


static struct desc_info desc_384[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_384},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 383, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_384},
	{14, (BODY_INDEX)-1, 0, gen_type2_384},
	{15, (BODY_INDEX)-1, 383, NULL},
	{16, (BODY_INDEX)-1, 383, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_384},
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
	{28, (BODY_INDEX)-1, 383, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 383, NULL},
	{6909, (BODY_INDEX)-1, 739, NULL},
	{6910, (BODY_INDEX)-1, 739, NULL},
	{6911, (BODY_INDEX)-1, 739, NULL},
	{6912, (BODY_INDEX)-1, 739, NULL},
	{6913, (BODY_INDEX)-1, 739, NULL},
	{6914, (BODY_INDEX)-1, 739, NULL},
	{6915, (BODY_INDEX)-1, 739, NULL},
	{6916, (BODY_INDEX)-1, 739, NULL},
	{6917, (BODY_INDEX)-1, 739, NULL},
	{6918, (BODY_INDEX)-1, 739, NULL},
	{6919, (BODY_INDEX)-1, 739, NULL},
	{6920, (BODY_INDEX)-1, 739, NULL},
	{6921, (BODY_INDEX)-1, 739, NULL},
	{6922, (BODY_INDEX)-1, 739, NULL},
	{6923, (BODY_INDEX)-1, 739, NULL},
	{6924, (BODY_INDEX)-1, 739, NULL},
	{6925, (BODY_INDEX)-1, 739, NULL},
	{6926, (BODY_INDEX)-1, 739, NULL},
	{6927, (BODY_INDEX)-1, 739, NULL},
	{6928, (BODY_INDEX)-1, 739, NULL},
	{6929, (BODY_INDEX)-1, 739, NULL},
	{6930, (BODY_INDEX)-1, 739, NULL},
	{6905, (BODY_INDEX)-1, 739, NULL},
	{6906, (BODY_INDEX)-1, 739, NULL},
	{6907, (BODY_INDEX)-1, 739, NULL},
	{6908, (BODY_INDEX)-1, 739, NULL},
};

extern void Init384(void);
void Init384(void)
{
	IDSC(desc_384, 0, 383);
	IDSC(desc_384 + 1, 4, 383);
	IDSC(desc_384 + 32, 914, 383);
}


#ifdef __cplusplus
}
#endif
