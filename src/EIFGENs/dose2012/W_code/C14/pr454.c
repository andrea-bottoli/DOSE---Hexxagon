/*
 * Code for class PRECONDITION_VIOLATION
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F454_7827(EIF_REFERENCE);
extern EIF_TYPED_VALUE F454_7828(EIF_REFERENCE);
extern void EIF_Minit454(void);

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

/* {PRECONDITION_VIOLATION}.code */
EIF_TYPED_VALUE F454_7827 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 453, Current, 0, 0, 7503);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(453, Current, 7503);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 34, 368))(Current)).it_i4);
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

/* {PRECONDITION_VIOLATION}.internal_meaning */
RTOID (F454_7828)


EIF_TYPED_VALUE F454_7828 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F454_7828,7505,RTMS_EX_H("Precondition violated.",22,49714478));
}

void EIF_Minit454 (void)
{
	GTCX
	RTOTS (7828,F454_7828)
}


#ifdef __cplusplus
}
#endif
