/*
 * Class PACKET
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_66 [] = {0,1221,65,0xFFFF};
static EIF_TYPE_INDEX gen_type1_66 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_66 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_66 [] = {0,0,0xFFFF};


static struct desc_info desc_66[] = {
	{(BODY_INDEX) 2531, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_66},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{2539, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 65, NULL},
	{2540, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_66},
	{14, (BODY_INDEX)-1, 0, gen_type2_66},
	{15, (BODY_INDEX)-1, 65, NULL},
	{16, (BODY_INDEX)-1, 65, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_66},
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
	{28, (BODY_INDEX)-1, 65, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 65, NULL},
	{2532, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{2533, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{2534, (BODY_INDEX)-1, 739, NULL},
	{2535, (BODY_INDEX)-1, 766, NULL},
	{2536, (BODY_INDEX)-1, 766, NULL},
	{2537, (BODY_INDEX)-1, 769, NULL},
	{2538, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{2541, 0, 571, NULL},
};

extern void Init66(void);
void Init66(void)
{
	IDSC(desc_66, 0, 65);
	IDSC(desc_66 + 1, 4, 65);
	IDSC(desc_66 + 32, 639, 65);
}


#ifdef __cplusplus
}
#endif
