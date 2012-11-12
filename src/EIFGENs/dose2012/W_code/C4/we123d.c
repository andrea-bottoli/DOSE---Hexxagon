/*
 * Class WEL_SS_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_123 [] = {0,1221,122,0xFFFF};
static EIF_TYPE_INDEX gen_type1_123 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_123 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_123 [] = {0,0,0xFFFF};


static struct desc_info desc_123[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_123},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 122, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_123},
	{14, (BODY_INDEX)-1, 0, gen_type2_123},
	{15, (BODY_INDEX)-1, 122, NULL},
	{16, (BODY_INDEX)-1, 122, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_123},
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
	{28, (BODY_INDEX)-1, 122, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 122, NULL},
	{3359, (BODY_INDEX)-1, 739, NULL},
	{3360, (BODY_INDEX)-1, 739, NULL},
	{3361, (BODY_INDEX)-1, 739, NULL},
	{3362, (BODY_INDEX)-1, 739, NULL},
	{3363, (BODY_INDEX)-1, 739, NULL},
	{3364, (BODY_INDEX)-1, 739, NULL},
	{3365, (BODY_INDEX)-1, 739, NULL},
	{3366, (BODY_INDEX)-1, 739, NULL},
	{3367, (BODY_INDEX)-1, 739, NULL},
	{3368, (BODY_INDEX)-1, 739, NULL},
	{3369, (BODY_INDEX)-1, 739, NULL},
	{3370, (BODY_INDEX)-1, 739, NULL},
	{3352, (BODY_INDEX)-1, 739, NULL},
	{3353, (BODY_INDEX)-1, 739, NULL},
	{3354, (BODY_INDEX)-1, 739, NULL},
	{3355, (BODY_INDEX)-1, 739, NULL},
	{3356, (BODY_INDEX)-1, 739, NULL},
	{3357, (BODY_INDEX)-1, 739, NULL},
	{3358, (BODY_INDEX)-1, 739, NULL},
};

extern void Init123(void);
void Init123(void)
{
	IDSC(desc_123, 0, 122);
	IDSC(desc_123 + 1, 4, 122);
	IDSC(desc_123 + 32, 1220, 122);
}


#ifdef __cplusplus
}
#endif
