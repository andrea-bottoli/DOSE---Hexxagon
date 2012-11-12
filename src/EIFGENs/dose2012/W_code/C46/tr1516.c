/*
 * Code for class TREE [G#1]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1516_8363(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8366(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8374(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8375(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8376(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1516_8377(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1516_8378(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8379(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8380(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8381(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8382(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8383(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8384(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8385(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8386(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8387(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8388(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8389(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8390(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8391(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8392(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1516_8393(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1516_8394(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1516_8401(EIF_REFERENCE);
extern void F1516_8409(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1516_8413(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8414(EIF_REFERENCE);
extern void F1516_8415(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1516_8417(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1516_8418(EIF_REFERENCE);
extern void F1516_8419(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1516_8420(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1516_8422(EIF_REFERENCE);
extern void F1516_8423(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1516_8424(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1516_8425(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1516_23714(EIF_REFERENCE, int);
extern void EIF_Minit1516(void);

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

/* {TREE}.parent */
EIF_TYPED_VALUE F1516_8363 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1515,35, Dtype(Current)));
	return r;
}


/* {TREE}.child_item */
EIF_TYPED_VALUE F1516_8366 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_item";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1515, Current, 1, 0, 8113);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8113);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("readable", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTCT0(NULL, EX_CHECK);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	if (EIF_TEST(loc1)) {
		RTCK0;
	} else {
		RTCF0;
	}
	RTHOOK(3);
	RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 37, "item", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
}

/* {TREE}.child_capacity */
EIF_TYPED_VALUE F1516_8374 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_capacity";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8114);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8114);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 45, Dtype(Current)))(Current)).it_i4);
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

/* {TREE}.count */
EIF_TYPED_VALUE F1516_8375 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "count";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8115);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8115);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 90, Dtype(Current)))(Current)).it_i4);
	Result = (EIF_INTEGER_32) (EIF_INTEGER_32) (Result + ((EIF_INTEGER_32) 1L));
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

/* {TREE}.is_equal */
EIF_TYPED_VALUE F1516_8376 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_equal";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLR(3,ur2);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 1, 8116);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8116);
	RTCC(arg1, 1515, l_feature_name, 1, Dftype(Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	if (RTCEQ(Current, arg1)) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	} else {
		RTHOOK(4);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tb1 = '\0';
		tb2 = '\0';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 59, dtype))(Current)).it_b);
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 59, "is_empty", arg1))(arg1)).it_b);
		if ((EIF_BOOLEAN)(tb3 == tb4)) {
			tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1515, 31, dtype));
			tb4 = *(EIF_BOOLEAN *)(arg1 + RTVA(1515, 31, "object_comparison", arg1));
			tb2 = (EIF_BOOLEAN)(tb3 == tb4);
		}
		if (tb2) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 46, dtype))(Current)).it_i4);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 46, "child_capacity", arg1))(arg1)).it_i4);
			tb1 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
		}
		Result = (EIF_BOOLEAN) tb1;
		RTHOOK(5);
		tb1 = '\0';
		if (Result) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 59, dtype))(Current)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) {
			RTHOOK(6);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			ur1 = RTCCL(Current);
			ur2 = RTCCL(arg1);
			Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1515, 96, dtype))(Current, ur1x, ur2x)).it_b);
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("symmetric", EX_POST);
		if ((!(Result) || (RTEQ(arg1, Current)))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("consistent", EX_POST);
		tb1 = '\01';
		ur1 = RTCCL(arg1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 5, dtype))(Current, ur1x)).it_b);
		if (tb2) {
			tb1 = Result;
		}
		if (tb1) {
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
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ur1
#undef ur2
#undef arg1
}

/* {TREE}.node_is_equal */
EIF_TYPED_VALUE F1516_8377 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "node_is_equal";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 1, 8117);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8117);
	RTCC(arg1, 1515, l_feature_name, 1, Dftype(Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1515, 31, dtype));
	if (tb1) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 37, "item", arg1))(arg1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		Result = (EIF_BOOLEAN) RTEQ(tr1, tr2);
	} else {
		RTHOOK(4);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 37, "item", arg1))(arg1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		Result = (EIF_BOOLEAN) RTCEQ(tr1, tr2);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef up2
#undef arg1
}

/* {TREE}.readable */
EIF_TYPED_VALUE F1516_8378 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = (EIF_BOOLEAN) EIF_TRUE;
	return r;
}

/* {TREE}.child_readable */
EIF_TYPED_VALUE F1516_8379 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_readable";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8082);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8082);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 56, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb2) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tb1 = (EIF_BOOLEAN)(tr1 != NULL);
	}
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
}

/* {TREE}.readable_child */
EIF_TYPED_VALUE F1516_8380 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "readable_child";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8083);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8083);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 56, Dtype(Current)))(Current)).it_b);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !Result;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {TREE}.writable */
EIF_TYPED_VALUE F1516_8381 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = (EIF_BOOLEAN) EIF_TRUE;
	return r;
}

/* {TREE}.child_writable */
EIF_TYPED_VALUE F1516_8382 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_writable";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8085);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8085);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 56, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb2) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tb1 = (EIF_BOOLEAN)(tr1 != NULL);
	}
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
}

/* {TREE}.writable_child */
EIF_TYPED_VALUE F1516_8383 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "writable_child";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8086);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8086);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 56, Dtype(Current)))(Current)).it_b);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !Result;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {TREE}.child_off */
EIF_TYPED_VALUE F1516_8384 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_off";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8087);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8087);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 57, dtype))(Current)).it_b);
	if (!tb2) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 58, dtype))(Current)).it_b);
		tb1 = tb2;
	}
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {TREE}.child_before */
EIF_TYPED_VALUE F1516_8385 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_before";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8088);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8088);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 40, Dtype(Current)))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {TREE}.child_after */
EIF_TYPED_VALUE F1516_8386 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_after";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8089);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8089);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 40, dtype))(Current)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 46, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == (EIF_INTEGER_32) (ti4_2 + ((EIF_INTEGER_32) 1L)));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {TREE}.is_empty */
EIF_TYPED_VALUE F1516_8387 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_empty";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8090);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8090);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {TREE}.is_leaf */
EIF_TYPED_VALUE F1516_8388 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_leaf";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8091);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8091);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 45, Dtype(Current)))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {TREE}.is_root */
EIF_TYPED_VALUE F1516_8389 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_root";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8092);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8092);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 35, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(tr1 == NULL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
}

/* {TREE}.child_isfirst */
EIF_TYPED_VALUE F1516_8390 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_isfirst";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8093);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8093);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 60, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb2) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 40, dtype))(Current)).it_i4);
		tb1 = (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L));
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_is_leaf", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 60, dtype))(Current)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) {
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
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {TREE}.child_islast */
EIF_TYPED_VALUE F1516_8391 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_islast";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8094);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8094);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 60, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb2) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 40, dtype))(Current)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 46, dtype))(Current)).it_i4);
		tb1 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_is_leaf", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 60, dtype))(Current)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) {
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
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {TREE}.valid_cursor_index */
EIF_TYPED_VALUE F1516_8392 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_cursor_index";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 1, 8095);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8095);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	if ((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L))) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 46, dtype))(Current)).it_i4);
		tb1 = (EIF_BOOLEAN) (arg1 <= (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L)));
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("valid_cursor_index_definition", EX_POST);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(Result == (EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)))) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 46, dtype))(Current)).it_i4);
			tb1 = (EIF_BOOLEAN) (arg1 <= (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L)));
		}
		if (tb1) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef arg1
}

/* {TREE}.has */
EIF_TYPED_VALUE F1516_8393 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "has";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 1, 8096);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8096);
	RTCC(arg1, 1515, l_feature_name, 1, RTWCT(1515, 100, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1515, 31, dtype));
	if (tb1) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tb1 = '\01';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (!RTEQ(arg1, tr1)) {
			ur1 = RTCCL(arg1);
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 89, dtype))(Current, ur1x)).it_b);
			tb1 = tb2;
		}
		Result = (EIF_BOOLEAN) tb1;
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tb1 = '\01';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (!RTCEQ(arg1, tr1)) {
			ur1 = RTCCL(arg1);
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 89, dtype))(Current, ur1x)).it_b);
			tb1 = tb2;
		}
		Result = (EIF_BOOLEAN) tb1;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("not_found_in_empty", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 59, dtype))(Current)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef arg1
}

/* {TREE}.is_sibling */
EIF_TYPED_VALUE F1516_8394 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_sibling";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 1, 8097);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8097);
	RTCC(arg1, 1515, l_feature_name, 1, RTWCT(1515, 35, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_exists", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 61, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb2) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 35, "parent", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tb1 = RTCEQ(tr1, tr2);
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_root", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 61, dtype))(Current)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("other_not_root", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 61, "is_root", arg1))(arg1)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("same_parent", EX_POST);
		tb1 = '\0';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 61, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN)(Result == (EIF_BOOLEAN) !tb2)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 35, "parent", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = RTCEQ(tr1, tr2);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef arg1
}

/* {TREE}.sprout */
void F1516_8401 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "sprout";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1515, Current, 1, 0, 8098);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8098);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80005EB, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 35, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(3);
		ur1 = RTCCL(Current);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 80, "prune", loc1))(loc1, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
}

/* {TREE}.fill */
void F1516_8409 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "fill";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 1, 8099);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8099);
	if (arg1) {
		{
			EIF_TYPE_INDEX typarr0[] = {1515,1515,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[2] = RTWCT(1515, 100, Current);
			
			typres0 = eif_compound_id(Dftype(Current), 1515, typarr0);
			RTCC(arg1, 1515, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 37, "item", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 75, dtype))(Current, ur1x);
	RTHOOK(2);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 93, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
#undef arg1
}

/* {TREE}.linear_representation */
EIF_TYPED_VALUE F1516_8413 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "linear_representation";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1515, Current, 1, 0, 8100);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8100);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80004DA, 0, 0); /* loc1 */
	
	{
		EIF_TYPE_INDEX typarr0[] = {1515,1242,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = RTWCT(1515, 100, Current);
		
		typres0 = eif_compound_id(Dftype(Current), 1242, typarr0);
		tr1 = RTLN(typres0);
	}
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 47, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1242, 76, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1242, 106, "start", loc1))(loc1);
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", loc1))(loc1, ur1x);
	RTHOOK(4);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 91, dtype))(Current, ur1x);
	RTHOOK(5);
	RTDBGAL(Current, 0, 0xF80004D2, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(loc1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
}

/* {TREE}.binary_representation */
EIF_TYPED_VALUE F1516_8414 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "binary_representation";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(7);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLR(4,Result);
	RTLR(5,loc2);
	RTLR(6,loc1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1515, Current, 2, 0, 8101);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8101);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80005EC, 0,0); /* Result */
	
	{
		EIF_TYPE_INDEX typarr0[] = {1515,1516,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = RTWCT(1515, 100, Current);
		
		typres0 = eif_compound_id(Dftype(Current), 1516, typarr0);
		tr1 = RTLN(typres0);
	}
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1516, 66, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 60, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(3);
		RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
		
		loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 41, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(4);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTHOOK(5);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 86, "binary_representation", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1516, 93, "put_left_child", Result))(Result, ur1x);
		}
		RTHOOK(6);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 68, dtype))(Current);
		RTHOOK(7);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 70, dtype))(Current);
		RTHOOK(8);
		RTDBGAL(Current, 1, 0xF80005EC, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1516, 69, "left_child", Result))(Result)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		for (;;) {
			RTHOOK(9);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 58, dtype))(Current)).it_b);
			if (tb1) break;
			RTHOOK(10);
			if ((EIF_BOOLEAN)(loc1 != NULL)) {
				RTHOOK(11);
				RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
				
				loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTHOOK(12);
				if ((EIF_BOOLEAN)(loc2 != NULL)) {
					RTHOOK(13);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 86, "binary_representation", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					ur1 = RTCCL(tr1);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1516, 94, "put_right_child", loc1))(loc1, ur1x);
				}
				RTHOOK(14);
				RTDBGAL(Current, 1, 0xF80005EC, 0, 0); /* loc1 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1516, 70, "right_child", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc1 = (EIF_REFERENCE) RTCCL(tr1);
			}
			RTHOOK(15);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 70, dtype))(Current);
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(16);
		RTCT("result_is_root", EX_POST);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1516, 52, "is_root", Result))(Result)).it_b);
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(17);
		RTCT("result_has_no_right_child", EX_POST);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1516, 85, "has_right", Result))(Result)).it_b);
		if ((EIF_BOOLEAN) !tb2) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(18);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
}

/* {TREE}.copy */
void F1516_8415 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "copy";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,loc3);
	RTLR(4,ur2);
	RTLR(5,loc4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 1515, Current, 4, 1, 8102);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8102);
	RTCC(arg1, 1515, l_feature_name, 1, Dftype(Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("type_identity", EX_PRE);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 4, dtype))(Current, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 3, 0xF80005EB, 0, 0); /* loc3 */
	
	ur1 = RTCCL(arg1);
	loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 99, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(4);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", arg1))(arg1)).it_b);
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(5);
		ur1 = RTCCL(arg1);
		ur2 = RTCCL(loc3);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1515, 97, dtype))(Current, ur1x, ur2x);
	}
	RTHOOK(6);
	ur1 = RTCCL(loc3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 11, dtype))(Current, ur1x);
	RTHOOK(7);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 40, dtype))(Current)).it_i4);
	RTHOOK(8);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(9);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 46, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (loc1 > ti4_1)) break;
		RTHOOK(10);
		ui4_1 = loc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 72, dtype))(Current, ui4_1x);
		RTHOOK(11);
		RTDBGAL(Current, 4, 0xF80005EB, 0, 0); /* loc4 */
		
		loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(12);
		if ((EIF_BOOLEAN)(loc4 != NULL)) {
			RTHOOK(13);
			ur1 = RTCCL(Current);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 92, "attach_to_parent", loc4))(loc4, ur1x);
		}
		RTHOOK(14);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	RTHOOK(15);
	ui4_1 = loc2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 72, dtype))(Current, ui4_1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(16);
		RTCT("is_equal", EX_POST);
		if (RTEQ(Current, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ui4_1
#undef arg1
}

/* {TREE}.subtree_has */
EIF_TYPED_VALUE F1516_8417 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "subtree_has";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,loc2);
	RTLR(5,ur1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1515, Current, 2, 1, 8103);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8103);
	RTCC(arg1, 1515, l_feature_name, 1, RTWCT(1515, 100, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80001D8, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 39, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 68, dtype))(Current);
	for (;;) {
		RTHOOK(3);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 56, dtype))(Current)).it_b);
		if (!tb2) {
			tb1 = Result;
		}
		if (tb1) break;
		RTHOOK(4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 != NULL)) {
			RTHOOK(5);
			tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1515, 31, dtype));
			if (tb2) {
				RTHOOK(6);
				RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 38, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				Result = (EIF_BOOLEAN) RTEQ(arg1, tr1);
			} else {
				RTHOOK(7);
				RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 38, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				Result = (EIF_BOOLEAN) RTCEQ(arg1, tr1);
			}
		}
		RTHOOK(8);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 70, dtype))(Current);
	}
	RTHOOK(9);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 68, dtype))(Current);
	for (;;) {
		RTHOOK(10);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 56, dtype))(Current)).it_b);
		if (!tb3) {
			tb2 = Result;
		}
		if (tb2) break;
		RTHOOK(11);
		RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
		
		loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(12);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTHOOK(13);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			ur1 = RTCCL(arg1);
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 89, "subtree_has", loc2))(loc2, ur1x)).it_b);
			Result = (EIF_BOOLEAN) tb3;
		}
		RTHOOK(14);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 70, dtype))(Current);
	}
	RTHOOK(15);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 67, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(16);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef arg1
}

/* {TREE}.subtree_count */
EIF_TYPED_VALUE F1516_8418 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "subtree_count";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,loc2);
	RTLR(3,ur1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1515, Current, 2, 0, 8104);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8104);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 45, dtype))(Current)).it_i4);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF80001D8, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 39, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 68, dtype))(Current);
	for (;;) {
		RTHOOK(4);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 56, dtype))(Current)).it_b);
		if (tb1) break;
		RTHOOK(5);
		RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
		
		loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(6);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTHOOK(7);
			RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 90, "subtree_count", loc2))(loc2)).it_i4);
			Result += ti4_1;
		}
		RTHOOK(8);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 70, dtype))(Current);
	}
	RTHOOK(9);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 67, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(10);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ur1
}

/* {TREE}.fill_list */
void F1516_8419 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "fill_list";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc1);
	RTLR(3,tr1);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1515, Current, 1, 1, 8105);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8105);
	if (arg1) {
		{
			EIF_TYPE_INDEX typarr0[] = {1515,1242,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[2] = RTWCT(1515, 100, Current);
			
			typres0 = eif_compound_id(Dftype(Current), 1242, typarr0);
			RTCC(arg1, 1515, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 68, dtype))(Current);
	for (;;) {
		RTHOOK(2);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 56, dtype))(Current)).it_b);
		if (tb1) break;
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF80005EB, 0, 0); /* loc1 */
		
		loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(4);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTHOOK(5);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 38, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", arg1))(arg1, ur1x);
			RTHOOK(6);
			ur1 = RTCCL(arg1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 91, "fill_list", loc1))(loc1, ur1x);
		}
		RTHOOK(7);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1515, 70, dtype))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef ur1
#undef arg1
}

/* {TREE}.attach_to_parent */
void F1516_8420 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "attach_to_parent";
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
	
	RTEAA(l_feature_name, 1515, Current, 0, 1, 8106);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8106);
	RTCC(arg1, 1515, l_feature_name, 1, RTWCT(1515, 35, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1515, 35, 0xF80005EB, 0); /* parent */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1515, 35, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("new_parent", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
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

/* {TREE}.remove */
void F1516_8422 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "remove";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8107);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8107);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {TREE}.child_remove */
void F1516_8423 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "child_remove";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1515, Current, 0, 0, 8108);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1515, Current, 8108);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {TREE}.tree_is_equal */
EIF_TYPED_VALUE F1516_8424 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "tree_is_equal";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(16);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc9);
	RTLR(3,tr1);
	RTLR(4,loc10);
	RTLR(5,tr2);
	RTLR(6,loc5);
	RTLR(7,Current);
	RTLR(8,loc6);
	RTLR(9,loc7);
	RTLR(10,loc8);
	RTLR(11,loc1);
	RTLR(12,loc2);
	RTLR(13,ur1);
	RTLR(14,loc3);
	RTLR(15,loc4);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	
	RTEAA(l_feature_name, 1515, Current, 10, 2, 8109);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8109);
	RTCC(arg1, 1515, l_feature_name, 1, dftype);
	RTCC(arg2, 1515, l_feature_name, 2, dftype);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("trees_exist", EX_PRE);
		RTTE((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 != NULL) && (EIF_BOOLEAN)(arg2 != NULL)), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("trees_not_empty", EX_PRE);
		tb1 = '\0';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 59, "is_empty", arg1))(arg1)).it_b);
		if ((EIF_BOOLEAN) !tb2) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 59, "is_empty", arg2))(arg2)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("same_rule", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1515, 31, "object_comparison", arg1));
		tb2 = *(EIF_BOOLEAN *)(arg2 + RTVA(1515, 31, "object_comparison", arg2));
		RTTE((EIF_BOOLEAN)(tb1 == tb2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	RTDBGAL(Current, 9, 0xF80001D8, 0, 0); /* loc9 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 39, "child_cursor", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc9 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAL(Current, 10, 0xF80001D8, 0, 0); /* loc10 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 39, "child_cursor", arg2))(arg2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc10 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", arg1))(arg1)).it_b);
	if (tb2) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", arg2))(arg2)).it_b);
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(7);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 37, "item", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 37, "item", arg2))(arg2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		Result = (EIF_BOOLEAN) RTEQ(tr1, tr2);
	} else {
		RTHOOK(8);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", arg1))(arg1)).it_b);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", arg2))(arg2)).it_b);
		if (((tb1) != (tb2))) {
			RTHOOK(9);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
		} else {
			RTHOOK(10);
			RTDBGAL(Current, 5, 0xF80005ED, 0, 0); /* loc5 */
			
			{
				EIF_TYPE_INDEX typarr0[] = {1515,1517,0,0xFFFF};
				EIF_TYPE_INDEX typres0;
				typarr0[2] = dftype;
				
				typres0 = eif_compound_id(dftype, 1517, typarr0);
				tr1 = RTLN(typres0);
			}
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1517, 75, Dtype(tr1)))(tr1);
			RTNHOOK(10,1);
			loc5 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(11);
			RTDBGAL(Current, 6, 0xF80005ED, 0, 0); /* loc6 */
			
			{
				EIF_TYPE_INDEX typarr0[] = {1515,1517,0,0xFFFF};
				EIF_TYPE_INDEX typres0;
				typarr0[2] = dftype;
				
				typres0 = eif_compound_id(dftype, 1517, typarr0);
				tr1 = RTLN(typres0);
			}
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1517, 75, Dtype(tr1)))(tr1);
			RTNHOOK(11,1);
			loc6 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(12);
			RTDBGAL(Current, 7, 0xF80006A2, 0, 0); /* loc7 */
			
			{
				static EIF_TYPE_INDEX typarr0[] = {1515,1698,739,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1698, typarr0)));
				tr1 = RTLN(typres0);
			}
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1698, 75, Dtype(tr1)))(tr1);
			RTNHOOK(12,1);
			loc7 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(13);
			RTDBGAL(Current, 8, 0xF80006A2, 0, 0); /* loc8 */
			
			{
				static EIF_TYPE_INDEX typarr0[] = {1515,1698,739,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1698, typarr0)));
				tr1 = RTLN(typres0);
			}
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1698, 75, Dtype(tr1)))(tr1);
			RTNHOOK(13,1);
			loc8 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(14);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 40, "child_index", arg1))(arg1)).it_i4);
			ui4_1 = ti4_1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1698, 116, "put", loc7))(loc7, ui4_1x);
			RTHOOK(15);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 40, "child_index", arg2))(arg2)).it_i4);
			ui4_1 = ti4_1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1698, 116, "put", loc8))(loc8, ui4_1x);
			RTHOOK(16);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(17);
			RTDBGAL(Current, 1, 0xF80005EB, 0, 0); /* loc1 */
			
			loc1 = (EIF_REFERENCE) RTCCL(arg1);
			RTHOOK(18);
			RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
			
			loc2 = (EIF_REFERENCE) RTCCL(arg2);
			RTHOOK(19);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1515, 68, "child_start", loc1))(loc1);
			RTHOOK(20);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1515, 68, "child_start", loc2))(loc2);
			if (RTAL & CK_LOOP) {
				RTHOOK(21);
				RTCT("same_count", EX_LINV);
				ti4_1 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1517, 52, "count", loc5));
				ti4_2 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
				if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
					RTCK;
				} else {
					RTCF;
				}
			}
			for (;;) {
				RTHOOK(22);
				tb1 = '\01';
				if (!(EIF_BOOLEAN) !Result) {
					tb2 = '\0';
					tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 58, "child_after", loc1))(loc1)).it_b);
					if (tb3) {
						tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 40, "is_empty", loc5))(loc5)).it_b);
						tb2 = tb3;
					}
					tb1 = tb2;
				}
				if (tb1) break;
				if (RTAL & CK_CHECK) {
					RTHOOK(23);
					RTCT("p1_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc1 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
					RTHOOK(24);
					RTCT("p2_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc2 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(25);
				tb2 = '\0';
				tb3 = '\0';
				tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 51, "child_readable", loc1))(loc1)).it_b);
				if (tb4) {
					tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 51, "child_readable", loc2))(loc2)).it_b);
					tb3 = tb4;
				}
				if (tb3) {
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 46, "child_capacity", loc1))(loc1)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 46, "child_capacity", loc2))(loc2)).it_i4);
					tb2 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
				}
				if (tb2) {
					RTHOOK(26);
					RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
					
					ur1 = RTCCL(loc2);
					tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 49, "node_is_equal", loc1))(loc1, ur1x)).it_b);
					Result = (EIF_BOOLEAN) tb2;
					RTHOOK(27);
					RTDBGAL(Current, 3, 0xF80005EB, 0, 0); /* loc3 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 36, "child", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc3 = (EIF_REFERENCE) RTCCL(tr1);
					RTHOOK(28);
					RTDBGAL(Current, 4, 0xF80005EB, 0, 0); /* loc4 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 36, "child", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc4 = (EIF_REFERENCE) RTCCL(tr1);
					RTHOOK(29);
					if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc3 == NULL) || (EIF_BOOLEAN)(loc4 == NULL))) {
						if (RTAL & CK_CHECK) {
							RTHOOK(30);
							RTCT(NULL, EX_CHECK);
								RTCF;
						}
					} else {
						RTHOOK(31);
						tb2 = '\01';
						tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", loc3))(loc3)).it_b);
						if (!tb3) {
							tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", loc4))(loc4)).it_b);
							tb2 = tb3;
						}
						if ((EIF_BOOLEAN) !tb2) {
							RTHOOK(32);
							ur1 = RTCCL(loc1);
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1517, 116, "put", loc5))(loc5, ur1x);
							RTHOOK(33);
							ur1 = RTCCL(loc2);
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1517, 116, "put", loc6))(loc6, ur1x);
							RTHOOK(34);
							RTDBGAL(Current, 1, 0xF80005EB, 0, 0); /* loc1 */
							
							loc1 = (EIF_REFERENCE) RTCCL(loc3);
							RTHOOK(35);
							RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
							
							loc2 = (EIF_REFERENCE) RTCCL(loc4);
							RTHOOK(36);
							RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
							
							ur1 = RTCCL(loc2);
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 49, "node_is_equal", loc1))(loc1, ur1x)).it_b);
							Result = (EIF_BOOLEAN) tb2;
							RTHOOK(37);
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 40, "child_index", loc1))(loc1)).it_i4);
							ui4_1 = ti4_1;
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1698, 116, "put", loc7))(loc7, ui4_1x);
							RTHOOK(38);
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 40, "child_index", loc2))(loc2)).it_i4);
							ui4_1 = ti4_1;
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1698, 116, "put", loc8))(loc8, ui4_1x);
							RTHOOK(39);
							(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1515, 68, "child_start", loc1))(loc1);
							RTHOOK(40);
							(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1515, 68, "child_start", loc2))(loc2);
						} else {
							RTHOOK(41);
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", loc3))(loc3)).it_b);
							tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", loc4))(loc4)).it_b);
							if (((tb2) != (tb3))) {
								RTHOOK(42);
								RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
								
								Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
							} else {
								RTHOOK(43);
								RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
								
								ur1 = RTCCL(loc4);
								tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 49, "node_is_equal", loc3))(loc3, ur1x)).it_b);
								Result = (EIF_BOOLEAN) tb2;
							}
						}
					}
				} else {
					RTHOOK(44);
					tb2 = '\01';
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 46, "child_capacity", loc1))(loc1)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 46, "child_capacity", loc2))(loc2)).it_i4);
					if (!(EIF_BOOLEAN)(ti4_1 != ti4_2)) {
						tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 51, "child_readable", loc1))(loc1)).it_b);
						tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 51, "child_readable", loc2))(loc2)).it_b);
						tb2 = ((tb3) != (tb4));
					}
					if (tb2) {
						RTHOOK(45);
						RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
						
						Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
					}
				}
				RTHOOK(46);
				tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 58, "child_after", loc1))(loc1)).it_b);
				if ((EIF_BOOLEAN) !tb2) {
					RTHOOK(47);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1515, 70, "child_forth", loc1))(loc1);
					RTHOOK(48);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1515, 70, "child_forth", loc2))(loc2);
				} else {
					if (RTAL & CK_LOOP) {
						RTHOOK(49);
						RTCT("same_count", EX_LINV);
						ti4_1 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1517, 52, "count", loc5));
						ti4_2 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
						if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					for (;;) {
						RTHOOK(50);
						tb2 = '\01';
						tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 40, "is_empty", loc5))(loc5)).it_b);
						if (!tb3) {
							tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 58, "child_after", loc1))(loc1)).it_b);
							tb2 = (EIF_BOOLEAN) !tb3;
						}
						if (tb2) break;
						RTHOOK(51);
						RTDBGAL(Current, 1, 0xF80005EB, 0, 0); /* loc1 */
						
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 113, "item", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						loc1 = (EIF_REFERENCE) RTCCL(tr1);
						RTHOOK(52);
						RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
						
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 113, "item", loc6))(loc6)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						loc2 = (EIF_REFERENCE) RTCCL(tr1);
						RTHOOK(53);
						(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1515, 70, "child_forth", loc1))(loc1);
						RTHOOK(54);
						(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1515, 70, "child_forth", loc2))(loc2);
						RTHOOK(55);
						(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1517, 117, "remove", loc5))(loc5);
						RTHOOK(56);
						(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1517, 117, "remove", loc6))(loc6);
						RTHOOK(57);
						(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1698, 117, "remove", loc7))(loc7);
						RTHOOK(58);
						(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1698, 117, "remove", loc8))(loc8);
						if (RTAL & CK_LOOP) {
							RTHOOK(49);
							RTCT("same_count", EX_LINV);
							ti4_1 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1517, 52, "count", loc5));
							ti4_2 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
							if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
								RTCK;
							} else {
								RTCF;
							}
						}
					}
				}
				if (RTAL & CK_LOOP) {
					RTHOOK(21);
					RTCT("same_count", EX_LINV);
					ti4_1 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1517, 52, "count", loc5));
					ti4_2 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
					if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
						RTCK;
					} else {
						RTCF;
					}
				}
			}
			RTHOOK(59);
			if ((EIF_BOOLEAN) !Result) {
				if (RTAL & CK_LOOP) {
					RTHOOK(60);
					RTCT("same_count", EX_LINV);
					tb3 = '\0';
					ti4_1 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1517, 52, "count", loc5));
					ti4_2 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
					if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
						ti4_1 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1698, 52, "count", loc7));
						ti4_2 = *(EIF_INTEGER_32 *)(loc8 + RTVA(1698, 52, "count", loc8));
						tb3 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
					}
					if (tb3) {
						RTCK;
					} else {
						RTCF;
					}
				}
				for (;;) {
					RTHOOK(61);
					ti4_1 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1698, 52, "count", loc7));
					if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L))) break;
					RTHOOK(62);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 113, "item", loc7))(loc7)).it_i4);
					ui4_1 = ti4_2;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", loc1))(loc1, ui4_1x);
					RTHOOK(63);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 113, "item", loc8))(loc8)).it_i4);
					ui4_1 = ti4_2;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", loc2))(loc2, ui4_1x);
					RTHOOK(64);
					RTDBGAL(Current, 1, 0xF80005EB, 0, 0); /* loc1 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 113, "item", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc1 = (EIF_REFERENCE) RTCCL(tr1);
					RTHOOK(65);
					RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 113, "item", loc6))(loc6)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc2 = (EIF_REFERENCE) RTCCL(tr1);
					if (RTAL & CK_CHECK) {
						RTHOOK(66);
						RTCT("p1_not_void", EX_CHECK);
						if ((EIF_BOOLEAN)(loc1 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
						RTHOOK(67);
						RTCT("p2_not_void", EX_CHECK);
						if ((EIF_BOOLEAN)(loc2 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(68);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1517, 117, "remove", loc5))(loc5);
					RTHOOK(69);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1517, 117, "remove", loc6))(loc6);
					RTHOOK(70);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1698, 117, "remove", loc7))(loc7);
					RTHOOK(71);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1698, 117, "remove", loc8))(loc8);
					if (RTAL & CK_LOOP) {
						RTHOOK(60);
						RTCT("same_count", EX_LINV);
						tb3 = '\0';
						ti4_1 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1517, 52, "count", loc5));
						ti4_2 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
						if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
							ti4_1 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1698, 52, "count", loc7));
							ti4_2 = *(EIF_INTEGER_32 *)(loc8 + RTVA(1698, 52, "count", loc8));
							tb3 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
						}
						if (tb3) {
							RTCK;
						} else {
							RTCF;
						}
					}
				}
				if (RTAL & CK_CHECK) {
					RTHOOK(72);
					RTCT("tree_stacks_empty", EX_CHECK);
					tb3 = '\0';
					tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 40, "is_empty", loc5))(loc5)).it_b);
					if (tb4) {
						tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 40, "is_empty", loc6))(loc6)).it_b);
						tb3 = tb4;
					}
					if (tb3) {
						RTCK;
					} else {
						RTCF;
					}
					RTHOOK(73);
					RTCT("at_root", EX_CHECK);
					if ((EIF_BOOLEAN) (RTCEQ(loc1, arg1) && RTCEQ(loc2, arg2))) {
						RTCK;
					} else {
						RTCF;
					}
					RTHOOK(74);
					RTCT("p1_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc1 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
					RTHOOK(75);
					RTCT("p2_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc2 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(76);
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 113, "item", loc7))(loc7)).it_i4);
				ui4_1 = ti4_2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", loc1))(loc1, ui4_1x);
				RTHOOK(77);
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 113, "item", loc8))(loc8)).it_i4);
				ui4_1 = ti4_2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", loc2))(loc2, ui4_1x);
				RTHOOK(78);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1698, 117, "remove", loc7))(loc7);
				RTHOOK(79);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1698, 117, "remove", loc8))(loc8);
				if (RTAL & CK_CHECK) {
					RTHOOK(80);
					RTCT("index_stacks_empty", EX_CHECK);
					tb3 = '\0';
					tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 40, "is_empty", loc7))(loc7)).it_b);
					if (tb4) {
						tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 40, "is_empty", loc8))(loc8)).it_b);
						tb3 = tb4;
					}
					if (tb3) {
						RTCK;
					} else {
						RTCF;
					}
				}
			}
		}
	}
	RTHOOK(81);
	ur1 = RTCCL(loc9);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 67, "child_go_to", arg1))(arg1, ur1x);
	RTHOOK(82);
	ur1 = RTCCL(loc10);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 67, "child_go_to", arg2))(arg2, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(83);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(14);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {TREE}.tree_copy */
void F1516_8425 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "tree_copy";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(13);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLR(3,loc6);
	RTLR(4,tr1);
	RTLR(5,loc7);
	RTLR(6,loc8);
	RTLR(7,loc9);
	RTLR(8,loc2);
	RTLR(9,loc3);
	RTLR(10,loc5);
	RTLR(11,loc4);
	RTLR(12,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	
	RTEAA(l_feature_name, 1515, Current, 9, 2, 8110);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1515, Current, 8110);
	RTCC(arg1, 1515, l_feature_name, 1, dftype);
	RTCC(arg2, 1515, l_feature_name, 2, dftype);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_not_empty", EX_PRE);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(arg1 != NULL)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 59, "is_empty", arg1))(arg1)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("other_not_leaf", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("tmp_tree_exists", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("same_rule", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1515, 31, dtype));
		tb2 = *(EIF_BOOLEAN *)(arg1 + RTVA(1515, 31, "object_comparison", arg1));
		RTTE((EIF_BOOLEAN)(tb1 == tb2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(5);
	RTDBGAL(Current, 6, 0xF80005ED, 0, 0); /* loc6 */
	
	{
		EIF_TYPE_INDEX typarr0[] = {1515,1517,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1517, typarr0);
		tr1 = RTLN(typres0);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1517, 75, Dtype(tr1)))(tr1);
	RTNHOOK(5,1);
	loc6 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAL(Current, 7, 0xF80005ED, 0, 0); /* loc7 */
	
	{
		EIF_TYPE_INDEX typarr0[] = {1515,1517,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1517, typarr0);
		tr1 = RTLN(typres0);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1517, 75, Dtype(tr1)))(tr1);
	RTNHOOK(6,1);
	loc7 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	RTDBGAL(Current, 8, 0xF80006A2, 0, 0); /* loc8 */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {1515,1698,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1698, typarr0)));
		tr1 = RTLN(typres0);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1698, 75, Dtype(tr1)))(tr1);
	RTNHOOK(7,1);
	loc8 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(8);
	RTDBGAL(Current, 9, 0xF80006A2, 0, 0); /* loc9 */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {1515,1698,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1698, typarr0)));
		tr1 = RTLN(typres0);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1698, 75, Dtype(tr1)))(tr1);
	RTNHOOK(8,1);
	loc9 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(9);
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1515, 31, "object_comparison", arg1));
	if (tb1) {
		RTHOOK(10);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1515, 33, "compare_objects", arg2))(arg2);
	}
	RTHOOK(11);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 40, "child_index", arg1))(arg1)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1698, 116, "put", loc9))(loc9, ui4_1x);
	RTHOOK(12);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(13);
	RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
	
	loc2 = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(14);
	RTDBGAL(Current, 3, 0xF80005EB, 0, 0); /* loc3 */
	
	loc3 = (EIF_REFERENCE) RTCCL(arg2);
	if (RTAL & CK_LOOP) {
		RTHOOK(15);
		RTCT("same_count", EX_LINV);
		tb1 = '\0';
		ti4_1 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
		ti4_2 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1517, 52, "count", loc7));
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			ti4_1 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1517, 52, "count", loc7));
			ti4_2 = *(EIF_INTEGER_32 *)(loc8 + RTVA(1698, 52, "count", loc8));
			tb1 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	for (;;) {
		RTHOOK(16);
		tb1 = '\0';
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 46, "child_capacity", loc2))(loc2)).it_i4);
		if ((EIF_BOOLEAN) (loc1 > ti4_1)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 40, "is_empty", loc6))(loc6)).it_b);
			tb1 = tb2;
		}
		if (tb1) break;
		RTHOOK(17);
		ui4_1 = loc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", loc2))(loc2, ui4_1x);
		RTHOOK(18);
		ui4_1 = loc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", loc3))(loc3, ui4_1x);
		RTHOOK(19);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 51, "child_readable", loc2))(loc2)).it_b);
		if (tb2) {
			if (RTAL & CK_CHECK) {
				RTHOOK(20);
				RTCT("source_tree_not_void", EX_CHECK);
				if ((EIF_BOOLEAN)(loc2 != NULL)) {
					RTCK;
				} else {
					RTCF;
				}
				RTHOOK(21);
				RTCT("target_tree_not_void", EX_CHECK);
				if ((EIF_BOOLEAN)(loc3 != NULL)) {
					RTCK;
				} else {
					RTCF;
				}
				RTHOOK(22);
				RTCT("source_child_not_void", EX_CHECK);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 36, "child", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				if ((EIF_BOOLEAN)(tr1 != NULL)) {
					RTCK;
				} else {
					RTCF;
				}
				RTHOOK(23);
				RTCT("target_child_void", EX_CHECK);
				tb2 = '\01';
				tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 52, "readable_child", loc3))(loc3)).it_b);
				if (tb3) {
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 36, "child", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					tb2 = (EIF_BOOLEAN)(tr1 == NULL);
				}
				if (tb2) {
					RTCK;
				} else {
					RTCF;
				}
			}
			RTHOOK(24);
			RTDBGAL(Current, 5, 0xF80005EB, 0, 0); /* loc5 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 36, "child", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc5 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(25);
			if ((EIF_BOOLEAN)(loc5 == NULL)) {
				if (RTAL & CK_CHECK) {
					RTHOOK(26);
					RTCT("source_child_not_void", EX_CHECK);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 36, "child", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					if ((EIF_BOOLEAN)(tr1 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
			} else {
				RTHOOK(27);
				RTDBGAL(Current, 4, 0xF80005EB, 0, 0); /* loc4 */
				
				ur1 = RTCCL(loc5);
				loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1515, 99, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				if (RTAL & CK_CHECK) {
					RTHOOK(28);
					RTCT("not_the_same", EX_CHECK);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 36, "child", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					if (!RTCEQ(loc4, tr1)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(29);
				ur1 = RTCCL(loc4);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 78, "put_child", loc3))(loc3, ur1x);
				if (RTAL & CK_CHECK) {
					RTHOOK(30);
					RTCT("node_is_child", EX_CHECK);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 36, "child", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					if (RTCEQ(loc4, tr1)) {
						RTCK;
					} else {
						RTCF;
					}
					RTHOOK(31);
					RTCT("comparison_mode_ok", EX_CHECK);
					tb2 = *(EIF_BOOLEAN *)(loc4 + RTVA(1515, 31, "object_comparison", loc4));
					tb3 = *(EIF_BOOLEAN *)(loc5 + RTVA(1515, 31, "object_comparison", loc5));
					if ((EIF_BOOLEAN)(tb2 == tb3)) {
						RTCK;
					} else {
						RTCF;
					}
					RTHOOK(32);
					RTCT("p1_consistent", EX_CHECK);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 35, "parent", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					if (RTCEQ(tr1, loc2)) {
						RTCK;
					} else {
						RTCF;
					}
					RTHOOK(33);
					RTCT("p2_consistent", EX_CHECK);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 35, "parent", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					if (RTCEQ(tr1, loc3)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(34);
				tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 60, "is_leaf", loc5))(loc5)).it_b);
				if ((EIF_BOOLEAN) !tb2) {
					RTHOOK(35);
					ur1 = RTCCL(loc2);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1517, 116, "put", loc6))(loc6, ur1x);
					RTHOOK(36);
					ur1 = RTCCL(loc3);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1517, 116, "put", loc7))(loc7, ur1x);
					RTHOOK(37);
					ui4_1 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 1L));
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1698, 116, "put", loc8))(loc8, ui4_1x);
					RTHOOK(38);
					RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
					
					loc2 = (EIF_REFERENCE) RTCCL(loc5);
					RTHOOK(39);
					RTDBGAL(Current, 3, 0xF80005EB, 0, 0); /* loc3 */
					
					loc3 = (EIF_REFERENCE) RTCCL(loc4);
					RTHOOK(40);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 40, "child_index", loc2))(loc2)).it_i4);
					ui4_1 = ti4_1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1698, 116, "put", loc9))(loc9, ui4_1x);
					RTHOOK(41);
					RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
					
					loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
				}
			}
		}
		RTHOOK(42);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 46, "child_capacity", loc2))(loc2)).it_i4);
		if ((EIF_BOOLEAN) (loc1 <= ti4_1)) {
			RTHOOK(43);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			loc1++;
		} else {
			if (RTAL & CK_LOOP) {
				RTHOOK(44);
				RTCT("same_count", EX_LINV);
				tb2 = '\0';
				ti4_1 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
				ti4_2 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1517, 52, "count", loc7));
				if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
					ti4_1 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1517, 52, "count", loc7));
					ti4_2 = *(EIF_INTEGER_32 *)(loc8 + RTVA(1698, 52, "count", loc8));
					tb2 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
				}
				if (tb2) {
					RTCK;
				} else {
					RTCF;
				}
			}
			for (;;) {
				RTHOOK(45);
				tb2 = '\01';
				tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 40, "is_empty", loc6))(loc6)).it_b);
				if (!tb3) {
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 46, "child_capacity", loc2))(loc2)).it_i4);
					tb2 = (EIF_BOOLEAN) (loc1 <= ti4_1);
				}
				if (tb2) break;
				RTHOOK(46);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 113, "item", loc9))(loc9)).it_i4);
				ui4_1 = ti4_1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", loc2))(loc2, ui4_1x);
				RTHOOK(47);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 113, "item", loc9))(loc9)).it_i4);
				ui4_1 = ti4_1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", loc3))(loc3, ui4_1x);
				if (RTAL & CK_CHECK) {
					RTHOOK(48);
					RTCT("child_indices_equal", EX_CHECK);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 40, "child_index", loc2))(loc2)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 40, "child_index", loc3))(loc3)).it_i4);
					if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(49);
				RTDBGAL(Current, 2, 0xF80005EB, 0, 0); /* loc2 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 113, "item", loc6))(loc6)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc2 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(50);
				RTDBGAL(Current, 3, 0xF80005EB, 0, 0); /* loc3 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 113, "item", loc7))(loc7)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc3 = (EIF_REFERENCE) RTCCL(tr1);
				if (RTAL & CK_CHECK) {
					RTHOOK(51);
					RTCT("p1_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc2 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
					RTHOOK(52);
					RTCT("p2_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc3 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(53);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 113, "item", loc8))(loc8)).it_i4);
				loc1 = (EIF_INTEGER_32) ti4_1;
				RTHOOK(54);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1517, 117, "remove", loc6))(loc6);
				RTHOOK(55);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1517, 117, "remove", loc7))(loc7);
				RTHOOK(56);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1698, 117, "remove", loc8))(loc8);
				RTHOOK(57);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1698, 117, "remove", loc9))(loc9);
				if (RTAL & CK_LOOP) {
					RTHOOK(44);
					RTCT("same_count", EX_LINV);
					tb2 = '\0';
					ti4_1 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
					ti4_2 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1517, 52, "count", loc7));
					if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
						ti4_1 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1517, 52, "count", loc7));
						ti4_2 = *(EIF_INTEGER_32 *)(loc8 + RTVA(1698, 52, "count", loc8));
						tb2 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
					}
					if (tb2) {
						RTCK;
					} else {
						RTCF;
					}
				}
			}
		}
		if (RTAL & CK_LOOP) {
			RTHOOK(15);
			RTCT("same_count", EX_LINV);
			tb1 = '\0';
			ti4_1 = *(EIF_INTEGER_32 *)(loc6 + RTVA(1517, 52, "count", loc6));
			ti4_2 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1517, 52, "count", loc7));
			if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
				ti4_1 = *(EIF_INTEGER_32 *)(loc7 + RTVA(1517, 52, "count", loc7));
				ti4_2 = *(EIF_INTEGER_32 *)(loc8 + RTVA(1698, 52, "count", loc8));
				tb1 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
			}
			if (tb1) {
				RTCK;
			} else {
				RTCF;
			}
		}
	}
	RTHOOK(58);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 113, "item", loc9))(loc9)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", arg1))(arg1, ui4_1x);
	RTHOOK(59);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 113, "item", loc9))(loc9)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1515, 72, "child_go_i_th", arg2))(arg2, ui4_1x);
	RTHOOK(60);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1698, 117, "remove", loc9))(loc9);
	if (RTAL & CK_CHECK) {
		RTHOOK(61);
		RTCT("tree_stacks_empty", EX_CHECK);
		tb3 = '\0';
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 40, "is_empty", loc6))(loc6)).it_b);
		if (tb4) {
			tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1517, 40, "is_empty", loc7))(loc7)).it_b);
			tb3 = tb4;
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(62);
		RTCT("at_root", EX_CHECK);
		if ((EIF_BOOLEAN) (RTCEQ(loc2, arg1) && RTCEQ(loc3, arg2))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(63);
		RTCT("copy_correct", EX_CHECK);
		if (RTEQ(arg1, arg2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(64);
		RTCT("index_stack_empty", EX_CHECK);
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1698, 40, "is_empty", loc9))(loc9)).it_b);
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(65);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(13);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {TREE}._invariant */
void F1516_23714 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTEAINV(l_feature_name, 1515, Current, 1, 23713);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("tree_consistency", Current);
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 51, dtype))(Current)).it_b);
	if (tb2) {
		tb2 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = RTCCL(tr1);
		if (EIF_TEST(loc1)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1515, 35, "parent", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb2 = RTCEQ(tr1, Current);
		}
		tb1 = tb2;
	}
	if (tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("leaf_definition", Current);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 60, dtype))(Current)).it_b);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 45, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L)))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("child_off_definition", Current);
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 56, dtype))(Current)).it_b);
	tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 57, dtype))(Current)).it_b);
	if (!(EIF_BOOLEAN)(tb2 == tb3)) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 58, dtype))(Current)).it_b);
		tb1 = tb2;
	}
	if (tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("child_before_definition", Current);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 57, dtype))(Current)).it_b);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 40, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L)))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("child_isfirst_definition", Current);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 62, dtype))(Current)).it_b);
	tb2 = '\0';
	tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 60, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb3) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 40, dtype))(Current)).it_i4);
		tb2 = (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L));
	}
	if ((EIF_BOOLEAN)(tb1 == tb2)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("child_islast_definition", Current);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 63, dtype))(Current)).it_b);
	tb2 = '\0';
	tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 60, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb3) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 40, dtype))(Current)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 46, dtype))(Current)).it_i4);
		tb2 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
	}
	if ((EIF_BOOLEAN)(tb1 == tb2)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("child_after_definition", Current);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 58, dtype))(Current)).it_b);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 40, dtype))(Current)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1515, 46, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) (ti4_1 >= (EIF_INTEGER_32) (ti4_2 + ((EIF_INTEGER_32) 1L))))) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(3);
	RTMD(0);
	RTLE;
	RTEE;
#undef up1
}

void EIF_Minit1516 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
