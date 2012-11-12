/*
 * Code for class OPERATING_SYSTEM_FAILURE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F423_7748(EIF_REFERENCE);
extern EIF_TYPED_VALUE F423_7749(EIF_REFERENCE);
extern void F423_7750(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F423_7751(EIF_REFERENCE);
extern void EIF_Minit423(void);

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

/* {OPERATING_SYSTEM_FAILURE}.code */
EIF_TYPED_VALUE F423_7748 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 422, Current, 0, 0, 7426);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(422, Current, 7426);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 53, 368))(Current)).it_i4);
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

/* {OPERATING_SYSTEM_FAILURE}.error_code */
EIF_TYPED_VALUE F423_7749 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(422,60, Dtype(Current)));
	return r;
}


/* {OPERATING_SYSTEM_FAILURE}.set_error_code */
void F423_7750 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_error_code";
	RTEX;
#define arg1 arg1x.it_i4
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 422, Current, 0, 1, 7424);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(422, Current, 7424);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 422, 60, 0x10000000, 1); /* error_code */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(422, 60, Dtype(Current))) = (EIF_INTEGER_32) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {OPERATING_SYSTEM_FAILURE}.internal_meaning */
RTOID (F423_7751)


EIF_TYPED_VALUE F423_7751 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F423_7751,7426,RTMS_EX_H("Operating system error.",23,407134510));
}

void EIF_Minit423 (void)
{
	GTCX
	RTOTS (7751,F423_7751)
}


#ifdef __cplusplus
}
#endif
