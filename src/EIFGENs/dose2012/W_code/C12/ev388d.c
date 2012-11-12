/*
 * Class EV_ID_IMP
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_388 [] = {0,1221,387,0xFFFF};
static EIF_TYPE_INDEX gen_type1_388 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_388 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_388 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_388 [] = {0,1298,739,0xFFFF};


static struct desc_info desc_388[] = {
	{(BODY_INDEX) 6945, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_388},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 387, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_388},
	{14, (BODY_INDEX)-1, 0, gen_type2_388},
	{15, (BODY_INDEX)-1, 387, NULL},
	{16, (BODY_INDEX)-1, 387, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_388},
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
	{28, (BODY_INDEX)-1, 387, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 387, NULL},
	{6942, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6943, 0, 739, NULL},
	{6944, (BODY_INDEX)-1, 1298, gen_type4_388},
};

extern void Init388(void);
void Init388(void)
{
	IDSC(desc_388, 0, 387);
	IDSC(desc_388 + 1, 4, 387);
	IDSC(desc_388 + 32, 786, 387);
}


#ifdef __cplusplus
}
#endif
