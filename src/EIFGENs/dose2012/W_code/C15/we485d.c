/*
 * Class WEL_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_485 [] = {0,1221,484,0xFFFF};
static EIF_TYPE_INDEX gen_type1_485 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_485 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_485 [] = {0,0,0xFFFF};


static struct desc_info desc_485[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_485},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 484, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_485},
	{14, (BODY_INDEX)-1, 0, gen_type2_485},
	{15, (BODY_INDEX)-1, 484, NULL},
	{16, (BODY_INDEX)-1, 484, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_485},
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
	{28, (BODY_INDEX)-1, 484, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 484, NULL},
	{9768, (BODY_INDEX)-1, 58, NULL},
	{9769, (BODY_INDEX)-1, 305, NULL},
	{9770, (BODY_INDEX)-1, 197, NULL},
	{9771, (BODY_INDEX)-1, 552, NULL},
	{9772, (BODY_INDEX)-1, 187, NULL},
	{9773, (BODY_INDEX)-1, 303, NULL},
	{9774, (BODY_INDEX)-1, 59, NULL},
};

extern void Init485(void);
void Init485(void)
{
	IDSC(desc_485, 0, 484);
	IDSC(desc_485 + 1, 4, 484);
	IDSC(desc_485 + 32, 500, 484);
}


#ifdef __cplusplus
}
#endif
