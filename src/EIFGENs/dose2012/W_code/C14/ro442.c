/*
 * Code for class ROUTINE_FAILURE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F442_7801(EIF_REFERENCE);
extern EIF_TYPED_VALUE F442_7802(EIF_REFERENCE);
extern EIF_TYPED_VALUE F442_7803(EIF_REFERENCE);
extern void F442_7804(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F442_7805(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F442_7806(EIF_REFERENCE);
extern void EIF_Minit442(void);

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

/* {ROUTINE_FAILURE}.routine_name */
EIF_TYPED_VALUE F442_7801 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(441,59, Dtype(Current)));
	return r;
}


/* {ROUTINE_FAILURE}.class_name */
EIF_TYPED_VALUE F442_7802 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(441,60, Dtype(Current)));
	return r;
}


/* {ROUTINE_FAILURE}.code */
EIF_TYPED_VALUE F442_7803 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 441, Current, 0, 0, 7479);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(441, Current, 7479);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 39, 368))(Current)).it_i4);
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

/* {ROUTINE_FAILURE}.set_routine_name */
void F442_7804 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_routine_name";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 441, Current, 0, 1, 7480);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(441, Current, 7480);
	RTCC(arg1, 441, l_feature_name, 1, RTWCT(441, 59, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 441, 59, 0xF8000313, 0); /* routine_name */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(441, 59, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("routine_name_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(441, 59, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {ROUTINE_FAILURE}.set_class_name */
void F442_7805 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_class_name";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 441, Current, 0, 1, 7481);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(441, Current, 7481);
	RTCC(arg1, 441, l_feature_name, 1, RTWCT(441, 60, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 441, 60, 0xF8000313, 0); /* class_name */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(441, 60, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("class_name_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(441, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {ROUTINE_FAILURE}.internal_meaning */
RTOID (F442_7806)


EIF_TYPED_VALUE F442_7806 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F442_7806,7483,RTMS_EX_H("Routine failure.",16,1668316462));
}

void EIF_Minit442 (void)
{
	GTCX
	RTOTS (7806,F442_7806)
}


#ifdef __cplusplus
}
#endif
