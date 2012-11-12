/*
 * Class EV_RADIO_PEER
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_812 [] = {0,1221,811,0xFFFF};
static EIF_TYPE_INDEX gen_type1_812 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_812 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_812 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_812 [] = {0,1287,811,0xFFFF};


static struct desc_info desc_812[] = {
	{(BODY_INDEX) 19759, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_812},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 811, NULL},
	{19449, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_812},
	{14, (BODY_INDEX)-1, 0, gen_type2_812},
	{15, (BODY_INDEX)-1, 811, NULL},
	{16, (BODY_INDEX)-1, 811, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_812},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 94, NULL},
	{21, (BODY_INDEX)-1, 787, NULL},
	{22, (BODY_INDEX)-1, 787, NULL},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 93, NULL},
	{19456, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 811, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 811, NULL},
	{19441, 0, 0, NULL},
	{19442, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19443, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19444, (BODY_INDEX)-1, 769, NULL},
	{19758, 8, 927, NULL},
	{19446, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19448, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19757, (BODY_INDEX)-1, 769, NULL},
	{19451, (BODY_INDEX)-1, 910, NULL},
	{19452, (BODY_INDEX)-1, 751, NULL},
	{19453, (BODY_INDEX)-1, 769, NULL},
	{19454, (BODY_INDEX)-1, 769, NULL},
	{19455, (BODY_INDEX)-1, 769, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 769, NULL},
	{19760, (BODY_INDEX)-1, 1287, gen_type4_812},
	{19761, (BODY_INDEX)-1, 811, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19756, (BODY_INDEX)-1, 739, NULL},
};

extern void Init812(void);
void Init812(void)
{
	IDSC(desc_812, 0, 811);
	IDSC(desc_812 + 1, 4, 811);
	IDSC(desc_812 + 32, 155, 811);
	IDSC(desc_812 + 47, 893, 811);
}


#ifdef __cplusplus
}
#endif
