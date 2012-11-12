/*
 * Code for class WEL_PROCESS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1090_19909(EIF_REFERENCE);
extern void F1090_19910(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1090_19911(EIF_REFERENCE);
extern void F1090_19912(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1090_19913(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1090_19914(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1090_19915(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1090_19916(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1090_19917(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1090_19918(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19919(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19920(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19921(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19922(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19923(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19924(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19925(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19926(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19927(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19928(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19929(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19930(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19931(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19932(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19933(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19934(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19935(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19936(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19937(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19938(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19939(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19940(EIF_REFERENCE);
extern void F1090_19941(EIF_REFERENCE);
extern void F1090_19942(EIF_REFERENCE);
extern void F1090_19943(EIF_REFERENCE);
extern void F1090_19944(EIF_REFERENCE);
extern void F1090_19945(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19946(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19947(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19948(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19949(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19950(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1090_19951(EIF_REFERENCE);
extern void EIF_Minit1090(void);

#ifdef __cplusplus
}
#endif

#include <windows.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F1090_19949
static EIF_POINTER inline_F1090_19949 (void)
{
	return (EIF_POINTER) (GetStdHandle (STD_INPUT_HANDLE))
	;
}
#define INLINE_F1090_19949
#endif
#ifndef INLINE_F1090_19950
static EIF_POINTER inline_F1090_19950 (void)
{
	return (EIF_POINTER) (GetStdHandle (STD_OUTPUT_HANDLE))
	;
}
#define INLINE_F1090_19950
#endif
#ifndef INLINE_F1090_19951
static EIF_POINTER inline_F1090_19951 (void)
{
	return (EIF_POINTER) (GetStdHandle (STD_ERROR_HANDLE))
	;
}
#define INLINE_F1090_19951
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_PROCESS}.make */
void F1090_19909 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23939);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23939);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1089, 118, 0x04000000, 1); /* is_std_input_open */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1089, 118, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1089, 119, 0x04000000, 1); /* is_std_output_open */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1089, 119, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1089, 120, 0x04000000, 1); /* is_std_error_open */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1089, 120, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1089, 121, 0xF8000313, 0); /* input_file_name */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1089, 121, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(787, 36, Dtype(tr1)))(tr1);
	RTNHOOK(4,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1089, 121, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 1089, 122, 0xF8000313, 0); /* output_file_name */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1089, 122, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(787, 36, Dtype(tr1)))(tr1);
	RTNHOOK(5,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1089, 122, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 1089, 123, 0xF8000313, 0); /* error_file_name */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1089, 123, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(787, 36, Dtype(tr1)))(tr1);
	RTNHOOK(6,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1089, 123, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	RTDBGAA(Current, dtype, 1089, 109, 0x10000000, 1); /* input_direction */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1089, 109, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(8);
	RTDBGAA(Current, dtype, 1089, 110, 0x10000000, 1); /* output_direction */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1089, 110, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(9);
	RTDBGAA(Current, dtype, 1089, 111, 0x10000000, 1); /* error_direction */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1089, 111, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(10);
	RTDBGAA(Current, dtype, 1089, 130, 0x04000000, 1); /* internal_has_exited */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1089, 130, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(11);
		RTCT("std_input_not_open", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 118, dtype));
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(12);
		RTCT("std_output_not_open", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 119, dtype));
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(13);
		RTCT("std_error_not_open", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 120, dtype));
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(14);
		RTCT("input_file_name_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 121, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(14,1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 133, "is_empty", tr1))(tr1)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(15);
		RTCT("output_file_name_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 122, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(15,1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 133, "is_empty", tr1))(tr1)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(16);
		RTCT("error_file_name_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 123, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(16,1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 133, "is_empty", tr1))(tr1)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(17);
		RTCT("no_input_redirection", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 109, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(18);
		RTCT("no_output_redirection", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 110, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(19);
		RTCT("no_error_redirection", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 111, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(20);
		RTCT("internal_has_exited", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 130, dtype));
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(21);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
}

/* {WEL_PROCESS}.launch */
void F1090_19910 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "launch";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_b
#define arg4 arg4x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_b = * (EIF_BOOLEAN *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_b = * (EIF_BOOLEAN *) arg3x.it_r;
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,ur1);
	RTLR(5,ur2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_BOOL,&arg3);
	RTLU(SK_BOOL,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 1089, Current, 2, 4, 23940);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23940);
	if (arg1) {
		RTCC(arg1, 1089, l_feature_name, 1, 787);
	}
	if (arg2) {
		RTCC(arg2, 1089, l_feature_name, 2, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_cmd_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_cmd_not_empty", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 133, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("not_launched", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 79, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTTE((EIF_BOOLEAN)(tr1 == NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("input_closed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 118, dtype));
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTHOOK(5);
		RTCT("output_closed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 119, dtype));
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTHOOK(6);
		RTCT("error_closed", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 120, dtype));
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTHOOK(7);
		RTCT("separate_xor_detached", EX_PRE);
		RTTE((EIF_BOOLEAN) !(EIF_BOOLEAN) (arg3 && arg4), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(8);
	if (arg3) {
		RTHOOK(9);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 33, dtype))(Current)).it_i4);
	} else {
		RTHOOK(10);
		if (arg4) {
			RTHOOK(11);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 36, dtype))(Current)).it_i4);
		}
	}
	RTHOOK(12);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	ui4_1 = loc2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1089, 75, dtype))(Current, ur1x, ur2x, ui4_1x);
	RTHOOK(13);
	RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(13,1);
	tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 115, dtype));
	up2 = tp1;
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2, 41, "close", tr1))(tr1, up2x)).it_b);
	loc1 = (EIF_BOOLEAN) tb1;
	RTHOOK(14);
	RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(14,1);
	tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 116, dtype));
	up2 = tp1;
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2, 41, "close", tr1))(tr1, up2x)).it_b);
	loc1 = (EIF_BOOLEAN) tb1;
	RTHOOK(15);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 104, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(16);
		RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(16,1);
		tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 117, dtype));
		up2 = tp1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2, 41, "close", tr1))(tr1, up2x)).it_b);
		loc1 = (EIF_BOOLEAN) tb1;
	}
	RTHOOK(17);
	RTDBGAA(Current, dtype, 1089, 103, 0x04000000, 1); /* launched */
	
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 71, dtype));
	*(EIF_BOOLEAN *)(Current + RTWA(1089, 103, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(18);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 103, dtype));
	if (tb1) {
		RTHOOK(19);
		RTDBGAA(Current, dtype, 1089, 130, 0x04000000, 1); /* internal_has_exited */
		
		*(EIF_BOOLEAN *)(Current + RTWA(1089, 130, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(20);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ui4_1
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_PROCESS}.check_process_state */
void F1090_19911 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "check_process_state";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_POINTER tp1;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1089, Current, 1, 0, 23941);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23941);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("process_launched", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 103, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF8000270, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 79, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1089, 102, 0x04000000, 1); /* last_operation_successful */
	
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc1))(loc1)).it_p);
	up1 = tp1;
	up2 = (EIF_INTEGER_32 *) &(*(EIF_INTEGER_32 *)(Current + RTWA(1089, 72, dtype)));
	tb1 = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 85, 76))(Current, up1x, up2x))).it_b);
	*(EIF_BOOLEAN *)(Current + RTWA(1089, 102, dtype)) = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
}

/* {WEL_PROCESS}.set_input_direction */
void F1090_19912 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_input_direction";
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
	
	RTEAA(l_feature_name, 1089, Current, 0, 1, 23942);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23942);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1089, 109, 0x10000000, 1); /* input_direction */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1089, 109, dtype)) = (EIF_INTEGER_32) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("input_direction_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 109, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {WEL_PROCESS}.set_output_direction */
void F1090_19913 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_output_direction";
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
	
	RTEAA(l_feature_name, 1089, Current, 0, 1, 23943);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23943);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1089, 110, 0x10000000, 1); /* output_direction */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1089, 110, dtype)) = (EIF_INTEGER_32) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("output_direction_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 110, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {WEL_PROCESS}.set_error_direction */
void F1090_19914 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_error_direction";
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
	
	RTEAA(l_feature_name, 1089, Current, 0, 1, 23944);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23944);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1089, 111, 0x10000000, 1); /* error_direction */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1089, 111, dtype)) = (EIF_INTEGER_32) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("error_direction_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 111, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {WEL_PROCESS}.set_input_file_name */
void F1090_19915 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_input_file_name";
	RTEX;
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
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 1, 23945);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23945);
	if (arg1) {
		RTCC(arg1, 1089, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_name_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_name_not_empty", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 133, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1089, 121, 0xF8000313, 0); /* input_file_name */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 10, "twin", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1089, 121, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("file_name_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 121, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 112, "same_string", tr1))(tr1, ur1x)).it_b);
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
#undef up1
#undef ur1
#undef arg1
}

/* {WEL_PROCESS}.set_output_file_name */
void F1090_19916 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_output_file_name";
	RTEX;
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
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 1, 23946);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23946);
	if (arg1) {
		RTCC(arg1, 1089, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_name_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_name_not_empty", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 133, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1089, 122, 0xF8000313, 0); /* output_file_name */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 10, "twin", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1089, 122, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("file_name_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 122, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 112, "same_string", tr1))(tr1, ur1x)).it_b);
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
#undef up1
#undef ur1
#undef arg1
}

/* {WEL_PROCESS}.set_error_file_name */
void F1090_19917 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_error_file_name";
	RTEX;
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
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 1, 23947);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23947);
	if (arg1) {
		RTCC(arg1, 1089, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_name_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_name_not_empty", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 133, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1089, 123, 0xF8000313, 0); /* error_file_name */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 10, "twin", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1089, 123, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("file_name_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 123, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 112, "same_string", tr1))(tr1, ur1x)).it_b);
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
#undef up1
#undef ur1
#undef arg1
}

/* {WEL_PROCESS}.has_exited */
EIF_TYPED_VALUE F1090_19918 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "has_exited";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
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
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23948);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23948);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("process_launched", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 103, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 130, dtype));
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1089, 94, dtype))(Current);
		RTHOOK(4);
		RTDBGAA(Current, dtype, 1089, 130, 0x04000000, 1); /* internal_has_exited */
		
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 72, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(76, 87, 76))(Current)).it_i4);
		*(EIF_BOOLEAN *)(Current + RTWA(1089, 130, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) !(EIF_BOOLEAN)(ti4_1 == ti4_2);
	}
	RTHOOK(5);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = *(EIF_BOOLEAN *)(Current + RTWA(1089, 130, dtype));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {WEL_PROCESS}.last_operation_successful */
EIF_TYPED_VALUE F1090_19919 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1089,102, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.launched */
EIF_TYPED_VALUE F1090_19920 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1089,103, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.is_error_same_as_output */
EIF_TYPED_VALUE F1090_19921 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_error_same_as_output";
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
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23951);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23951);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 111, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 36, 3))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {WEL_PROCESS}.input_pipe_needed */
EIF_TYPED_VALUE F1090_19922 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "input_pipe_needed";
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
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23952);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23952);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 109, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 32, 3))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {WEL_PROCESS}.output_pipe_needed */
EIF_TYPED_VALUE F1090_19923 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "output_pipe_needed";
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
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23953);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23953);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 110, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 34, 3))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {WEL_PROCESS}.error_pipe_needed */
EIF_TYPED_VALUE F1090_19924 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "error_pipe_needed";
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
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23954);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23954);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 111, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 34, 3))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {WEL_PROCESS}.is_io_redirected */
EIF_TYPED_VALUE F1090_19925 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_io_redirected";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23955);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23955);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 109, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
	ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 110, dtype));
	ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
	ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 111, dtype));
	ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(ti4_1 != ti4_2) || (EIF_BOOLEAN)(ti4_3 != ti4_4)) || (EIF_BOOLEAN)(ti4_5 != ti4_6));
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

/* {WEL_PROCESS}.input_direction */
EIF_TYPED_VALUE F1090_19926 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1089,109, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.output_direction */
EIF_TYPED_VALUE F1090_19927 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1089,110, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.error_direction */
EIF_TYPED_VALUE F1090_19928 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1089,111, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.std_input */
EIF_TYPED_VALUE F1090_19929 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1089,112, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.std_output */
EIF_TYPED_VALUE F1090_19930 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1089,113, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.std_error */
EIF_TYPED_VALUE F1090_19931 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1089,114, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.child_input */
EIF_TYPED_VALUE F1090_19932 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1089,115, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.child_output */
EIF_TYPED_VALUE F1090_19933 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1089,116, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.child_error */
EIF_TYPED_VALUE F1090_19934 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1089,117, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.is_std_input_open */
EIF_TYPED_VALUE F1090_19935 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1089,118, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.is_std_output_open */
EIF_TYPED_VALUE F1090_19936 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1089,119, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.is_std_error_open */
EIF_TYPED_VALUE F1090_19937 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1089,120, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.input_file_name */
EIF_TYPED_VALUE F1090_19938 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1089,121, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.output_file_name */
EIF_TYPED_VALUE F1090_19939 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1089,122, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.error_file_name */
EIF_TYPED_VALUE F1090_19940 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1089,123, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.close_std_output */
void F1090_19941 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "close_std_output";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	
	RTEAA(l_feature_name, 1089, Current, 1, 0, 23971);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23971);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 119, dtype));
	if (tb1) {
		RTHOOK(2);
		tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 113, dtype));
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 30, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(tp1 != tp2)) {
			RTHOOK(3);
			RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(3,1);
			tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 113, dtype));
			up2 = tp1;
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2, 41, "close", tr1))(tr1, up2x)).it_b);
			loc1 = (EIF_BOOLEAN) tb1;
		}
		RTHOOK(4);
		RTDBGAA(Current, dtype, 1089, 119, 0x04000000, 1); /* is_std_output_open */
		
		*(EIF_BOOLEAN *)(Current + RTWA(1089, 119, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("handle_closed", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 119, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
#undef up1
#undef up2
}

/* {WEL_PROCESS}.close_std_input */
void F1090_19942 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "close_std_input";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	
	RTEAA(l_feature_name, 1089, Current, 1, 0, 23972);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23972);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 118, dtype));
	if (tb1) {
		RTHOOK(2);
		tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 112, dtype));
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 30, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(tp1 != tp2)) {
			RTHOOK(3);
			RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(3,1);
			tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 112, dtype));
			up2 = tp1;
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2, 41, "close", tr1))(tr1, up2x)).it_b);
			loc1 = (EIF_BOOLEAN) tb1;
		}
		RTHOOK(4);
		RTDBGAA(Current, dtype, 1089, 118, 0x04000000, 1); /* is_std_input_open */
		
		*(EIF_BOOLEAN *)(Current + RTWA(1089, 118, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("handle_closed", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 118, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
#undef up1
#undef up2
}

/* {WEL_PROCESS}.close_std_error */
void F1090_19943 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "close_std_error";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	
	RTEAA(l_feature_name, 1089, Current, 1, 0, 23973);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23973);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 120, dtype));
	if (tb1) {
		RTHOOK(2);
		tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 114, dtype));
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 30, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(tp1 != tp2)) {
			RTHOOK(3);
			RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(3,1);
			tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 114, dtype));
			up2 = tp1;
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2, 41, "close", tr1))(tr1, up2x)).it_b);
			loc1 = (EIF_BOOLEAN) tb1;
		}
	}
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1089, 120, 0x04000000, 1); /* is_std_error_open */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1089, 120, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("handle_closed", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 120, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
#undef up1
#undef up2
}

/* {WEL_PROCESS}.close_io */
void F1090_19944 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "close_io";
	RTEX;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23974);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23974);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1089, 125, dtype))(Current);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1089, 124, dtype))(Current);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1089, 126, dtype))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {WEL_PROCESS}.close_process_handle */
void F1090_19945 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "close_process_handle";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1089, Current, 1, 0, 23975);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23975);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("process_launched", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 103, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF8000270, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 79, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1089, 102, 0x04000000, 1); /* last_operation_successful */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 54, "thread_handle", loc1))(loc1)).it_p);
	up2 = tp1;
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2, 41, "close", tr1))(tr1, up2x)).it_b);
	*(EIF_BOOLEAN *)(Current + RTWA(1089, 102, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(5);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 30, dtype))(Current)).it_p);
	up1 = tp1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(624, 58, "set_thread_handle", loc1))(loc1, up1x);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 1089, 102, 0x04000000, 1); /* last_operation_successful */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(6,1);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc1))(loc1)).it_p);
	up2 = tp1;
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2, 41, "close", tr1))(tr1, up2x)).it_b);
	*(EIF_BOOLEAN *)(Current + RTWA(1089, 102, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(7);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 30, dtype))(Current)).it_p);
	up1 = tp1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(624, 57, "set_process_handle", loc1))(loc1, up1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
}

/* {WEL_PROCESS}.startup_info */
EIF_TYPED_VALUE F1090_19946 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startup_info";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,tr1);
	RTLR(1,Result);
	RTLR(2,Current);
	RTLR(3,loc1);
	RTLR(4,tr2);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1089, Current, 1, 0, 23976);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23976);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80002C9, 0,0); /* Result */
	
	tr1 = RTLN(713);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(713, 74, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 108, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(3);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 61, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 96, "set_flags", Result))(Result, ui4_1x);
		RTHOOK(4);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 109, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTHOOK(5);
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 132, dtype))(Current)).it_p);
			up1 = tp1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 99, "set_std_input", Result))(Result, up1x);
		} else {
			RTHOOK(6);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 105, dtype))(Current)).it_b);
			if (tb1) {
				RTHOOK(7);
				RTDBGAL(Current, 1, 0xF80002DE, 0, 0); /* loc1 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(7,1);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2, 35, "create_pipe_read_inheritable", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				loc1 = (EIF_REFERENCE) RTCCL(tr2);
				if (RTAL & CK_CHECK) {
					RTHOOK(8);
					RTCT(NULL, EX_CHECK);
					if ((EIF_BOOLEAN)(loc1 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(9);
				RTDBGAA(Current, dtype, 1089, 115, 0x40000000, 1); /* child_input */
				
				tp1 = eif_pointer_item(RTCV(loc1),1);
				*(EIF_POINTER *)(Current + RTWA(1089, 115, dtype)) = (EIF_POINTER) tp1;
				RTHOOK(10);
				RTDBGAA(Current, dtype, 1089, 112, 0x40000000, 1); /* std_input */
				
				tp1 = eif_pointer_item(RTCV(loc1),2);
				*(EIF_POINTER *)(Current + RTWA(1089, 112, dtype)) = (EIF_POINTER) tp1;
			} else {
				RTHOOK(11);
				RTDBGAA(Current, dtype, 1089, 115, 0x40000000, 1); /* child_input */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(11,1);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 121, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				ur1 = RTCCL(tr2);
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2, 32, "open_file_inheritable", tr1))(tr1, ur1x)).it_p);
				*(EIF_POINTER *)(Current + RTWA(1089, 115, dtype)) = (EIF_POINTER) tp1;
				RTHOOK(12);
				RTDBGAA(Current, dtype, 1089, 112, 0x40000000, 1); /* std_input */
				
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 30, dtype))(Current)).it_p);
				*(EIF_POINTER *)(Current + RTWA(1089, 112, dtype)) = (EIF_POINTER) tp1;
			}
			RTHOOK(13);
			RTDBGAA(Current, dtype, 1089, 118, 0x04000000, 1); /* is_std_input_open */
			
			*(EIF_BOOLEAN *)(Current + RTWA(1089, 118, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(14);
			tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 115, dtype));
			up1 = tp1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 99, "set_std_input", Result))(Result, up1x);
		}
		RTHOOK(15);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 110, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTHOOK(16);
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 133, dtype))(Current)).it_p);
			up1 = tp1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 100, "set_std_output", Result))(Result, up1x);
		} else {
			RTHOOK(17);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 106, dtype))(Current)).it_b);
			if (tb1) {
				RTHOOK(18);
				RTDBGAL(Current, 1, 0xF80002DE, 0, 0); /* loc1 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(18,1);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2, 34, "create_pipe_write_inheritable", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				loc1 = (EIF_REFERENCE) RTCCL(tr2);
				if (RTAL & CK_CHECK) {
					RTHOOK(19);
					RTCT(NULL, EX_CHECK);
					if ((EIF_BOOLEAN)(loc1 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(20);
				RTDBGAA(Current, dtype, 1089, 113, 0x40000000, 1); /* std_output */
				
				tp1 = eif_pointer_item(RTCV(loc1),1);
				*(EIF_POINTER *)(Current + RTWA(1089, 113, dtype)) = (EIF_POINTER) tp1;
				RTHOOK(21);
				RTDBGAA(Current, dtype, 1089, 116, 0x40000000, 1); /* child_output */
				
				tp1 = eif_pointer_item(RTCV(loc1),2);
				*(EIF_POINTER *)(Current + RTWA(1089, 116, dtype)) = (EIF_POINTER) tp1;
			} else {
				RTHOOK(22);
				RTDBGAA(Current, dtype, 1089, 116, 0x40000000, 1); /* child_output */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(22,1);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 122, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				ur1 = RTCCL(tr2);
				ub1 = (EIF_BOOLEAN) 1;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2, 33, "create_file_inheritable", tr1))(tr1, ur1x, ub1x)).it_p);
				*(EIF_POINTER *)(Current + RTWA(1089, 116, dtype)) = (EIF_POINTER) tp1;
				RTHOOK(23);
				RTDBGAA(Current, dtype, 1089, 113, 0x40000000, 1); /* std_output */
				
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 30, dtype))(Current)).it_p);
				*(EIF_POINTER *)(Current + RTWA(1089, 113, dtype)) = (EIF_POINTER) tp1;
			}
			RTHOOK(24);
			RTDBGAA(Current, dtype, 1089, 119, 0x04000000, 1); /* is_std_output_open */
			
			*(EIF_BOOLEAN *)(Current + RTWA(1089, 119, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(25);
			tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 116, dtype));
			up1 = tp1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 100, "set_std_output", Result))(Result, up1x);
		}
		RTHOOK(26);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 111, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTHOOK(27);
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 134, dtype))(Current)).it_p);
			up1 = tp1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 101, "set_std_error", Result))(Result, up1x);
		} else {
			RTHOOK(28);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 104, dtype))(Current)).it_b);
			if (tb1) {
				RTHOOK(29);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1089, 110, dtype));
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(3, 35, 3))(Current)).it_i4);
				if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
					RTHOOK(30);
					tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 134, dtype))(Current)).it_p);
					up1 = tp1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 101, "set_std_error", Result))(Result, up1x);
				} else {
					RTHOOK(31);
					RTDBGAA(Current, dtype, 1089, 117, 0x40000000, 1); /* child_error */
					
					tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 116, dtype));
					*(EIF_POINTER *)(Current + RTWA(1089, 117, dtype)) = (EIF_POINTER) tp1;
					RTHOOK(32);
					RTDBGAA(Current, dtype, 1089, 114, 0x40000000, 1); /* std_error */
					
					tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 113, dtype));
					*(EIF_POINTER *)(Current + RTWA(1089, 114, dtype)) = (EIF_POINTER) tp1;
					RTHOOK(33);
					tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 117, dtype));
					up1 = tp1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 101, "set_std_error", Result))(Result, up1x);
				}
			} else {
				RTHOOK(34);
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 107, dtype))(Current)).it_b);
				if (tb1) {
					RTHOOK(35);
					RTDBGAL(Current, 1, 0xF80002DE, 0, 0); /* loc1 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(35,1);
					tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2, 34, "create_pipe_write_inheritable", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
					loc1 = (EIF_REFERENCE) RTCCL(tr2);
					if (RTAL & CK_CHECK) {
						RTHOOK(36);
						RTCT(NULL, EX_CHECK);
						if ((EIF_BOOLEAN)(loc1 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(37);
					RTDBGAA(Current, dtype, 1089, 114, 0x40000000, 1); /* std_error */
					
					tp1 = eif_pointer_item(RTCV(loc1),1);
					*(EIF_POINTER *)(Current + RTWA(1089, 114, dtype)) = (EIF_POINTER) tp1;
					RTHOOK(38);
					RTDBGAA(Current, dtype, 1089, 117, 0x40000000, 1); /* child_error */
					
					tp1 = eif_pointer_item(RTCV(loc1),2);
					*(EIF_POINTER *)(Current + RTWA(1089, 117, dtype)) = (EIF_POINTER) tp1;
				} else {
					RTHOOK(39);
					RTDBGAA(Current, dtype, 1089, 117, 0x40000000, 1); /* child_error */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 131, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(39,1);
					tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 123, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
					ur1 = RTCCL(tr2);
					ub1 = (EIF_BOOLEAN) 1;
					tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2, 33, "create_file_inheritable", tr1))(tr1, ur1x, ub1x)).it_p);
					*(EIF_POINTER *)(Current + RTWA(1089, 117, dtype)) = (EIF_POINTER) tp1;
					RTHOOK(40);
					RTDBGAA(Current, dtype, 1089, 114, 0x40000000, 1); /* std_error */
					
					tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 30, dtype))(Current)).it_p);
					*(EIF_POINTER *)(Current + RTWA(1089, 114, dtype)) = (EIF_POINTER) tp1;
				}
				RTHOOK(41);
				tp1 = *(EIF_POINTER *)(Current + RTWA(1089, 117, dtype));
				up1 = tp1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 101, "set_std_error", Result))(Result, up1x);
				RTHOOK(42);
				RTDBGAA(Current, dtype, 1089, 120, 0x04000000, 1); /* is_std_error_open */
				
				*(EIF_BOOLEAN *)(Current + RTWA(1089, 120, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			}
		}
	}
	RTHOOK(43);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1089, 73, dtype));
	if (tb1) {
		RTHOOK(44);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 40, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 98, "set_show_command", Result))(Result, ui4_1x);
	} else {
		RTHOOK(45);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 44, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 98, "set_show_command", Result))(Result, ui4_1x);
	}
	RTHOOK(46);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1089, 54, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 97, "add_flag", Result))(Result, ui4_1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(47);
		RTCT("result_attached", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(48);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ub1
}

/* {WEL_PROCESS}.internal_has_exited */
EIF_TYPED_VALUE F1090_19947 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1089,130, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS}.file_handle */
RTOID (F1090_19948)
EIF_TYPED_VALUE F1090_19948 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "file_handle";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1090_19948);
	dtype = Dtype(Current);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23978);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1089, Current, 23978);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000002, 0,0); /* Result */
	
	tr1 = RTLN(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(2, 26, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("file_handle_not_void", EX_POST);
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

/* {WEL_PROCESS}.stdin */
EIF_TYPED_VALUE F1090_19949 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "stdin";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23979);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1089, Current, 23979);
	RTIV(Current, RTAL);
	Result = inline_F1090_19949 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
}

/* {WEL_PROCESS}.stdout */
EIF_TYPED_VALUE F1090_19950 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "stdout";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23980);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1089, Current, 23980);
	RTIV(Current, RTAL);
	Result = inline_F1090_19950 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
}

/* {WEL_PROCESS}.stderr */
EIF_TYPED_VALUE F1090_19951 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "stderr";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1089, Current, 0, 0, 23938);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1089, Current, 23938);
	RTIV(Current, RTAL);
	Result = inline_F1090_19951 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
}

void EIF_Minit1090 (void)
{
	GTCX
	RTOTS (19948,F1090_19948)
}


#ifdef __cplusplus
}
#endif
