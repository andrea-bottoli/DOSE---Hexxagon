/*
 * Class WEL_TBN_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_111 [] = {0,1221,110,0xFFFF};
static EIF_TYPE_INDEX gen_type1_111 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_111 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_111 [] = {0,0,0xFFFF};


static struct desc_info desc_111[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_111},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 110, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_111},
	{14, (BODY_INDEX)-1, 0, gen_type2_111},
	{15, (BODY_INDEX)-1, 110, NULL},
	{16, (BODY_INDEX)-1, 110, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_111},
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
	{28, (BODY_INDEX)-1, 110, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 110, NULL},
	{3154, (BODY_INDEX)-1, 739, NULL},
	{3155, (BODY_INDEX)-1, 739, NULL},
	{3156, (BODY_INDEX)-1, 739, NULL},
	{3157, (BODY_INDEX)-1, 739, NULL},
	{3147, (BODY_INDEX)-1, 739, NULL},
	{3148, (BODY_INDEX)-1, 739, NULL},
	{3149, (BODY_INDEX)-1, 739, NULL},
	{3150, (BODY_INDEX)-1, 739, NULL},
	{3151, (BODY_INDEX)-1, 739, NULL},
	{3152, (BODY_INDEX)-1, 739, NULL},
	{3153, (BODY_INDEX)-1, 739, NULL},
};

extern void Init111(void);
void Init111(void)
{
	IDSC(desc_111, 0, 110);
	IDSC(desc_111 + 1, 4, 110);
	IDSC(desc_111 + 32, 1245, 110);
}


#ifdef __cplusplus
}
#endif
