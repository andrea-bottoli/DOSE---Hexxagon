/*
 * Code for class WEL_TA_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F300_5831(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5832(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5833(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5834(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5835(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5836(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5837(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5838(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5839(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5840(EIF_REFERENCE);
extern EIF_TYPED_VALUE F300_5841(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F300_5842(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F300_5843(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F300_5844(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit300(void);

#ifdef __cplusplus
}
#endif

#include "wel.h"
#include <windows.h>

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_TA_CONSTANTS}.ta_noupdatecp */
EIF_TYPED_VALUE F300_5831 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "ta_noupdatecp";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5595);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5595);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TA_NOUPDATECP;
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

/* {WEL_TA_CONSTANTS}.ta_updatecp */
EIF_TYPED_VALUE F300_5832 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "ta_updatecp";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5596);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5596);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TA_UPDATECP;
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

/* {WEL_TA_CONSTANTS}.ta_left */
EIF_TYPED_VALUE F300_5833 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "ta_left";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5597);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5597);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TA_LEFT;
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

/* {WEL_TA_CONSTANTS}.ta_right */
EIF_TYPED_VALUE F300_5834 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "ta_right";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5598);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5598);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TA_RIGHT;
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

/* {WEL_TA_CONSTANTS}.ta_center */
EIF_TYPED_VALUE F300_5835 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "ta_center";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5599);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5599);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TA_CENTER;
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

/* {WEL_TA_CONSTANTS}.ta_top */
EIF_TYPED_VALUE F300_5836 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "ta_top";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5600);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5600);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TA_TOP;
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

/* {WEL_TA_CONSTANTS}.ta_bottom */
EIF_TYPED_VALUE F300_5837 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "ta_bottom";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5601);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5601);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TA_BOTTOM;
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

/* {WEL_TA_CONSTANTS}.ta_baseline */
EIF_TYPED_VALUE F300_5838 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "ta_baseline";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5602);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5602);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TA_BASELINE;
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

/* {WEL_TA_CONSTANTS}.vta_baseline */
EIF_TYPED_VALUE F300_5839 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "vta_baseline";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5603);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5603);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) VTA_BASELINE;
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

/* {WEL_TA_CONSTANTS}.vta_center */
EIF_TYPED_VALUE F300_5840 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "vta_center";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 299, Current, 0, 0, 5604);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(299, Current, 5604);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) VTA_CENTER;
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

/* {WEL_TA_CONSTANTS}.valid_text_alignment_constant */
EIF_TYPED_VALUE F300_5841 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_text_alignment_constant";
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
	
	RTEAA(l_feature_name, 299, Current, 0, 1, 5605);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(299, Current, 5605);
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
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 32, dtype))(Current)).it_i4);
	if (!(EIF_BOOLEAN)(arg1 == ti4_1)) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 33, dtype))(Current)).it_i4);
		tb7 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb7) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 34, dtype))(Current)).it_i4);
		tb6 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb6) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 35, dtype))(Current)).it_i4);
		tb5 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb5) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 36, dtype))(Current)).it_i4);
		tb4 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb4) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 37, dtype))(Current)).it_i4);
		tb3 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb3) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 38, dtype))(Current)).it_i4);
		tb2 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb2) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 39, dtype))(Current)).it_i4);
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

/* {WEL_TA_CONSTANTS}.valid_text_alignement_constant */
EIF_TYPED_VALUE F300_5842 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_text_alignement_constant";
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
	
	RTEAA(l_feature_name, 299, Current, 0, 1, 5606);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(299, Current, 5606);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ui4_1 = arg1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(299, 42, Dtype(Current)))(Current, ui4_1x)).it_b);
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

/* {WEL_TA_CONSTANTS}.valid_htext_alignment_constant */
EIF_TYPED_VALUE F300_5843 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_htext_alignment_constant";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
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
	
	RTEAA(l_feature_name, 299, Current, 0, 1, 5607);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(299, Current, 5607);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	tb2 = '\01';
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 34, dtype))(Current)).it_i4);
	if (!(EIF_BOOLEAN)(arg1 == ti4_1)) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 35, dtype))(Current)).it_i4);
		tb2 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb2) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 36, dtype))(Current)).it_i4);
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

/* {WEL_TA_CONSTANTS}.valid_vtext_alignment_constant */
EIF_TYPED_VALUE F300_5844 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_vtext_alignment_constant";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
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
	
	RTEAA(l_feature_name, 299, Current, 0, 1, 5608);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(299, Current, 5608);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	tb2 = '\01';
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 37, dtype))(Current)).it_i4);
	if (!(EIF_BOOLEAN)(arg1 == ti4_1)) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 38, dtype))(Current)).it_i4);
		tb2 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb2) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(299, 39, dtype))(Current)).it_i4);
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

void EIF_Minit300 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
