/*
 * Code for class HX_L_IPLAYER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F68_2679(EIF_REFERENCE);
extern EIF_TYPED_VALUE F68_2680(EIF_REFERENCE);
extern EIF_TYPED_VALUE F68_2681(EIF_REFERENCE);
extern void EIF_Minit68(void);

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {HX_L_IPLAYER}.name */
EIF_TYPED_VALUE F68_2679 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(67,33, Dtype(Current)));
	return r;
}


/* {HX_L_IPLAYER}.is_active */
EIF_TYPED_VALUE F68_2680 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(67,34, Dtype(Current)));
	return r;
}


/* {HX_L_IPLAYER}.pieces_count */
EIF_TYPED_VALUE F68_2681 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(67,35, Dtype(Current)));
	return r;
}


void EIF_Minit68 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
