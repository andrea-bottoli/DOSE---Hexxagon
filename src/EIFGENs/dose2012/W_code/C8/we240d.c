/*
 * Class WEL_STARTUP_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_240 [] = {0,1221,239,0xFFFF};
static EIF_TYPE_INDEX gen_type1_240 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_240 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_240 [] = {0,0,0xFFFF};


static struct desc_info desc_240[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_240},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 239, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_240},
	{14, (BODY_INDEX)-1, 0, gen_type2_240},
	{15, (BODY_INDEX)-1, 239, NULL},
	{16, (BODY_INDEX)-1, 239, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_240},
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
	{28, (BODY_INDEX)-1, 239, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 239, NULL},
	{5143, (BODY_INDEX)-1, 739, NULL},
	{5144, (BODY_INDEX)-1, 739, NULL},
	{5145, (BODY_INDEX)-1, 739, NULL},
	{5146, (BODY_INDEX)-1, 739, NULL},
	{5147, (BODY_INDEX)-1, 739, NULL},
	{5148, (BODY_INDEX)-1, 739, NULL},
	{5149, (BODY_INDEX)-1, 739, NULL},
	{5150, (BODY_INDEX)-1, 739, NULL},
	{5151, (BODY_INDEX)-1, 769, NULL},
	{5152, (BODY_INDEX)-1, 769, NULL},
};

extern void Init240(void);
void Init240(void)
{
	IDSC(desc_240, 0, 239);
	IDSC(desc_240 + 1, 4, 239);
	IDSC(desc_240 + 32, 1290, 239);
}


#ifdef __cplusplus
}
#endif
