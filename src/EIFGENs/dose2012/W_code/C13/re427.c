/*
 * Code for class RESUMPTION_FAILURE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F427_7773(EIF_REFERENCE);
extern EIF_TYPED_VALUE F427_7774(EIF_REFERENCE);
extern void EIF_Minit427(void);

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

/* {RESUMPTION_FAILURE}.code */
EIF_TYPED_VALUE F427_7773 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 426, Current, 0, 0, 7449);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(426, Current, 7449);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 47, 368))(Current)).it_i4);
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

/* {RESUMPTION_FAILURE}.internal_meaning */
RTOID (F427_7774)


EIF_TYPED_VALUE F427_7774 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F427_7774,7451,RTMS_EX_H("Resumption attempt failed.",26,952477998));
}

void EIF_Minit427 (void)
{
	GTCX
	RTOTS (7774,F427_7774)
}


#ifdef __cplusplus
}
#endif
