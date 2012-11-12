/*
 * Code for class WEL_STARTUP_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F240_5320(EIF_REFERENCE);
extern EIF_TYPED_VALUE F240_5321(EIF_REFERENCE);
extern EIF_TYPED_VALUE F240_5322(EIF_REFERENCE);
extern EIF_TYPED_VALUE F240_5323(EIF_REFERENCE);
extern EIF_TYPED_VALUE F240_5324(EIF_REFERENCE);
extern EIF_TYPED_VALUE F240_5325(EIF_REFERENCE);
extern EIF_TYPED_VALUE F240_5326(EIF_REFERENCE);
extern EIF_TYPED_VALUE F240_5327(EIF_REFERENCE);
extern EIF_TYPED_VALUE F240_5328(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F240_5329(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit240(void);

#ifdef __cplusplus
}
#endif

#include <winbase.h>
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

/* {WEL_STARTUP_CONSTANTS}.startf_use_show_window */
EIF_TYPED_VALUE F240_5320 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startf_use_show_window";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 239, Current, 0, 0, 5143);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(239, Current, 5143);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STARTF_USESHOWWINDOW;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_STARTUP_CONSTANTS}.startf_use_position */
EIF_TYPED_VALUE F240_5321 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startf_use_position";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 239, Current, 0, 0, 5144);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(239, Current, 5144);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STARTF_USEPOSITION;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_STARTUP_CONSTANTS}.startf_use_size */
EIF_TYPED_VALUE F240_5322 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startf_use_size";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 239, Current, 0, 0, 5145);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(239, Current, 5145);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STARTF_USESIZE;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_STARTUP_CONSTANTS}.startf_use_count_chars */
EIF_TYPED_VALUE F240_5323 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startf_use_count_chars";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 239, Current, 0, 0, 5146);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(239, Current, 5146);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STARTF_USECOUNTCHARS;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_STARTUP_CONSTANTS}.startf_use_fill_attributes */
EIF_TYPED_VALUE F240_5324 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startf_use_fill_attributes";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 239, Current, 0, 0, 5147);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(239, Current, 5147);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STARTF_USEFILLATTRIBUTE;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_STARTUP_CONSTANTS}.startf_force_on_feedback */
EIF_TYPED_VALUE F240_5325 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startf_force_on_feedback";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 239, Current, 0, 0, 5148);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(239, Current, 5148);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STARTF_FORCEONFEEDBACK;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_STARTUP_CONSTANTS}.startf_force_off_feedback */
EIF_TYPED_VALUE F240_5326 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startf_force_off_feedback";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 239, Current, 0, 0, 5149);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(239, Current, 5149);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STARTF_FORCEOFFFEEDBACK;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_STARTUP_CONSTANTS}.startf_use_std_handles */
EIF_TYPED_VALUE F240_5327 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startf_use_std_handles";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 239, Current, 0, 0, 5150);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(239, Current, 5150);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STARTF_USESTDHANDLES;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_STARTUP_CONSTANTS}.is_valid_startup_flag */
EIF_TYPED_VALUE F240_5328 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_valid_startup_flag";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	EIF_BOOLEAN tb6;
	EIF_BOOLEAN tb7;
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
	
	RTEAA(l_feature_name, 239, Current, 0, 1, 5151);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(239, Current, 5151);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	tb2 = '\01';
	tb3 = '\01';
	tb4 = '\01';
	tb5 = '\01';
	tb6 = '\01';
	tb7 = '\01';
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 32, dtype))(Current)).it_i4);
	if (!(EIF_BOOLEAN)(arg1 == ti4_1)) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 33, dtype))(Current)).it_i4);
		tb7 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb7) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 34, dtype))(Current)).it_i4);
		tb6 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb6) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 35, dtype))(Current)).it_i4);
		tb5 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb5) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 36, dtype))(Current)).it_i4);
		tb4 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb4) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 37, dtype))(Current)).it_i4);
		tb3 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb3) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 38, dtype))(Current)).it_i4);
		tb2 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb2) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 39, dtype))(Current)).it_i4);
		tb1 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	Result = (EIF_BOOLEAN) tb1;
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

/* {WEL_STARTUP_CONSTANTS}.is_valid_startup_flags */
EIF_TYPED_VALUE F240_5329 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_valid_startup_flags";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
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
	
	RTEAA(l_feature_name, 239, Current, 0, 1, 5152);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(239, Current, 5152);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 32, dtype))(Current)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 33, dtype))(Current)).it_i4);
	ui4_1 = ti4_2;
	ti4_2 = eif_bit_or(ti4_1,ui4_1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 34, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_bit_or(ti4_2,ui4_1);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 35, dtype))(Current)).it_i4);
	ui4_1 = ti4_2;
	ti4_2 = eif_bit_or(ti4_1,ui4_1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 36, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_bit_or(ti4_2,ui4_1);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 37, dtype))(Current)).it_i4);
	ui4_1 = ti4_2;
	ti4_2 = eif_bit_or(ti4_1,ui4_1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 38, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_bit_or(ti4_2,ui4_1);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(239, 39, dtype))(Current)).it_i4);
	ui4_1 = ti4_2;
	ti4_2 = eif_bit_or(ti4_1,ui4_1);
	ui4_1 = ti4_2;
	ti4_1 = eif_bit_and(arg1,ui4_1);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(arg1 == ti4_1);
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

void EIF_Minit240 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
