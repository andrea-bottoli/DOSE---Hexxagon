/*
 * Code for class WEL_STRETCH_MODE_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F155_3892(EIF_REFERENCE);
extern EIF_TYPED_VALUE F155_3893(EIF_REFERENCE);
extern EIF_TYPED_VALUE F155_3894(EIF_REFERENCE);
extern EIF_TYPED_VALUE F155_3895(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit155(void);

#ifdef __cplusplus
}
#endif

#include "wel.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_STRETCH_MODE_CONSTANTS}.stretch_andscans */
EIF_TYPED_VALUE F155_3892 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "stretch_andscans";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 154, Current, 0, 0, 3729);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(154, Current, 3729);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STRETCH_ANDSCANS;
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

/* {WEL_STRETCH_MODE_CONSTANTS}.stretch_deletescans */
EIF_TYPED_VALUE F155_3893 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "stretch_deletescans";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 154, Current, 0, 0, 3730);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(154, Current, 3730);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STRETCH_DELETESCANS;
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

/* {WEL_STRETCH_MODE_CONSTANTS}.stretch_orscans */
EIF_TYPED_VALUE F155_3894 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "stretch_orscans";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 154, Current, 0, 0, 3731);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(154, Current, 3731);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) STRETCH_ORSCANS;
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

/* {WEL_STRETCH_MODE_CONSTANTS}.valid_stretch_mode_constant */
EIF_TYPED_VALUE F155_3895 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_stretch_mode_constant";
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
	
	RTEAA(l_feature_name, 154, Current, 0, 1, 3732);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(154, Current, 3732);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	tb2 = '\01';
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(154, 32, dtype))(Current)).it_i4);
	if (!(EIF_BOOLEAN)(arg1 == ti4_1)) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(154, 33, dtype))(Current)).it_i4);
		tb2 = (EIF_BOOLEAN)(arg1 == ti4_1);
	}
	if (!tb2) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(154, 34, dtype))(Current)).it_i4);
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

void EIF_Minit155 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
