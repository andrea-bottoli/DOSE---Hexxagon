/*
 * Class RT_DBG_COMMON
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_355 [] = {0,1221,354,0xFFFF};
static EIF_TYPE_INDEX gen_type1_355 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_355 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_355 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_355 [] = {0,1242,1031,0xFFFF};


static struct desc_info desc_355[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_355},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 354, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_355},
	{14, (BODY_INDEX)-1, 0, gen_type2_355},
	{15, (BODY_INDEX)-1, 354, NULL},
	{16, (BODY_INDEX)-1, 354, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_355},
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
	{28, (BODY_INDEX)-1, 354, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 354, NULL},
	{6536, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6537, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6575, (BODY_INDEX)-1, 1242, gen_type4_355},
};

extern void Init355(void);
void Init355(void)
{
	IDSC(desc_355, 0, 354);
	IDSC(desc_355 + 1, 4, 354);
	IDSC(desc_355 + 32, 220, 354);
	IDSC(desc_355 + 34, 217, 354);
}


#ifdef __cplusplus
}
#endif
