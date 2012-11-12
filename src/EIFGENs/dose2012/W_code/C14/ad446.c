/*
 * Code for class ADDRESS_APPLIED_TO_MELTED_FEATURE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F446_7811(EIF_REFERENCE);
extern EIF_TYPED_VALUE F446_7812(EIF_REFERENCE);
extern void EIF_Minit446(void);

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

/* {ADDRESS_APPLIED_TO_MELTED_FEATURE}.code */
EIF_TYPED_VALUE F446_7811 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 445, Current, 0, 0, 7488);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(445, Current, 7488);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 57, 368))(Current)).it_i4);
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

/* {ADDRESS_APPLIED_TO_MELTED_FEATURE}.internal_meaning */
RTOID (F446_7812)


EIF_TYPED_VALUE F446_7812 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F446_7812,7488,RTMS_EX_H("CECIL cannot call melted code.",30,1897917230));
}

void EIF_Minit446 (void)
{
	GTCX
	RTOTS (7812,F446_7812)
}


#ifdef __cplusplus
}
#endif
