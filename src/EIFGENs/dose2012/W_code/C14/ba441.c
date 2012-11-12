/*
 * Code for class BAD_INSPECT_VALUE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F441_7799(EIF_REFERENCE);
extern EIF_TYPED_VALUE F441_7800(EIF_REFERENCE);
extern void EIF_Minit441(void);

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

/* {BAD_INSPECT_VALUE}.code */
EIF_TYPED_VALUE F441_7799 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 440, Current, 0, 0, 7475);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(440, Current, 7475);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 40, 368))(Current)).it_i4);
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

/* {BAD_INSPECT_VALUE}.internal_meaning */
RTOID (F441_7800)


EIF_TYPED_VALUE F441_7800 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F441_7800,7477,RTMS_EX_H("Unmatched inspect value.",24,777481518));
}

void EIF_Minit441 (void)
{
	GTCX
	RTOTS (7800,F441_7800)
}


#ifdef __cplusplus
}
#endif
