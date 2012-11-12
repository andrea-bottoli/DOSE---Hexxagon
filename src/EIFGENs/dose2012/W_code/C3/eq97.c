/*
 * Code for class EQA_ENVIRONMENT
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F97_3127(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F97_3128(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F97_3129(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F97_3130(EIF_REFERENCE);
extern void F97_3131(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F97_3132(EIF_REFERENCE);
extern EIF_TYPED_VALUE F97_3133(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F97_3134(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F97_3135(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F97_3136(EIF_REFERENCE);
extern EIF_TYPED_VALUE F97_3137(EIF_REFERENCE);
extern EIF_TYPED_VALUE F97_3138(EIF_REFERENCE);
extern EIF_TYPED_VALUE F97_3139(EIF_REFERENCE);
extern void EIF_Minit97(void);

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

/* {EQA_ENVIRONMENT}.get */
EIF_TYPED_VALUE F97_3127 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "get";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,tr2);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 96, Current, 0, 1, 3007);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(96, Current, 3007);
	if (arg1) {
		RTCC(arg1, 96, l_feature_name, 1, 783);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_key_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(96, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1270, 79, "search", tr1))(tr1, ur1x);
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(96, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1270, 69, "found", tr1))(tr1)).it_b);
	if (tb1) {
		RTHOOK(4);
		RTDBGAL(Current, 0, 0xF8000310, 0,0); /* Result */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(96, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1270, 43, "found_item", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		Result = (EIF_REFERENCE) RTCCL(tr2);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef arg1
}

/* {EQA_ENVIRONMENT}.get_attached */
EIF_TYPED_VALUE F97_3128 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "get_attached";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(9);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc2);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLR(5,tr1);
	RTLR(6,loc1);
	RTLR(7,tr2);
	RTLR(8,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 96, Current, 2, 2, 3008);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(96, Current, 3008);
	if (arg1) {
		RTCC(arg1, 96, l_feature_name, 1, 783);
	}
	if (arg2) {
		RTCC(arg2, 96, l_feature_name, 2, 455);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_key_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("an_asserter_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	ur1 = RTCCL(arg1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(96, 32, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = RTCCL(tr1);
	if (EIF_TEST(loc2)) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF8000310, 0, 0); /* loc1 */
		
		loc1 = (EIF_REFERENCE) RTCCL(loc2);
	} else {
		RTHOOK(5);
		tr1 = RTMS_EX_H(" not defined",12,1578321764);
		ur1 = tr1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(783, 129, "plus", arg1))(arg1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(783, 62, "as_string_8", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr2);
		ub1 = (EIF_BOOLEAN) 0;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(455, 91, "assert", arg2))(arg2, ur1x, ub1x);
		if (RTAL & CK_CHECK) {
			RTHOOK(6);
			RTCT("not_reached", EX_CHECK);
			if ((EIF_BOOLEAN)(loc1 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
	}
	RTHOOK(7);
	RTDBGAL(Current, 0, 0xF8000310, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(loc1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("result_attached", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ub1
#undef arg2
#undef arg1
}

/* {EQA_ENVIRONMENT}.get_not_empty */
EIF_TYPED_VALUE F97_3129 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "get_not_empty";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(8);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,ur1);
	RTLR(3,ur2);
	RTLR(4,Current);
	RTLR(5,Result);
	RTLR(6,tr1);
	RTLR(7,tr2);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 96, Current, 0, 2, 3009);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(96, Current, 3009);
	if (arg1) {
		RTCC(arg1, 96, l_feature_name, 1, 783);
	}
	if (arg2) {
		RTCC(arg2, 96, l_feature_name, 2, 455);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_key_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("an_asserter_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0xF8000310, 0,0); /* Result */
	
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(96, 33, dtype))(Current, ur1x, ur2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(4);
	tr1 = RTMS_EX_H(" is empty",9,1563366009);
	ur1 = tr1;
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(783, 129, "plus", arg1))(arg1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(783, 62, "as_string_8", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(784, 146, "is_empty", Result))(Result)).it_b);
	ub1 = (EIF_BOOLEAN) !tb1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(455, 91, "assert", arg2))(arg2, ur1x, ub1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ur2
#undef ub1
#undef arg2
#undef arg1
}

/* {EQA_ENVIRONMENT}.table */
RTOID (F97_3130)
EIF_TYPED_VALUE F97_3130 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "table";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F97_3130);

	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 96, Current, 0, 0, 3010);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(96, Current, 3010);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004F6, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {96,1270,784,783,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1270, typarr0)));
		tr1 = RTLN(typres0);
	}
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(96, 41, Dtype(Current)))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1270, 41, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ui4_1
#undef Result
}

/* {EQA_ENVIRONMENT}.put */
void F97_3131 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "put";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(10);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc2);
	RTLR(3,loc1);
	RTLR(4,tr1);
	RTLR(5,ur1);
	RTLR(6,Current);
	RTLR(7,tr2);
	RTLR(8,ur2);
	RTLR(9,loc3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 96, Current, 3, 2, 2998);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(96, Current, 2998);
	if (arg1) {
		RTCC(arg1, 96, l_feature_name, 1, 783);
	}
	if (arg2) {
		RTCC(arg2, 96, l_feature_name, 2, 783);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_value_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_key_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	loc2 = RTCCL(arg1);
	loc2 = RTRV(eif_non_attached_type(784),loc2);
	if (EIF_TEST(loc2)) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF8000310, 0, 0); /* loc1 */
		
		loc1 = (EIF_REFERENCE) RTCCL(loc2);
	} else {
		RTHOOK(5);
		RTDBGAL(Current, 1, 0xF8000310, 0, 0); /* loc1 */
		
		tr1 = RTLN(784);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(784, 93, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(5,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(6);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(96, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(6,1);
	tr2 = RTLN(784);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(784, 93, Dtype(tr2)))(tr2, ur1x);
	RTNHOOK(6,2);
	ur1 = RTCCL(tr2);
	ur2 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1270, 84, "force", tr1))(tr1, ur1x, ur2x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("set", EX_POST);
		tb1 = '\0';
		ur1 = RTCCL(arg2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(96, 32, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = RTCCL(tr1);
		if (EIF_TEST(loc3)) {
			ur1 = RTCCL(arg1);
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(784, 112, "same_string", loc3))(loc3, ur1x)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef arg2
#undef arg1
}

/* {EQA_ENVIRONMENT}.reset */
void F97_3132 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reset";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 96, Current, 0, 0, 2999);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(96, Current, 2999);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(96, 35, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1270, 91, "wipe_out", tr1))(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
}

/* {EQA_ENVIRONMENT}.is_identifier_char */
EIF_TYPED_VALUE F97_3133 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_identifier_char";
	RTEX;
#define arg1 arg1x.it_c1
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_c1 = * (EIF_CHARACTER_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_CHAR8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 96, Current, 0, 1, 3000);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(96, Current, 3000);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) (arg1 >= (EIF_CHARACTER_8) 'A') && (EIF_BOOLEAN) (arg1 <= (EIF_CHARACTER_8) 'Z')) || (EIF_BOOLEAN) ((EIF_BOOLEAN) (arg1 >= (EIF_CHARACTER_8) 'a') && (EIF_BOOLEAN) (arg1 <= (EIF_CHARACTER_8) 'z'))) || (EIF_BOOLEAN) ((EIF_BOOLEAN) (arg1 >= (EIF_CHARACTER_8) '0') && (EIF_BOOLEAN) (arg1 <= (EIF_CHARACTER_8) '9'))) || (EIF_BOOLEAN)(arg1 == (EIF_CHARACTER_8) '_'));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef arg1
}

/* {EQA_ENVIRONMENT}.substitute_recursive */
EIF_TYPED_VALUE F97_3134 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "substitute_recursive";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc2 = (EIF_BOOLEAN) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Result);
	RTLR(2,loc1);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_BOOL, &loc2);
	
	RTEAA(l_feature_name, 96, Current, 2, 1, 3001);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(96, Current, 3001);
	if (arg1) {
		RTCC(arg1, 96, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(arg1);
	for (;;) {
		RTHOOK(3);
		tb1 = '\01';
		uc1 = (EIF_CHARACTER_8) '$';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 117, "has", Result))(Result, uc1x)).it_b);
		if (!(EIF_BOOLEAN) !tb2) {
			tb1 = loc2;
		}
		if (tb1) break;
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF8000313, 0, 0); /* loc1 */
		
		ur1 = RTCCL(Result);
		loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(96, 40, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(5);
		ur1 = RTCCL(Result);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 110, "is_equal", loc1))(loc1, ur1x)).it_b);
		if (tb2) {
			RTHOOK(6);
			RTDBGAL(Current, 2, 0x04000000, 1, 0); /* loc2 */
			
			loc2 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		} else {
			RTHOOK(7);
			RTDBGAL(Current, 2, 0x04000000, 1, 0); /* loc2 */
			
			loc2 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			RTHOOK(8);
			RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
			
			Result = (EIF_REFERENCE) RTCCL(loc1);
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(9);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(10);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef uc1
#undef arg1
}

/* {EQA_ENVIRONMENT}.substitute */
EIF_TYPED_VALUE F97_3135 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "substitute";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_CHARACTER_8 loc4 = (EIF_CHARACTER_8) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc7 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc8 = (EIF_BOOLEAN) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_CHARACTER_8 tc1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLR(3,Current);
	RTLR(4,loc5);
	RTLR(5,loc6);
	RTLR(6,ur1);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_CHAR8, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_BOOL, &loc7);
	RTLU(SK_BOOL, &loc8);
	
	RTEAA(l_feature_name, 96, Current, 8, 1, 3002);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(96, Current, 3002);
	if (arg1) {
		RTCC(arg1, 96, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("line_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	tr1 = RTLN(787);
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(787, 107, "count", arg1));
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(787, 91, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(787, 107, "count", arg1));
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(5);
		if ((EIF_BOOLEAN) (loc1 > loc2)) break;
		RTHOOK(6);
		RTDBGAL(Current, 4, 0x08000000, 1, 0); /* loc4 */
		
		ui4_1 = loc1;
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", arg1))(arg1, ui4_1x)).it_c1);
		loc4 = (EIF_CHARACTER_8) tc1;
		RTHOOK(7);
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(96, 42, dtype))(Current)).it_c1);
		if ((EIF_BOOLEAN)(loc4 == tc1)) {
			RTHOOK(8);
			if (loc7) {
				RTHOOK(9);
				RTDBGAL(Current, 7, 0x04000000, 1, 0); /* loc7 */
				
				loc7 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
				RTHOOK(10);
				uc1 = loc4;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 208, "extend", Result))(Result, uc1x);
			} else {
				RTHOOK(11);
				RTDBGAL(Current, 7, 0x04000000, 1, 0); /* loc7 */
				
				loc7 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			}
		} else {
			RTHOOK(12);
			if (loc7) {
				RTHOOK(13);
				tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(96, 43, dtype))(Current)).it_c1);
				if ((EIF_BOOLEAN)(loc4 == tc1)) {
					RTHOOK(14);
					RTDBGAL(Current, 8, 0x04000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
				} else {
					RTHOOK(15);
					RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
					
					loc3 = (EIF_INTEGER_32) loc1;
					for (;;) {
						RTHOOK(16);
						tb1 = '\01';
						if (!(EIF_BOOLEAN) (loc1 > loc2)) {
							ui4_1 = loc1;
							tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", arg1))(arg1, ui4_1x)).it_c1);
							uc1 = tc1;
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(96, 38, dtype))(Current, uc1x)).it_b);
							tb1 = (EIF_BOOLEAN) !tb2;
						}
						if (tb1) break;
						RTHOOK(17);
						RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
						
						loc1++;
					}
					RTHOOK(18);
					RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
					
					loc1--;
					RTHOOK(19);
					RTDBGAL(Current, 5, 0xF8000313, 0, 0); /* loc5 */
					
					ui4_1 = loc3;
					ui4_2 = loc1;
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(787, 239, "substring", arg1))(arg1, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc5 = (EIF_REFERENCE) RTCCL(tr1);
					RTHOOK(20);
					RTDBGAL(Current, 6, 0xF800030F, 0, 0); /* loc6 */
					
					ur1 = RTCCL(loc5);
					loc6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(96, 32, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTHOOK(21);
					if ((EIF_BOOLEAN)(loc6 != NULL)) {
						RTHOOK(22);
						ur1 = RTCCL(loc6);
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
					} else {
						RTHOOK(23);
						tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(96, 42, dtype))(Current)).it_c1);
						uc1 = tc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 208, "extend", Result))(Result, uc1x);
						RTHOOK(24);
						ur1 = RTCCL(loc5);
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
					}
					RTHOOK(25);
					if (loc8) {
						RTHOOK(26);
						RTDBGAL(Current, 8, 0x04000000, 1, 0); /* loc8 */
						
						loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
						RTHOOK(27);
						RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
						
						loc1++;
					}
					RTHOOK(28);
					RTDBGAL(Current, 7, 0x04000000, 1, 0); /* loc7 */
					
					loc7 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
				}
			} else {
				RTHOOK(29);
				uc1 = loc4;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 208, "extend", Result))(Result, uc1x);
			}
		}
		RTHOOK(30);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	RTHOOK(31);
	if (loc7) {
		RTHOOK(32);
		uc1 = loc4;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 208, "extend", Result))(Result, uc1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(33);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(11);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef uc1
#undef arg1
}

/* {EQA_ENVIRONMENT}.default_table_size */
EIF_TYPED_VALUE F97_3136 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 10L);
	return r;
}

/* {EQA_ENVIRONMENT}.substitute_char */
EIF_TYPED_VALUE F97_3137 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_CHAR8;
	r.it_c1 = (EIF_CHARACTER_8) (EIF_CHARACTER_8) '$';
	return r;
}

/* {EQA_ENVIRONMENT}.left_group_char */
EIF_TYPED_VALUE F97_3138 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_CHAR8;
	r.it_c1 = (EIF_CHARACTER_8) (EIF_CHARACTER_8) '(';
	return r;
}

/* {EQA_ENVIRONMENT}.right_group_char */
EIF_TYPED_VALUE F97_3139 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_CHAR8;
	r.it_c1 = (EIF_CHARACTER_8) (EIF_CHARACTER_8) ')';
	return r;
}

void EIF_Minit97 (void)
{
	GTCX
	RTOTS (3130,F97_3130)
}


#ifdef __cplusplus
}
#endif
