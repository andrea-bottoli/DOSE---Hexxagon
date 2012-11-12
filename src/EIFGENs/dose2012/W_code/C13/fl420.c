/*
 * Code for class FLOATING_POINT_FAILURE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F420_7742(EIF_REFERENCE);
extern EIF_TYPED_VALUE F420_7743(EIF_REFERENCE);
extern void EIF_Minit420(void);

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

/* {FLOATING_POINT_FAILURE}.code */
EIF_TYPED_VALUE F420_7742 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 419, Current, 0, 0, 7418);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(419, Current, 7418);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 36, 368))(Current)).it_i4);
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

/* {FLOATING_POINT_FAILURE}.internal_meaning */
RTOID (F420_7743)


EIF_TYPED_VALUE F420_7743 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F420_7743,7420,RTMS_EX_H("Floating point exception.",25,454066990));
}

void EIF_Minit420 (void)
{
	GTCX
	RTOTS (7743,F420_7743)
}


#ifdef __cplusplus
}
#endif
