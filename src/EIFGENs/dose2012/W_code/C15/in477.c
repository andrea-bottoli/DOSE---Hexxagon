/*
 * Code for class INTEGER_INTERVAL
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F477_8770(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F477_8771(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8772(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8773(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8774(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8775(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8776(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8777(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8778(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8779(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8780(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8781(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8782(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8783(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8784(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8785(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8786(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8787(EIF_REFERENCE);
extern void F477_8788(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F477_8789(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F477_8790(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F477_8791(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F477_8792(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F477_8793(EIF_REFERENCE);
extern void F477_8794(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8795(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8796(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8797(EIF_REFERENCE);
extern void F477_8798(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8799(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F477_8800(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8801(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8802(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8803(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8804(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F477_8805(EIF_REFERENCE);
extern EIF_TYPED_VALUE F477_8806(EIF_REFERENCE);
extern void F477_8807(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F477_8808(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F477_23730(EIF_REFERENCE, int);
extern void EIF_Minit477(void);

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

/* {INTEGER_INTERVAL}.make */
void F477_8770 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 2, 9077);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9077);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 476, 49, 0x04000000, 1); /* lower_defined */
	
	*(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 476, 51, 0x04000000, 1); /* upper_defined */
	
	*(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(3);
	if ((EIF_BOOLEAN) (arg1 <= arg2)) {
		RTHOOK(4);
		RTDBGAA(Current, dtype, 476, 83, 0x10000000, 1); /* lower_internal */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(476, 83, dtype)) = (EIF_INTEGER_32) arg1;
		RTHOOK(5);
		RTDBGAA(Current, dtype, 476, 82, 0x10000000, 1); /* upper_internal */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(476, 82, dtype)) = (EIF_INTEGER_32) arg2;
	} else {
		RTHOOK(6);
		RTDBGAA(Current, dtype, 476, 83, 0x10000000, 1); /* lower_internal */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(476, 83, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
		RTHOOK(7);
		RTDBGAA(Current, dtype, 476, 82, 0x10000000, 1); /* upper_internal */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(476, 82, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("lower_defined", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("upper_defined", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("set_if_non_empty", EX_POST);
		tb1 = '\01';
		if ((EIF_BOOLEAN) (arg1 <= arg2)) {
			tb2 = '\0';
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
				tb2 = (EIF_BOOLEAN)(ti4_1 == arg2);
			}
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(11);
		RTCT("empty_if_not_in_order", EX_POST);
		tb1 = '\01';
		if ((EIF_BOOLEAN) (arg1 > arg2)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 35, dtype))(Current)).it_b);
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
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef arg2
#undef arg1
}

/* {INTEGER_INTERVAL}.adapt */
void F477_8771 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "adapt";
	RTEX;
#define arg1 arg1x.it_r
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(2);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9078);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9078);
	if (arg1) {
		RTCC(arg1, 476, l_feature_name, 1, 476);
	}
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
	RTDBGAA(Current, dtype, 476, 83, 0x10000000, 1); /* lower_internal */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(476, 83, "lower_internal", arg1));
	*(EIF_INTEGER_32 *)(Current + RTWA(476, 83, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 476, 82, 0x10000000, 1); /* upper_internal */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(476, 82, "upper_internal", arg1));
	*(EIF_INTEGER_32 *)(Current + RTWA(476, 82, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 476, 49, 0x04000000, 1); /* lower_defined */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(476, 49, "lower_defined", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 476, 51, 0x04000000, 1); /* upper_defined */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(476, 51, "upper_defined", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype)) = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("same_lower", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 50, "lower", arg1))(arg1)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(7);
		RTCT("same_upper", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 52, "upper", arg1))(arg1)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("same_lower_defined", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		tb2 = *(EIF_BOOLEAN *)(arg1 + RTVA(476, 49, "lower_defined", arg1));
		if ((EIF_BOOLEAN)(tb1 == tb2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("same_upper_defined", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(arg1 + RTVA(476, 51, "upper_defined", arg1));
		if ((EIF_BOOLEAN)(tb1 == tb2)) {
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
	RTLO(3);
	RTEE;
#undef arg1
}

/* {INTEGER_INTERVAL}.lower_defined */
EIF_TYPED_VALUE F477_8772 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(476,49, Dtype(Current)));
	return r;
}


/* {INTEGER_INTERVAL}.lower */
EIF_TYPED_VALUE F477_8773 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "lower";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9080);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9080);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("lower_defined", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(476, 83, dtype));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {INTEGER_INTERVAL}.upper_defined */
EIF_TYPED_VALUE F477_8774 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(476,51, Dtype(Current)));
	return r;
}


/* {INTEGER_INTERVAL}.upper */
EIF_TYPED_VALUE F477_8775 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "upper";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9082);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9082);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("upper_defined", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(476, 82, dtype));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {INTEGER_INTERVAL}.item */
EIF_TYPED_VALUE F477_8776 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "item";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9083);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9083);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_key", EX_PRE);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 56, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCK;
		RTHOOK(2);
		RTCT("valid_index", EX_PRE);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 56, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_2);
		RTCK;
		RTJB;
label_2:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (EIF_INTEGER_32) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef ui4_1
#undef arg1
}

/* {INTEGER_INTERVAL}.at */
EIF_TYPED_VALUE F477_8777 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "at";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9084);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9084);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_key", EX_PRE);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 56, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (EIF_INTEGER_32) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef ui4_1
#undef arg1
}

/* {INTEGER_INTERVAL}.has */
EIF_TYPED_VALUE F477_8778 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "has";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
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
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9085);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9085);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tb2 = '\01';
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
	if (tb3) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		tb2 = (EIF_BOOLEAN) (arg1 <= ti4_1);
	}
	if (tb2) {
		tb2 = '\01';
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		if (tb3) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
			tb2 = (EIF_BOOLEAN) (arg1 >= ti4_1);
		}
		tb1 = tb2;
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_found_in_empty", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 35, dtype))(Current)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(3);
		RTCT("iff_within_bounds", EX_POST);
		tb1 = '\0';
		tb2 = '\01';
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		if (tb3) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
			tb2 = (EIF_BOOLEAN) (arg1 <= ti4_1);
		}
		if (tb2) {
			tb2 = '\01';
			tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
			if (tb3) {
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
				tb2 = (EIF_BOOLEAN) (arg1 >= ti4_1);
			}
			tb1 = tb2;
		}
		if ((EIF_BOOLEAN)(Result == tb1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef arg1
}

/* {INTEGER_INTERVAL}.valid_index */
EIF_TYPED_VALUE F477_8779 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_index";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9086);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9086);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tb2 = '\01';
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
	if (tb3) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		tb2 = (EIF_BOOLEAN) (arg1 <= ti4_1);
	}
	if (tb2) {
		tb2 = '\01';
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		if (tb3) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
			tb2 = (EIF_BOOLEAN) (arg1 >= ti4_1);
		}
		tb1 = tb2;
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("only_if_in_index_set", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = '\0';
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(2,1);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 50, "lower", tr1))(tr1)).it_i4);
			if ((EIF_BOOLEAN) (arg1 >= ti4_1)) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(2,2);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 52, "upper", tr1))(tr1)).it_i4);
				tb2 = (EIF_BOOLEAN) (arg1 <= ti4_1);
			}
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(3);
		RTCT("iff_within_bounds", EX_POST);
		tb1 = '\0';
		tb2 = '\01';
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		if (tb3) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
			tb2 = (EIF_BOOLEAN) (arg1 <= ti4_1);
		}
		if (tb2) {
			tb2 = '\01';
			tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
			if (tb3) {
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
				tb2 = (EIF_BOOLEAN) (arg1 >= ti4_1);
			}
			tb1 = tb2;
		}
		if ((EIF_BOOLEAN)(Result == tb1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef arg1
}

/* {INTEGER_INTERVAL}.occurrences */
EIF_TYPED_VALUE F477_8780 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "occurrences";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9087);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9087);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 55, dtype))(Current, ui4_1x)).it_b);
	if (tb1) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("non_negative_occurrences", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("one_iff_in_bounds", EX_POST);
		tb1 = '\01';
		if ((EIF_BOOLEAN)(Result == ((EIF_INTEGER_32) 1L))) {
			ui4_1 = arg1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 55, dtype))(Current, ui4_1x)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("zero_otherwise", EX_POST);
		if ((!((EIF_BOOLEAN)(Result != ((EIF_INTEGER_32) 1L))) || ((EIF_BOOLEAN)(Result == ((EIF_INTEGER_32) 0L))))) {
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
#undef ui4_1
#undef arg1
}

/* {INTEGER_INTERVAL}.capacity */
EIF_TYPED_VALUE F477_8781 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "capacity";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9088);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9088);
	RTIV(Current, RTAL);
	if (RTAL & CK_CHECK) {
		RTHOOK(1);
		RTCT("terminal", EX_CHECK);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		if ((EIF_BOOLEAN) (tb1 && tb2)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("capacity_non_negative", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {INTEGER_INTERVAL}.count */
EIF_TYPED_VALUE F477_8782 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "count";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9089);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9089);
	RTIV(Current, RTAL);
	if (RTAL & CK_CHECK) {
		RTHOOK(1);
		RTCT("finite", EX_CHECK);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		if ((EIF_BOOLEAN) (tb1 && tb2)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(2);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
	if ((EIF_BOOLEAN) (tb1 && tb2)) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		Result = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (Result - ti4_1) + ((EIF_INTEGER_32) 1L));
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("count_non_negative", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("definition", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(Result == (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - ti4_2) + ((EIF_INTEGER_32) 1L)))) {
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
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {INTEGER_INTERVAL}.index_set */
EIF_TYPED_VALUE F477_8783 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "index_set";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9090);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9090);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80001DC, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(3);
		RTCT("index_set_is_range", EX_POST);
		if (RTEQ(Result, Current)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

/* {INTEGER_INTERVAL}.is_equal */
EIF_TYPED_VALUE F477_8784 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
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
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9091);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9091);
	RTCC(arg1, 476, l_feature_name, 1, 476);
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
	tb2 = '\01';
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
	if (tb3) {
		tb3 = '\0';
		tb4 = *(EIF_BOOLEAN *)(arg1 + RTVA(476, 49, "lower_defined", arg1));
		if (tb4) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 50, "lower", arg1))(arg1)).it_i4);
			tb3 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
		}
		tb2 = tb3;
	}
	if (tb2) {
		tb2 = '\01';
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		if (tb3) {
			tb3 = '\0';
			tb4 = *(EIF_BOOLEAN *)(arg1 + RTVA(476, 51, "upper_defined", arg1));
			if (tb4) {
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 52, "upper", arg1))(arg1)).it_i4);
				tb3 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
			}
			tb2 = tb3;
		}
		tb1 = tb2;
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
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 5, dtype))(Current, ur1x)).it_b);
		if (tb2) {
			tb1 = Result;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("iff_same_bounds", EX_POST);
		tb1 = '\0';
		tb2 = '\01';
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		if (tb3) {
			tb3 = '\0';
			tb4 = *(EIF_BOOLEAN *)(arg1 + RTVA(476, 49, "lower_defined", arg1));
			if (tb4) {
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 50, "lower", arg1))(arg1)).it_i4);
				tb3 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
			}
			tb2 = tb3;
		}
		if (tb2) {
			tb2 = '\01';
			tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
			if (tb3) {
				tb3 = '\0';
				tb4 = *(EIF_BOOLEAN *)(arg1 + RTVA(476, 51, "upper_defined", arg1));
				if (tb4) {
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 52, "upper", arg1))(arg1)).it_i4);
					tb3 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
				}
				tb2 = tb3;
			}
			tb1 = tb2;
		}
		if ((EIF_BOOLEAN)(Result == tb1)) {
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
#undef ur1
#undef arg1
}

/* {INTEGER_INTERVAL}.all_cleared */
EIF_TYPED_VALUE F477_8785 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "all_cleared";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9092);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9092);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		tb1 = (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L));
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("iff_at_zero", EX_POST);
		tb1 = '\0';
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
			tb1 = (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L));
		}
		if ((EIF_BOOLEAN)(Result == tb1)) {
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

/* {INTEGER_INTERVAL}.extendible */
EIF_TYPED_VALUE F477_8786 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "extendible";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9093);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(476, Current, 9093);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
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

/* {INTEGER_INTERVAL}.prunable */
EIF_TYPED_VALUE F477_8787 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "prunable";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9094);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(476, Current, 9094);
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

/* {INTEGER_INTERVAL}.extend */
void F477_8788 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "extend";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_REFERENCE tr6 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(7);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,tr4);
	RTLR(5,tr5);
	RTLR(6,tr6);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9095);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9095);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("extendible", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 63, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		ti4_2 = ti4_3;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		RTE_OT
		ui4_1 = arg1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 55, dtype))(Current, ui4_1x)).it_b);
		tb1 = tb2;
		tr3 = NULL;
		RTE_O
		tr3 = RTLA;
		RTE_OE
		RTE_OT
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		ti4_3 = ti4_4;
		tr4 = NULL;
		RTE_O
		tr4 = RTLA;
		RTE_OE
		RTE_OT
		ui4_1 = arg1;
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 55, dtype))(Current, ui4_1x)).it_b);
		tb2 = tb3;
		tr5 = NULL;
		RTE_O
		tr5 = RTLA;
		RTE_OE
		RTE_OT
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		ti4_4 = ti4_5;
		tr6 = NULL;
		RTE_O
		tr6 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(2);
	ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN) (arg1 < ti4_5)) {
		RTHOOK(3);
		RTDBGAA(Current, dtype, 476, 83, 0x10000000, 1); /* lower_internal */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(476, 83, dtype)) = (EIF_INTEGER_32) arg1;
	} else {
		RTHOOK(4);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (arg1 > ti4_5)) {
			RTHOOK(5);
			RTDBGAA(Current, dtype, 476, 82, 0x10000000, 1); /* upper_internal */
			
			*(EIF_INTEGER_32 *)(Current + RTWA(476, 82, dtype)) = (EIF_INTEGER_32) arg1;
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("item_inserted", EX_POST);
		ui4_1 = arg1;
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 42, dtype))(Current, ui4_1x)).it_b);
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(7);
		RTCT("in_set_already", EX_POST);
		tb3 = '\01';
		RTCO(tr3);
		if (tb1) {
			ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
			RTCO(tr4);
			tb3 = (EIF_BOOLEAN)(ti4_5 == ti4_3);
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("added_to_set", EX_POST);
		tb3 = '\01';
		RTCO(tr5);
		if ((EIF_BOOLEAN) !tb2) {
			ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
			RTCO(tr6);
			tb3 = (EIF_BOOLEAN)(ti4_5 == (EIF_INTEGER_32) (ti4_4 + ((EIF_INTEGER_32) 1L)));
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("extended_down", EX_POST);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		RTCO(tr1);
		ui4_1 = arg1;
		ti4_6 = eif_min_int32 (ti4_1,ui4_1);
		if ((EIF_BOOLEAN)(ti4_5 == ti4_6)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("extended_up", EX_POST);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		RTCO(tr2);
		ui4_1 = arg1;
		ti4_6 = eif_max_int32 (ti4_2,ui4_1);
		if ((EIF_BOOLEAN)(ti4_5 == ti4_6)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef ui4_1
#undef arg1
}

/* {INTEGER_INTERVAL}.put */
void F477_8789 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_REFERENCE tr6 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(7);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,tr4);
	RTLR(5,tr5);
	RTLR(6,tr6);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9096);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9096);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("extendible", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 63, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		ti4_2 = ti4_3;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		RTE_OT
		ui4_1 = arg1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 55, dtype))(Current, ui4_1x)).it_b);
		tb1 = tb2;
		tr3 = NULL;
		RTE_O
		tr3 = RTLA;
		RTE_OE
		RTE_OT
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		ti4_3 = ti4_4;
		tr4 = NULL;
		RTE_O
		tr4 = RTLA;
		RTE_OE
		RTE_OT
		ui4_1 = arg1;
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 55, dtype))(Current, ui4_1x)).it_b);
		tb2 = tb3;
		tr5 = NULL;
		RTE_O
		tr5 = RTLA;
		RTE_OE
		RTE_OT
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		ti4_4 = ti4_5;
		tr6 = NULL;
		RTE_O
		tr6 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(2);
	ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN) (arg1 < ti4_5)) {
		RTHOOK(3);
		RTDBGAA(Current, dtype, 476, 83, 0x10000000, 1); /* lower_internal */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(476, 83, dtype)) = (EIF_INTEGER_32) arg1;
	} else {
		RTHOOK(4);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (arg1 > ti4_5)) {
			RTHOOK(5);
			RTDBGAA(Current, dtype, 476, 82, 0x10000000, 1); /* upper_internal */
			
			*(EIF_INTEGER_32 *)(Current + RTWA(476, 82, dtype)) = (EIF_INTEGER_32) arg1;
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("item_inserted", EX_POST);
		ui4_1 = arg1;
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 42, dtype))(Current, ui4_1x)).it_b);
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(7);
		RTCT("in_set_already", EX_POST);
		tb3 = '\01';
		RTCO(tr3);
		if (tb1) {
			ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
			RTCO(tr4);
			tb3 = (EIF_BOOLEAN)(ti4_5 == ti4_3);
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("added_to_set", EX_POST);
		tb3 = '\01';
		RTCO(tr5);
		if ((EIF_BOOLEAN) !tb2) {
			ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
			RTCO(tr6);
			tb3 = (EIF_BOOLEAN)(ti4_5 == (EIF_INTEGER_32) (ti4_4 + ((EIF_INTEGER_32) 1L)));
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("extended_down", EX_POST);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		RTCO(tr1);
		ui4_1 = arg1;
		ti4_6 = eif_min_int32 (ti4_1,ui4_1);
		if ((EIF_BOOLEAN)(ti4_5 == ti4_6)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("extended_up", EX_POST);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		RTCO(tr2);
		ui4_1 = arg1;
		ti4_6 = eif_max_int32 (ti4_2,ui4_1);
		if ((EIF_BOOLEAN)(ti4_5 == ti4_6)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef ui4_1
#undef arg1
}

/* {INTEGER_INTERVAL}.resize */
void F477_8790 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "resize";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 2, 9097);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9097);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 476, 83, 0x10000000, 1); /* lower_internal */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_min_int32 (arg1,ui4_1);
	*(EIF_INTEGER_32 *)(Current + RTWA(476, 83, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 476, 82, 0x10000000, 1); /* upper_internal */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_max_int32 (arg2,ui4_1);
	*(EIF_INTEGER_32 *)(Current + RTWA(476, 82, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ui4_1
#undef arg2
#undef arg1
}

/* {INTEGER_INTERVAL}.resize_exactly */
void F477_8791 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "resize_exactly";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 2, 9098);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9098);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 476, 83, 0x10000000, 1); /* lower_internal */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(476, 83, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 476, 82, 0x10000000, 1); /* upper_internal */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(476, 82, dtype)) = (EIF_INTEGER_32) arg2;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef arg2
#undef arg1
}

/* {INTEGER_INTERVAL}.grow */
void F477_8792 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "grow";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9099);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9099);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("resizable", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 40, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		ti4_2 = ti4_3;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(2);
	ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 58, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN) (ti4_3 < arg1)) {
		RTHOOK(3);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		ui4_1 = ti4_3;
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		ui4_2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_4 + arg1) - ((EIF_INTEGER_32) 1L));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(476, 67, dtype))(Current, ui4_1x, ui4_2x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("new_capacity", EX_POST);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 58, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (ti4_3 >= arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("no_loss_from_bottom", EX_POST);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		RTCO(tr1);
		if ((EIF_BOOLEAN) (ti4_3 <= ti4_1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(6);
		RTCT("no_loss_from_top", EX_POST);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		RTCO(tr2);
		if ((EIF_BOOLEAN) (ti4_3 >= ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef ui4_1
#undef ui4_2
#undef arg1
}

/* {INTEGER_INTERVAL}.trim */
void F477_8793 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "trim";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9100);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9100);
	RTIV(Current, RTAL);
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	if (RTAL & CK_CHECK) {
		RTHOOK(1);
		RTCT("minimal_capacity", EX_CHECK);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 58, dtype))(Current)).it_i4);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("same_count", EX_POST);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		RTCO(tr1);
		if ((EIF_BOOLEAN)(ti4_2 == ti4_1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(3);
		RTCT("minimal_capacity", EX_POST);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 58, dtype))(Current)).it_i4);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {INTEGER_INTERVAL}.wipe_out */
void F477_8794 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "wipe_out";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9101);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9101);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("prunable", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 64, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 476, 49, 0x04000000, 1); /* lower_defined */
	
	*(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 476, 51, 0x04000000, 1); /* upper_defined */
	
	*(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 476, 83, 0x10000000, 1); /* lower_internal */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(476, 83, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 476, 82, 0x10000000, 1); /* upper_internal */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(476, 82, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("wiped_out", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 35, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {INTEGER_INTERVAL}.as_array */
EIF_TYPED_VALUE F477_8795 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "as_array";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 476, Current, 1, 0, 9102);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9102);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("finite", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		RTTE((EIF_BOOLEAN) (tb1 && tb2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF800051B, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {476,1307,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1307, typarr0)));
		tr1 = RTLN(typres0);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1307, 49, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1307, 98, "rebase", Result))(Result, ui4_1x);
	RTHOOK(4);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	for (;;) {
		RTHOOK(5);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (loc1 > ti4_1)) break;
		RTHOOK(6);
		ui4_1 = loc1;
		ui4_2 = loc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1307, 77, "force", Result))(Result, ui4_1x, ui4_2x);
		RTHOOK(7);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("same_lower", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Result + RTVA(1307, 59, "lower", Result));
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("same_upper", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Result + RTVA(1307, 60, "upper", Result));
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
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
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ui4_1
#undef ui4_2
}

/* {INTEGER_INTERVAL}.to_c */
EIF_TYPED_VALUE F477_8796 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "to_c";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9103);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(476, Current, 9103);
	RTIV(Current, RTAL);
	if (RTAL & CK_CHECK) {
		RTHOOK(1);
		RTCT(NULL, EX_CHECK);
			RTCF;
	}
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

/* {INTEGER_INTERVAL}.linear_representation */
EIF_TYPED_VALUE F477_8797 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "linear_representation";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 0, 9104);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9104);
	RTIV(Current, RTAL);
	if (RTAL & CK_CHECK) {
		RTHOOK(1);
		RTCT("terminal", EX_CHECK);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		if ((EIF_BOOLEAN) (tb1 && tb2)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF80004EE, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1307, 102, "linear_representation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
}

/* {INTEGER_INTERVAL}.copy */
void F477_8798 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "copy";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9105);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9105);
	RTCC(arg1, 476, l_feature_name, 1, 476);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("type_identity", EX_PRE);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 4, dtype))(Current, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	if (!RTCEQ(arg1, Current)) {
		RTHOOK(4);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 11, dtype))(Current, ur1x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("is_equal", EX_POST);
		if (RTEQ(Current, arg1)) {
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
#undef ur1
#undef arg1
}

/* {INTEGER_INTERVAL}.subinterval */
EIF_TYPED_VALUE F477_8799 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "subinterval";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 2, 9106);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(476, Current, 9106);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80001DC, 0,0); /* Result */
	
	tr1 = RTLNSMART(Dftype(Current));
	ui4_1 = arg1;
	ui4_2 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(476, 47, Dtype(tr1)))(tr1, ui4_1x, ui4_2x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ui4_1
#undef ui4_2
#undef arg2
#undef arg1
}

/* {INTEGER_INTERVAL}.do_all */
void F477_8800 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "do_all";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 476, Current, 2, 1, 9107);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9107);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {476,1219,0,0xFFF9,1,734,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1219, typarr0)));
			RTCC(arg1, 476, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("action_exists", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("finite", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		RTTE((EIF_BOOLEAN) (tb1 && tb2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	RTHOOK(4);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
	for (;;) {
		RTHOOK(5);
		if ((EIF_BOOLEAN) (loc1 > loc2)) break;
		RTHOOK(6);
		{
			static EIF_TYPE_INDEX typarr0[] = {476,0xFFF9,1,734,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
			tr1 = RTLNTS(typres0, 2, 1);
		}
		((EIF_TYPED_VALUE *)tr1+1)->it_i4 = loc1;
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1219, 69, "call", arg1))(arg1, ur1x);
		RTHOOK(7);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef ur1
#undef arg1
}

/* {INTEGER_INTERVAL}.for_all */
EIF_TYPED_VALUE F477_8801 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "for_all";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
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
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 476, Current, 1, 1, 9108);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9108);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {476,1226,0,0xFFF9,1,734,739,769,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1226, typarr0)));
			RTCC(arg1, 476, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("finite", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		RTTE((EIF_BOOLEAN) (tb1 && tb2), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("condition_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(4);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	for (;;) {
		RTHOOK(5);
		tb1 = '\01';
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		if (!((EIF_BOOLEAN) (loc1 > ti4_1))) {
			{
				static EIF_TYPE_INDEX typarr0[] = {476,0xFFF9,1,734,739,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
				tr1 = RTLNTS(typres0, 2, 1);
			}
			((EIF_TYPED_VALUE *)tr1+1)->it_i4 = loc1;
			ur1 = RTCCL(tr1);
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1226, 68, "item", arg1))(arg1, ur1x)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) break;
		RTHOOK(6);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	RTHOOK(7);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (loc1 > ti4_1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("consistent_with_count", EX_POST);
		ur1 = RTCCL(arg1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 81, dtype))(Current, ur1x)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(Result == (EIF_BOOLEAN)(ti4_1 == ti4_2))) {
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
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ur1
#undef arg1
}

/* {INTEGER_INTERVAL}.exists */
EIF_TYPED_VALUE F477_8802 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "exists";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
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
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 476, Current, 1, 1, 9109);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9109);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {476,1226,0,0xFFF9,1,734,739,769,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1226, typarr0)));
			RTCC(arg1, 476, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("finite", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		RTTE((EIF_BOOLEAN) (tb1 && tb2), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("condition_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	for (;;) {
		RTHOOK(4);
		tb1 = '\01';
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		if (!(EIF_BOOLEAN) (loc1 > ti4_1)) {
			{
				static EIF_TYPE_INDEX typarr0[] = {476,0xFFF9,1,734,739,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
				tr1 = RTLNTS(typres0, 2, 1);
			}
			((EIF_TYPED_VALUE *)tr1+1)->it_i4 = loc1;
			ur1 = RTCCL(tr1);
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1226, 68, "item", arg1))(arg1, ur1x)).it_b);
			tb1 = tb2;
		}
		if (tb1) break;
		RTHOOK(5);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	RTHOOK(6);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (loc1 <= ti4_1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("consistent_with_count", EX_POST);
		ur1 = RTCCL(arg1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 81, dtype))(Current, ur1x)).it_i4);
		if ((EIF_BOOLEAN)(Result == (EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L)))) {
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
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ur1
#undef arg1
}

/* {INTEGER_INTERVAL}.exists1 */
EIF_TYPED_VALUE F477_8803 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "exists1";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
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
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9110);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9110);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {476,1226,0,0xFFF9,1,734,739,769,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1226, typarr0)));
			RTCC(arg1, 476, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("finite", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		RTTE((EIF_BOOLEAN) (tb1 && tb2), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("condition_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ur1 = RTCCL(arg1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 81, dtype))(Current, ur1x)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L));
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("consistent_with_count", EX_POST);
		ur1 = RTCCL(arg1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 81, dtype))(Current, ur1x)).it_i4);
		if ((EIF_BOOLEAN)(Result == (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L)))) {
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

/* {INTEGER_INTERVAL}.hold_count */
EIF_TYPED_VALUE F477_8804 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "hold_count";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 476, Current, 1, 1, 9071);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9071);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {476,1226,0,0xFFF9,1,734,739,769,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1226, typarr0)));
			RTCC(arg1, 476, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("finite", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
		RTTE((EIF_BOOLEAN) (tb1 && tb2), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("condition_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
	for (;;) {
		RTHOOK(4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (loc1 > ti4_1)) break;
		RTHOOK(5);
		{
			static EIF_TYPE_INDEX typarr0[] = {476,0xFFF9,1,734,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
			tr1 = RTLNTS(typres0, 2, 1);
		}
		((EIF_TYPED_VALUE *)tr1+1)->it_i4 = loc1;
		ur1 = RTCCL(tr1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1226, 68, "item", arg1))(arg1, ur1x)).it_b);
		if (tb1) {
			RTHOOK(6);
			RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
			
			Result++;
		}
		RTHOOK(7);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("non_negative", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) 0L))) {
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
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef ur1
#undef arg1
}

/* {INTEGER_INTERVAL}.upper_internal */
EIF_TYPED_VALUE F477_8805 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(476,82, Dtype(Current)));
	return r;
}


/* {INTEGER_INTERVAL}.lower_internal */
EIF_TYPED_VALUE F477_8806 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(476,83, Dtype(Current)));
	return r;
}


/* {INTEGER_INTERVAL}.prune */
void F477_8807 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "prune";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(5);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,tr4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 1, 9074);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9074);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("prunable", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 64, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ui4_1 = arg1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 55, dtype))(Current, ui4_1x)).it_b);
		tb1 = tb2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		ti4_1 = ti4_2;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		RTE_OT
		ui4_1 = arg1;
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 55, dtype))(Current, ui4_1x)).it_b);
		tb2 = tb3;
		tr3 = NULL;
		RTE_O
		tr3 = RTLA;
		RTE_OE
		RTE_OT
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		ti4_2 = ti4_3;
		tr4 = NULL;
		RTE_O
		tr4 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("removed_count_change", EX_POST);
		tb3 = '\01';
		RTCO(tr1);
		if (tb1) {
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
			RTCO(tr2);
			tb3 = (EIF_BOOLEAN)(ti4_3 == (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L)));
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(3);
		RTCT("not_removed_no_count_change", EX_POST);
		tb3 = '\01';
		RTCO(tr3);
		if ((EIF_BOOLEAN) !tb2) {
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
			RTCO(tr4);
			tb3 = (EIF_BOOLEAN)(ti4_3 == ti4_2);
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("item_deleted", EX_POST);
		ui4_1 = arg1;
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 55, dtype))(Current, ui4_1x)).it_b);
		if ((EIF_BOOLEAN) !tb3) {
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
#undef ui4_1
#undef arg1
}

/* {INTEGER_INTERVAL}.indexable_put */
void F477_8808 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "indexable_put";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 476, Current, 0, 2, 9075);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(476, Current, 9075);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_key", EX_PRE);
		ui4_1 = arg2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 56, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCK;
		RTHOOK(2);
		RTCT("valid_key", EX_PRE);
		ui4_1 = arg2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 56, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_2);
		RTCK;
		RTJB;
label_2:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("inserted", EX_POST);
		ui4_1 = arg2;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(476, 53, dtype))(Current, ui4_1x)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ui4_1
#undef arg2
#undef arg1
}

/* {INTEGER_INTERVAL}._invariant */
void F477_23730 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 476, Current, 0, 23729);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("count_definition", Current);
	tb1 = '\01';
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
	if ((EIF_BOOLEAN) (tb2 && tb3)) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 59, dtype))(Current)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 52, dtype))(Current)).it_i4);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 50, dtype))(Current)).it_i4);
		tb1 = (EIF_BOOLEAN)(ti4_1 == (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_2 - ti4_3) + ((EIF_INTEGER_32) 1L)));
	}
	if (tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("index_set_is_range", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(476, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTEQ(tr1, Current)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("not_infinite", Current);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(476, 51, dtype));
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(476, 49, dtype));
	if ((EIF_BOOLEAN) (tb1 && tb2)) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
#undef up1
}

void EIF_Minit477 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
