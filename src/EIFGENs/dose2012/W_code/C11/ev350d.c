/*
 * Class EV_BMP_FORMAT
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_350 [] = {0,1221,349,0xFFFF};
static EIF_TYPE_INDEX gen_type1_350 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_350 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_350 [] = {0,0,0xFFFF};


static struct desc_info desc_350[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_350},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 349, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_350},
	{14, (BODY_INDEX)-1, 0, gen_type2_350},
	{15, (BODY_INDEX)-1, 349, NULL},
	{16, (BODY_INDEX)-1, 349, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_350},
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
	{28, (BODY_INDEX)-1, 349, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 349, NULL},
	{6524, 0, 739, NULL},
	{6525, 4, 739, NULL},
	{6526, 8, 739, NULL},
	{6532, (BODY_INDEX)-1, 786, NULL},
	{6527, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6528, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6529, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6530, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6531, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6533, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
};

extern void Init350(void);
void Init350(void)
{
	IDSC(desc_350, 0, 349);
	IDSC(desc_350 + 1, 4, 349);
	IDSC(desc_350 + 32, 251, 349);
}


#ifdef __cplusplus
}
#endif
