/*
 * Code for class TTT_GUI_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1048_19022(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19023(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19024(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19025(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19026(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19027(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19028(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19029(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19030(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19031(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19032(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19033(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19034(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19035(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19036(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19037(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19038(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1048_19039(EIF_REFERENCE);
extern void EIF_Minit1048(void);

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {TTT_GUI_CONSTANTS}.dose_folder */
RTOID (F1048_19022)


EIF_TYPED_VALUE F1048_19022 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1048_19022,23094,RTMS_EX_H("dose_2012",9,422138162));
}

/* {TTT_GUI_CONSTANTS}.image_folder */
RTOID (F1048_19023)


EIF_TYPED_VALUE F1048_19023 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1048_19023,23095,RTMS_EX_H("images",6,1841441651));
}

/* {TTT_GUI_CONSTANTS}.ttt_folder */
RTOID (F1048_19024)


EIF_TYPED_VALUE F1048_19024 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1048_19024,23096,RTMS_EX_H("tictactoe",9,609912421));
}

/* {TTT_GUI_CONSTANTS}.img_path */
EIF_TYPED_VALUE F1048_19025 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "img_path";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,tr1);
	RTLR(1,Result);
	RTLR(2,Current);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1047, Current, 0, 0, 23096);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1047, Current, 23096);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004C0, 0,0); /* Result */
	
	tr1 = RTLN(1216);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1216, 48, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	ub1 = (EIF_BOOLEAN) 1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 57, "set_relative", Result))(Result, ub1x);
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 38, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
	RTHOOK(5);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 39, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ub1
}

/* {TTT_GUI_CONSTANTS}.img_background */
EIF_TYPED_VALUE F1048_19026 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "img_background";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1047, Current, 0, 0, 23097);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1047, Current, 23097);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004C0, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 40, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tr1 = RTMS_EX_H("background.png",14,1296703335);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
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
#undef ur1
}

/* {TTT_GUI_CONSTANTS}.img_background_sepia */
EIF_TYPED_VALUE F1048_19027 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "img_background_sepia";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1047, Current, 0, 0, 23098);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1047, Current, 23098);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004C0, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 40, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tr1 = RTMS_EX_H("background_sepia.png",20,1644212839);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
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
#undef ur1
}

/* {TTT_GUI_CONSTANTS}.img_wait */
EIF_TYPED_VALUE F1048_19028 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "img_wait";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1047, Current, 0, 0, 23099);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1047, Current, 23099);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004C0, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 40, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tr1 = RTMS_EX_H("text_wait.png",13,1812103527);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
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
#undef ur1
}

/* {TTT_GUI_CONSTANTS}.img_move */
EIF_TYPED_VALUE F1048_19029 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "img_move";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1047, Current, 0, 0, 23100);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1047, Current, 23100);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004C0, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 40, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tr1 = RTMS_EX_H("text_move.png",13,291754855);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
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
#undef ur1
}

/* {TTT_GUI_CONSTANTS}.img_win */
EIF_TYPED_VALUE F1048_19030 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "img_win";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1047, Current, 0, 0, 23101);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1047, Current, 23101);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004C0, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 40, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tr1 = RTMS_EX_H("text_win.png",12,438209383);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
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
#undef ur1
}

/* {TTT_GUI_CONSTANTS}.img_lose */
EIF_TYPED_VALUE F1048_19031 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "img_lose";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1047, Current, 0, 0, 23102);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1047, Current, 23102);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004C0, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 40, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tr1 = RTMS_EX_H("text_lose.png",13,285626215);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
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
#undef ur1
}

/* {TTT_GUI_CONSTANTS}.img_tie */
EIF_TYPED_VALUE F1048_19032 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "img_tie";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1047, Current, 0, 0, 23103);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1047, Current, 23103);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004C0, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 40, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tr1 = RTMS_EX_H("text_tie.png",12,1075670631);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
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
#undef ur1
}

/* {TTT_GUI_CONSTANTS}.img_tile_prefix */
EIF_TYPED_VALUE F1048_19033 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "img_tile_prefix";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1047, Current, 0, 0, 23104);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1047, Current, 23104);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004C0, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1047, 40, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tr1 = RTMS_EX_H("tile_",5,1769602399);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", Result))(Result, ur1x);
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
#undef ur1
}

/* {TTT_GUI_CONSTANTS}.img_bender_postfix */
RTOID (F1048_19034)


EIF_TYPED_VALUE F1048_19034 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1048_19034,23088,RTMS_EX_H("_bender.png",11,104332903));
}

/* {TTT_GUI_CONSTANTS}.img_fry_postfix */
RTOID (F1048_19035)


EIF_TYPED_VALUE F1048_19035 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1048_19035,23089,RTMS_EX_H("_fry.png",8,824836199));
}

/* {TTT_GUI_CONSTANTS}.img_blank_postfix */
RTOID (F1048_19036)


EIF_TYPED_VALUE F1048_19036 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1048_19036,23090,RTMS_EX_H("_blank.png",10,1871528807));
}

/* {TTT_GUI_CONSTANTS}.img_highlight_postfix */
RTOID (F1048_19037)


EIF_TYPED_VALUE F1048_19037 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1048_19037,23091,RTMS_EX_H("_highlight.png",14,836229735));
}

/* {TTT_GUI_CONSTANTS}.window_title */
RTOID (F1048_19038)


EIF_TYPED_VALUE F1048_19038 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1048_19038,23092,RTMS_EX_H("TicTacToe",9,804943717));
}

/* {TTT_GUI_CONSTANTS}.quit_dialog_message */
RTOID (F1048_19039)


EIF_TYPED_VALUE F1048_19039 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1048_19039,23093,RTMS_EX_H("Do you really want to close\?",28,2072547903));
}

void EIF_Minit1048 (void)
{
	GTCX
	RTOTS (19022,F1048_19022)
	RTOTS (19023,F1048_19023)
	RTOTS (19024,F1048_19024)
	RTOTS (19034,F1048_19034)
	RTOTS (19035,F1048_19035)
	RTOTS (19036,F1048_19036)
	RTOTS (19037,F1048_19037)
	RTOTS (19038,F1048_19038)
	RTOTS (19039,F1048_19039)
}


#ifdef __cplusplus
}
#endif
