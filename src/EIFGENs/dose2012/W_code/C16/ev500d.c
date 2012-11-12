/*
 * Class EV_APPLICATION_HANDLER
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_500 [] = {0,1221,499,0xFFFF};
static EIF_TYPE_INDEX gen_type1_500 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_500 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_500 [] = {0,0,0xFFFF};


static struct desc_info desc_500[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_500},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 499, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_500},
	{14, (BODY_INDEX)-1, 0, gen_type2_500},
	{15, (BODY_INDEX)-1, 499, NULL},
	{16, (BODY_INDEX)-1, 499, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_500},
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
	{28, (BODY_INDEX)-1, 499, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 499, NULL},
	{10625, (BODY_INDEX)-1, 769, NULL},
	{10626, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10627, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10628, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10629, (BODY_INDEX)-1, 769, NULL},
	{10630, 0, 911, NULL},
};

extern void Init500(void);
void Init500(void)
{
	IDSC(desc_500, 0, 499);
	IDSC(desc_500 + 1, 4, 499);
	IDSC(desc_500 + 32, 154, 499);
}


#ifdef __cplusplus
}
#endif
