/*
 * Class ITP_STORE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_411 [] = {0,1221,410,0xFFFF};
static EIF_TYPE_INDEX gen_type1_411 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_411 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_411 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_411 [] = {0,1232,0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_411 [] = {0,1232,0,0xFFFF};
static EIF_TYPE_INDEX gen_type6_411 [] = {0,1491,769,0xFFFF};


static struct desc_info desc_411[] = {
	{(BODY_INDEX) 7253, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_411},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 410, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_411},
	{14, (BODY_INDEX)-1, 0, gen_type2_411},
	{15, (BODY_INDEX)-1, 410, NULL},
	{16, (BODY_INDEX)-1, 410, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_411},
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
	{28, (BODY_INDEX)-1, 410, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 410, NULL},
	{7239, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{7240, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{7241, (BODY_INDEX)-1, 769, NULL},
	{7242, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{7243, (BODY_INDEX)-1, 769, NULL},
	{7244, (BODY_INDEX)-1, 769, NULL},
	{7245, (BODY_INDEX)-1, 0, NULL},
	{7246, (BODY_INDEX)-1, 0, NULL},
	{7247, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{7248, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{7249, (BODY_INDEX)-1, 1232, gen_type4_411},
	{7250, 0, 1232, gen_type5_411},
	{7251, 8, 1491, gen_type6_411},
	{7252, (BODY_INDEX)-1, 739, NULL},
};

extern void Init411(void);
void Init411(void)
{
	IDSC(desc_411, 0, 410);
	IDSC(desc_411 + 1, 4, 410);
	IDSC(desc_411 + 32, 189, 410);
	IDSC(desc_411 + 35, 48, 410);
}


#ifdef __cplusplus
}
#endif
