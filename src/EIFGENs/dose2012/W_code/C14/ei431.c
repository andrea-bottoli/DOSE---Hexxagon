/*
 * Code for class EIFFEL_RUNTIME_PANIC
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F431_7779(EIF_REFERENCE);
extern void F431_7780(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F431_7781(EIF_REFERENCE);
extern EIF_TYPED_VALUE F431_7782(EIF_REFERENCE);
extern void EIF_Minit431(void);

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

/* {EIFFEL_RUNTIME_PANIC}.code */
EIF_TYPED_VALUE F431_7779 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "code";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 430, Current, 0, 0, 7457);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(430, Current, 7457);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(430, 62, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 56, 368))(Current)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result = *(EIF_INTEGER_32 *)(Current + RTWA(430, 62, dtype));
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 44, 368))(Current)).it_i4);
		Result = (EIF_INTEGER_32) Result;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {EIFFEL_RUNTIME_PANIC}.set_code */
void F431_7780 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_code";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 430, Current, 0, 1, 7458);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(430, Current, 7458);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 430, 62, 0x10000000, 1); /* internal_code */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(430, 59, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(430, 62, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {EIFFEL_RUNTIME_PANIC}.internal_meaning */
RTOID (F431_7781)


EIF_TYPED_VALUE F431_7781 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F431_7781,7456,RTMS_EX_H("Eiffel run-time panic.",22,15510062));
}

/* {EIFFEL_RUNTIME_PANIC}.internal_code */
EIF_TYPED_VALUE F431_7782 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(430,62, Dtype(Current)));
	return r;
}


void EIF_Minit431 (void)
{
	GTCX
	RTOTS (7781,F431_7781)
}


#ifdef __cplusplus
}
#endif
