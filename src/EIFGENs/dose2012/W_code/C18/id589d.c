/*
 * Class IDENTIFIED
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_589 [] = {0,1221,588,0xFFFF};
static EIF_TYPE_INDEX gen_type1_589 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_589 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_589 [] = {0,0,0xFFFF};


static struct desc_info desc_589[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_589},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{13732, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 588, NULL},
	{13733, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_589},
	{14, (BODY_INDEX)-1, 0, gen_type2_589},
	{15, (BODY_INDEX)-1, 588, NULL},
	{16, (BODY_INDEX)-1, 588, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_589},
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
	{28, (BODY_INDEX)-1, 588, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 588, NULL},
	{13734, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12914, (BODY_INDEX)-1, 769, NULL},
	{10567, (BODY_INDEX)-1, 0, NULL},
	{10568, (BODY_INDEX)-1, 739, NULL},
	{10569, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13728, (BODY_INDEX)-1, 739, NULL},
	{13729, (BODY_INDEX)-1, 588, NULL},
	{13730, (BODY_INDEX)-1, 769, NULL},
	{13731, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13735, 0, 739, NULL},
};

extern void Init589(void);
void Init589(void)
{
	IDSC(desc_589, 0, 588);
	IDSC(desc_589 + 1, 4, 588);
	IDSC(desc_589 + 32, 350, 588);
	IDSC(desc_589 + 34, 605, 588);
	IDSC(desc_589 + 37, 320, 588);
}


#ifdef __cplusplus
}
#endif
