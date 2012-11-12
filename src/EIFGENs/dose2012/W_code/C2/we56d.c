/*
 * Class WEL_COMMAND
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_56 [] = {0,1221,55,0xFFFF};
static EIF_TYPE_INDEX gen_type1_56 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_56 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_56 [] = {0,0,0xFFFF};


static struct desc_info desc_56[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_56},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 55, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_56},
	{14, (BODY_INDEX)-1, 0, gen_type2_56},
	{15, (BODY_INDEX)-1, 55, NULL},
	{16, (BODY_INDEX)-1, 55, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_56},
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
	{28, (BODY_INDEX)-1, 55, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 55, NULL},
	{2101, 0, 1050, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{2102, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
};

extern void Init56(void);
void Init56(void)
{
	IDSC(desc_56, 0, 55);
	IDSC(desc_56 + 1, 4, 55);
	IDSC(desc_56 + 32, 706, 55);
}


#ifdef __cplusplus
}
#endif
