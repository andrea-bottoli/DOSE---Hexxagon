/*
 * Class KL_ANY_ROUTINES
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_63 [] = {0,1221,62,0xFFFF};
static EIF_TYPE_INDEX gen_type1_63 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_63 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_63 [] = {0,0,0xFFFF};


static struct desc_info desc_63[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_63},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 62, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_63},
	{14, (BODY_INDEX)-1, 0, gen_type2_63},
	{15, (BODY_INDEX)-1, 62, NULL},
	{16, (BODY_INDEX)-1, 62, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_63},
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
	{28, (BODY_INDEX)-1, 62, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 62, NULL},
	{2498, (BODY_INDEX)-1, 769, NULL},
	{2499, (BODY_INDEX)-1, 769, NULL},
	{2500, (BODY_INDEX)-1, 769, NULL},
	{2501, (BODY_INDEX)-1, 0, NULL},
};

extern void Init63(void);
void Init63(void)
{
	IDSC(desc_63, 0, 62);
	IDSC(desc_63 + 1, 4, 62);
	IDSC(desc_63 + 32, 679, 62);
}


#ifdef __cplusplus
}
#endif
