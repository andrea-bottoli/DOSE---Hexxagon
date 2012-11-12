/*
 * Code for class NO_MORE_MEMORY
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F434_7783(EIF_REFERENCE);
extern void F434_7784(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F434_7785(EIF_REFERENCE);
extern EIF_TYPED_VALUE F434_7786(EIF_REFERENCE);
extern void EIF_Minit434(void);

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

/* {NO_MORE_MEMORY}.code */
EIF_TYPED_VALUE F434_7783 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 433, Current, 0, 0, 7459);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(433, Current, 7459);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(433, 62, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 46, 368))(Current)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result = *(EIF_INTEGER_32 *)(Current + RTWA(433, 62, dtype));
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 33, 368))(Current)).it_i4);
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

/* {NO_MORE_MEMORY}.set_code */
void F434_7784 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
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
	
	RTEAA(l_feature_name, 433, Current, 0, 1, 7460);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(433, Current, 7460);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 433, 62, 0x10000000, 1); /* internal_code */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(433, 59, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(433, 62, dtype)) = (EIF_INTEGER_32) ti4_1;
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

/* {NO_MORE_MEMORY}.internal_meaning */
RTOID (F434_7785)


EIF_TYPED_VALUE F434_7785 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F434_7785,7462,RTMS_EX_H("No more memory.",15,1839906350));
}

/* {NO_MORE_MEMORY}.internal_code */
EIF_TYPED_VALUE F434_7786 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(433,62, Dtype(Current)));
	return r;
}


void EIF_Minit434 (void)
{
	GTCX
	RTOTS (7785,F434_7785)
}


#ifdef __cplusplus
}
#endif
