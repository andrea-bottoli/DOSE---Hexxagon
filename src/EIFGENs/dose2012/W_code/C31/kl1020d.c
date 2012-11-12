/*
 * Class KL_CLONABLE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_1020 [] = {0,1221,1019,0xFFFF};
static EIF_TYPE_INDEX gen_type1_1020 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_1020 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_1020 [] = {0,0,0xFFFF};


static struct desc_info desc_1020[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_1020},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 1019, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_1020},
	{14, (BODY_INDEX)-1, 0, gen_type2_1020},
	{15, (BODY_INDEX)-1, 1019, NULL},
	{16, (BODY_INDEX)-1, 1019, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_1020},
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
	{28, (BODY_INDEX)-1, 1019, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 1019, NULL},
	{15651, (BODY_INDEX)-1, 62, NULL},
	{21673, (BODY_INDEX)-1, 1019, NULL},
};

extern void Init1020(void);
void Init1020(void)
{
	IDSC(desc_1020, 0, 1019);
	IDSC(desc_1020 + 1, 4, 1019);
	IDSC(desc_1020 + 32, 419, 1019);
	IDSC(desc_1020 + 33, 417, 1019);
}


#ifdef __cplusplus
}
#endif
