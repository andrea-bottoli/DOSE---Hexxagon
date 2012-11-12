/*
 * Code for class HX_L_IBOARD
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F69_2682(EIF_REFERENCE);
extern EIF_TYPED_VALUE F69_2683(EIF_REFERENCE);
extern EIF_TYPED_VALUE F69_2694(EIF_REFERENCE);
extern void EIF_Minit69(void);

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

/* {HX_L_IBOARD}.height */
EIF_TYPED_VALUE F69_2682 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(68,32, Dtype(Current)));
	return r;
}


/* {HX_L_IBOARD}.width */
EIF_TYPED_VALUE F69_2683 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(68,33, Dtype(Current)));
	return r;
}


/* {HX_L_IBOARD}.moves_count */
EIF_TYPED_VALUE F69_2694 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(68,44, Dtype(Current)));
	return r;
}


void EIF_Minit69 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
