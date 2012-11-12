/*
 * Class PROCESS_UTILITY
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_101 [] = {0,1221,100,0xFFFF};
static EIF_TYPE_INDEX gen_type1_101 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_101 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_101 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_101 [] = {0,1287,0xFFF9,2,734,739,739,0xFFFF};


static struct desc_info desc_101[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_101},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 100, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_101},
	{14, (BODY_INDEX)-1, 0, gen_type2_101},
	{15, (BODY_INDEX)-1, 100, NULL},
	{16, (BODY_INDEX)-1, 100, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_101},
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
	{28, (BODY_INDEX)-1, 100, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 100, NULL},
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
	{3039, (BODY_INDEX)-1, 1287, gen_type4_101},
	{3040, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{3041, (BODY_INDEX)-1, 778, NULL},
	{3042, (BODY_INDEX)-1, 778, NULL},
	{3043, (BODY_INDEX)-1, 778, NULL},
	{3044, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{3045, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{3046, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{3047, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{3048, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{3049, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{3050, (BODY_INDEX)-1, 778, NULL},
};

extern void Init101(void);
void Init101(void)
{
	IDSC(desc_101, 0, 100);
	IDSC(desc_101 + 1, 4, 100);
	IDSC(desc_101 + 32, 1287, 100);
	IDSC(desc_101 + 43, 1277, 100);
}


#ifdef __cplusplus
}
#endif
