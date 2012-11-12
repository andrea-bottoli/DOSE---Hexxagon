/*
 * Class WEL_HDI_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_5 [] = {0,1221,4,0xFFFF};
static EIF_TYPE_INDEX gen_type1_5 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_5 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_5 [] = {0,0,0xFFFF};


static struct desc_info desc_5[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_5},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 4, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_5},
	{14, (BODY_INDEX)-1, 0, gen_type2_5},
	{15, (BODY_INDEX)-1, 4, NULL},
	{16, (BODY_INDEX)-1, 4, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_5},
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
	{28, (BODY_INDEX)-1, 4, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 4, NULL},
	{78, (BODY_INDEX)-1, 739, NULL},
	{79, (BODY_INDEX)-1, 739, NULL},
	{80, (BODY_INDEX)-1, 739, NULL},
	{81, (BODY_INDEX)-1, 739, NULL},
	{82, (BODY_INDEX)-1, 739, NULL},
	{83, (BODY_INDEX)-1, 739, NULL},
	{84, (BODY_INDEX)-1, 739, NULL},
};

extern void Init5(void);
void Init5(void)
{
	IDSC(desc_5, 0, 4);
	IDSC(desc_5 + 1, 4, 4);
	IDSC(desc_5 + 32, 1255, 4);
}


#ifdef __cplusplus
}
#endif
