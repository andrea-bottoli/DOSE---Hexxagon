/*
 * Class WEL_DATA_TYPE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_468 [] = {0,1221,467,0xFFFF};
static EIF_TYPE_INDEX gen_type1_468 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_468 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_468 [] = {0,0,0xFFFF};


static struct desc_info desc_468[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_468},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 467, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_468},
	{14, (BODY_INDEX)-1, 0, gen_type2_468},
	{15, (BODY_INDEX)-1, 467, NULL},
	{16, (BODY_INDEX)-1, 467, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_468},
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
	{28, (BODY_INDEX)-1, 467, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 467, NULL},
	{8025, (BODY_INDEX)-1, 778, NULL},
	{8026, (BODY_INDEX)-1, 778, NULL},
	{8027, (BODY_INDEX)-1, 778, NULL},
};

extern void Init468(void);
void Init468(void)
{
	IDSC(desc_468, 0, 467);
	IDSC(desc_468 + 1, 4, 467);
	IDSC(desc_468 + 32, 398, 467);
}


#ifdef __cplusplus
}
#endif
