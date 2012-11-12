/*
 * Code for class VOID_ASSIGNED_TO_EXPANDED
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F444_7809(EIF_REFERENCE);
extern EIF_TYPED_VALUE F444_7810(EIF_REFERENCE);
extern void EIF_Minit444(void);

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

/* {VOID_ASSIGNED_TO_EXPANDED}.code */
EIF_TYPED_VALUE F444_7809 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 443, Current, 0, 0, 7485);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(443, Current, 7485);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 50, 368))(Current)).it_i4);
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

/* {VOID_ASSIGNED_TO_EXPANDED}.internal_meaning */
RTOID (F444_7810)


EIF_TYPED_VALUE F444_7810 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F444_7810,7487,RTMS_EX_H("Void assigned to expanded.",26,184388398));
}

void EIF_Minit444 (void)
{
	GTCX
	RTOTS (7810,F444_7810)
}


#ifdef __cplusplus
}
#endif
