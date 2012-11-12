/*
 * Class PROCESS_INFO
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_513 [] = {0,1221,512,0xFFFF};
static EIF_TYPE_INDEX gen_type1_513 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_513 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_513 [] = {0,0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_513 [] = {0,1270,787,787,0xFFFF};
static EIF_TYPE_INDEX gen_type5_513 [] = {0,1270,504,787,0xFFFF};
static EIF_TYPE_INDEX gen_type6_513 [] = {0,0xFFF9,2,734,787,787,0xFFFF};


static struct desc_info desc_513[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 787, NULL},
	{1, (BODY_INDEX)-1, 1221, gen_type0_513},
	{2, (BODY_INDEX)-1, 769, NULL},
	{3, (BODY_INDEX)-1, 769, NULL},
	{4, (BODY_INDEX)-1, 769, NULL},
	{5, (BODY_INDEX)-1, 769, NULL},
	{6, (BODY_INDEX)-1, 769, NULL},
	{7, (BODY_INDEX)-1, 769, NULL},
	{8, (BODY_INDEX)-1, 769, NULL},
	{9, (BODY_INDEX)-1, 769, NULL},
	{10, (BODY_INDEX)-1, 512, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_513},
	{14, (BODY_INDEX)-1, 0, gen_type2_513},
	{15, (BODY_INDEX)-1, 512, NULL},
	{16, (BODY_INDEX)-1, 512, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_513},
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
	{28, (BODY_INDEX)-1, 512, NULL},
	{29, (BODY_INDEX)-1, 778, NULL},
	{30, (BODY_INDEX)-1, 512, NULL},
	{10756, (BODY_INDEX)-1, 475, NULL},
	{10757, (BODY_INDEX)-1, 787, NULL},
	{10758, (BODY_INDEX)-1, 787, NULL},
	{10759, (BODY_INDEX)-1, 787, NULL},
	{10760, (BODY_INDEX)-1, 787, NULL},
	{10761, (BODY_INDEX)-1, 787, NULL},
	{10762, (BODY_INDEX)-1, 1270, gen_type4_513},
	{10763, 0, 739, NULL},
	{10764, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10765, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10766, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10767, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10768, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10769, (BODY_INDEX)-1, 1270, gen_type5_513},
	{10770, (BODY_INDEX)-1, 778, NULL},
	{10771, (BODY_INDEX)-1, 734, gen_type6_513},
	{10772, (BODY_INDEX)-1, 778, NULL},
	{10773, (BODY_INDEX)-1, 739, NULL},
	{10774, (BODY_INDEX)-1, 739, NULL},
	{10775, (BODY_INDEX)-1, 739, NULL},
	{10776, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{10777, (BODY_INDEX)-1, 787, NULL},
	{10778, (BODY_INDEX)-1, 787, NULL},
	{10779, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, 739, NULL},
};

extern void Init513(void);
void Init513(void)
{
	IDSC(desc_513, 0, 512);
	IDSC(desc_513 + 1, 4, 512);
	IDSC(desc_513 + 32, 41, 512);
	IDSC(desc_513 + 56, 1262, 512);
}


#ifdef __cplusplus
}
#endif
