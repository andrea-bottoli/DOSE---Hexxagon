/*
 * Code for class EXTERNAL_FAILURE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F435_7787(EIF_REFERENCE);
extern EIF_TYPED_VALUE F435_7788(EIF_REFERENCE);
extern void EIF_Minit435(void);

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

/* {EXTERNAL_FAILURE}.code */
EIF_TYPED_VALUE F435_7787 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 434, Current, 0, 0, 7463);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(434, Current, 7463);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 49, 368))(Current)).it_i4);
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

/* {EXTERNAL_FAILURE}.internal_meaning */
RTOID (F435_7788)


EIF_TYPED_VALUE F435_7788 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F435_7788,7465,RTMS_EX_H("External event.",15,214571566));
}

void EIF_Minit435 (void)
{
	GTCX
	RTOTS (7788,F435_7788)
}


#ifdef __cplusplus
}
#endif
