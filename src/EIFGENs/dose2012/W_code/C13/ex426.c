/*
 * Code for class EXCEPTION_IN_SIGNAL_HANDLER_FAILURE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F426_7771(EIF_REFERENCE);
extern EIF_TYPED_VALUE F426_7772(EIF_REFERENCE);
extern void EIF_Minit426(void);

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

/* {EXCEPTION_IN_SIGNAL_HANDLER_FAILURE}.code */
EIF_TYPED_VALUE F426_7771 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 425, Current, 0, 0, 7447);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(425, Current, 7447);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 51, 368))(Current)).it_i4);
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

/* {EXCEPTION_IN_SIGNAL_HANDLER_FAILURE}.internal_meaning */
RTOID (F426_7772)


EIF_TYPED_VALUE F426_7772 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F426_7772,7449,RTMS_EX_H("Exception in signal handler.",28,160980270));
}

void EIF_Minit426 (void)
{
	GTCX
	RTOTS (7772,F426_7772)
}


#ifdef __cplusplus
}
#endif
