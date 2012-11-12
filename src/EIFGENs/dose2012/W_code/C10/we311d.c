/*
 * Class WEL_RESIZING_SUPPORT
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_311 [] = {0,1221,310,0xFFFF};
static EIF_TYPE_INDEX gen_type1_311 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_311 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_311 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_311 [] = {0,1255,1112,0xFFFF};


static struct desc_info desc_311[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_311},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 310, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_311},
	{14, (BODY_INDEX)-1, 0, gen_type2_311},
	{15, (BODY_INDEX)-1, 310, NULL},
	{16, (BODY_INDEX)-1, 310, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_311},
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
	{28, (BODY_INDEX)-1, 310, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 310, NULL},
	{5950, (BODY_INDEX)-1, 1112, NULL},
	{5951, (BODY_INDEX)-1, 739, NULL},
	{5952, (BODY_INDEX)-1, 1255, gen_type4_311},
};

extern void Init311(void);
void Init311(void)
{
	IDSC(desc_311, 0, 310);
	IDSC(desc_311 + 1, 4, 310);
	IDSC(desc_311 + 32, 700, 310);
}


#ifdef __cplusplus
}
#endif
