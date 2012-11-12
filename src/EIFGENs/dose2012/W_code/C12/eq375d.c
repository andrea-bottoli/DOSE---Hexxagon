/*
 * Class EQA_EXTERNALS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_375 [] = {0,1221,374,0xFFFF};
static EIF_TYPE_INDEX gen_type1_375 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_375 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_375 [] = {0,0,0xFFFF};


static struct desc_info desc_375[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_375},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 374, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_375},
	{14, (BODY_INDEX)-1, 0, gen_type2_375},
	{15, (BODY_INDEX)-1, 374, NULL},
	{16, (BODY_INDEX)-1, 374, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_375},
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
	{28, (BODY_INDEX)-1, 374, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 374, NULL},
	{6808, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6809, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
};

extern void Init375(void);
void Init375(void)
{
	IDSC(desc_375, 0, 374);
	IDSC(desc_375 + 1, 4, 374);
	IDSC(desc_375 + 32, 43, 374);
}


#ifdef __cplusplus
}
#endif
