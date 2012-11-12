/*
 * Code for class CREATE_ON_DEFERRED
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F447_7813(EIF_REFERENCE);
extern EIF_TYPED_VALUE F447_7814(EIF_REFERENCE);
extern void EIF_Minit447(void);

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

/* {CREATE_ON_DEFERRED}.code */
EIF_TYPED_VALUE F447_7813 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "code";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 446, Current, 0, 0, 7489);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(446, Current, 7489);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 48, 368))(Current)).it_i4);
	Result = (EIF_INTEGER_32) Result;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {CREATE_ON_DEFERRED}.internal_meaning */
RTOID (F447_7814)


EIF_TYPED_VALUE F447_7814 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F447_7814,7491,RTMS_EX_H("Create on deferred.",19,872737070));
}

void EIF_Minit447 (void)
{
	GTCX
	RTOTS (7814,F447_7814)
}


#ifdef __cplusplus
}
#endif
