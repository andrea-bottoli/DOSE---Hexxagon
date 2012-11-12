/*
 * Class WEL_PROCESS_TOOLHELP_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_100 [] = {0,1221,99,0xFFFF};
static EIF_TYPE_INDEX gen_type1_100 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_100 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_100 [] = {0,0,0xFFFF};


static struct desc_info desc_100[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_100},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 99, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_100},
	{14, (BODY_INDEX)-1, 0, gen_type2_100},
	{15, (BODY_INDEX)-1, 99, NULL},
	{16, (BODY_INDEX)-1, 99, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_100},
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
	{28, (BODY_INDEX)-1, 99, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 99, NULL},
	{3034, (BODY_INDEX)-1, 739, NULL},
	{3035, (BODY_INDEX)-1, 739, NULL},
	{3036, (BODY_INDEX)-1, 739, NULL},
	{3037, (BODY_INDEX)-1, 739, NULL},
	{3038, (BODY_INDEX)-1, 739, NULL},
	{3028, (BODY_INDEX)-1, 739, NULL},
	{3029, (BODY_INDEX)-1, 739, NULL},
	{3030, (BODY_INDEX)-1, 739, NULL},
	{3031, (BODY_INDEX)-1, 739, NULL},
	{3032, (BODY_INDEX)-1, 739, NULL},
	{3033, (BODY_INDEX)-1, 739, NULL},
};

extern void Init100(void);
void Init100(void)
{
	IDSC(desc_100, 0, 99);
	IDSC(desc_100 + 1, 4, 99);
	IDSC(desc_100 + 32, 1287, 99);
}


#ifdef __cplusplus
}
#endif
