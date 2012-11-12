/*
 * Code for class VARIANT_VIOLATION
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F450_7817(EIF_REFERENCE);
extern EIF_TYPED_VALUE F450_7818(EIF_REFERENCE);
extern void EIF_Minit450(void);

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

/* {VARIANT_VIOLATION}.code */
EIF_TYPED_VALUE F450_7817 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 449, Current, 0, 0, 7493);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(449, Current, 7493);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 41, 368))(Current)).it_i4);
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

/* {VARIANT_VIOLATION}.internal_meaning */
RTOID (F450_7818)


EIF_TYPED_VALUE F450_7818 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F450_7818,7495,RTMS_EX_H("Non-decreasing loop variant or negative value reached.",54,1300766254));
}

void EIF_Minit450 (void)
{
	GTCX
	RTOTS (7818,F450_7818)
}


#ifdef __cplusplus
}
#endif
