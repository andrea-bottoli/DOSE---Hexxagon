/*
 * Code for class STRING_TO_INTEGER_CONVERTOR
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F364_6971(EIF_REFERENCE);
extern void F364_6972(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F364_6973(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F364_6974(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6975(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6976(EIF_REFERENCE);
extern void F364_6977(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F364_6978(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F364_6979(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F364_6980(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6981(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6982(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6983(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6984(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6985(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6986(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6987(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6988(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6989(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6990(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6991(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6992(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6993(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6994(EIF_REFERENCE);
extern EIF_TYPED_VALUE F364_6995(EIF_REFERENCE);
extern void EIF_Minit364(void);

#ifdef __cplusplus
}
#endif

#include <ctype.h>

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {STRING_TO_INTEGER_CONVERTOR}.make */
void F364_6971 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6678);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6678);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 35, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(363, 67, dtype))(Current, ui4_1x);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 363, 57, 0xF8000313, 0); /* leading_separators */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(363, 57, Current)));
	tr2 = RTMS_EX_H(" ",1,32);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(787, 93, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(363, 57, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 363, 58, 0xF8000313, 0); /* trailing_separators */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(363, 58, Current)));
	tr2 = RTMS_EX_H(" ",1,32);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(787, 93, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(3,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(363, 58, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("leading_separators_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 57, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTEQ(tr1, RTMS_EX_H(" ",1,32))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("trailing_separators_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 58, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTEQ(tr1, RTMS_EX_H(" ",1,32))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(6);
		RTCT("leading_separators_not_acceptable", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(363, 56, dtype));
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(7);
		RTCT("trailing_separatorsnot_acceptable", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(363, 55, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
	RTLO(2);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
}

/* {STRING_TO_INTEGER_CONVERTOR}.reset */
void F364_6972 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "reset";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
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
	
	RTEAA(l_feature_name, 363, Current, 0, 1, 6679);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6679);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("type_valid", EX_PRE);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(363, 74, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 363, 64, 0x10000000, 1); /* last_state */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 363, 88, 0x3C000000, 1); /* part1 */
	
	tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 0L);
	*(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype)) = (EIF_NATURAL_64) tu8_1;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 363, 89, 0x3C000000, 1); /* part2 */
	
	tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 0L);
	*(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype)) = (EIF_NATURAL_64) tu8_1;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 363, 65, 0x10000000, 1); /* sign */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 363, 59, 0x10000000, 1); /* conversion_type */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(363, 59, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(7);
	RTDBGAA(Current, dtype, 363, 90, 0x04000000, 1); /* internal_overflowed */
	
	*(EIF_BOOLEAN *)(Current + RTWA(363, 90, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("last_state_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("sign_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("conversion_type_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 59, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(11);
		RTCT("not_overflowed", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 69, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(12);
		RTCT("not_underflowed", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 70, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(13);
		RTCT("parse_successful", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 71, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(14);
		RTCT("internal_overflowed_set", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(363, 90, dtype));
		if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) 0)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(15);
		RTCT("part1_set", EX_POST);
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 0L);
		if ((EIF_BOOLEAN)(tu8_1 == tu8_2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(16);
		RTCT("part2_set", EX_POST);
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 0L);
		if ((EIF_BOOLEAN)(tu8_1 == tu8_2)) {
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
	RTLO(3);
	RTEE;
#undef ui4_1
#undef arg1
}

/* {STRING_TO_INTEGER_CONVERTOR}.separators_valid */
EIF_TYPED_VALUE F364_6973 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "separators_valid";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_CHARACTER_8 loc3 = (EIF_CHARACTER_8) 0;
	EIF_BOOLEAN loc4 = (EIF_BOOLEAN) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_CHARACTER_8 tc1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(2);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_CHAR8, &loc3);
	RTLU(SK_BOOL, &loc4);
	
	RTEAA(l_feature_name, 363, Current, 4, 1, 6680);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(363, Current, 6680);
	if (arg1) {
		RTCC(arg1, 363, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("separators_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
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
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(787, 107, "count", arg1));
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
	
	loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(5);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	for (;;) {
		RTHOOK(6);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc1 > loc2) || loc4)) break;
		RTHOOK(7);
		RTDBGAL(Current, 3, 0x08000000, 1, 0); /* loc3 */
		
		ui4_1 = loc1;
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", arg1))(arg1, ui4_1x)).it_c1);
		loc3 = (EIF_CHARACTER_8) tc1;
		RTHOOK(8);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc3 >= (EIF_CHARACTER_8) '0') && (EIF_BOOLEAN) (loc3 <= (EIF_CHARACTER_8) '9')) || (EIF_BOOLEAN)(loc3 == (EIF_CHARACTER_8) '+')) || (EIF_BOOLEAN)(loc3 == (EIF_CHARACTER_8) '-'))) {
			RTHOOK(9);
			RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
			
			loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(10);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
		}
		RTHOOK(11);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ui4_1
#undef arg1
}

/* {STRING_TO_INTEGER_CONVERTOR}.overflowed */
EIF_TYPED_VALUE F364_6974 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "overflowed";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6681);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6681);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = *(EIF_BOOLEAN *)(Current + RTWA(363, 90, dtype));
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (Result && (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L)));
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

/* {STRING_TO_INTEGER_CONVERTOR}.underflowed */
EIF_TYPED_VALUE F364_6975 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "underflowed";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6657);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6657);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = *(EIF_BOOLEAN *)(Current + RTWA(363, 90, dtype));
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (Result && (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L)));
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

/* {STRING_TO_INTEGER_CONVERTOR}.parse_successful */
EIF_TYPED_VALUE F364_6976 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parse_successful";
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
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6658);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6658);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) ((EIF_BOOLEAN)(ti4_1 != ((EIF_INTEGER_32) 4L)) && (EIF_BOOLEAN)(ti4_2 != ((EIF_INTEGER_32) 5L)));
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

/* {STRING_TO_INTEGER_CONVERTOR}.parse_string_with_type */
void F364_6977 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "parse_string_with_type";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_CHARACTER_32 loc5 = (EIF_CHARACTER_32) 0;
	EIF_NATURAL_32 loc6 = (EIF_NATURAL_32) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_NATURAL_32 tu4_1;
	EIF_CHARACTER_32 tw1;
	EIF_BOOLEAN tb1;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc7);
	RTLR(3,loc3);
	RTLR(4,tr1);
	RTLR(5,loc8);
	RTLR(6,loc4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_CHAR32, &loc5);
	RTLU(SK_UINT32, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	
	RTEAA(l_feature_name, 363, Current, 8, 2, 6659);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6659);
	if (arg1) {
		RTCC(arg1, 363, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("s_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("type_valid", EX_PRE);
		ui4_1 = arg2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(363, 74, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	ui4_1 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(363, 67, dtype))(Current, ui4_1x);
	RTHOOK(4);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 46, "count", arg1))(arg1)).it_i4);
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(6);
	loc7 = RTCCL(arg1);
	loc7 = RTRV(eif_non_attached_type(783),loc7);
	if (EIF_TEST(loc7)) {
		RTHOOK(7);
		RTDBGAL(Current, 3, 0xF800058F, 0, 0); /* loc3 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(783, 140, "area", loc7))(loc7)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = (EIF_REFERENCE) tr1;
		for (;;) {
			RTHOOK(8);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
			if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 == loc2) || (EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 4L)))) break;
			RTHOOK(9);
			ui4_1 = loc1;
			tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1423, 36, "item", loc3))(loc3, ui4_1x)).it_c1);
			uc1 = tc1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(363, 73, dtype))(Current, uc1x);
			RTHOOK(10);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			loc1++;
		}
	} else {
		RTHOOK(11);
		loc8 = RTCCL(arg1);
		loc8 = RTRV(eif_non_attached_type(782),loc8);
		if (EIF_TEST(loc8)) {
			RTHOOK(12);
			RTDBGAL(Current, 4, 0xF8000618, 0, 0); /* loc4 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(782, 140, "area", loc8))(loc8)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc4 = (EIF_REFERENCE) tr1;
			for (;;) {
				RTHOOK(13);
				ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
				if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 == loc2) || (EIF_BOOLEAN) (ti4_2 >= ((EIF_INTEGER_32) 4L)))) break;
				RTHOOK(14);
				RTDBGAL(Current, 5, 0x1C000000, 1, 0); /* loc5 */
				
				ui4_1 = loc1;
				tw1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1560, 36, "item", loc4))(loc4, ui4_1x)).it_c4);
				loc5 = (EIF_CHARACTER_32) tw1;
				RTHOOK(15);
				tb1 = (loc5 <= 0xFF);
				if (tb1) {
					RTHOOK(16);
					tc1 = (EIF_CHARACTER_8) loc5;
					uc1 = tc1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(363, 73, dtype))(Current, uc1x);
				} else {
					RTHOOK(17);
					RTDBGAA(Current, dtype, 363, 64, 0x10000000, 1); /* last_state */
					
					*(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
				}
				RTHOOK(18);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				
				loc1++;
			}
		} else {
			RTHOOK(19);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			RTHOOK(20);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 46, "count", arg1))(arg1)).it_i4);
			loc2 = (EIF_INTEGER_32) ti4_3;
			for (;;) {
				RTHOOK(21);
				ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
				if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc1 > loc2) || (EIF_BOOLEAN) (ti4_3 >= ((EIF_INTEGER_32) 4L)))) break;
				RTHOOK(22);
				RTDBGAL(Current, 6, 0x38000000, 1, 0); /* loc6 */
				
				ui4_1 = loc1;
				tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(780, 41, "code", arg1))(arg1, ui4_1x)).it_n4);
				loc6 = (EIF_NATURAL_32) tu4_1;
				RTHOOK(23);
				tr1 = RTLN(751);
				*(EIF_NATURAL_32 *)tr1 = loc6;
				
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(752, 50, "is_valid_character_8_code", tr1))(tr1)).it_b);
				if (tb1) {
					RTHOOK(24);
					tc1 = (EIF_CHARACTER_8) loc6;
					uc1 = tc1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(363, 73, dtype))(Current, uc1x);
				} else {
					RTHOOK(25);
					RTDBGAA(Current, dtype, 363, 64, 0x10000000, 1); /* last_state */
					
					*(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
				}
				RTHOOK(26);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				
				loc1++;
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(27);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(12);
	RTEE;
#undef up1
#undef ui4_1
#undef uc1
#undef arg2
#undef arg1
}

/* {STRING_TO_INTEGER_CONVERTOR}.parse_character */
void F364_6978 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "parse_character";
	RTEX;
	EIF_NATURAL_64 loc1 = (EIF_NATURAL_64) 0;
	EIF_NATURAL_64 loc2 = (EIF_NATURAL_64) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_c1
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_TYPED_VALUE uu8_2x = {0, SK_UINT64};
#define uu8_2 uu8_2x.it_n8
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_c1 = * (EIF_CHARACTER_8 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_CHAR8,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT64, &loc1);
	RTLU(SK_UINT64, &loc2);
	RTLU(SK_INT32, &loc3);
	
	RTEAA(l_feature_name, 363, Current, 3, 1, 6660);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6660);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	loc3 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
	RTHOOK(2);
	if ((EIF_BOOLEAN) (loc3 <= ((EIF_INTEGER_32) 4L))) {
		RTHOOK(3);
		switch (loc3) {
			case 0L:
				RTHOOK(4);
				tb1 = EIF_TEST(isdigit(arg1));
				if (tb1) {
					RTHOOK(5);
					RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
					
					loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
					RTHOOK(6);
					RTDBGAA(Current, dtype, 363, 88, 0x3C000000, 1); /* part1 */
					
					tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 0L);
					*(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype)) = (EIF_NATURAL_64) tu8_1;
					RTHOOK(7);
					RTDBGAA(Current, dtype, 363, 89, 0x3C000000, 1); /* part2 */
					
					ti4_1 = (EIF_INTEGER_32) (arg1);
					tu8_1 = (EIF_NATURAL_64) (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 48L));
					*(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype)) = (EIF_NATURAL_64) tu8_1;
				} else {
					RTHOOK(8);
					if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 == (EIF_CHARACTER_8) '-') || (EIF_BOOLEAN)(arg1 == (EIF_CHARACTER_8) '+'))) {
						RTHOOK(9);
						RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
						
						loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
						RTHOOK(10);
						if ((EIF_BOOLEAN)(arg1 == (EIF_CHARACTER_8) '-')) {
							RTHOOK(11);
							RTDBGAA(Current, dtype, 363, 65, 0x10000000, 1); /* sign */
							
							*(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
						} else {
							RTHOOK(12);
							RTDBGAA(Current, dtype, 363, 65, 0x10000000, 1); /* sign */
							
							*(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
						}
					} else {
						RTHOOK(13);
						tb1 = '\0';
						tb2 = *(EIF_BOOLEAN *)(Current + RTWA(363, 56, dtype));
						if (tb2) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 57, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(13,1);
							uc1 = arg1;
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 117, "has", tr1))(tr1, uc1x)).it_b);
							tb1 = tb2;
						}
						if (tb1) {
						} else {
							RTHOOK(14);
							RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
							
							loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
						}
					}
				}
				break;
			case 1L:
				RTHOOK(15);
				tb1 = EIF_TEST(isdigit(arg1));
				if (tb1) {
					RTHOOK(16);
					RTDBGAA(Current, dtype, 363, 88, 0x3C000000, 1); /* part1 */
					
					tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 0L);
					*(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype)) = (EIF_NATURAL_64) tu8_1;
					RTHOOK(17);
					RTDBGAA(Current, dtype, 363, 89, 0x3C000000, 1); /* part2 */
					
					ti4_1 = (EIF_INTEGER_32) (arg1);
					tu8_1 = (EIF_NATURAL_64) (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 48L));
					*(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype)) = (EIF_NATURAL_64) tu8_1;
					RTHOOK(18);
					RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
					
					loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
					RTHOOK(19);
					ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 59, dtype));
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 35, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_1 != ti4_2)) {
						RTHOOK(20);
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 87, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(20,1);
						tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
						uu8_1 = tu8_1;
						tu8_2 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
						uu8_2 = tu8_2;
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 59, dtype));
						ui4_1 = ti4_1;
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
						ui4_2 = ti4_2;
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(360, 56, "will_overflow", tr1))(tr1, uu8_1x, uu8_2x, ui4_1x, ui4_2x)).it_b);
						if (tb1) {
							RTHOOK(21);
							RTDBGAA(Current, dtype, 363, 90, 0x04000000, 1); /* internal_overflowed */
							
							*(EIF_BOOLEAN *)(Current + RTWA(363, 90, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
							RTHOOK(22);
							RTDBGAA(Current, dtype, 363, 88, 0x3C000000, 1); /* part1 */
							
							*(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype)) = (EIF_NATURAL_64) loc1;
							RTHOOK(23);
							RTDBGAA(Current, dtype, 363, 89, 0x3C000000, 1); /* part2 */
							
							*(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype)) = (EIF_NATURAL_64) loc2;
							RTHOOK(24);
							RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
							
							loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 5L);
						}
					}
				} else {
					RTHOOK(25);
					RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
					
					loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
				}
				break;
			case 2L:
				RTHOOK(26);
				tb1 = EIF_TEST(isdigit(arg1));
				if (tb1) {
					RTHOOK(27);
					RTDBGAL(Current, 1, 0x3C000000, 1, 0); /* loc1 */
					
					loc1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
					RTHOOK(28);
					RTDBGAL(Current, 2, 0x3C000000, 1, 0); /* loc2 */
					
					loc2 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
					RTHOOK(29);
					RTDBGAA(Current, dtype, 363, 88, 0x3C000000, 1); /* part1 */
					
					tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
					tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
					tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
					*(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype)) = (EIF_NATURAL_64) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
					RTHOOK(30);
					RTDBGAA(Current, dtype, 363, 89, 0x3C000000, 1); /* part2 */
					
					ti4_1 = (EIF_INTEGER_32) (arg1);
					tu8_1 = (EIF_NATURAL_64) (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 48L));
					*(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype)) = (EIF_NATURAL_64) tu8_1;
					RTHOOK(31);
					ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 59, dtype));
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 35, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_1 != ti4_2)) {
						RTHOOK(32);
						RTDBGAA(Current, dtype, 363, 90, 0x04000000, 1); /* internal_overflowed */
						
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 87, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(32,1);
						tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
						uu8_1 = tu8_1;
						tu8_2 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
						uu8_2 = tu8_2;
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 59, dtype));
						ui4_1 = ti4_1;
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
						ui4_2 = ti4_2;
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(360, 56, "will_overflow", tr1))(tr1, uu8_1x, uu8_2x, ui4_1x, ui4_2x)).it_b);
						*(EIF_BOOLEAN *)(Current + RTWA(363, 90, dtype)) = (EIF_BOOLEAN) tb1;
						RTHOOK(33);
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 69, dtype))(Current)).it_b);
						if (tb1) {
							RTHOOK(34);
							RTDBGAA(Current, dtype, 363, 88, 0x3C000000, 1); /* part1 */
							
							*(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype)) = (EIF_NATURAL_64) loc1;
							RTHOOK(35);
							RTDBGAA(Current, dtype, 363, 89, 0x3C000000, 1); /* part2 */
							
							*(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype)) = (EIF_NATURAL_64) loc2;
							RTHOOK(36);
							RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
							
							loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 5L);
						}
					}
				} else {
					RTHOOK(37);
					tb1 = '\0';
					tb2 = *(EIF_BOOLEAN *)(Current + RTWA(363, 55, dtype));
					if (tb2) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 58, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(37,1);
						uc1 = arg1;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 117, "has", tr1))(tr1, uc1x)).it_b);
						tb1 = tb2;
					}
					if (tb1) {
						RTHOOK(38);
						RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
						
						loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 3L);
					} else {
						RTHOOK(39);
						RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
						
						loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
					}
				}
				break;
			case 3L:
				RTHOOK(40);
				tb1 = '\0';
				tb2 = *(EIF_BOOLEAN *)(Current + RTWA(363, 55, dtype));
				if (tb2) {
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(363, 58, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(40,1);
					uc1 = arg1;
					tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 117, "has", tr1))(tr1, uc1x)).it_b);
					tb1 = tb2;
				}
				if (tb1) {
				} else {
					RTHOOK(41);
					RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
					
					loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
				}
				break;
			default:
				RTEC(EN_WHEN);
		}
	}
	RTHOOK(42);
	RTDBGAA(Current, dtype, 363, 64, 0x10000000, 1); /* last_state */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype)) = (EIF_INTEGER_32) loc3;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(43);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef uu8_1
#undef uu8_2
#undef ui4_1
#undef ui4_2
#undef uc1
#undef arg1
}

/* {STRING_TO_INTEGER_CONVERTOR}.conversion_type_valid */
EIF_TYPED_VALUE F364_6979 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "conversion_type_valid";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 1, 6661);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(363, Current, 6661);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ui4_1 = arg1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(363, 51, Dtype(Current)))(Current, ui4_1x)).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ui4_1
#undef arg1
}

/* {STRING_TO_INTEGER_CONVERTOR}.is_part_of_integer */
EIF_TYPED_VALUE F364_6980 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_part_of_integer";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6662);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6662);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
	ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
	ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
	Result = *(EIF_BOOLEAN *)(Current + RTWA(363, 90, dtype));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L)) || (EIF_BOOLEAN)(ti4_2 == ((EIF_INTEGER_32) 1L))) || (EIF_BOOLEAN)(ti4_3 == ((EIF_INTEGER_32) 2L))) || (EIF_BOOLEAN)(ti4_4 == ((EIF_INTEGER_32) 3L)))) && (EIF_BOOLEAN) !Result);
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

/* {STRING_TO_INTEGER_CONVERTOR}.is_integral_integer */
EIF_TYPED_VALUE F364_6981 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_integral_integer";
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
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6663);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6663);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 64, dtype));
	Result = *(EIF_BOOLEAN *)(Current + RTWA(363, 90, dtype));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (((EIF_BOOLEAN) ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 2L)) || (EIF_BOOLEAN)(ti4_2 == ((EIF_INTEGER_32) 3L)))) && (EIF_BOOLEAN) !Result);
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

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_integer_8 */
EIF_TYPED_VALUE F364_6982 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_integer_8";
	RTEX;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_8 ti1_1;
	EIF_INTEGER_8 Result = ((EIF_INTEGER_8) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT8, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6664);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6664);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L))) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x0C000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti1_1 = (EIF_INTEGER_8) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_8) (EIF_INTEGER_8) -ti1_1;
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x0C000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti1_1 = (EIF_INTEGER_8) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_8) ti1_1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT8; r.it_i1 = Result; return r; }
}

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_integer_16 */
EIF_TYPED_VALUE F364_6983 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_integer_16";
	RTEX;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_16 ti2_1;
	EIF_INTEGER_16 Result = ((EIF_INTEGER_16) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT16, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6665);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6665);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L))) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x14000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti2_1 = (EIF_INTEGER_16) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_16) (EIF_INTEGER_16) -ti2_1;
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x14000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti2_1 = (EIF_INTEGER_16) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_16) ti2_1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT16; r.it_i2 = Result; return r; }
}

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_integer_32 */
EIF_TYPED_VALUE F364_6984 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_integer_32";
	RTEX;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6666);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6666);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L))) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti4_1 = (EIF_INTEGER_32) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti4_1 = (EIF_INTEGER_32) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_32) ti4_1;
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

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_integer */
EIF_TYPED_VALUE F364_6985 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_integer";
	RTEX;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6667);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6667);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L))) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti4_1 = (EIF_INTEGER_32) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti4_1 = (EIF_INTEGER_32) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_32) ti4_1;
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

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_integer_64 */
EIF_TYPED_VALUE F364_6986 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_integer_64";
	RTEX;
	EIF_INTEGER_64 ti8_1;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_64 Result = ((EIF_INTEGER_64) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT64, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6668);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6668);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(363, 65, dtype));
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L))) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x24000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti8_1 = (EIF_INTEGER_64) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_64) (EIF_INTEGER_64) -ti8_1;
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x24000000, 1,0); /* Result */
		
		tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
		ti8_1 = (EIF_INTEGER_64) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
		Result = (EIF_INTEGER_64) ti8_1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT64; r.it_i8 = Result; return r; }
}

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_natural_8 */
EIF_TYPED_VALUE F364_6987 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_natural_8";
	RTEX;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 Result = ((EIF_NATURAL_8) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT8, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6669);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6669);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x30000000, 1,0); /* Result */
	
	tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
	tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
	tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
	tu1_1 = (EIF_NATURAL_8) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
	Result = (EIF_NATURAL_8) tu1_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT8; r.it_n1 = Result; return r; }
}

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_natural_16 */
EIF_TYPED_VALUE F364_6988 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_natural_16";
	RTEX;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 Result = ((EIF_NATURAL_16) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT16, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6670);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6670);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x34000000, 1,0); /* Result */
	
	tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
	tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
	tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
	tu2_1 = (EIF_NATURAL_16) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
	Result = (EIF_NATURAL_16) tu2_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT16; r.it_n2 = Result; return r; }
}

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_natural_32 */
EIF_TYPED_VALUE F364_6989 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_natural_32";
	RTEX;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6671);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6671);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x38000000, 1,0); /* Result */
	
	tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
	tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
	tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
	tu4_1 = (EIF_NATURAL_32) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
	Result = (EIF_NATURAL_32) tu4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
}

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_natural */
EIF_TYPED_VALUE F364_6990 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_natural";
	RTEX;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 tu8_3;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6672);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6672);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x38000000, 1,0); /* Result */
	
	tu8_1 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
	tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
	tu8_3 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
	tu4_1 = (EIF_NATURAL_32) (EIF_NATURAL_64) ((EIF_NATURAL_64) (tu8_1 * tu8_2) + tu8_3);
	Result = (EIF_NATURAL_32) tu4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
}

/* {STRING_TO_INTEGER_CONVERTOR}.parsed_natural_64 */
EIF_TYPED_VALUE F364_6991 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "parsed_natural_64";
	RTEX;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_NATURAL_64 Result = ((EIF_NATURAL_64) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT64, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6673);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6673);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x3C000000, 1,0); /* Result */
	
	Result = *(EIF_NATURAL_64 *)(Current + RTWA(363, 88, dtype));
	tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
	tu8_2 = *(EIF_NATURAL_64 *)(Current + RTWA(363, 89, dtype));
	Result = (EIF_NATURAL_64) (EIF_NATURAL_64) ((EIF_NATURAL_64) (Result * tu8_1) + tu8_2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT64; r.it_n8 = Result; return r; }
}

/* {STRING_TO_INTEGER_CONVERTOR}.overflow_checker */
RTOID (F364_6992)
EIF_TYPED_VALUE F364_6992 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "overflow_checker";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F364_6992);
	dtype = Dtype(Current);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 363, Current, 0, 0, 6674);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(363, Current, 6674);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000168, 0,0); /* Result */
	
	tr1 = RTLN(360);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(360, 55, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("overflow_checker_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef Result
}

/* {STRING_TO_INTEGER_CONVERTOR}.part1 */
EIF_TYPED_VALUE F364_6993 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_UINT64;
	r.it_n8 = *(EIF_NATURAL_64 *)(Current + RTWA(363,88, Dtype(Current)));
	return r;
}


/* {STRING_TO_INTEGER_CONVERTOR}.part2 */
EIF_TYPED_VALUE F364_6994 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_UINT64;
	r.it_n8 = *(EIF_NATURAL_64 *)(Current + RTWA(363,89, Dtype(Current)));
	return r;
}


/* {STRING_TO_INTEGER_CONVERTOR}.internal_overflowed */
EIF_TYPED_VALUE F364_6995 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(363,90, Dtype(Current)));
	return r;
}


void EIF_Minit364 (void)
{
	GTCX
	RTOTS (6992,F364_6992)
}


#ifdef __cplusplus
}
#endif
