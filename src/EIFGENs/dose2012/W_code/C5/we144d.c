/*
 * Class WEL_PM_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_144 [] = {0,1221,143,0xFFFF};
static EIF_TYPE_INDEX gen_type1_144 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_144 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_144 [] = {0,0,0xFFFF};


static struct desc_info desc_144[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_144},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 143, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_144},
	{14, (BODY_INDEX)-1, 0, gen_type2_144},
	{15, (BODY_INDEX)-1, 143, NULL},
	{16, (BODY_INDEX)-1, 143, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_144},
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
	{28, (BODY_INDEX)-1, 143, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 143, NULL},
	{3651, (BODY_INDEX)-1, 739, NULL},
	{3652, (BODY_INDEX)-1, 739, NULL},
	{3653, (BODY_INDEX)-1, 739, NULL},
	{3647, (BODY_INDEX)-1, 739, NULL},
	{3648, (BODY_INDEX)-1, 739, NULL},
	{3649, (BODY_INDEX)-1, 739, NULL},
	{3650, (BODY_INDEX)-1, 739, NULL},
};

extern void Init144(void);
void Init144(void)
{
	IDSC(desc_144, 0, 143);
	IDSC(desc_144 + 1, 4, 143);
	IDSC(desc_144 + 32, 1101, 143);
}


#ifdef __cplusplus
}
#endif
