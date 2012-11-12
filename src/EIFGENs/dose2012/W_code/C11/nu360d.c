/*
 * Class NUMERIC_INFORMATION
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_360 [] = {0,1221,359,0xFFFF};
static EIF_TYPE_INDEX gen_type1_360 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_360 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_360 [] = {0,0,0xFFFF};


static struct desc_info desc_360[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_360},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 359, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_360},
	{14, (BODY_INDEX)-1, 0, gen_type2_360},
	{15, (BODY_INDEX)-1, 359, NULL},
	{16, (BODY_INDEX)-1, 359, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_360},
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
	{28, (BODY_INDEX)-1, 359, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 359, NULL},
	{6603, 8, 736, NULL},
	{6604, 0, 748, NULL},
	{6605, (BODY_INDEX)-1, 739, NULL},
	{6606, (BODY_INDEX)-1, 739, NULL},
	{6607, (BODY_INDEX)-1, 739, NULL},
	{6608, (BODY_INDEX)-1, 739, NULL},
	{6609, (BODY_INDEX)-1, 739, NULL},
	{6610, (BODY_INDEX)-1, 739, NULL},
	{6611, (BODY_INDEX)-1, 739, NULL},
	{6612, (BODY_INDEX)-1, 739, NULL},
	{6613, (BODY_INDEX)-1, 739, NULL},
	{6614, (BODY_INDEX)-1, 739, NULL},
	{6615, (BODY_INDEX)-1, 739, NULL},
	{6593, (BODY_INDEX)-1, 739, NULL},
	{6594, (BODY_INDEX)-1, 739, NULL},
	{6595, (BODY_INDEX)-1, 739, NULL},
	{6596, (BODY_INDEX)-1, 739, NULL},
	{6597, (BODY_INDEX)-1, 769, NULL},
	{6598, (BODY_INDEX)-1, 769, NULL},
	{6599, (BODY_INDEX)-1, 769, NULL},
	{6600, (BODY_INDEX)-1, 769, NULL},
	{6601, (BODY_INDEX)-1, 769, NULL},
	{6602, (BODY_INDEX)-1, 769, NULL},
};

extern void Init360(void);
void Init360(void)
{
	IDSC(desc_360, 0, 359);
	IDSC(desc_360 + 1, 4, 359);
	IDSC(desc_360 + 32, 184, 359);
}


#ifdef __cplusplus
}
#endif
