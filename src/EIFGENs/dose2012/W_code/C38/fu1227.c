/*
 * Code for class FUNCTION [G#1, G#2, BOOLEAN]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1227_15037(EIF_REFERENCE);
extern void F1227_15038(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1227_15039(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1227_15040(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1227_15041(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1227_15042(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1227_15043(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1227_15044(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1227_15045(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit1227(void);

#ifdef __cplusplus
}
#endif

#include "eif_rout_obj.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F1227_15045
static int inline_F1227_15045 (EIF_POINTER arg1, EIF_POINTER arg2, EIF_POINTER arg3, EIF_POINTER arg4, EIF_INTEGER_32 arg5, EIF_INTEGER_32 arg6, EIF_BOOLEAN arg7, EIF_BOOLEAN arg8, EIF_BOOLEAN arg9, EIF_INTEGER_32 arg10, EIF_INTEGER_32 arg11, EIF_POINTER arg12)
{
	#ifdef WORKBENCH
	EIF_BOOLEAN result;
	if (arg1 != 0) {
		return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_POINTER, EIF_REFERENCE, EIF_REFERENCE)) arg1)(
			arg2, arg3, arg4).it_b;
	} else {
		rout_obj_call_function_dynamic (
			arg5,
			arg6,
			arg7,
			arg8,
			arg9,
			arg3,
			arg10,
			arg4,
			arg11,
			arg12, 
			&result);
		return result;
	}
#else
	return (FUNCTION_CAST(EIF_BOOLEAN, (EIF_POINTER, EIF_REFERENCE, EIF_REFERENCE)) arg1)(
		arg2, arg3, arg4);
#endif
	;
}
#define INLINE_F1227_15045
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {FUNCTION}.last_result */
EIF_TYPED_VALUE F1227_15037 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1226,66, Dtype(Current)));
	return r;
}


/* {FUNCTION}.call */
void F1227_15038 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "call";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE up4x = {0, SK_POINTER};
#define up4 up4x.it_p
	EIF_TYPED_VALUE up5x = {0, SK_POINTER};
#define up5 up5x.it_p
	EIF_TYPED_VALUE up6x = {0, SK_POINTER};
#define up6 up6x.it_p
	EIF_TYPED_VALUE up7x = {0, SK_POINTER};
#define up7 up7x.it_p
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {0, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_TYPED_VALUE ub3x = {0, SK_BOOL};
#define ub3 ub3x.it_b
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
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
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,loc2);
	RTLR(4,tr1);
	RTLR(5,tr2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1226, Current, 2, 1, 19039);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1226, Current, 19039);
	RTCC(arg1, 1226, l_feature_name, 1, RTWCT(1226, 76, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_operands", EX_PRE);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1226, 39, dtype))(Current, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF80002DE, 0, 0); /* loc2 */
	
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 46, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(734, 63, "count", loc2))(loc2)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
	}
	RTHOOK(5);
	RTDBGAA(Current, dtype, 1226, 66, 0x04000000, 0); /* last_result */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(1226, 51, dtype));
	up1 = tp1;
	tp2 = *(EIF_POINTER *)(Current + RTWA(1226, 49, dtype));
	up2 = tp2;
	tr1 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 46, dtype))(Current)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	up4 = tr1;
	up5 = arg1;
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1226, 52, dtype));
	ui4_1 = ti4_1;
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1226, 53, dtype));
	ui4_2 = ti4_2;
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1226, 54, dtype));
	ub1 = tb1;
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1226, 55, dtype));
	ub2 = tb2;
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1226, 56, dtype));
	ub3 = tb3;
	ui4_3 = loc1;
	ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1226, 42, dtype));
	ui4_4 = ti4_3;
	tr2 = ((up6x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 50, dtype))(Current)), (((up6x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up6x.it_r = RTBU(up6x))), (up6x.type = SK_POINTER), up6x.it_r);
	up7 = tr2;
	tb1 = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1226, 74, dtype))(Current, up1x, up2x, up4x, up5x, ui4_1x, ui4_2x, ub1x, ub2x, ub3x, ui4_3x, ui4_4x, up7x))).it_b);
	*(EIF_BOOLEAN *)(Current + RTWA(1226, 66, dtype)) = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef up4
#undef up5
#undef up6
#undef up7
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ub1
#undef ub2
#undef ub3
#undef arg1
}

/* {FUNCTION}.item */
EIF_TYPED_VALUE F1227_15039 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "item";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE up4x = {0, SK_POINTER};
#define up4 up4x.it_p
	EIF_TYPED_VALUE up5x = {0, SK_POINTER};
#define up5 up5x.it_p
	EIF_TYPED_VALUE up6x = {0, SK_POINTER};
#define up6 up6x.it_p
	EIF_TYPED_VALUE up7x = {0, SK_POINTER};
#define up7 up7x.it_p
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {0, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_TYPED_VALUE ub3x = {0, SK_BOOL};
#define ub3 ub3x.it_b
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
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
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,loc2);
	RTLR(4,tr1);
	RTLR(5,tr2);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1226, Current, 2, 1, 19040);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1226, Current, 19040);
	RTCC(arg1, 1226, l_feature_name, 1, RTWCT(1226, 76, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_operands", EX_PRE);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1226, 39, dtype))(Current, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF80002DE, 0, 0); /* loc2 */
	
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 46, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(734, 63, "count", loc2))(loc2)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
	}
	RTHOOK(5);
	RTDBGAL(Current, 0, 0x04000000, 0,0); /* Result */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(1226, 51, dtype));
	up1 = tp1;
	tp2 = *(EIF_POINTER *)(Current + RTWA(1226, 49, dtype));
	up2 = tp2;
	tr1 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 46, dtype))(Current)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	up4 = tr1;
	up5 = arg1;
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1226, 52, dtype));
	ui4_1 = ti4_1;
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1226, 53, dtype));
	ui4_2 = ti4_2;
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1226, 54, dtype));
	ub1 = tb1;
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1226, 55, dtype));
	ub2 = tb2;
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1226, 56, dtype));
	ub3 = tb3;
	ui4_3 = loc1;
	ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1226, 42, dtype));
	ui4_4 = ti4_3;
	tr2 = ((up6x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 50, dtype))(Current)), (((up6x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up6x.it_r = RTBU(up6x))), (up6x.type = SK_POINTER), up6x.it_r);
	up7 = tr2;
	Result = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1226, 74, dtype))(Current, up1x, up2x, up4x, up5x, ui4_1x, ui4_2x, ub1x, ub2x, ub3x, ui4_3x, ui4_4x, up7x))).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef up2
#undef up3
#undef up4
#undef up5
#undef up6
#undef up7
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ub1
#undef ub2
#undef ub3
#undef arg1
}

/* {FUNCTION}.apply */
void F1227_15040 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "apply";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE up4x = {0, SK_POINTER};
#define up4 up4x.it_p
	EIF_TYPED_VALUE up5x = {0, SK_POINTER};
#define up5 up5x.it_p
	EIF_TYPED_VALUE up6x = {0, SK_POINTER};
#define up6 up6x.it_p
	EIF_TYPED_VALUE up7x = {0, SK_POINTER};
#define up7 up7x.it_p
	EIF_TYPED_VALUE up8x = {0, SK_POINTER};
#define up8 up8x.it_p
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {0, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_TYPED_VALUE ub3x = {0, SK_BOOL};
#define ub3 ub3x.it_b
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
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
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,loc2);
	RTLR(4,tr2);
	RTLR(5,tr3);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1226, Current, 2, 0, 19041);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1226, Current, 19041);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_operands", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 32, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1226, 39, dtype))(Current, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF80002DE, 0, 0); /* loc2 */
	
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 46, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(734, 63, "count", loc2))(loc2)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
	}
	RTHOOK(5);
	RTDBGAA(Current, dtype, 1226, 66, 0x04000000, 0); /* last_result */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(1226, 51, dtype));
	up1 = tp1;
	tp2 = *(EIF_POINTER *)(Current + RTWA(1226, 49, dtype));
	up2 = tp2;
	tr1 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 46, dtype))(Current)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	up4 = tr1;
	tr2 = ((up5x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 32, dtype))(Current)), (((up5x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up5x.it_r = RTBU(up5x))), (up5x.type = SK_POINTER), up5x.it_r);
	up6 = tr2;
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1226, 52, dtype));
	ui4_1 = ti4_1;
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1226, 53, dtype));
	ui4_2 = ti4_2;
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1226, 54, dtype));
	ub1 = tb1;
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1226, 55, dtype));
	ub2 = tb2;
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1226, 56, dtype));
	ub3 = tb3;
	ui4_3 = loc1;
	ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1226, 42, dtype));
	ui4_4 = ti4_3;
	tr3 = ((up7x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 50, dtype))(Current)), (((up7x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up7x.it_r = RTBU(up7x))), (up7x.type = SK_POINTER), up7x.it_r);
	up8 = tr3;
	tb1 = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1226, 74, dtype))(Current, up1x, up2x, up4x, up6x, ui4_1x, ui4_2x, ub1x, ub2x, ub3x, ui4_3x, ui4_4x, up8x))).it_b);
	*(EIF_BOOLEAN *)(Current + RTWA(1226, 66, dtype)) = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef up4
#undef up5
#undef up6
#undef up7
#undef up8
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ub1
#undef ub2
#undef ub3
}

/* {FUNCTION}.is_equal */
EIF_TYPED_VALUE F1227_15041 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_equal";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1226, Current, 0, 1, 19042);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1226, Current, 19042);
	RTCC(arg1, 1226, l_feature_name, 1, Dftype(Current));
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
	ur1 = RTCCL(arg1);
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1220, 39, 1220))(Current, ur1x)).it_b);
	if (tb2) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 66, dtype))(Current)).it_b);
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1226, 66, "last_result", arg1))(arg1)).it_b);
		tb1 = (tb2 == tb3);
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
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1226, 5, dtype))(Current, ur1x)).it_b);
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

/* {FUNCTION}.copy */
void F1227_15042 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "copy";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
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
	
	RTEAA(l_feature_name, 1226, Current, 0, 1, 19043);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1226, Current, 19043);
	RTCC(arg1, 1226, l_feature_name, 1, Dftype(Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("type_identity", EX_PRE);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1226, 4, dtype))(Current, ur1x)).it_b);
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
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1220, 46, 1220))(Current, ur1x);
		RTHOOK(5);
		RTDBGAA(Current, dtype, 1226, 66, 0x04000000, 0); /* last_result */
		
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1226, 66, "last_result", arg1))(arg1)).it_b);
		*(EIF_BOOLEAN *)(Current + RTWA(1226, 66, dtype)) = (EIF_BOOLEAN) tb1;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("is_equal", EX_POST);
		if (RTEQ(Current, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(7);
		RTCT("same_call_status", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1226, 38, "callable", arg1))(arg1)).it_b);
		if (tb2) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1226, 38, dtype))(Current)).it_b);
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
	RTLO(3);
	RTEE;
#undef ur1
#undef arg1
}

/* {FUNCTION}.eval */
EIF_TYPED_VALUE F1227_15043 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "eval";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1226, Current, 0, 1, 19044);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1226, Current, 19044);
	RTCC(arg1, 1226, l_feature_name, 1, RTWCT(1226, 76, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_operands", EX_PRE);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1226, 39, dtype))(Current, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x04000000, 0,0); /* Result */
	
	ur1 = RTCCL(arg1);
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1226, 68, dtype))(Current, ur1x)).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ur1
#undef arg1
}

/* {FUNCTION}.clear_last_result */
void F1227_15044 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "clear_last_result";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	
	RTEAA(l_feature_name, 1226, Current, 1, 0, 19045);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1226, Current, 19045);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 1226, 66, 0x04000000, 0); /* last_result */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1226, 66, Dtype(Current))) = (EIF_BOOLEAN) loc1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
}

/* {FUNCTION}.fast_item */
EIF_TYPED_VALUE F1227_15045 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x, EIF_TYPED_VALUE arg9x, EIF_TYPED_VALUE arg10x, EIF_TYPED_VALUE arg11x, EIF_TYPED_VALUE arg12x)
{
	GTCX
	char *l_feature_name = "fast_item";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_p
#define arg4 arg4x.it_p
#define arg5 arg5x.it_i4
#define arg6 arg6x.it_i4
#define arg7 arg7x.it_b
#define arg8 arg8x.it_b
#define arg9 arg9x.it_b
#define arg10 arg10x.it_i4
#define arg11 arg11x.it_i4
#define arg12 arg12x.it_p
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg12x.type & SK_HEAD) == SK_REF) arg12x.it_p = * (EIF_POINTER *) arg12x.it_r;
	if ((arg11x.type & SK_HEAD) == SK_REF) arg11x.it_i4 = * (EIF_INTEGER_32 *) arg11x.it_r;
	if ((arg10x.type & SK_HEAD) == SK_REF) arg10x.it_i4 = * (EIF_INTEGER_32 *) arg10x.it_r;
	if ((arg9x.type & SK_HEAD) == SK_REF) arg9x.it_b = * (EIF_BOOLEAN *) arg9x.it_r;
	if ((arg8x.type & SK_HEAD) == SK_REF) arg8x.it_b = * (EIF_BOOLEAN *) arg8x.it_r;
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_b = * (EIF_BOOLEAN *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_i4 = * (EIF_INTEGER_32 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_i4 = * (EIF_INTEGER_32 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_POINTER *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU(SK_INT32,&arg5);
	RTLU(SK_INT32,&arg6);
	RTLU(SK_BOOL,&arg7);
	RTLU(SK_BOOL,&arg8);
	RTLU(SK_BOOL,&arg9);
	RTLU(SK_INT32,&arg10);
	RTLU(SK_INT32,&arg11);
	RTLU(SK_POINTER,&arg12);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1226, Current, 0, 12, 19046);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1226, Current, 19046);
	RTIV(Current, RTAL);
	Result = EIF_TEST(inline_F1227_15045 ((EIF_POINTER) arg1, (EIF_POINTER) arg2, (EIF_POINTER) arg3, (EIF_POINTER) arg4, (EIF_INTEGER_32) arg5, (EIF_INTEGER_32) arg6, (EIF_BOOLEAN) arg7, (EIF_BOOLEAN) arg8, (EIF_BOOLEAN) arg9, (EIF_INTEGER_32) arg10, (EIF_INTEGER_32) arg11, (EIF_POINTER) arg12));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(14);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
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

void EIF_Minit1227 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
