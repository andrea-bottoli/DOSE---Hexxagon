/*
 * Class WEL_TA_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_300 [] = {0,1221,299,0xFFFF};
static EIF_TYPE_INDEX gen_type1_300 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_300 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_300 [] = {0,0,0xFFFF};


static struct desc_info desc_300[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_300},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 299, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_300},
	{14, (BODY_INDEX)-1, 0, gen_type2_300},
	{15, (BODY_INDEX)-1, 299, NULL},
	{16, (BODY_INDEX)-1, 299, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_300},
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
	{28, (BODY_INDEX)-1, 299, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 299, NULL},
	{5595, (BODY_INDEX)-1, 739, NULL},
	{5596, (BODY_INDEX)-1, 739, NULL},
	{5597, (BODY_INDEX)-1, 739, NULL},
	{5598, (BODY_INDEX)-1, 739, NULL},
	{5599, (BODY_INDEX)-1, 739, NULL},
	{5600, (BODY_INDEX)-1, 739, NULL},
	{5601, (BODY_INDEX)-1, 739, NULL},
	{5602, (BODY_INDEX)-1, 739, NULL},
	{5603, (BODY_INDEX)-1, 739, NULL},
	{5604, (BODY_INDEX)-1, 739, NULL},
	{5605, (BODY_INDEX)-1, 769, NULL},
	{5606, (BODY_INDEX)-1, 769, NULL},
	{5607, (BODY_INDEX)-1, 769, NULL},
	{5608, (BODY_INDEX)-1, 769, NULL},
};

extern void Init300(void);
void Init300(void)
{
	IDSC(desc_300, 0, 299);
	IDSC(desc_300 + 1, 4, 299);
	IDSC(desc_300 + 32, 876, 299);
}


#ifdef __cplusplus
}
#endif
