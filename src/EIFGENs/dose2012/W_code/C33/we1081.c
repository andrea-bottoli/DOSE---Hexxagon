/*
 * Code for class WEL_FONT
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1081_19656(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1081_19657(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1081_19658(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1081_19659(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1081_19660(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1081_19661(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1081_19662(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1081_19663(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1081_19664(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1081_19665(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1081_19666(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1081_19667(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1081_19668(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1081_19669(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1081_19670(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1081_19671(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1081_19672(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1081_19673(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1081_19674(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1081_19675(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1081_19676(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1081_19677(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit1081(void);

#ifdef __cplusplus
}
#endif

#include <wel.h>
#include "eif_helpers.h"
#include "eif_misc.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_FONT}.make */
void F1081_19656 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x, EIF_TYPED_VALUE arg9x, EIF_TYPED_VALUE arg10x, EIF_TYPED_VALUE arg11x, EIF_TYPED_VALUE arg12x, EIF_TYPED_VALUE arg13x, EIF_TYPED_VALUE arg14x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_i4
#define arg6 arg6x.it_i4
#define arg7 arg7x.it_i4
#define arg8 arg8x.it_i4
#define arg9 arg9x.it_i4
#define arg10 arg10x.it_i4
#define arg11 arg11x.it_i4
#define arg12 arg12x.it_i4
#define arg13 arg13x.it_i4
#define arg14 arg14x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_TYPED_VALUE ui4_5x = {0, SK_INT32};
#define ui4_5 ui4_5x.it_i4
	EIF_TYPED_VALUE ui4_6x = {0, SK_INT32};
#define ui4_6 ui4_6x.it_i4
	EIF_TYPED_VALUE ui4_7x = {0, SK_INT32};
#define ui4_7 ui4_7x.it_i4
	EIF_TYPED_VALUE ui4_8x = {0, SK_INT32};
#define ui4_8 ui4_8x.it_i4
	EIF_TYPED_VALUE ui4_9x = {0, SK_INT32};
#define ui4_9 ui4_9x.it_i4
	EIF_TYPED_VALUE ui4_10x = {0, SK_INT32};
#define ui4_10 ui4_10x.it_i4
	EIF_TYPED_VALUE ui4_11x = {0, SK_INT32};
#define ui4_11 ui4_11x.it_i4
	EIF_TYPED_VALUE ui4_12x = {0, SK_INT32};
#define ui4_12 ui4_12x.it_i4
	EIF_TYPED_VALUE ui4_13x = {0, SK_INT32};
#define ui4_13 ui4_13x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg13x.type & SK_HEAD) == SK_REF) arg13x.it_i4 = * (EIF_INTEGER_32 *) arg13x.it_r;
	if ((arg12x.type & SK_HEAD) == SK_REF) arg12x.it_i4 = * (EIF_INTEGER_32 *) arg12x.it_r;
	if ((arg11x.type & SK_HEAD) == SK_REF) arg11x.it_i4 = * (EIF_INTEGER_32 *) arg11x.it_r;
	if ((arg10x.type & SK_HEAD) == SK_REF) arg10x.it_i4 = * (EIF_INTEGER_32 *) arg10x.it_r;
	if ((arg9x.type & SK_HEAD) == SK_REF) arg9x.it_i4 = * (EIF_INTEGER_32 *) arg9x.it_r;
	if ((arg8x.type & SK_HEAD) == SK_REF) arg8x.it_i4 = * (EIF_INTEGER_32 *) arg8x.it_r;
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_i4 = * (EIF_INTEGER_32 *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_i4 = * (EIF_INTEGER_32 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_i4 = * (EIF_INTEGER_32 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(5);
	RTLR(0,arg14);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_INT32,&arg5);
	RTLU(SK_INT32,&arg6);
	RTLU(SK_INT32,&arg7);
	RTLU(SK_INT32,&arg8);
	RTLU(SK_INT32,&arg9);
	RTLU(SK_INT32,&arg10);
	RTLU(SK_INT32,&arg11);
	RTLU(SK_INT32,&arg12);
	RTLU(SK_INT32,&arg13);
	RTLU(SK_REF,&arg14);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1080, Current, 1, 14, 23683);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23683);
	if (arg14) {
		RTCC(arg14, 1080, l_feature_name, 14, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_face_name_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg14 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF80001F7, 0, 0); /* loc1 */
	
	tr1 = RTLN(503);
	ur1 = RTCCL(arg14);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1080, 33, 0x40000000, 1); /* item */
	
	ui4_1 = arg1;
	ui4_2 = arg2;
	ui4_3 = arg3;
	ui4_4 = arg4;
	ui4_5 = arg5;
	ui4_6 = arg6;
	ui4_7 = arg7;
	ui4_8 = arg8;
	ui4_9 = arg9;
	ui4_10 = arg10;
	ui4_11 = arg11;
	ui4_12 = arg12;
	ui4_13 = arg13;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc1))(loc1)).it_p);
	up1 = tp1;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1080, 164, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ui4_5x, ui4_6x, ui4_7x, ui4_8x, ui4_9x, ui4_10x, ui4_11x, ui4_12x, ui4_13x, up1x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(1080, 33, dtype)) = (EIF_POINTER) tp1;
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1080, 57, dtype))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(17);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ui4_6
#undef ui4_7
#undef ui4_8
#undef ui4_9
#undef ui4_10
#undef ui4_11
#undef ui4_12
#undef ui4_13
#undef arg14
#undef arg13
#undef arg12
#undef arg11
#undef arg10
#undef arg9
#undef arg8
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_FONT}.make_indirect */
void F1081_19657 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make_indirect";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_BOOLEAN tb1;
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
	
	RTEAA(l_feature_name, 1080, Current, 0, 1, 23684);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23684);
	if (arg1) {
		RTCC(arg1, 1080, l_feature_name, 1, 681);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_log_font_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_log_font_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(681, 34, "exists", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1080, 33, 0x40000000, 1); /* item */
	
	tp1 = *(EIF_POINTER *)(arg1 + RTVA(681, 32, "item", arg1));
	up1 = tp1;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1080, 165, dtype))(Current, up1x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(1080, 33, dtype)) = (EIF_POINTER) tp1;
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1080, 57, dtype))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {WEL_FONT}.set_height */
void F1081_19658 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_height";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(5);
	RTLR(0,Current);
	RTLR(1,loc2);
	RTLR(2,tr1);
	RTLR(3,loc1);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1080, Current, 2, 1, 23685);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23685);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_height_bigger_than_zero", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 > ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 2, 0xF80002D9, 0, 0); /* loc2 */
	
	tr1 = RTLN(729);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(729, 26, Dtype(tr1)))(tr1);
	RTNHOOK(3,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 479, "get", loc2))(loc2);
	RTHOOK(5);
	RTDBGAL(Current, 1, 0xF80002A9, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 149, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(6);
	ur1 = RTCCL(loc2);
	ui4_1 = arg1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1080, 123, dtype))(Current, ur1x, ui4_1x)).it_i4);
	ui4_1 = (EIF_INTEGER_32) -ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(681, 174, "set_height", loc1))(loc1, ui4_1x);
	RTHOOK(7);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 480, "release", loc2))(loc2);
	RTHOOK(8);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1080, 148, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {WEL_FONT}.set_height_in_points */
void F1081_19659 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_height_in_points";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(5);
	RTLR(0,Current);
	RTLR(1,loc2);
	RTLR(2,tr1);
	RTLR(3,loc1);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1080, Current, 2, 1, 23686);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23686);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF80002D9, 0, 0); /* loc2 */
	
	tr1 = RTLN(729);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(729, 26, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 479, "get", loc2))(loc2);
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF80002A9, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 149, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	ur1 = RTCCL(loc2);
	ui4_1 = arg1;
	ui4_2 = ((EIF_INTEGER_32) 1L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1080, 121, dtype))(Current, ur1x, ui4_1x, ui4_2x)).it_i4);
	ui4_1 = (EIF_INTEGER_32) -ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(681, 174, "set_height", loc1))(loc1, ui4_1x);
	RTHOOK(6);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 480, "release", loc2))(loc2);
	RTHOOK(7);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1080, 148, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg1
}

/* {WEL_FONT}.set_indirect */
void F1081_19660 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_indirect";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_POINTER loc2 = (EIF_POINTER) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_BOOLEAN tb1;
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
	RTLU(SK_BOOL, &loc1);
	RTLU(SK_POINTER, &loc2);
	
	RTEAA(l_feature_name, 1080, Current, 2, 1, 23687);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23687);
	if (arg1) {
		RTCC(arg1, 1080, l_feature_name, 1, 681);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_log_font_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (
		WDBG(1080,"wel_gdi_count")
	) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1080, 62, dtype))(Current);
	}
	RTHOOK(4);
	RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(1080, 33, dtype));
	up1 = tp1;
	loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1080, 64, dtype))(Current, up1x)).it_b);
	if (RTAL & CK_CHECK) {
		RTHOOK(5);
		RTCT("c_object_destroyed", EX_CHECK);
		if (loc1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(6);
	RTDBGAA(Current, dtype, 1080, 33, 0x40000000, 1); /* item */
	
	*(EIF_POINTER *)(Current + RTWA(1080, 33, dtype)) = (EIF_POINTER) loc2;
	if (RTAL & CK_CHECK) {
		RTHOOK(7);
		RTCT("c_object_destroyed", EX_CHECK);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(8);
	RTDBGAA(Current, dtype, 1080, 33, 0x40000000, 1); /* item */
	
	tp1 = *(EIF_POINTER *)(arg1 + RTVA(681, 32, "item", arg1));
	up1 = tp1;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1080, 165, dtype))(Current, up1x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(1080, 33, dtype)) = (EIF_POINTER) tp1;
	if (
		WDBG(1080,"wel_gdi_count")
	) {
		RTHOOK(9);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1080, 61, dtype))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(10);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef arg1
}

/* {WEL_FONT}.log_font */
EIF_TYPED_VALUE F1081_19661 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "log_font";
	RTEX;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 0, 23688);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23688);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT(NULL, EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF80002A9, 0,0); /* Result */
	
	tr1 = RTLN(681);
	ur1 = RTCCL(Current);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(681, 130, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("result_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
#undef ur1
}

/* {WEL_FONT}.width */
EIF_TYPED_VALUE F1081_19662 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "width";
	RTEX;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 0, 23689);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23689);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	tr1 = RTMS_EX_H("x",1,120);
	ur1 = tr1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1080, 153, dtype))(Current, ur1x)).it_i4);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef ur1
}

/* {WEL_FONT}.height */
EIF_TYPED_VALUE F1081_19663 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "height";
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
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1080, Current, 1, 0, 23690);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23690);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF80002D9, 0, 0); /* loc1 */
	
	tr1 = RTLN(729);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(729, 26, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 479, "get", loc1))(loc1);
	RTHOOK(4);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	ur1 = RTCCL(loc1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 149, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(681, 133, "height", tr1))(tr1)).it_i4);
	ui4_1 = (EIF_INTEGER_32) -ti4_1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1080, 124, dtype))(Current, ur1x, ui4_1x)).it_i4);
	RTHOOK(5);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 480, "release", loc1))(loc1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("result_bigger_than_zero", EX_POST);
		if ((EIF_BOOLEAN) (Result > ((EIF_INTEGER_32) 0L))) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
}

/* {WEL_FONT}.point */
EIF_TYPED_VALUE F1081_19664 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "point";
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
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1080, Current, 1, 0, 23691);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23691);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF80002D9, 0, 0); /* loc1 */
	
	tr1 = RTLN(729);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(729, 26, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 479, "get", loc1))(loc1);
	RTHOOK(4);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	ur1 = RTCCL(loc1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 149, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(681, 133, "height", tr1))(tr1)).it_i4);
	ui4_1 = (EIF_INTEGER_32) -ti4_1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1080, 120, dtype))(Current, ur1x, ui4_1x)).it_i4);
	RTHOOK(5);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 480, "release", loc1))(loc1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
}

/* {WEL_FONT}.string_width */
EIF_TYPED_VALUE F1081_19665 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "string_width";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLR(3,tr1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 1, 23692);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23692);
	if (arg1) {
		RTCC(arg1, 1080, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	ur1 = RTCCL(arg1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1080, 156, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	ti4_1 = eif_integer_32_item(RTCV(tr1),1);
	Result = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ur1
#undef arg1
}

/* {WEL_FONT}.string_height */
EIF_TYPED_VALUE F1081_19666 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "string_height";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLR(3,tr1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 1, 23693);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23693);
	if (arg1) {
		RTCC(arg1, 1080, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	ur1 = RTCCL(arg1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1080, 156, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	ti4_1 = eif_integer_32_item(RTCV(tr1),2);
	Result = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ur1
#undef arg1
}

/* {WEL_FONT}.string_size_extended */
EIF_TYPED_VALUE F1081_19667 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "string_size_extended";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_POINTER loc8 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc9 = (EIF_INTEGER_32) 0;
	EIF_POINTER loc10 = (EIF_POINTER) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc12 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc13 = (EIF_REFERENCE) 0;
	EIF_POINTER loc14 = (EIF_POINTER) 0;
	EIF_NATURAL_32 loc15 = (EIF_NATURAL_32) 0;
	EIF_INTEGER_32 loc16 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc17 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc18 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc19 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc20 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc21 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc22 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc23 = (EIF_INTEGER_32) 0;
	EIF_BOOLEAN loc24 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc25 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu4_2x = {0, SK_UINT32};
#define uu4_2 uu4_2x.it_n4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(10);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,loc3);
	RTLR(5,loc21);
	RTLR(6,loc11);
	RTLR(7,loc13);
	RTLR(8,loc25);
	RTLR(9,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_POINTER, &loc8);
	RTLU(SK_INT32, &loc9);
	RTLU(SK_POINTER, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_INT32, &loc12);
	RTLU(SK_REF, &loc13);
	RTLU(SK_POINTER, &loc14);
	RTLU(SK_UINT32, &loc15);
	RTLU(SK_INT32, &loc16);
	RTLU(SK_INT32, &loc17);
	RTLU(SK_INT32, &loc18);
	RTLU(SK_INT32, &loc19);
	RTLU(SK_INT32, &loc20);
	RTLU(SK_REF, &loc21);
	RTLU(SK_INT32, &loc22);
	RTLU(SK_INT32, &loc23);
	RTLU(SK_BOOL, &loc24);
	RTLU(SK_REF, &loc25);
	
	RTEAA(l_feature_name, 1080, Current, 25, 1, 23694);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23694);
	if (arg1) {
		RTCC(arg1, 1080, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 46, "count", arg1))(arg1)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
		RTHOOK(5);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	} else {
		RTHOOK(6);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 139, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(503, 58, "set_string", tr1))(tr1, ur1x);
		RTHOOK(7);
		RTDBGAL(Current, 8, 0x40000000, 1, 0); /* loc8 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 139, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(7,1);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", tr1))(tr1)).it_p);
		loc8 = (EIF_POINTER) tp1;
		RTHOOK(8);
		RTDBGAL(Current, 3, 0xF80002D9, 0, 0); /* loc3 */
		
		loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 157, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(9);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 479, "get", loc3))(loc3);
		RTHOOK(10);
		ur1 = RTCCL(Current);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(729, 330, "select_font", loc3))(loc3, ur1x);
		RTHOOK(11);
		RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 139, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(11,1);
		ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(503, 52, "count", tr1));
		loc5 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(12);
		RTDBGAL(Current, 21, 0xF8000290, 0, 0); /* loc21 */
		
		loc21 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 158, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(13);
		ur1 = RTCCL(loc3);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(656, 55, "set_from_dc", loc21))(loc21, ur1x);
		RTHOOK(14);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(656, 74, "pitch_and_family", loc21))(loc21)).it_i4);
		ui4_1 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 137, dtype))(Current)).it_i4);
		ui4_2 = ti4_2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1080, 133, dtype))(Current, ui4_1x, ui4_2x)).it_b);
		if (tb1) {
			RTHOOK(15);
			RTDBGAL(Current, 22, 0x10000000, 1, 0); /* loc22 */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(656, 56, "height", loc21))(loc21)).it_i4);
			loc22 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(16);
			RTDBGAL(Current, 24, 0x04000000, 1, 0); /* loc24 */
			
			loc24 = (EIF_BOOLEAN) (EIF_BOOLEAN) (loc5 < ((EIF_INTEGER_32) 48L));
			RTHOOK(17);
			RTDBGAL(Current, 11, 0xF8000287, 0, 0); /* loc11 */
			
			loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 159, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTHOOK(18);
			RTDBGAL(Current, 12, 0x10000000, 1, 0); /* loc12 */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(647, 53, "structure_size", loc11))(loc11)).it_i4);
			loc12 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(19);
			if ((EIF_BOOLEAN) !loc24) {
				RTHOOK(20);
				RTDBGAL(Current, 13, 0xF800023B, 0, 0); /* loc13 */
				
				tr1 = RTLN(571);
				ui4_1 = (EIF_INTEGER_32) (((EIF_INTEGER_32) 256L) * loc12);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(571, 81, Dtype(tr1)))(tr1, ui4_1x);
				RTNHOOK(20,1);
				loc13 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(21);
				tp1 = *(EIF_POINTER *)(loc3 + RTVA(729, 34, "item", loc3));
				up1 = tp1;
				tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L);
				uu4_1 = tu4_1;
				tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 255L);
				uu4_2 = tu4_2;
				tp2 = *(EIF_POINTER *)(loc13 + RTVA(571, 87, "item", loc13));
				up2 = tp2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(729, 476, "cwel_get_char_abc_widths", loc3))(loc3, up1x, uu4_1x, uu4_2x, up2x);
				RTHOOK(22);
				RTDBGAL(Current, 14, 0x40000000, 1, 0); /* loc14 */
				
				tp1 = *(EIF_POINTER *)(loc13 + RTVA(571, 87, "item", loc13));
				loc14 = (EIF_POINTER) tp1;
			}
			RTHOOK(23);
			RTDBGAL(Current, 10, 0x40000000, 1, 0); /* loc10 */
			
			tp1 = *(EIF_POINTER *)(loc3 + RTVA(729, 34, "item", loc3));
			loc10 = (EIF_POINTER) tp1;
			RTHOOK(24);
			RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
			
			loc6 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1000L);
			RTHOOK(25);
			RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
			
			loc7 = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1000L);
			RTHOOK(26);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			loc4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			RTHOOK(27);
			RTDBGAL(Current, 9, 0x10000000, 1, 0); /* loc9 */
			
			loc9 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			for (;;) {
				RTHOOK(28);
				if ((EIF_BOOLEAN) (loc4 > loc5)) break;
				RTHOOK(29);
				RTDBGAL(Current, 15, 0x38000000, 1, 0); /* loc15 */
				
				ui4_1 = loc4;
				tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(780, 41, "code", arg1))(arg1, ui4_1x)).it_n4);
				loc15 = (EIF_NATURAL_32) tu4_1;
				if (RTAL & CK_CHECK) {
					RTHOOK(30);
					RTCT("character_code_not_too_big", EX_CHECK);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(739, 43, 739))(Current)).it_i4);
					tu4_1 = (EIF_NATURAL_32) ti4_1;
					if ((EIF_BOOLEAN) (loc15 <= tu4_1)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(31);
				ti4_1 = (EIF_INTEGER_32) ((EIF_CHARACTER_8) '\012');
				RTNHOOK(31,1);
				tu4_1 = (EIF_NATURAL_32) ti4_1;
				if ((EIF_BOOLEAN)(loc15 == tu4_1)) {
					RTHOOK(32);
					RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
					
					ui4_1 = loc19;
					ti4_1 = eif_max_int32 (loc1,ui4_1);
					loc1 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(33);
					RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
					
					ui4_1 = (EIF_INTEGER_32) (loc19 - loc9);
					ti4_1 = eif_max_int32 (loc7,ui4_1);
					loc7 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(34);
					RTDBGAL(Current, 9, 0x10000000, 1, 0); /* loc9 */
					
					loc9 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
					RTHOOK(35);
					RTDBGAL(Current, 19, 0x10000000, 1, 0); /* loc19 */
					
					loc19 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
					RTHOOK(36);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					
					loc2 += loc22;
					RTHOOK(37);
					RTDBGAL(Current, 23, 0x10000000, 1, 0); /* loc23 */
					
					loc23 = (EIF_INTEGER_32) loc4;
				} else {
					RTHOOK(38);
					tb1 = '\01';
					if (!loc24) {
						tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 255L);
						tb1 = (EIF_BOOLEAN) (loc15 > tu4_1);
					}
					if (tb1) {
						RTHOOK(39);
						tp1 = *(EIF_POINTER *)(loc3 + RTVA(729, 34, "item", loc3));
						up1 = tp1;
						uu4_1 = loc15;
						uu4_2 = loc15;
						tp2 = *(EIF_POINTER *)(loc11 + RTVA(647, 32, "item", loc11));
						up2 = tp2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(729, 476, "cwel_get_char_abc_widths", loc3))(loc3, up1x, uu4_1x, uu4_2x, up2x);
					} else {
						RTHOOK(40);
						RTDBGAL(Current, 11, 0xF8000287, 0, 0); /* loc11 */
						
						tr1 = RTLN(647);
						ti4_1 = (EIF_INTEGER_32) loc15;
						ui4_1 = (EIF_INTEGER_32) (ti4_1 * loc12);
						tp1 = RTPOF(loc14,ui4_1);
						up1 = tp1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(647, 31, Dtype(tr1)))(tr1, up1x);
						RTNHOOK(40,1);
						loc11 = (EIF_REFERENCE) RTCCL(tr1);
					}
					RTHOOK(41);
					RTDBGAL(Current, 16, 0x10000000, 1, 0); /* loc16 */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(647, 54, "a", loc11))(loc11)).it_i4);
					loc16 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(42);
					RTDBGAL(Current, 17, 0x10000000, 1, 0); /* loc17 */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(647, 55, "b", loc11))(loc11)).it_i4);
					loc17 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(43);
					RTDBGAL(Current, 18, 0x10000000, 1, 0); /* loc18 */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(647, 56, "c", loc11))(loc11)).it_i4);
					loc18 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(44);
					RTDBGAL(Current, 20, 0x10000000, 1, 0); /* loc20 */
					
					loc20 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc16 + loc17) + loc18);
					RTHOOK(45);
					RTDBGAL(Current, 9, 0x10000000, 1, 0); /* loc9 */
					
					ui4_1 = ((EIF_INTEGER_32) 1000L);
					ti4_1 = eif_min_int32 ((EIF_INTEGER_32) (loc9 + loc20),ui4_1);
					loc9 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(46);
					RTDBGAL(Current, 9, 0x10000000, 1, 0); /* loc9 */
					
					ui4_1 = loc18;
					ti4_1 = eif_min_int32 (loc9,ui4_1);
					loc9 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(47);
					RTDBGAL(Current, 19, 0x10000000, 1, 0); /* loc19 */
					
					loc19 += loc20;
					RTHOOK(48);
					if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc23 == (EIF_INTEGER_32) (loc4 - ((EIF_INTEGER_32) 1L))) || (EIF_BOOLEAN)(loc4 == ((EIF_INTEGER_32) 1L)))) {
						RTHOOK(49);
						RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
						
						ui4_1 = loc16;
						ti4_1 = eif_min_int32 (loc6,ui4_1);
						loc6 = (EIF_INTEGER_32) ti4_1;
					}
				}
				RTHOOK(50);
				RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
				
				loc4++;
			}
			RTHOOK(51);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			loc2 += loc22;
			RTHOOK(52);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			ui4_1 = loc19;
			ti4_1 = eif_max_int32 (loc1,ui4_1);
			loc1 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(53);
			RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
			
			ui4_1 = (EIF_INTEGER_32) (loc19 - loc9);
			ti4_1 = eif_max_int32 (loc7,ui4_1);
			loc7 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(54);
			RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
			
			loc7 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc1 - loc7);
		} else {
			RTHOOK(55);
			RTDBGAL(Current, 25, 0xF80002DE, 0, 0); /* loc25 */
			
			ur1 = RTCCL(arg1);
			loc25 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1080, 156, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTHOOK(56);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			ti4_1 = eif_integer_32_item(RTCV(loc25),1);
			loc1 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(57);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			ti4_1 = eif_integer_32_item(RTCV(loc25),2);
			loc2 = (EIF_INTEGER_32) ti4_1;
		}
		RTHOOK(58);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 336, "unselect_font", loc3))(loc3);
		RTHOOK(59);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 481, "quick_release", loc3))(loc3);
	}
	RTHOOK(60);
	RTDBGAL(Current, 0, 0xF80002DE, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 160, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	
	RTHOOK(61);
	eif_put_integer_32_item(RTCV(Result),1,loc1);
	
	RTHOOK(62);
	eif_put_integer_32_item(RTCV(Result),2,loc2);
	
	RTHOOK(63);
	eif_put_integer_32_item(RTCV(Result),3,loc6);
	
	RTHOOK(64);
	eif_put_integer_32_item(RTCV(Result),4,loc7);
	if (RTAL & CK_ENSURE) {
		RTHOOK(65);
		RTCT("result_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(66);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(28);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef uu4_1
#undef uu4_2
#undef arg1
}

/* {WEL_FONT}.string_size */
EIF_TYPED_VALUE F1081_19668 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "string_size";
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
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc4);
	RTLR(3,loc3);
	RTLR(4,ur1);
	RTLR(5,ur2);
	RTLR(6,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 1080, Current, 4, 1, 23695);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1080, Current, 23695);
	if (arg1) {
		RTCC(arg1, 1080, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 46, "count", arg1))(arg1)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
		RTHOOK(5);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	} else {
		RTHOOK(6);
		RTDBGAL(Current, 4, 0xF80002B3, 0, 0); /* loc4 */
		
		loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 138, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(7);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ui4_2 = ((EIF_INTEGER_32) 0L);
		ui4_3 = ((EIF_INTEGER_32) 32767L);
		ui4_4 = ((EIF_INTEGER_32) 32767L);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(691, 65, "set_rect", loc4))(loc4, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
		RTHOOK(8);
		RTDBGAL(Current, 3, 0xF80002D9, 0, 0); /* loc3 */
		
		loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 157, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(9);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 479, "get", loc3))(loc3);
		RTHOOK(10);
		ur1 = RTCCL(Current);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(729, 330, "select_font", loc3))(loc3, ur1x);
		RTHOOK(11);
		ur1 = RTCCL(arg1);
		ur2 = RTCCL(loc4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 109, dtype))(Current)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 105, dtype))(Current)).it_i4);
		ui4_1 = ti4_2;
		ti4_2 = eif_bit_or(ti4_1,ui4_1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 110, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		ti4_1 = eif_bit_or(ti4_2,ui4_1);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(729, 344, "draw_text", loc3))(loc3, ur1x, ur2x, ui4_1x);
		RTHOOK(12);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", loc4))(loc4)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(13);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", loc4))(loc4)).it_i4);
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(14);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 336, "unselect_font", loc3))(loc3);
		RTHOOK(15);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(729, 481, "quick_release", loc3))(loc3);
	}
	RTHOOK(16);
	RTDBGAL(Current, 0, 0xF80002DE, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1080, 161, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	
	RTHOOK(17);
	eif_put_integer_32_item(RTCV(Result),1,loc1);
	
	RTHOOK(18);
	eif_put_integer_32_item(RTCV(Result),2,loc2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(19);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ur2
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef arg1
}

/* {WEL_FONT}.reusable_screen_dc */
RTOID (F1081_19669)
EIF_TYPED_VALUE F1081_19669 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reusable_screen_dc";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1081_19669);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 0, 23696);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1080, Current, 23696);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80002D9, 0,0); /* Result */
	
	tr1 = RTLN(729);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(729, 26, Dtype(tr1)))(tr1);
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
#undef Result
}

/* {WEL_FONT}.reusable_text_metric */
RTOID (F1081_19670)
EIF_TYPED_VALUE F1081_19670 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reusable_text_metric";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1081_19670);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 0, 23697);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1080, Current, 23697);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000290, 0,0); /* Result */
	
	tr1 = RTLN(656);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(656, 53, Dtype(tr1)))(tr1);
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
#undef Result
}

/* {WEL_FONT}.reusable_abc_struct */
RTOID (F1081_19671)
EIF_TYPED_VALUE F1081_19671 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reusable_abc_struct";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1081_19671);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 0, 23698);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1080, Current, 23698);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000287, 0,0); /* Result */
	
	tr1 = RTLN(647);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(647, 41, Dtype(tr1)))(tr1);
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
#undef Result
}

/* {WEL_FONT}.reusable_string_size_extended_tuple */
RTOID (F1081_19672)
EIF_TYPED_VALUE F1081_19672 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reusable_string_size_extended_tuple";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1081_19672);

	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 0, 23699);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1080, Current, 23699);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80002DE, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {1080,0xFFF9,4,734,739,739,739,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
		tr1 = RTLNTS(typres0, 5, 1);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_i4 = ((EIF_INTEGER_32) 0L);
	((EIF_TYPED_VALUE *)tr1+2)->it_i4 = ((EIF_INTEGER_32) 0L);
	((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ((EIF_INTEGER_32) 0L);
	((EIF_TYPED_VALUE *)tr1+4)->it_i4 = ((EIF_INTEGER_32) 0L);
	Result = (EIF_REFERENCE) tr1;
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
#undef Result
}

/* {WEL_FONT}.reusable_string_size_tuple */
RTOID (F1081_19673)
EIF_TYPED_VALUE F1081_19673 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reusable_string_size_tuple";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1081_19673);

	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 0, 23700);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1080, Current, 23700);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80002DE, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {1080,0xFFF9,2,734,739,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
		tr1 = RTLNTS(typres0, 3, 1);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_i4 = ((EIF_INTEGER_32) 0L);
	((EIF_TYPED_VALUE *)tr1+2)->it_i4 = ((EIF_INTEGER_32) 0L);
	Result = (EIF_REFERENCE) tr1;
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
#undef Result
}

/* {WEL_FONT}.get_char_a_width */
EIF_TYPED_VALUE F1081_19674 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "get_char_a_width";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_n4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu4_2x = {0, SK_UINT32};
#define uu4_2 uu4_2x.it_n4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_32 tu4_1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_n4 = * (EIF_NATURAL_32 *) arg2x.it_r;
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_UINT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 2, 23701);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1080, Current, 23701);
	if (arg1) {
		RTCC(arg1, 1080, l_feature_name, 1, 723);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("dc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("character_code_positive", EX_PRE);
		tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L);
		RTTE((EIF_BOOLEAN) (arg2 > tu4_1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	uu4_1 = arg2;
	uu4_2 = arg2;
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 302, "char_abc_widths", arg1))(arg1, uu4_1x, uu4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 81, "i_th", tr1))(tr1, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(647, 54, "a", tr2))(tr2)).it_i4);
	Result = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef uu4_1
#undef uu4_2
#undef arg2
#undef arg1
}

/* {WEL_FONT}.get_char_c_width */
EIF_TYPED_VALUE F1081_19675 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "get_char_c_width";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_n4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu4_2x = {0, SK_UINT32};
#define uu4_2 uu4_2x.it_n4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_32 tu4_1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_n4 = * (EIF_NATURAL_32 *) arg2x.it_r;
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_UINT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 2, 23702);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1080, Current, 23702);
	if (arg1) {
		RTCC(arg1, 1080, l_feature_name, 1, 723);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("dc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("character_code_positive", EX_PRE);
		tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L);
		RTTE((EIF_BOOLEAN) (arg2 > tu4_1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	uu4_1 = arg2;
	uu4_2 = arg2;
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 302, "char_abc_widths", arg1))(arg1, uu4_1x, uu4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 81, "i_th", tr1))(tr1, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(647, 56, "c", tr2))(tr2)).it_i4);
	Result = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef uu4_1
#undef uu4_2
#undef arg2
#undef arg1
}

/* {WEL_FONT}.cwin_create_font */
EIF_TYPED_VALUE F1081_19676 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x, EIF_TYPED_VALUE arg9x, EIF_TYPED_VALUE arg10x, EIF_TYPED_VALUE arg11x, EIF_TYPED_VALUE arg12x, EIF_TYPED_VALUE arg13x, EIF_TYPED_VALUE arg14x)
{
	GTCX
	char *l_feature_name = "cwin_create_font";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_i4
#define arg6 arg6x.it_i4
#define arg7 arg7x.it_i4
#define arg8 arg8x.it_i4
#define arg9 arg9x.it_i4
#define arg10 arg10x.it_i4
#define arg11 arg11x.it_i4
#define arg12 arg12x.it_i4
#define arg13 arg13x.it_i4
#define arg14 arg14x.it_p
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg14x.type & SK_HEAD) == SK_REF) arg14x.it_p = * (EIF_POINTER *) arg14x.it_r;
	if ((arg13x.type & SK_HEAD) == SK_REF) arg13x.it_i4 = * (EIF_INTEGER_32 *) arg13x.it_r;
	if ((arg12x.type & SK_HEAD) == SK_REF) arg12x.it_i4 = * (EIF_INTEGER_32 *) arg12x.it_r;
	if ((arg11x.type & SK_HEAD) == SK_REF) arg11x.it_i4 = * (EIF_INTEGER_32 *) arg11x.it_r;
	if ((arg10x.type & SK_HEAD) == SK_REF) arg10x.it_i4 = * (EIF_INTEGER_32 *) arg10x.it_r;
	if ((arg9x.type & SK_HEAD) == SK_REF) arg9x.it_i4 = * (EIF_INTEGER_32 *) arg9x.it_r;
	if ((arg8x.type & SK_HEAD) == SK_REF) arg8x.it_i4 = * (EIF_INTEGER_32 *) arg8x.it_r;
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_i4 = * (EIF_INTEGER_32 *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_i4 = * (EIF_INTEGER_32 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_i4 = * (EIF_INTEGER_32 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_INT32,&arg5);
	RTLU(SK_INT32,&arg6);
	RTLU(SK_INT32,&arg7);
	RTLU(SK_INT32,&arg8);
	RTLU(SK_INT32,&arg9);
	RTLU(SK_INT32,&arg10);
	RTLU(SK_INT32,&arg11);
	RTLU(SK_INT32,&arg12);
	RTLU(SK_INT32,&arg13);
	RTLU(SK_POINTER,&arg14);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 14, 23703);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1080, Current, 23703);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) CreateFont(((int) arg1), ((int) arg2), ((int) arg3), ((int) arg4), ((int) arg5), ((DWORD) arg6), ((DWORD) arg7), ((DWORD) arg8), ((DWORD) arg9), ((DWORD) arg10), ((DWORD) arg11), ((DWORD) arg12), ((DWORD) arg13), ((LPCTSTR) arg14));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(16);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef arg14
#undef arg13
#undef arg12
#undef arg11
#undef arg10
#undef arg9
#undef arg8
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_FONT}.cwin_create_font_indirect */
EIF_TYPED_VALUE F1081_19677 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "cwin_create_font_indirect";
	RTEX;
#define arg1 arg1x.it_p
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1080, Current, 0, 1, 23704);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1080, Current, 23704);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) CreateFontIndirect(((LOGFONT *) arg1));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef arg1
}

void EIF_Minit1081 (void)
{
	GTCX
	RTOTS (19669,F1081_19669)
	RTOTS (19670,F1081_19670)
	RTOTS (19671,F1081_19671)
	RTOTS (19672,F1081_19672)
	RTOTS (19673,F1081_19673)
}


#ifdef __cplusplus
}
#endif
