/*
 * Class ABSOLUTE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_408 [] = {0,1221,407,0xFFFF};
static EIF_TYPE_INDEX gen_type1_408 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_408 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_408 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_408 [] = {0,1322,407,0xFFFF};


static struct desc_info desc_408[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_408},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{7225, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 407, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_408},
	{14, (BODY_INDEX)-1, 0, gen_type2_408},
	{15, (BODY_INDEX)-1, 407, NULL},
	{16, (BODY_INDEX)-1, 407, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_408},
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
	{28, (BODY_INDEX)-1, 407, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 407, NULL},
	{7234, (BODY_INDEX)-1, 769, NULL},
	{7222, (BODY_INDEX)-1, 769, NULL},
	{7223, (BODY_INDEX)-1, 769, NULL},
	{7224, (BODY_INDEX)-1, 769, NULL},
	{7226, (BODY_INDEX)-1, 739, NULL},
	{7227, (BODY_INDEX)-1, 407, NULL},
	{7228, (BODY_INDEX)-1, 407, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 407, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 401, NULL},
	{7235, (BODY_INDEX)-1, 1322, gen_type4_408},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 401, NULL},
};

extern void Init408(void);
void Init408(void)
{
	IDSC(desc_408, 0, 407);
	IDSC(desc_408 + 1, 4, 407);
	IDSC(desc_408 + 32, 371, 407);
	IDSC(desc_408 + 36, 207, 407);
	IDSC(desc_408 + 39, 341, 407);
}


#ifdef __cplusplus
}
#endif
