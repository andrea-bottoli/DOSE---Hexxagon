/*
 * Code for class EV_GDI_PEN
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F777_14953(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F777_14954(EIF_REFERENCE);
extern EIF_TYPED_VALUE F777_14955(EIF_REFERENCE);
extern EIF_TYPED_VALUE F777_14956(EIF_REFERENCE);
extern EIF_TYPED_VALUE F777_14957(EIF_REFERENCE);
extern EIF_TYPED_VALUE F777_14958(EIF_REFERENCE);
extern EIF_TYPED_VALUE F777_14959(EIF_REFERENCE);
extern EIF_TYPED_VALUE F777_14960(EIF_REFERENCE);
extern EIF_TYPED_VALUE F777_14961(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F777_14962(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit777(void);

#ifdef __cplusplus
}
#endif

#include "eif_helpers.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {EV_GDI_PEN}.make_with_values */
void F777_14953 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "make_with_values";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,arg3);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 776, Current, 0, 3, 18951);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(776, Current, 18951);
	if (arg3) {
		RTCC(arg3, 776, l_feature_name, 3, 673);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ur1 = RTCCL(arg3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(776, 49, Dtype(Current)))(Current, ui4_1x, ui4_2x, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_GDI_PEN}.hash_code */
EIF_TYPED_VALUE F777_14954 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hash_code";
	RTEX;
	EIF_REAL_32 loc1 = (EIF_REAL_32) 0;
	EIF_REFERENCE tr1 = NULL;
	EIF_REAL_32 tr4_1;
	EIF_REAL_32 tr4_2;
	EIF_REAL_32 tr4_3;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REAL32, &loc1);
	
	RTEAA(l_feature_name, 776, Current, 1, 0, 18952);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(776, Current, 18952);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 32, dtype));
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0x18000000, 1, 0); /* loc1 */
		
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 44, dtype));
		tr4_1 = (EIF_REAL_32) (ti4_1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 46, dtype));
		tr4_2 = (EIF_REAL_32) (ti4_1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 45, dtype));
		tr4_3 = (EIF_REAL_32) (ti4_1);
		loc1 = (EIF_REAL_32) (EIF_REAL_32) ((EIF_REAL_32) ((EIF_REAL_32) ((EIF_REAL_32) 262144.0 * tr4_1) + (EIF_REAL_32) ((EIF_REAL_32) 4096.0 * tr4_2)) + (EIF_REAL_32) ((EIF_REAL_32) 64.0 * tr4_3));
		RTHOOK(3);
		RTDBGAA(Current, dtype, 776, 32, 0x10000000, 1); /* computed_hash_code */
		
		tr4_1 = eif_abs_real32 (loc1);
		RTNHOOK(3,1);
		tr1 = RTLN(760);
		*(EIF_REAL_32 *)tr1 = tr4_1;
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(761, 54, "floor", tr1))(tr1)).it_i4);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 43, dtype));
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 42, dtype));
		ti4_4 = eif_abs_int32 ((EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 + (EIF_INTEGER_32) (ti4_2 * ((EIF_INTEGER_32) 2L))) + ti4_3));
		*(EIF_INTEGER_32 *)(Current + RTWA(776, 32, dtype)) = (EIF_INTEGER_32) ti4_4;
	}
	RTHOOK(4);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(776, 32, dtype));
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("good_hash_value", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) 0L))) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {EV_GDI_PEN}.style */
EIF_TYPED_VALUE F777_14955 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(776,42, Dtype(Current)));
	return r;
}


/* {EV_GDI_PEN}.line_width */
EIF_TYPED_VALUE F777_14956 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(776,43, Dtype(Current)));
	return r;
}


/* {EV_GDI_PEN}.color_red */
EIF_TYPED_VALUE F777_14957 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(776,44, Dtype(Current)));
	return r;
}


/* {EV_GDI_PEN}.color_blue */
EIF_TYPED_VALUE F777_14958 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(776,45, Dtype(Current)));
	return r;
}


/* {EV_GDI_PEN}.color_green */
EIF_TYPED_VALUE F777_14959 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(776,46, Dtype(Current)));
	return r;
}


/* {EV_GDI_PEN}.item */
EIF_TYPED_VALUE F777_14960 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(776,47, Dtype(Current)));
	return r;
}


/* {EV_GDI_PEN}.is_equal */
EIF_TYPED_VALUE F777_14961 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_equal";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
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
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 776, Current, 0, 1, 18959);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(776, Current, 18959);
	RTCC(arg1, 776, l_feature_name, 1, 776);
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
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tb2 = '\0';
	tb3 = '\0';
	tb4 = '\0';
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 42, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(arg1 + RTVA(776, 42, "style", arg1));
	if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 43, dtype));
		ti4_2 = *(EIF_INTEGER_32 *)(arg1 + RTVA(776, 43, "line_width", arg1));
		tb4 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
	}
	if (tb4) {
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 44, dtype));
		ti4_2 = *(EIF_INTEGER_32 *)(arg1 + RTVA(776, 44, "color_red", arg1));
		tb3 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
	}
	if (tb3) {
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 46, dtype));
		ti4_2 = *(EIF_INTEGER_32 *)(arg1 + RTVA(776, 46, "color_green", arg1));
		tb2 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
	}
	if (tb2) {
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(776, 45, dtype));
		ti4_2 = *(EIF_INTEGER_32 *)(arg1 + RTVA(776, 45, "color_blue", arg1));
		tb1 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("symmetric", EX_POST);
		if ((!(Result) || (RTEQ(arg1, Current)))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("consistent", EX_POST);
		tb1 = '\01';
		ur1 = RTCCL(arg1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(776, 5, dtype))(Current, ur1x)).it_b);
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
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ur1
#undef arg1
}

/* {EV_GDI_PEN}.set_values */
void F777_14962 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "set_values";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,arg3);
	RTLR(1,Current);
	RTLR(2,loc1);
	RTLR(3,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 776, Current, 1, 3, 18960);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(776, Current, 18960);
	if (arg3) {
		RTCC(arg3, 776, l_feature_name, 3, 673);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 776, 42, 0x10000000, 1); /* style */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(776, 42, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 776, 43, 0x10000000, 1); /* line_width */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(776, 43, dtype)) = (EIF_INTEGER_32) arg2;
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF80003FC, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(673, 56, "color", arg3))(arg3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 776, 44, 0x10000000, 1); /* color_red */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 75, "red", loc1))(loc1)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(776, 44, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 776, 45, 0x10000000, 1); /* color_blue */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 77, "blue", loc1))(loc1)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(776, 45, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(6);
	RTDBGAA(Current, dtype, 776, 46, 0x10000000, 1); /* color_green */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 76, "green", loc1))(loc1)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(776, 46, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(7);
	RTDBGAA(Current, dtype, 776, 32, 0x10000000, 1); /* computed_hash_code */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(776, 32, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef arg3
#undef arg2
#undef arg1
}

void EIF_Minit777 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
