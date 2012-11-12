/*
 * Code for class POSTCONDITION_VIOLATION
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F453_7825(EIF_REFERENCE);
extern EIF_TYPED_VALUE F453_7826(EIF_REFERENCE);
extern void EIF_Minit453(void);

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

/* {POSTCONDITION_VIOLATION}.code */
EIF_TYPED_VALUE F453_7825 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 452, Current, 0, 0, 7501);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(452, Current, 7501);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 35, 368))(Current)).it_i4);
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

/* {POSTCONDITION_VIOLATION}.internal_meaning */
RTOID (F453_7826)


EIF_TYPED_VALUE F453_7826 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F453_7826,7503,RTMS_EX_H("Postcondition violated.",23,180802094));
}

void EIF_Minit453 (void)
{
	GTCX
	RTOTS (7826,F453_7826)
}


#ifdef __cplusplus
}
#endif
