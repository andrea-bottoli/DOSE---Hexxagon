/*
 * Code for class FORMAT_DOUBLE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F345_6618(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F345_6619(EIF_REFERENCE);
extern EIF_TYPED_VALUE F345_6620(EIF_REFERENCE);
extern EIF_TYPED_VALUE F345_6621(EIF_REFERENCE);
extern EIF_TYPED_VALUE F345_6622(EIF_REFERENCE);
extern EIF_TYPED_VALUE F345_6623(EIF_REFERENCE);
extern void F345_6624(EIF_REFERENCE);
extern void F345_6625(EIF_REFERENCE);
extern void F345_6626(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F345_6627(EIF_REFERENCE);
extern void F345_6628(EIF_REFERENCE);
extern void F345_6629(EIF_REFERENCE);
extern void F345_6630(EIF_REFERENCE);
extern void F345_6631(EIF_REFERENCE);
extern void F345_6632(EIF_REFERENCE);
extern void F345_6633(EIF_REFERENCE);
extern void F345_6634(EIF_REFERENCE);
extern void F345_6635(EIF_REFERENCE);
extern EIF_TYPED_VALUE F345_6636(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F345_6637(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F345_6638(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F345_23699(EIF_REFERENCE, int);
extern void EIF_Minit345(void);

#ifdef __cplusplus
}
#endif

#include <math.h>
#include "eif_out.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {FORMAT_DOUBLE}.make */
void F345_6618 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_CHARACTER_8 tc1;
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
	
	RTEAA(l_feature_name, 344, Current, 0, 2, 6344);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6344);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("reasonable_field", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 1L)), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("reasonable_decimals", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 <= arg1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	ui4_1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(344, 107, dtype))(Current, ui4_1x);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 344, 112, 0x10000000, 1); /* decimals */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype)) = (EIF_INTEGER_32) arg2;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 344, 115, 0x08000000, 1); /* decimal */
	
	*(EIF_CHARACTER_8 *)(Current + RTWA(344, 115, dtype)) = (EIF_CHARACTER_8) (EIF_CHARACTER_8) '.';
	RTHOOK(6);
	RTDBGAA(Current, dtype, 344, 114, 0x04000000, 1); /* trailing_zeros_shown */
	
	*(EIF_BOOLEAN *)(Current + RTWA(344, 114, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("blank_fill", EX_POST);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 32, dtype));
		if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) ' ')) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("show_sign_negative", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(344, 44, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("no_separator", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(344, 48, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("width_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 33, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(11);
		RTCT("right_justified", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(344, 42, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(12);
		RTCT("leading_sign", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(344, 49, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(13);
		RTCT("decimals_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(14);
		RTCT("decimal_point", EX_POST);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 115, dtype));
		if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) '.')) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(15);
		RTCT("trailing_zeros_shown", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 114, dtype));
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(16);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ui4_1
#undef arg2
#undef arg1
}

/* {FORMAT_DOUBLE}.after_decimal_separate */
EIF_TYPED_VALUE F345_6619 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(344,111, Dtype(Current)));
	return r;
}


/* {FORMAT_DOUBLE}.decimals */
EIF_TYPED_VALUE F345_6620 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(344,112, Dtype(Current)));
	return r;
}


/* {FORMAT_DOUBLE}.zero_not_shown */
EIF_TYPED_VALUE F345_6621 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(344,113, Dtype(Current)));
	return r;
}


/* {FORMAT_DOUBLE}.trailing_zeros_shown */
EIF_TYPED_VALUE F345_6622 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(344,114, Dtype(Current)));
	return r;
}


/* {FORMAT_DOUBLE}.decimal */
EIF_TYPED_VALUE F345_6623 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_CHAR8;
	r.it_c1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344,115, Dtype(Current)));
	return r;
}


/* {FORMAT_DOUBLE}.point_decimal */
void F345_6624 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "point_decimal";
	RTEX;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6350);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6350);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 115, 0x08000000, 1); /* decimal */
	
	*(EIF_CHARACTER_8 *)(Current + RTWA(344, 115, dtype)) = (EIF_CHARACTER_8) (EIF_CHARACTER_8) '.';
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT(NULL, EX_POST);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 115, dtype));
		if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) '.')) {
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
}

/* {FORMAT_DOUBLE}.comma_decimal */
void F345_6625 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "comma_decimal";
	RTEX;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6351);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6351);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 115, 0x08000000, 1); /* decimal */
	
	*(EIF_CHARACTER_8 *)(Current + RTWA(344, 115, dtype)) = (EIF_CHARACTER_8) (EIF_CHARACTER_8) ',';
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT(NULL, EX_POST);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 115, dtype));
		if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) ',')) {
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
}

/* {FORMAT_DOUBLE}.set_decimals */
void F345_6626 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_decimals";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 344, Current, 0, 1, 6352);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6352);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT(NULL, EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 33, dtype));
		RTTE((EIF_BOOLEAN) (arg1 <= ti4_1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 344, 112, 0x10000000, 1); /* decimals */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype)) = (EIF_INTEGER_32) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT(NULL, EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype));
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
	RTLO(3);
	RTEE;
#undef arg1
}

/* {FORMAT_DOUBLE}.separate_after_decimal */
void F345_6627 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "separate_after_decimal";
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
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6353);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6353);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 111, 0x04000000, 1); /* after_decimal_separate */
	
	*(EIF_BOOLEAN *)(Current + RTWA(344, 111, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT(NULL, EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 111, dtype));
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
}

/* {FORMAT_DOUBLE}.no_separate_after_decimal */
void F345_6628 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "no_separate_after_decimal";
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
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6354);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6354);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 111, 0x04000000, 1); /* after_decimal_separate */
	
	*(EIF_BOOLEAN *)(Current + RTWA(344, 111, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT(NULL, EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 111, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
}

/* {FORMAT_DOUBLE}.underscore_separate */
void F345_6629 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "underscore_separate";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6355);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6355);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 34, 0x08000000, 1); /* separator */
	
	*(EIF_CHARACTER_8 *)(Current + RTWA(344, 34, dtype)) = (EIF_CHARACTER_8) (EIF_CHARACTER_8) '_';
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(344, 119, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT(NULL, EX_POST);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 34, dtype));
		if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) '_')) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT(NULL, EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 111, dtype));
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
	RTLO(2);
	RTEE;
}

/* {FORMAT_DOUBLE}.comma_separate */
void F345_6630 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "comma_separate";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6356);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6356);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 34, 0x08000000, 1); /* separator */
	
	*(EIF_CHARACTER_8 *)(Current + RTWA(344, 34, dtype)) = (EIF_CHARACTER_8) (EIF_CHARACTER_8) ',';
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(344, 119, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT(NULL, EX_POST);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 34, dtype));
		if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) ',')) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT(NULL, EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 111, dtype));
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
	RTLO(2);
	RTEE;
}

/* {FORMAT_DOUBLE}.remove_separator */
void F345_6631 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "remove_separator";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6357);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6357);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 34, 0x08000000, 1); /* separator */
	
	*(EIF_CHARACTER_8 *)(Current + RTWA(344, 34, dtype)) = (EIF_CHARACTER_8) (EIF_CHARACTER_8) '\000';
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(344, 120, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT(NULL, EX_POST);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 34, dtype));
		if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) '\000')) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT(NULL, EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 111, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
	RTLO(2);
	RTEE;
}

/* {FORMAT_DOUBLE}.show_zero */
void F345_6632 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "show_zero";
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
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6358);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6358);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 113, 0x04000000, 1); /* zero_not_shown */
	
	*(EIF_BOOLEAN *)(Current + RTWA(344, 113, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT(NULL, EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 113, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
}

/* {FORMAT_DOUBLE}.show_trailing_zeros */
void F345_6633 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "show_trailing_zeros";
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
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6359);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6359);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 114, 0x04000000, 1); /* trailing_zeros_shown */
	
	*(EIF_BOOLEAN *)(Current + RTWA(344, 114, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("trailing_zeros_shown_set", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 114, dtype));
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
}

/* {FORMAT_DOUBLE}.hide_zero */
void F345_6634 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hide_zero";
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
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6338);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6338);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 113, 0x04000000, 1); /* zero_not_shown */
	
	*(EIF_BOOLEAN *)(Current + RTWA(344, 113, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT(NULL, EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 113, dtype));
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
}

/* {FORMAT_DOUBLE}.hide_trailing_zeros */
void F345_6635 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hide_trailing_zeros";
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
	
	RTEAA(l_feature_name, 344, Current, 0, 0, 6339);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6339);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 344, 114, 0x04000000, 1); /* trailing_zeros_shown */
	
	*(EIF_BOOLEAN *)(Current + RTWA(344, 114, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("trailing_zeros_shown_set", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 114, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
}

/* {FORMAT_DOUBLE}.formatted */
EIF_TYPED_VALUE F345_6636 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "formatted";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REAL_64 loc2 = (EIF_REAL_64) 0;
	EIF_REAL_64 loc3 = (EIF_REAL_64) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REAL_64 loc6 = (EIF_REAL_64) 0;
#define arg1 arg1x.it_r8
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur8_1x = {0, SK_REAL64};
#define ur8_1 ur8_1x.it_r8
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_REAL_64 tr8_1;
	EIF_REAL_64 tr8_2;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_CHARACTER_8 tc1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r8 = * (EIF_REAL_64 *) arg1x.it_r;
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,loc4);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,loc5);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_REAL64,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REAL64, &loc2);
	RTLU(SK_REAL64, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REAL64, &loc6);
	
	RTEAA(l_feature_name, 344, Current, 6, 1, 6340);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6340);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 6, 0x20000000, 1, 0); /* loc6 */
	
	loc6 = (EIF_REAL_64) arg1;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(3);
	tr8_1 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
	if ((EIF_BOOLEAN) (arg1 < tr8_1)) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
		RTHOOK(5);
		RTDBGAL(Current, 6, 0x20000000, 1, 0); /* loc6 */
		
		loc6 = (EIF_REAL_64) (EIF_REAL_64) -loc6;
	}
	RTHOOK(6);
	RTDBGAL(Current, 6, 0x20000000, 1, 0); /* loc6 */
	
	tr8_1 = (EIF_REAL_64) (((EIF_INTEGER_32) 5L));
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype));
	tr8_2 = (EIF_REAL_64) (((EIF_INTEGER_32) ((EIF_INTEGER_32) -ti4_1 - ((EIF_INTEGER_32) 1L))));
	loc6 += (EIF_REAL_64) (tr8_1 * (EIF_REAL_64) pow ((EIF_REAL_64) (((EIF_INTEGER_32) 10L)), (EIF_REAL_64) (tr8_2)));
	RTHOOK(7);
	RTDBGAL(Current, 2, 0x20000000, 1, 0); /* loc2 */
	
	ur8_1 = loc6;
	loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(344, 104, dtype))(Current, ur8_1x)).it_r8);
	RTHOOK(8);
	RTDBGAL(Current, 3, 0x20000000, 1, 0); /* loc3 */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype));
	tr8_1 = (EIF_REAL_64) (((EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L))));
	ur8_1 = (EIF_REAL_64) ((EIF_REAL_64) (loc6 - loc2) * (EIF_REAL_64) pow ((EIF_REAL_64) (((EIF_INTEGER_32) 10L)), (EIF_REAL_64) (tr8_1)));
	loc3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(344, 104, dtype))(Current, ur8_1x)).it_r8);
	RTHOOK(9);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(344, 48, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(10);
		RTDBGAL(Current, 4, 0xF8000313, 0, 0); /* loc4 */
		
		tr1 = c_outr64(loc2);
		ur1 = RTCCL(tr1);
		loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(344, 108, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(11);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 111, dtype));
		if (tb1) {
			RTHOOK(12);
			RTDBGAL(Current, 5, 0xF8000313, 0, 0); /* loc5 */
			
			ur8_1 = loc3;
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(344, 129, dtype))(Current, ur8_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr1);
			loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(344, 130, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		} else {
			RTHOOK(13);
			RTDBGAL(Current, 5, 0xF8000313, 0, 0); /* loc5 */
			
			ur8_1 = loc3;
			loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(344, 129, dtype))(Current, ur8_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		}
	} else {
		RTHOOK(14);
		RTDBGAL(Current, 4, 0xF8000313, 0, 0); /* loc4 */
		
		tr1 = c_outr64(loc2);
		loc4 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(15);
		RTDBGAL(Current, 5, 0xF8000313, 0, 0); /* loc5 */
		
		ur8_1 = loc3;
		loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(344, 129, dtype))(Current, ur8_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	}
	RTHOOK(16);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	tr1 = RTLN(787);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 33, dtype));
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(787, 91, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(16,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(17);
	tb1 = '\01';
	tr8_1 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
	if (!(EIF_BOOLEAN)(loc2 != tr8_1)) {
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(344, 113, dtype));
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTHOOK(18);
		ur1 = RTCCL(loc4);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	}
	RTHOOK(19);
	uc1 = (EIF_CHARACTER_8) 'e';
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 117, "has", Result))(Result, uc1x)).it_b);
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(20);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 115, dtype));
		uc1 = tc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 208, "extend", Result))(Result, uc1x);
		RTHOOK(21);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype));
		if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
			RTHOOK(22);
			ur1 = RTCCL(loc5);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
		}
		RTHOOK(23);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(344, 47, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTHOOK(24);
			RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
			
			ur1 = RTCCL(Result);
			ui4_1 = loc1;
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(344, 84, dtype))(Current, ur1x, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			Result = (EIF_REFERENCE) RTCCL(tr1);
		}
	}
	RTHOOK(25);
	tb1 = '\0';
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 35, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(344, 76, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 != ti4_2)) {
		ti4_1 = *(EIF_INTEGER_32 *)(Result + RTVA(787, 107, "count", Result));
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 33, dtype));
		tb1 = (EIF_BOOLEAN) (ti4_1 < ti4_2);
	}
	if (tb1) {
		RTHOOK(26);
		RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
		
		ur1 = RTCCL(Result);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(344, 87, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(27);
		RTCT("exists", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(28);
		RTCT("correct_length", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(344, 43, dtype))(Current)).it_b);
		if (!tb2) {
			ti4_1 = *(EIF_INTEGER_32 *)(Result + RTVA(787, 107, "count", Result));
			ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 33, dtype));
			tb1 = (EIF_BOOLEAN) (ti4_1 >= ti4_2);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(29);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ur8_1
#undef ui4_1
#undef uc1
#undef arg1
}

/* {FORMAT_DOUBLE}.pad_fraction */
EIF_TYPED_VALUE F345_6637 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "pad_fraction";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r8
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_CHARACTER_8 tc1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r8 = * (EIF_REAL_64 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,tr1);
	RTLR(1,Result);
	RTLR(2,Current);
	RTLU (SK_REF, &Result);
	RTLU(SK_REAL64,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 344, Current, 1, 1, 6341);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6341);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	tr1 = c_outr64(arg1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 216, "remove_tail", Result))(Result, ui4_1x);
	RTHOOK(3);
	ti4_1 = *(EIF_INTEGER_32 *)(Result + RTVA(787, 107, "count", Result));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype));
	if ((EIF_BOOLEAN) (ti4_1 > ti4_2)) {
		RTHOOK(4);
		RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
		
		ui4_1 = ((EIF_INTEGER_32) 1L);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype));
		ui4_2 = ti4_1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(787, 239, "substring", Result))(Result, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	} else {
		for (;;) {
			RTHOOK(5);
			ti4_1 = *(EIF_INTEGER_32 *)(Result + RTVA(787, 107, "count", Result));
			ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype));
			if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) break;
			RTHOOK(6);
			uc1 = (EIF_CHARACTER_8) '0';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 183, "precede", Result))(Result, uc1x);
		}
	}
	RTHOOK(7);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(344, 114, dtype));
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(8);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_3 = *(EIF_INTEGER_32 *)(Result + RTVA(787, 107, "count", Result));
		loc1 = (EIF_INTEGER_32) ti4_3;
		for (;;) {
			RTHOOK(9);
			tb1 = '\01';
			if (!(EIF_BOOLEAN) (loc1 <= ((EIF_INTEGER_32) 1L))) {
				ui4_1 = loc1;
				tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", Result))(Result, ui4_1x)).it_c1);
				tb1 = (EIF_BOOLEAN)(tc1 != (EIF_CHARACTER_8) '0');
			}
			if (tb1) break;
			RTHOOK(10);
			ui4_1 = loc1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 213, "remove", Result))(Result, ui4_1x);
			RTHOOK(11);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			loc1--;
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(12);
		RTCT("valid_result", EX_POST);
		tb2 = '\01';
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(344, 114, dtype));
		if (tb3) {
			ti4_3 = *(EIF_INTEGER_32 *)(Result + RTVA(787, 107, "count", Result));
			ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 112, dtype));
			tb2 = (EIF_BOOLEAN)(ti4_3 == ti4_4);
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(13);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ui4_1
#undef ui4_2
#undef uc1
#undef arg1
}

/* {FORMAT_DOUBLE}.separate_fraction */
EIF_TYPED_VALUE F345_6638 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "separate_fraction";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_CHARACTER_8 tc1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 344, Current, 2, 1, 6342);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(344, Current, 6342);
	if (arg1) {
		RTCC(arg1, 344, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("efficiency", EX_PRE);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 34, dtype));
		RTTE((EIF_BOOLEAN)(tc1 != (EIF_CHARACTER_8) '\000'), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(3);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	tr1 = RTLN(787);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(344, 33, dtype));
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(787, 91, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(3,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	for (;;) {
		RTHOOK(4);
		ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(787, 107, "count", arg1));
		if ((EIF_BOOLEAN) (loc1 > (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 3L)))) break;
		RTHOOK(5);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
		for (;;) {
			RTHOOK(6);
			if ((EIF_BOOLEAN)(loc2 == ((EIF_INTEGER_32) 3L))) break;
			RTHOOK(7);
			ui4_1 = loc1;
			tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", arg1))(arg1, ui4_1x)).it_c1);
			uc1 = tc1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 208, "extend", Result))(Result, uc1x);
			RTHOOK(8);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			loc1++;
			RTHOOK(9);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			loc2++;
		}
		RTHOOK(10);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(344, 34, dtype));
		uc1 = tc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 208, "extend", Result))(Result, uc1x);
	}
	for (;;) {
		RTHOOK(11);
		ti4_2 = *(EIF_INTEGER_32 *)(arg1 + RTVA(787, 107, "count", arg1));
		if ((EIF_BOOLEAN) (loc1 > ti4_2)) break;
		RTHOOK(12);
		ui4_1 = loc1;
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", arg1))(arg1, ui4_1x)).it_c1);
		uc1 = tc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 208, "extend", Result))(Result, uc1x);
		RTHOOK(13);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ui4_1
#undef uc1
#undef arg1
}

/* {FORMAT_DOUBLE}._invariant */
void F345_23699 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 344, Current, 0, 23698);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("separate_all", Current);
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(344, 48, dtype))(Current)).it_b);
	if (tb2) {
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(344, 111, dtype));
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
}

void EIF_Minit345 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
