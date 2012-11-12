/*
 * Code for class MISMATCH_FAILURE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F438_7791(EIF_REFERENCE);
extern EIF_TYPED_VALUE F438_7792(EIF_REFERENCE);
extern void EIF_Minit438(void);

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

/* {MISMATCH_FAILURE}.code */
EIF_TYPED_VALUE F438_7791 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 437, Current, 0, 0, 7467);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(437, Current, 7467);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 54, 368))(Current)).it_i4);
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

/* {MISMATCH_FAILURE}.internal_meaning */
RTOID (F438_7792)


EIF_TYPED_VALUE F438_7792 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F438_7792,7469,RTMS_EX_H("Mismatch failed.",16,966757678));
}

void EIF_Minit438 (void)
{
	GTCX
	RTOTS (7792,F438_7792)
}


#ifdef __cplusplus
}
#endif
