/*
 * Class PROCESS_FACTORY
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_6 [] = {0,1221,5,0xFFFF};
static EIF_TYPE_INDEX gen_type1_6 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_6 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_6 [] = {0,0,0xFFFF};


static struct desc_info desc_6[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_6},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 5, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_6},
	{14, (BODY_INDEX)-1, 0, gen_type2_6},
	{15, (BODY_INDEX)-1, 5, NULL},
	{16, (BODY_INDEX)-1, 5, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_6},
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
	{28, (BODY_INDEX)-1, 5, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 5, NULL},
	{85, (BODY_INDEX)-1, 118, NULL},
	{86, (BODY_INDEX)-1, 118, NULL},
	{87, (BODY_INDEX)-1, 512, NULL},
};

extern void Init6(void);
void Init6(void)
{
	IDSC(desc_6, 0, 5);
	IDSC(desc_6 + 1, 4, 5);
	IDSC(desc_6 + 32, 1225, 5);
}


#ifdef __cplusplus
}
#endif
