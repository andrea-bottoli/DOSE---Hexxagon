/*
 * Code for class CHECK_VIOLATION
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F451_7819(EIF_REFERENCE);
extern EIF_TYPED_VALUE F451_7820(EIF_REFERENCE);
extern void EIF_Minit451(void);

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

/* {CHECK_VIOLATION}.code */
EIF_TYPED_VALUE F451_7819 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 450, Current, 0, 0, 7495);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(450, Current, 7495);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 38, 368))(Current)).it_i4);
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

/* {CHECK_VIOLATION}.internal_meaning */
RTOID (F451_7820)


EIF_TYPED_VALUE F451_7820 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F451_7820,7497,RTMS_EX_H("Assertion violated.",19,15690542));
}

void EIF_Minit451 (void)
{
	GTCX
	RTOTS (7820,F451_7820)
}


#ifdef __cplusplus
}
#endif
