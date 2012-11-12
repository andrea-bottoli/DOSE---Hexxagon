/*
 * Class MISMATCH_CORRECTOR
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_515 [] = {0,1221,514,0xFFFF};
static EIF_TYPE_INDEX gen_type1_515 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_515 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_515 [] = {0,0,0xFFFF};


static struct desc_info desc_515[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_515},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 514, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_515},
	{14, (BODY_INDEX)-1, 0, gen_type2_515},
	{15, (BODY_INDEX)-1, 514, NULL},
	{16, (BODY_INDEX)-1, 514, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_515},
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
	{28, (BODY_INDEX)-1, 514, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 514, NULL},
	{10809, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10810, (BODY_INDEX)-1, 519, NULL},
};

extern void Init515(void);
void Init515(void)
{
	IDSC(desc_515, 0, 514);
	IDSC(desc_515 + 1, 4, 514);
	IDSC(desc_515 + 32, 54, 514);
}


#ifdef __cplusplus
}
#endif
