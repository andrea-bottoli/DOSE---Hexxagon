/*
 * Class WEL_TPM_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_192 [] = {0,1221,191,0xFFFF};
static EIF_TYPE_INDEX gen_type1_192 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_192 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_192 [] = {0,0,0xFFFF};


static struct desc_info desc_192[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_192},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 191, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_192},
	{14, (BODY_INDEX)-1, 0, gen_type2_192},
	{15, (BODY_INDEX)-1, 191, NULL},
	{16, (BODY_INDEX)-1, 191, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_192},
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
	{28, (BODY_INDEX)-1, 191, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 191, NULL},
	{4448, (BODY_INDEX)-1, 739, NULL},
	{4449, (BODY_INDEX)-1, 739, NULL},
	{4450, (BODY_INDEX)-1, 739, NULL},
	{4451, (BODY_INDEX)-1, 739, NULL},
	{4452, (BODY_INDEX)-1, 739, NULL},
	{4453, (BODY_INDEX)-1, 739, NULL},
	{4454, (BODY_INDEX)-1, 739, NULL},
	{4455, (BODY_INDEX)-1, 739, NULL},
	{4447, (BODY_INDEX)-1, 739, NULL},
};

extern void Init192(void);
void Init192(void)
{
	IDSC(desc_192, 0, 191);
	IDSC(desc_192 + 1, 4, 191);
	IDSC(desc_192 + 32, 780, 191);
}


#ifdef __cplusplus
}
#endif
