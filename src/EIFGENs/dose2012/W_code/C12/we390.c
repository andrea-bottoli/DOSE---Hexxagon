/*
 * Code for class WEL_HWND_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F390_7264(EIF_REFERENCE);
extern EIF_TYPED_VALUE F390_7265(EIF_REFERENCE);
extern EIF_TYPED_VALUE F390_7266(EIF_REFERENCE);
extern EIF_TYPED_VALUE F390_7267(EIF_REFERENCE);
extern EIF_TYPED_VALUE F390_7268(EIF_REFERENCE);
extern EIF_TYPED_VALUE F390_7269(EIF_REFERENCE);
extern EIF_TYPED_VALUE F390_7270(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit390(void);

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

/* {WEL_HWND_CONSTANTS}.hwnd_top */
EIF_TYPED_VALUE F390_7264 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hwnd_top";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 389, Current, 0, 0, 6950);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(389, Current, 6950);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) HWND_TOP;
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

/* {WEL_HWND_CONSTANTS}.hwnd_bottom */
EIF_TYPED_VALUE F390_7265 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hwnd_bottom";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 389, Current, 0, 0, 6951);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(389, Current, 6951);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) HWND_BOTTOM;
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

/* {WEL_HWND_CONSTANTS}.hwnd_topmost */
EIF_TYPED_VALUE F390_7266 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hwnd_topmost";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 389, Current, 0, 0, 6952);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(389, Current, 6952);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) HWND_TOPMOST;
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

/* {WEL_HWND_CONSTANTS}.hwnd_notopmost */
EIF_TYPED_VALUE F390_7267 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hwnd_notopmost";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 389, Current, 0, 0, 6953);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(389, Current, 6953);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) HWND_NOTOPMOST;
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

/* {WEL_HWND_CONSTANTS}.hwnd_broadcast */
EIF_TYPED_VALUE F390_7268 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hwnd_broadcast";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 389, Current, 0, 0, 6954);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(389, Current, 6954);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) HWND_BROADCAST;
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

/* {WEL_HWND_CONSTANTS}.hwnd_message */
EIF_TYPED_VALUE F390_7269 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hwnd_message";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 389, Current, 0, 0, 6955);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(389, Current, 6955);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) HWND_MESSAGE;
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

/* {WEL_HWND_CONSTANTS}.valid_hwnd_constant */
EIF_TYPED_VALUE F390_7270 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_hwnd_constant";
	RTEX;
#define arg1 arg1x.it_p
	EIF_POINTER tp1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 389, Current, 0, 1, 6956);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(389, Current, 6956);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	tb2 = '\01';
	tb3 = '\01';
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(389, 32, dtype))(Current)).it_p);
	if (!(EIF_BOOLEAN)(arg1 == tp1)) {
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(389, 33, dtype))(Current)).it_p);
		tb3 = (EIF_BOOLEAN)(arg1 == tp1);
	}
	if (!tb3) {
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(389, 34, dtype))(Current)).it_p);
		tb2 = (EIF_BOOLEAN)(arg1 == tp1);
	}
	if (!tb2) {
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(389, 35, dtype))(Current)).it_p);
		tb1 = (EIF_BOOLEAN)(arg1 == tp1);
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

void EIF_Minit390 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
