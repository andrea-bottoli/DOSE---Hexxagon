/*
 * Class CELL [BOOLEAN]
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_1485 [] = {0,1221,1484,769,0xFFFF};
static EIF_TYPE_INDEX gen_type1_1485 [] = {0,1484,769,0xFFFF};
static EIF_TYPE_INDEX gen_type2_1485 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_1485 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_1485 [] = {0,1484,769,0xFFFF};
static EIF_TYPE_INDEX gen_type5_1485 [] = {0,1484,769,0xFFFF};
static EIF_TYPE_INDEX gen_type6_1485 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type7_1485 [] = {0,1484,769,0xFFFF};
static EIF_TYPE_INDEX gen_type8_1485 [] = {0,1484,769,0xFFFF};
static EIF_TYPE_INDEX gen_type9_1485 [] = {0,0xFFF8,1,0xFFFF};
static EIF_TYPE_INDEX gen_type10_1485 [] = {0,0xFFF8,1,0xFFFF};


static struct desc_info desc_1485[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_1485},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 1484, gen_type1_1485},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type2_1485},
	{14, (BODY_INDEX)-1, 0, gen_type3_1485},
	{15, (BODY_INDEX)-1, 1484, gen_type4_1485},
	{16, (BODY_INDEX)-1, 1484, gen_type5_1485},
	{17, (BODY_INDEX)-1, 0, gen_type6_1485},
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
	{28, (BODY_INDEX)-1, 1484, gen_type7_1485},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 1484, gen_type8_1485},
	{6733, 0, (EIF_TYPE_INDEX)-1, gen_type9_1485},
	{6734, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{6735, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, gen_type10_1485},
};

extern void Init1485(void);
void Init1485(void)
{
	IDSC(desc_1485, 0, 1484);
	IDSC(desc_1485 + 1, 4, 1484);
	IDSC(desc_1485 + 32, 88, 1484);
}


#ifdef __cplusplus
}
#endif
