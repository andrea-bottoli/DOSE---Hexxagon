/*
 * Class KL_OPERATING_SYSTEM
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_31 [] = {0,1221,30,0xFFFF};
static EIF_TYPE_INDEX gen_type1_31 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_31 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_31 [] = {0,0,0xFFFF};


static struct desc_info desc_31[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_31},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 30, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_31},
	{14, (BODY_INDEX)-1, 0, gen_type2_31},
	{15, (BODY_INDEX)-1, 30, NULL},
	{16, (BODY_INDEX)-1, 30, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_31},
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
	{28, (BODY_INDEX)-1, 30, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 30, NULL},
	{1835, (BODY_INDEX)-1, 769, NULL},
	{1836, (BODY_INDEX)-1, 769, NULL},
	{1831, (BODY_INDEX)-1, 769, NULL},
	{1832, (BODY_INDEX)-1, 787, NULL},
	{1833, (BODY_INDEX)-1, 787, NULL},
	{1834, (BODY_INDEX)-1, 506, NULL},
};

extern void Init31(void);
void Init31(void)
{
	IDSC(desc_31, 0, 30);
	IDSC(desc_31 + 1, 4, 30);
	IDSC(desc_31 + 32, 891, 30);
}


#ifdef __cplusplus
}
#endif
