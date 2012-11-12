/*
 * Code for class HX_L_IGAME_END_MESSAGE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F70_2698(EIF_REFERENCE);
extern EIF_TYPED_VALUE F70_2699(EIF_REFERENCE);
extern EIF_TYPED_VALUE F70_2700(EIF_REFERENCE);
extern void EIF_Minit70(void);

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

/* {HX_L_IGAME_END_MESSAGE}.winner_id */
EIF_TYPED_VALUE F70_2698 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(69,32, Dtype(Current)));
	return r;
}


/* {HX_L_IGAME_END_MESSAGE}.player1_pieces */
EIF_TYPED_VALUE F70_2699 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(69,33, Dtype(Current)));
	return r;
}


/* {HX_L_IGAME_END_MESSAGE}.player2_pieces */
EIF_TYPED_VALUE F70_2700 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(69,34, Dtype(Current)));
	return r;
}


void EIF_Minit70 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
