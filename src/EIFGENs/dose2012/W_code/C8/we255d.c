/*
 * Class WEL_EN_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_255 [] = {0,1221,254,0xFFFF};
static EIF_TYPE_INDEX gen_type1_255 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_255 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_255 [] = {0,0,0xFFFF};


static struct desc_info desc_255[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_255},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 254, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_255},
	{14, (BODY_INDEX)-1, 0, gen_type2_255},
	{15, (BODY_INDEX)-1, 254, NULL},
	{16, (BODY_INDEX)-1, 254, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_255},
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
	{28, (BODY_INDEX)-1, 254, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 254, NULL},
	{5229, (BODY_INDEX)-1, 739, NULL},
	{5230, (BODY_INDEX)-1, 739, NULL},
	{5231, (BODY_INDEX)-1, 739, NULL},
	{5232, (BODY_INDEX)-1, 739, NULL},
	{5233, (BODY_INDEX)-1, 739, NULL},
	{5234, (BODY_INDEX)-1, 739, NULL},
	{5235, (BODY_INDEX)-1, 739, NULL},
	{5236, (BODY_INDEX)-1, 739, NULL},
	{5237, (BODY_INDEX)-1, 739, NULL},
	{5238, (BODY_INDEX)-1, 739, NULL},
};

extern void Init255(void);
void Init255(void)
{
	IDSC(desc_255, 0, 254);
	IDSC(desc_255 + 1, 4, 254);
	IDSC(desc_255 + 32, 1173, 254);
}


#ifdef __cplusplus
}
#endif
