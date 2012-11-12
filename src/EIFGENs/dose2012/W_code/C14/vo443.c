/*
 * Code for class VOID_TARGET
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F443_7807(EIF_REFERENCE);
extern EIF_TYPED_VALUE F443_7808(EIF_REFERENCE);
extern void EIF_Minit443(void);

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

/* {VOID_TARGET}.code */
EIF_TYPED_VALUE F443_7807 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 442, Current, 0, 0, 7483);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(442, Current, 7483);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 32, 368))(Current)).it_i4);
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

/* {VOID_TARGET}.internal_meaning */
RTOID (F443_7808)


EIF_TYPED_VALUE F443_7808 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F443_7808,7485,RTMS_EX_H("Feature call on void target.",28,484619566));
}

void EIF_Minit443 (void)
{
	GTCX
	RTOTS (7808,F443_7808)
}


#ifdef __cplusplus
}
#endif
