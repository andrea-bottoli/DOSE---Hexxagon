/*
 * Class EV_COORDINATE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_565 [] = {0,1221,564,0xFFFF};
static EIF_TYPE_INDEX gen_type1_565 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_565 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_565 [] = {0,0,0xFFFF};


static struct desc_info desc_565[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_565},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 564, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_565},
	{14, (BODY_INDEX)-1, 0, gen_type2_565},
	{15, (BODY_INDEX)-1, 564, NULL},
	{16, (BODY_INDEX)-1, 564, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_565},
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
	{28, (BODY_INDEX)-1, 564, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 564, NULL},
	{12411, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12412, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12396, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12397, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12398, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12399, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12400, (BODY_INDEX)-1, 739, NULL},
	{12401, (BODY_INDEX)-1, 739, NULL},
	{12402, (BODY_INDEX)-1, 739, NULL},
	{12403, (BODY_INDEX)-1, 739, NULL},
	{12404, 0, 763, NULL},
	{12405, 8, 763, NULL},
	{12406, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12407, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12408, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12409, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12410, (BODY_INDEX)-1, 787, NULL},
};

extern void Init565(void);
void Init565(void)
{
	IDSC(desc_565, 0, 564);
	IDSC(desc_565 + 1, 4, 564);
	IDSC(desc_565 + 32, 278, 564);
	IDSC(desc_565 + 48, 87, 564);
}


#ifdef __cplusplus
}
#endif
