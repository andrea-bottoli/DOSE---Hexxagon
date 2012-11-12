/*
 * Code for class EV_DIALOG_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1175_22267(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1175_22268(EIF_REFERENCE);
extern void F1175_22269(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1175_22270(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1175_22271(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1175_22272(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1175_22273(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1175_22274(EIF_REFERENCE);
extern void F1175_22275(EIF_REFERENCE);
extern void F1175_22276(EIF_REFERENCE);
extern void F1175_22277(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1175_22278(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1175_22279(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1175_22280(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1175_22281(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1175_22282(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1175_22283(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1175_22284(EIF_REFERENCE);
extern void F1175_22285(EIF_REFERENCE);
extern void F1175_22286(EIF_REFERENCE);
extern void F1175_22287(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1175_22288(EIF_REFERENCE);
extern void F1175_22289(EIF_REFERENCE);
extern void F1175_22290(EIF_REFERENCE);
extern void F1175_22291(EIF_REFERENCE);
extern void F1175_22292(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1175_22293(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1175_22294(EIF_REFERENCE);
static EIF_TYPED_VALUE F1175_22295_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1175_22295(EIF_REFERENCE);
extern void EIF_Minit1175(void);

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

/* {EV_DIALOG_IMP}.make */
void F1175_22267 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui1_1x = {0, SK_INT8};
#define ui1_1 ui1_1x.it_i1
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_8 ti1_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26198);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26198);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1174, 1875, 0xF8000312, 0); /* internal_class_name */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1876, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = RTMS_EX_H("_AS_DIALOG",10,1293759815);
	tr3 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 63, "as_string_32", tr2))(tr2)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr3);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(786, 194, "plus", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTAR(Current, tr2);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1875, dtype)) = (EIF_REFERENCE) RTCCL(tr2);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1174, 1877, 0xF8000312, 0); /* internal_icon_name */
	
	tr1 = RTMS_EX_H("",0,0);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 63, "as_string_32", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr2);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1877, dtype)) = (EIF_REFERENCE) RTCCL(tr2);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1174, 262, 0xF800062D, 0); /* accel_list */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1174, 262, Current)));
	ui4_1 = ((EIF_INTEGER_32) 10L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1581, 41, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(3,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 262, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1174, 1905, 0x04000000, 1); /* apply_center_dialog */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1905, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(5);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1173, 1850, 1173))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("is_initialized", EX_POST);
		ti1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 38, dtype))(Current)).it_i1);
		ui1_1 = ti1_1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 44, dtype))(Current, ui1_1x)).it_b);
		if (tb1) {
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
	RTLO(2);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui1_1
}

/* {EV_DIALOG_IMP}.title_name */
EIF_TYPED_VALUE F1175_22268 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "title_name";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Result);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26199);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1174, Current, 26199);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	Result = RTMS_EX_H("EV_DIALOG_WINDOW",16,177747287);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

/* {EV_DIALOG_IMP}.old_make */
void F1175_22269 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "old_make";
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
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 1, 26200);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26200);
	RTCC(arg1, 1174, l_feature_name, 1, RTWCT(1174, 1917, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("an_interface_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 32, dtype))(Current, ur1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("interface_assigned", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1917, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("base_make_called", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 45, dtype))(Current)).it_b);
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

/* {EV_DIALOG_IMP}.make_with_real_dialog */
void F1175_22270 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make_with_real_dialog";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc1);
	RTLR(3,tr1);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1174, Current, 1, 1, 26201);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26201);
	if (arg1) {
		RTCC(arg1, 1174, l_feature_name, 1, 1176);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_imp_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1174, 1905, 0x04000000, 1); /* apply_center_dialog */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1905, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1174, 1889, dtype))(Current);
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF8000346, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 1955, "interface", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	loc1 = RTRV(eif_non_attached_type(RTWCT(1174, 1917, Current)), loc1);
	if (RTAL & CK_CHECK) {
		RTHOOK(5);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(6);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 32, dtype))(Current, ur1x);
	RTHOOK(7);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 1914, dtype))(Current, ur1x);
	RTHOOK(8);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 1909, dtype))(Current, ur1x);
	RTHOOK(9);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1176, 1937, "destroy_implementation", arg1))(arg1);
	RTHOOK(10);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 568, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(10,1);
	ur1 = RTCCL(Current);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1104, 656, "add_root_window", tr1))(tr1, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef ur1
#undef arg1
}

/* {EV_DIALOG_IMP}.is_closeable */
EIF_TYPED_VALUE F1175_22271 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1174,1893, Dtype(Current)));
	return r;
}


/* {EV_DIALOG_IMP}.is_modal */
EIF_TYPED_VALUE F1175_22272 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_modal";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26203);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1174, Current, 26203);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
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

/* {EV_DIALOG_IMP}.is_relative */
EIF_TYPED_VALUE F1175_22273 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_relative";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26204);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1174, Current, 26204);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
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

/* {EV_DIALOG_IMP}.blocking_window */
EIF_TYPED_VALUE F1175_22274 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "blocking_window";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Result);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26205);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1174, Current, 26205);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000343, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) NULL;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

/* {EV_DIALOG_IMP}.enable_closeable */
void F1175_22275 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "enable_closeable";
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
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26206);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26206);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1174, 1893, 0x04000000, 1); /* is_closeable */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1893, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("closeable", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1174, 1893, dtype));
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

/* {EV_DIALOG_IMP}.disable_closeable */
void F1175_22276 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disable_closeable";
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
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26207);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26207);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1174, 1893, 0x04000000, 1); /* is_closeable */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1893, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_closeable", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1174, 1893, dtype));
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

/* {EV_DIALOG_IMP}.set_x_position */
void F1175_22277 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_x_position";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
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
	
	RTEAA(l_feature_name, 1174, Current, 0, 1, 26208);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26208);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1173, 365, 1173))(Current, ui4_1x);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1174, 1905, 0x04000000, 1); /* apply_center_dialog */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1905, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("x_position_assigned", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 350, dtype))(Current)).it_i4);
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
#undef ui4_1
#undef arg1
}

/* {EV_DIALOG_IMP}.set_y_position */
void F1175_22278 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_y_position";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
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
	
	RTEAA(l_feature_name, 1174, Current, 0, 1, 26209);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26209);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1173, 366, 1173))(Current, ui4_1x);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1174, 1905, 0x04000000, 1); /* apply_center_dialog */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1905, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("y_position_assigned", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 351, dtype))(Current)).it_i4);
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
#undef ui4_1
#undef arg1
}

/* {EV_DIALOG_IMP}.set_position */
void F1175_22279 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "set_position";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_INTEGER_32 ti4_1;
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
	
	RTEAA(l_feature_name, 1174, Current, 0, 2, 26210);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26210);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	ui4_2 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1173, 367, 1173))(Current, ui4_1x, ui4_2x);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1174, 1905, 0x04000000, 1); /* apply_center_dialog */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1905, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("x_position_assigned", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 350, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("y_position_assigned", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 351, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == arg2)) {
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
	RTLO(4);
	RTEE;
#undef ui4_1
#undef ui4_2
#undef arg2
#undef arg1
}

/* {EV_DIALOG_IMP}.show_modal_to_window */
void F1175_22280 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "show_modal_to_window";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 1, 26211);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26211);
	if (arg1) {
		RTCC(arg1, 1174, l_feature_name, 1, 835);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1174, 1826, 0x04000000, 1); /* call_show_actions */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1826, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1174, 1906, 0xF8000343, 0); /* parent_window */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1906, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1174, 1912, dtype))(Current);
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(838, 306, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(4,2);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(955, 289, "show_modal_to_window", tr2))(tr2, ur1x);
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
#undef ur1
#undef arg1
}

/* {EV_DIALOG_IMP}.show_relative_to_window */
void F1175_22281 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "show_relative_to_window";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 1, 26212);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26212);
	if (arg1) {
		RTCC(arg1, 1174, l_feature_name, 1, 835);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1174, 1826, 0x04000000, 1); /* call_show_actions */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1826, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1174, 1906, 0xF8000343, 0); /* parent_window */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1906, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1174, 1913, dtype))(Current);
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(838, 306, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(4,2);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(955, 290, "show_relative_to_window", tr2))(tr2, ur1x);
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
#undef ur1
#undef arg1
}

/* {EV_DIALOG_IMP}.show */
void F1175_22282 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "show";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(7);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,loc2);
	RTLR(4,loc3);
	RTLR(5,tr2);
	RTLR(6,loc1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1174, Current, 3, 0, 26213);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26213);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 328, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1871, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 1421, dtype))(Current, ur1x);
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1174, 1910, dtype))(Current);
		RTHOOK(4);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1174, 1905, dtype));
		if (tb1) {
			RTHOOK(5);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1174, 1911, dtype))(Current);
		}
		RTHOOK(6);
		RTDBGAA(Current, dtype, 1174, 1905, 0x04000000, 1); /* apply_center_dialog */
		
		*(EIF_BOOLEAN *)(Current + RTWA(1174, 1905, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
		RTHOOK(7);
		tb1 = '\0';
		tb2 = '\0';
		tb3 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 276, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTCCL(tr1);
		if (EIF_TEST(loc2)) {
			tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(863, 160, "is_show_requested", loc2))(loc2)).it_b);
			tb3 = tb4;
		}
		if (tb3) {
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(863, 123, "is_sensitive", loc2))(loc2)).it_b);
			tb2 = tb3;
		}
		if (tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(7,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(838, 294, "default_push_button", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			loc3 = RTCCL(tr2);
			tb1 = EIF_TEST(loc3);
		}
		if (tb1) {
			RTHOOK(8);
			RTDBGAL(Current, 1, 0xF80004B0, 0, 0); /* loc1 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(863, 219, "implementation", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc1 = RTCCL(tr1);
			loc1 = RTRV(eif_non_attached_type(1200), loc1);
			if (RTAL & CK_CHECK) {
				RTHOOK(9);
				RTCT(NULL, EX_CHECK);
				if ((EIF_BOOLEAN)(loc1 != NULL)) {
					RTCK;
				} else {
					RTCF;
				}
			}
			RTHOOK(10);
			ur1 = RTCCL(loc3);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 279, dtype))(Current, ur1x);
			RTHOOK(11);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1200, 226, "set_focus", loc1))(loc1);
		}
		RTHOOK(12);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1173, 305, 1173))(Current);
		RTHOOK(13);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1174, 1826, dtype));
		if (tb1) {
			RTHOOK(14);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 246, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			if ((EIF_BOOLEAN)(tr1 != NULL)) {
				RTHOOK(15);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 245, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(15,1);
				ur1 = NULL;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 180, "call", tr1))(tr1, ur1x);
			}
			RTHOOK(16);
			RTDBGAA(Current, dtype, 1174, 1826, 0x04000000, 1); /* call_show_actions */
			
			*(EIF_BOOLEAN *)(Current + RTWA(1174, 1826, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef up2
#undef ur1
}

/* {EV_DIALOG_IMP}.apply_center_dialog */
EIF_TYPED_VALUE F1175_22283 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1174,1905, Dtype(Current)));
	return r;
}


/* {EV_DIALOG_IMP}.parent_window */
EIF_TYPED_VALUE F1175_22284 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1174,1906, Dtype(Current)));
	return r;
}


/* {EV_DIALOG_IMP}.destroy_implementation */
void F1175_22285 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "destroy_implementation";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26216);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26216);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 568, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	ur1 = RTCCL(Current);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1104, 657, "remove_root_window", tr1))(tr1, ur1x);
	RTHOOK(2);
	ub1 = (EIF_BOOLEAN) 1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 49, dtype))(Current, ub1x);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1174, 1815, dtype))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef ur1
#undef ub1
}

/* {EV_DIALOG_IMP}.on_destroy */
void F1175_22286 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "on_destroy";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26217);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26217);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1906, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
	} else {
		RTHOOK(2);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1173, 1807, 1173))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
}

/* {EV_DIALOG_IMP}.move_children */
void F1175_22287 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "move_children";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,Current);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1174, Current, 1, 1, 26218);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1174, Current, 26218);
	if (arg1) {
		RTCC(arg1, 1174, l_feature_name, 1, 1176);
	}
	RTIV(Current, RTAL);
	if (RTAL & CK_CHECK) {
		RTHOOK(1);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(arg1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF800048C, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 904, "item_imp", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	loc1 = RTRV(eif_non_attached_type(1164), loc1);
	RTHOOK(3);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(4);
		ur1 = RTCCL(Current);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1164, 735, "set_top_level_window_imp", loc1))(loc1, ur1x);
		RTHOOK(5);
		ur1 = RTCCL(Current);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1164, 742, "wel_set_parent", loc1))(loc1, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef ur1
#undef arg1
}

/* {EV_DIALOG_IMP}.update_style */
void F1175_22288 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "update_style";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
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
	
	RTLI(3);
	RTLR(0,loc2);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1174, Current, 2, 0, 26219);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26219);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF80002C8, 0, 0); /* loc2 */
	
	tr1 = RTLN(712);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(712, 26, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 927, dtype))(Current)).it_i4);
	RTHOOK(3);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1174, 253, dtype));
	if (tb1) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ui4_1 = loc1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1299, dtype))(Current)).it_i4);
		ui4_2 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(712, 32, "set_flag", loc2))(loc2, ui4_1x, ui4_2x)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(5);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ui4_1 = loc1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1302, dtype))(Current)).it_i4);
		ui4_2 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(712, 32, "set_flag", loc2))(loc2, ui4_1x, ui4_2x)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
	} else {
		RTHOOK(6);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ui4_1 = loc1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1299, dtype))(Current)).it_i4);
		ui4_2 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(712, 33, "clear_flag", loc2))(loc2, ui4_1x, ui4_2x)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(7);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ui4_1 = loc1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1302, dtype))(Current)).it_i4);
		ui4_2 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(712, 33, "clear_flag", loc2))(loc2, ui4_1x, ui4_2x)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
	}
	RTHOOK(8);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1174, 1893, dtype));
	if (tb1) {
		RTHOOK(9);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ui4_1 = loc1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1298, dtype))(Current)).it_i4);
		ui4_2 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(712, 32, "set_flag", loc2))(loc2, ui4_1x, ui4_2x)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
	} else {
		RTHOOK(10);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ui4_1 = loc1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1298, dtype))(Current)).it_i4);
		ui4_2 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(712, 33, "clear_flag", loc2))(loc2, ui4_1x, ui4_2x)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
	}
	RTHOOK(11);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	ui4_1 = loc1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1301, dtype))(Current)).it_i4);
	ui4_2 = ti4_1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(712, 32, "set_flag", loc2))(loc2, ui4_1x, ui4_2x)).it_i4);
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(12);
	ui4_1 = loc1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 928, dtype))(Current, ui4_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(13);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ui4_1
#undef ui4_2
}

/* {EV_DIALOG_IMP}.center_dialog */
void F1175_22289 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "center_dialog";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,loc3);
	RTLR(1,tr1);
	RTLR(2,loc4);
	RTLR(3,loc5);
	RTLR(4,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 1174, Current, 5, 0, 26220);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26220);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 3, 0xF8000337, 0, 0); /* loc3 */
	
	tr1 = RTLN(823);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(823, 30, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 4, 0xF800048A, 0, 0); /* loc4 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(823, 128, "implementation", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc4 = RTCCL(tr1);
	loc4 = RTRV(eif_non_attached_type(1162), loc4);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT("l_screen_imp_not_void", EX_CHECK);
		if ((EIF_BOOLEAN)(loc4 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(4);
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1906, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc5 = RTCCL(tr1);
	if (EIF_TEST(loc5)) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(835, 160, "is_displayed", loc5))(loc5)).it_b);
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(5);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(835, 63, "x_position", loc5))(loc5)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(835, 67, "width", loc5))(loc5)).it_i4);
		loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 352, dtype))(Current)).it_i4);
		loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_2 - loc1) / ((EIF_INTEGER_32) 2L)));
		RTHOOK(6);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(835, 64, "y_position", loc5))(loc5)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(835, 68, "height", loc5))(loc5)).it_i4);
		loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 353, dtype))(Current)).it_i4);
		loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_2 - loc2) / ((EIF_INTEGER_32) 2L)));
	} else {
		RTHOOK(7);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 695, "width", loc4))(loc4)).it_i4);
		loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 352, dtype))(Current)).it_i4);
		loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - loc1) / ((EIF_INTEGER_32) 2L));
		RTHOOK(8);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 696, "height", loc4))(loc4)).it_i4);
		loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 353, dtype))(Current)).it_i4);
		loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - loc2) / ((EIF_INTEGER_32) 2L));
	}
	RTHOOK(9);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 352, dtype))(Current)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 697, "virtual_width", loc4))(loc4)).it_i4);
	if ((EIF_BOOLEAN) ((EIF_INTEGER_32) (loc1 + ti4_1) > ti4_2)) {
		RTHOOK(10);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 697, "virtual_width", loc4))(loc4)).it_i4);
		loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 352, dtype))(Current)).it_i4);
		loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 - loc1);
	}
	RTHOOK(11);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 699, "virtual_x", loc4))(loc4)).it_i4);
	if ((EIF_BOOLEAN) (loc1 < ti4_1)) {
		RTHOOK(12);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 699, "virtual_x", loc4))(loc4)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
	}
	RTHOOK(13);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 353, dtype))(Current)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 698, "virtual_height", loc4))(loc4)).it_i4);
	if ((EIF_BOOLEAN) ((EIF_INTEGER_32) (loc2 + ti4_1) > ti4_2)) {
		RTHOOK(14);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 698, "virtual_height", loc4))(loc4)).it_i4);
		loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 353, dtype))(Current)).it_i4);
		loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 - loc2);
	}
	RTHOOK(15);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 700, "virtual_y", loc4))(loc4)).it_i4);
	if ((EIF_BOOLEAN) (loc2 < ti4_1)) {
		RTHOOK(16);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1162, 700, "virtual_y", loc4))(loc4)).it_i4);
		loc2 = (EIF_INTEGER_32) ti4_1;
	}
	RTHOOK(17);
	ui4_1 = loc1;
	ui4_2 = loc2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1174, 1901, dtype))(Current, ui4_1x, ui4_2x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(18);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ui4_1
#undef ui4_2
}

/* {EV_DIALOG_IMP}.promote_to_modal_dialog */
void F1175_22290 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "promote_to_modal_dialog";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1174, Current, 1, 0, 26221);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1174, Current, 26221);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF800049A, 0, 0); /* loc1 */
	
	tr1 = RTLN(1178);
	ur1 = RTCCL(Current);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1178, 1924, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 35, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(838, 35, "replace_implementation", tr1))(tr1, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
}

/* {EV_DIALOG_IMP}.promote_to_modeless_dialog */
void F1175_22291 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "promote_to_modeless_dialog";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1174, Current, 1, 0, 26222);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1174, Current, 26222);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000499, 0, 0); /* loc1 */
	
	tr1 = RTLN(1177);
	ur1 = RTCCL(Current);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1177, 1921, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 35, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(838, 35, "replace_implementation", tr1))(tr1, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
}

/* {EV_DIALOG_IMP}.copy_from_real_dialog */
void F1175_22292 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "copy_from_real_dialog";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc12 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc13 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc14 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc15 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc16 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc17 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc18 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc19 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc20 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc21 = (EIF_REFERENCE) 0;
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
	EIF_TYPED_VALUE ui1_1x = {0, SK_INT8};
#define ui1_1 ui1_1x.it_i1
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_16 ti2_1;
	EIF_INTEGER_8 ti1_1;
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(27);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLR(5,loc2);
	RTLR(6,loc3);
	RTLR(7,loc4);
	RTLR(8,loc5);
	RTLR(9,loc6);
	RTLR(10,loc7);
	RTLR(11,loc8);
	RTLR(12,loc9);
	RTLR(13,loc10);
	RTLR(14,loc11);
	RTLR(15,loc12);
	RTLR(16,loc13);
	RTLR(17,loc14);
	RTLR(18,loc15);
	RTLR(19,loc16);
	RTLR(20,loc17);
	RTLR(21,loc18);
	RTLR(22,loc19);
	RTLR(23,loc20);
	RTLR(24,loc21);
	RTLR(25,ur2);
	RTLR(26,loc1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_REF, &loc12);
	RTLU(SK_REF, &loc13);
	RTLU(SK_REF, &loc14);
	RTLU(SK_REF, &loc15);
	RTLU(SK_REF, &loc16);
	RTLU(SK_REF, &loc17);
	RTLU(SK_REF, &loc18);
	RTLU(SK_REF, &loc19);
	RTLU(SK_REF, &loc20);
	RTLU(SK_REF, &loc21);
	
	RTEAA(l_feature_name, 1174, Current, 21, 1, 26223);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26223);
	if (arg1) {
		RTCC(arg1, 1174, l_feature_name, 1, 1176);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1174, 1875, 0xF8000312, 0); /* internal_class_name */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 1878, "internal_class_name", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1875, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1174, 1799, 0xF8000294, 0); /* wnd_class */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1174, 1799, Current)));
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1875, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(660, 53, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1799, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1174, 262, 0xF800062D, 0); /* accel_list */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 262, "accel_list", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 262, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 264, "accelerators_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = RTCCL(tr1);
	if (EIF_TEST(loc2)) {
		RTHOOK(5);
		RTDBGAA(Current, dtype, 1174, 264, 0xF800021B, 0); /* accelerators_internal */
		
		RTAR(Current, loc2);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 264, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
	}
	RTHOOK(6);
	RTDBGAA(Current, dtype, 1174, 87, 0xF800031F, 0); /* accept_cursor */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 87, "accept_cursor", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 87, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	RTDBGAA(Current, dtype, 1174, 200, 0xF8000501, 0); /* actual_drop_target_agent */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 200, "actual_drop_target_agent", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 200, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(8);
	RTDBGAA(Current, dtype, 1174, 430, 0x04000000, 1); /* awaiting_movement */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 434, "awaiting_movement", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 430, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(9);
	RTDBGAA(Current, dtype, 1174, 809, 0xF80003FD, 0); /* background_color_imp */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 813, "background_color_imp", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 809, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(10);
	RTDBGAA(Current, dtype, 1174, 878, 0xF80003FF, 0); /* background_pixmap_imp */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 882, "background_pixmap_imp", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 878, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(11);
	ti1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 37, dtype))(Current)).it_i1);
	ui1_1 = ti1_1;
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 45, "base_make_called", arg1))(arg1)).it_b);
	ub1 = tb1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1174, 43, dtype))(Current, ui1_1x, ub1x);
	RTHOOK(12);
	RTDBGAA(Current, dtype, 1174, 407, 0xF800003D, 0); /* child_cell */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 411, "child_cell", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 407, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(13);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 242, "close_request_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = RTCCL(tr1);
	if (EIF_TEST(loc3)) {
		RTHOOK(14);
		RTDBGAA(Current, dtype, 1174, 242, 0xF800021A, 0); /* close_request_actions_internal */
		
		RTAR(Current, loc3);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 242, dtype)) = (EIF_REFERENCE) RTCCL(loc3);
	}
	RTHOOK(15);
	RTDBGAA(Current, dtype, 1174, 1395, 0xF8000206, 0); /* commands */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 1399, "commands", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1395, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(16);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 80, "conforming_pick_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc4 = RTCCL(tr1);
	if (EIF_TEST(loc4)) {
		RTHOOK(17);
		RTDBGAA(Current, dtype, 1174, 80, 0xF800021A, 0); /* conforming_pick_actions_internal */
		
		RTAR(Current, loc4);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 80, dtype)) = (EIF_REFERENCE) RTCCL(loc4);
	}
	RTHOOK(18);
	RTDBGAA(Current, dtype, 1174, 438, 0xF800031F, 0); /* cursor_pixmap */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 442, "cursor_pixmap", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 438, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(19);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 289, "icon_pixmap", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 298, dtype))(Current, ur1x);
	RTHOOK(20);
	RTDBGAA(Current, dtype, 1174, 88, 0xF800031F, 0); /* deny_cursor */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 88, "deny_cursor", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 88, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(21);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 82, "drop_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc5 = RTCCL(tr1);
	if (EIF_TEST(loc5)) {
		RTHOOK(22);
		RTDBGAA(Current, dtype, 1174, 82, 0xF8000208, 0); /* drop_actions_internal */
		
		RTAR(Current, loc5);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 82, dtype)) = (EIF_REFERENCE) RTCCL(loc5);
	}
	RTHOOK(23);
	RTDBGAA(Current, dtype, 1174, 202, 0xF80004E8, 0); /* default_key_processing_handler */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 202, "default_key_processing_handler", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 202, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(24);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 189, "focus_in_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc6 = RTCCL(tr1);
	if (EIF_TEST(loc6)) {
		RTHOOK(25);
		RTDBGAA(Current, dtype, 1174, 189, 0xF800021A, 0); /* focus_in_actions_internal */
		
		RTAR(Current, loc6);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 189, dtype)) = (EIF_REFERENCE) RTCCL(loc6);
	}
	RTHOOK(26);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 191, "focus_out_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc7 = RTCCL(tr1);
	if (EIF_TEST(loc7)) {
		RTHOOK(27);
		RTDBGAA(Current, dtype, 1174, 191, 0xF800021A, 0); /* focus_out_actions_internal */
		
		RTAR(Current, loc7);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 191, dtype)) = (EIF_REFERENCE) RTCCL(loc7);
	}
	RTHOOK(28);
	RTDBGAA(Current, dtype, 1174, 810, 0xF80003FD, 0); /* foreground_color_imp */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 814, "foreground_color_imp", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 810, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(29);
	RTDBGAA(Current, dtype, 1174, 271, 0x04000000, 1); /* help_enabled */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 271, "help_enabled", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 271, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(30);
	RTDBGAA(Current, dtype, 1174, 1867, 0x10000000, 1); /* id */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1176, 1869, "id", arg1));
	*(EIF_INTEGER_32 *)(Current + RTWA(1174, 1867, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(31);
	RTDBGAA(Current, dtype, 1174, 286, 0xF800035F, 0); /* internal_current_push_button */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 286, "internal_current_push_button", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 286, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(32);
	RTDBGAA(Current, dtype, 1174, 285, 0xF800035F, 0); /* internal_default_cancel_button */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 285, "internal_default_cancel_button", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 285, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(33);
	RTDBGAA(Current, dtype, 1174, 284, 0xF800035F, 0); /* internal_default_push_button */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 284, "internal_default_push_button", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 284, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(34);
	RTDBGAA(Current, dtype, 1174, 1841, 0x10000000, 1); /* internal_height */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1176, 1843, "internal_height", arg1));
	*(EIF_INTEGER_32 *)(Current + RTWA(1174, 1841, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(35);
	RTDBGAA(Current, dtype, 1174, 197, 0xF8000501, 0); /* internal_help_context */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 197, "internal_help_context", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 197, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(36);
	RTDBGAA(Current, dtype, 1174, 1877, 0xF8000312, 0); /* internal_icon_name */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 1880, "internal_icon_name", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1877, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(37);
	RTDBGAA(Current, dtype, 1174, 161, 0x04000000, 1); /* internal_non_sensitive */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 161, "internal_non_sensitive", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 161, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(38);
	RTDBGAA(Current, dtype, 1174, 113, 0x04000000, 1); /* internal_pebble_positioning_enabled */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 113, "internal_pebble_positioning_enabled", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 113, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(39);
	RTDBGAA(Current, dtype, 1174, 1871, 0xF8000312, 0); /* internal_title */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 1874, "internal_title", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1871, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(40);
	RTDBGAA(Current, dtype, 1174, 1842, 0x10000000, 1); /* internal_width */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1176, 1844, "internal_width", arg1));
	*(EIF_INTEGER_32 *)(Current + RTWA(1174, 1842, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(41);
	RTDBGAA(Current, dtype, 1174, 1893, 0x04000000, 1); /* is_closeable */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 1926, "is_closeable", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1893, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(42);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 34, "is_destroyed", arg1))(arg1)).it_b);
	ub1 = tb1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 49, dtype))(Current, ub1x);
	RTHOOK(43);
	RTDBGAA(Current, dtype, 1174, 556, 0x04000000, 1); /* is_dnd_in_transport */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 560, "is_dnd_in_transport", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 556, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(44);
	RTDBGAA(Current, dtype, 1174, 420, 0x04000000, 1); /* is_in_min_height */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 424, "is_in_min_height", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 420, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(45);
	RTDBGAA(Current, dtype, 1174, 421, 0x04000000, 1); /* is_in_min_width */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 425, "is_in_min_width", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 421, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(46);
	RTDBGAA(Current, dtype, 1174, 418, 0x04000000, 1); /* is_minheight_recomputation_needed */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 422, "is_minheight_recomputation_needed", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 418, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(47);
	RTDBGAA(Current, dtype, 1174, 417, 0x04000000, 1); /* is_minwidth_recomputation_needed */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 421, "is_minwidth_recomputation_needed", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 417, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(48);
	RTDBGAA(Current, dtype, 1174, 419, 0x04000000, 1); /* is_notify_originator */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 423, "is_notify_originator", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 419, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(49);
	RTDBGAA(Current, dtype, 1174, 555, 0x04000000, 1); /* is_pnd_in_transport */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 559, "is_pnd_in_transport", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 555, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(50);
	RTDBGAA(Current, dtype, 1174, 106, 0x04000000, 1); /* is_transport_enabled */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 106, "is_transport_enabled", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 106, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(51);
	RTDBGAA(Current, dtype, 1174, 317, 0xF800033D, 0); /* item */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 315, "item", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 317, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(52);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 183, "key_press_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc8 = RTCCL(tr1);
	if (EIF_TEST(loc8)) {
		RTHOOK(53);
		RTDBGAA(Current, dtype, 1174, 183, 0xF8000212, 0); /* key_press_actions_internal */
		
		RTAR(Current, loc8);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 183, dtype)) = (EIF_REFERENCE) RTCCL(loc8);
	}
	RTHOOK(54);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 185, "key_press_string_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc9 = RTCCL(tr1);
	if (EIF_TEST(loc9)) {
		RTHOOK(55);
		RTDBGAA(Current, dtype, 1174, 185, 0xF8000213, 0); /* key_press_string_actions_internal */
		
		RTAR(Current, loc9);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 185, dtype)) = (EIF_REFERENCE) RTCCL(loc9);
	}
	RTHOOK(56);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 187, "key_release_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc10 = RTCCL(tr1);
	if (EIF_TEST(loc10)) {
		RTHOOK(57);
		RTDBGAA(Current, dtype, 1174, 187, 0xF8000212, 0); /* key_release_actions_internal */
		
		RTAR(Current, loc10);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 187, dtype)) = (EIF_REFERENCE) RTCCL(loc10);
	}
	RTHOOK(58);
	RTDBGAA(Current, dtype, 1174, 300, 0x10000000, 1); /* maximum_height */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1176, 300, "maximum_height", arg1));
	*(EIF_INTEGER_32 *)(Current + RTWA(1174, 300, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(59);
	RTDBGAA(Current, dtype, 1174, 299, 0x10000000, 1); /* maximum_width */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1176, 299, "maximum_width", arg1));
	*(EIF_INTEGER_32 *)(Current + RTWA(1174, 299, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(60);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 244, "move_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc11 = RTCCL(tr1);
	if (EIF_TEST(loc11)) {
		RTHOOK(61);
		RTDBGAA(Current, dtype, 1174, 244, 0xF8000217, 0); /* move_actions_internal */
		
		RTAR(Current, loc11);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 244, dtype)) = (EIF_REFERENCE) RTCCL(loc11);
	}
	RTHOOK(62);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 214, "new_item_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc12 = RTCCL(tr1);
	if (EIF_TEST(loc12)) {
		RTHOOK(63);
		RTDBGAA(Current, dtype, 1174, 214, 0xF800020F, 0); /* new_item_actions_internal */
		
		RTAR(Current, loc12);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 214, dtype)) = (EIF_REFERENCE) RTCCL(loc12);
	}
	RTHOOK(64);
	RTDBGAA(Current, dtype, 1174, 83, 0xF8000000, 0); /* pebble */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 83, "pebble", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 83, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(65);
	RTDBGAA(Current, dtype, 1174, 84, 0xF8000501, 0); /* pebble_function */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 84, "pebble_function", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 84, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(66);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 76, "pick_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc13 = RTCCL(tr1);
	if (EIF_TEST(loc13)) {
		RTHOOK(67);
		RTDBGAA(Current, dtype, 1174, 76, 0xF8000215, 0); /* pick_actions_internal */
		
		RTAR(Current, loc13);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 76, dtype)) = (EIF_REFERENCE) RTCCL(loc13);
	}
	RTHOOK(68);
	RTDBGAA(Current, dtype, 1174, 111, 0x14000000, 1); /* pick_x */
	
	ti2_1 = *(EIF_INTEGER_16 *)(arg1 + RTVA(1176, 111, "pick_x", arg1));
	*(EIF_INTEGER_16 *)(Current + RTWA(1174, 111, dtype)) = (EIF_INTEGER_16) ti2_1;
	RTHOOK(69);
	RTDBGAA(Current, dtype, 1174, 112, 0x14000000, 1); /* pick_y */
	
	ti2_1 = *(EIF_INTEGER_16 *)(arg1 + RTVA(1176, 112, "pick_y", arg1));
	*(EIF_INTEGER_16 *)(Current + RTWA(1174, 112, dtype)) = (EIF_INTEGER_16) ti2_1;
	RTHOOK(70);
	RTDBGAA(Current, dtype, 1174, 564, 0xF800031F, 0); /* pnd_stored_cursor */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 568, "pnd_stored_cursor", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 564, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(71);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 171, "pointer_button_press_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc14 = RTCCL(tr1);
	if (EIF_TEST(loc14)) {
		RTHOOK(72);
		RTDBGAA(Current, dtype, 1174, 171, 0xF8000219, 0); /* pointer_button_press_actions_internal */
		
		RTAR(Current, loc14);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 171, dtype)) = (EIF_REFERENCE) RTCCL(loc14);
	}
	RTHOOK(73);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 175, "pointer_button_release_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc15 = RTCCL(tr1);
	if (EIF_TEST(loc15)) {
		RTHOOK(74);
		RTDBGAA(Current, dtype, 1174, 175, 0xF8000219, 0); /* pointer_button_release_actions_internal */
		
		RTAR(Current, loc15);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 175, dtype)) = (EIF_REFERENCE) RTCCL(loc15);
	}
	RTHOOK(75);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 173, "pointer_double_press_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc16 = RTCCL(tr1);
	if (EIF_TEST(loc16)) {
		RTHOOK(76);
		RTDBGAA(Current, dtype, 1174, 173, 0xF8000219, 0); /* pointer_double_press_actions_internal */
		
		RTAR(Current, loc16);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 173, dtype)) = (EIF_REFERENCE) RTCCL(loc16);
	}
	RTHOOK(77);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 177, "pointer_enter_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc17 = RTCCL(tr1);
	if (EIF_TEST(loc17)) {
		RTHOOK(78);
		RTDBGAA(Current, dtype, 1174, 177, 0xF800021A, 0); /* pointer_enter_actions_internal */
		
		RTAR(Current, loc17);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 177, dtype)) = (EIF_REFERENCE) RTCCL(loc17);
	}
	RTHOOK(79);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 181, "pointer_leave_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc18 = RTCCL(tr1);
	if (EIF_TEST(loc18)) {
		RTHOOK(80);
		RTDBGAA(Current, dtype, 1174, 181, 0xF800021A, 0); /* pointer_leave_actions_internal */
		
		RTAR(Current, loc18);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 181, dtype)) = (EIF_REFERENCE) RTCCL(loc18);
	}
	RTHOOK(81);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 169, "pointer_motion_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc19 = RTCCL(tr1);
	if (EIF_TEST(loc19)) {
		RTHOOK(82);
		RTDBGAA(Current, dtype, 1174, 169, 0xF8000214, 0); /* pointer_motion_actions_internal */
		
		RTAR(Current, loc19);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 169, dtype)) = (EIF_REFERENCE) RTCCL(loc19);
	}
	RTHOOK(83);
	RTDBGAA(Current, dtype, 1174, 73, 0x14000000, 1); /* pointer_x */
	
	ti2_1 = *(EIF_INTEGER_16 *)(arg1 + RTVA(1176, 73, "pointer_x", arg1));
	*(EIF_INTEGER_16 *)(Current + RTWA(1174, 73, dtype)) = (EIF_INTEGER_16) ti2_1;
	RTHOOK(84);
	RTDBGAA(Current, dtype, 1174, 74, 0x14000000, 1); /* pointer_y */
	
	ti2_1 = *(EIF_INTEGER_16 *)(arg1 + RTVA(1176, 74, "pointer_y", arg1));
	*(EIF_INTEGER_16 *)(Current + RTWA(1174, 74, dtype)) = (EIF_INTEGER_16) ti2_1;
	RTHOOK(85);
	RTDBGAA(Current, dtype, 1174, 557, 0x30000000, 1); /* press_action */
	
	tu1_1 = *(EIF_NATURAL_8 *)(arg1 + RTVA(1176, 561, "press_action", arg1));
	*(EIF_NATURAL_8 *)(Current + RTWA(1174, 557, dtype)) = (EIF_NATURAL_8) tu1_1;
	RTHOOK(86);
	RTDBGAA(Current, dtype, 1174, 891, 0xF8000507, 0); /* radio_group */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 895, "radio_group", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 891, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(87);
	RTDBGAA(Current, dtype, 1174, 558, 0x30000000, 1); /* release_action */
	
	tu1_1 = *(EIF_NATURAL_8 *)(arg1 + RTVA(1176, 562, "release_action", arg1));
	*(EIF_NATURAL_8 *)(Current + RTWA(1174, 558, dtype)) = (EIF_NATURAL_8) tu1_1;
	RTHOOK(88);
	RTDBGAA(Current, dtype, 1174, 899, 0xF800050E, 0); /* remove_item_actions */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 903, "remove_item_actions", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 899, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(89);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 193, "resize_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc20 = RTCCL(tr1);
	if (EIF_TEST(loc20)) {
		RTHOOK(90);
		RTDBGAA(Current, dtype, 1174, 193, 0xF8000217, 0); /* resize_actions_internal */
		
		RTAR(Current, loc20);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 193, dtype)) = (EIF_REFERENCE) RTCCL(loc20);
	}
	RTHOOK(91);
	RTDBGAA(Current, dtype, 1174, 57, 0x04000000, 1); /* rubber_band_is_drawn */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 57, "rubber_band_is_drawn", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 57, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(92);
	RTDBGAA(Current, dtype, 1174, 942, 0x04000000, 1); /* shared */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 946, "shared", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 942, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(93);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 246, "show_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc21 = RTCCL(tr1);
	if (EIF_TEST(loc21)) {
		RTHOOK(94);
		RTDBGAA(Current, dtype, 1174, 246, 0xF800021A, 0); /* show_actions_internal */
		
		RTAR(Current, loc21);
		*(EIF_REFERENCE *)(Current + RTWA(1174, 246, dtype)) = (EIF_REFERENCE) RTCCL(loc21);
	}
	RTHOOK(95);
	RTDBGAA(Current, dtype, 1174, 253, 0x04000000, 1); /* user_can_resize */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 253, "user_can_resize", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 253, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(96);
	RTDBGAA(Current, dtype, 1174, 114, 0x0C000000, 1); /* user_interface_mode */
	
	ti1_1 = *(EIF_INTEGER_8 *)(arg1 + RTVA(1176, 114, "user_interface_mode", arg1));
	*(EIF_INTEGER_8 *)(Current + RTWA(1174, 114, dtype)) = (EIF_INTEGER_8) ti1_1;
	RTHOOK(97);
	RTDBGAA(Current, dtype, 1174, 1905, 0x04000000, 1); /* apply_center_dialog */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 1934, "apply_center_dialog", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1905, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(98);
	RTDBGAA(Current, dtype, 1174, 1826, 0x04000000, 1); /* call_show_actions */
	
	tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(1176, 1828, "call_show_actions", arg1));
	*(EIF_BOOLEAN *)(Current + RTWA(1174, 1826, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(99);
	RTDBGAA(Current, dtype, 1174, 1643, 0xF8000425, 0); /* scroller */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 1647, "scroller", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 1643, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(100);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 351, "x_position", arg1))(arg1)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 352, "y_position", arg1))(arg1)).it_i4);
	ui4_2 = ti4_2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1174, 1901, dtype))(Current, ui4_1x, ui4_2x);
	RTHOOK(101);
	RTDBGAA(Current, dtype, 1174, 250, 0xF8000352, 0); /* lower_bar */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1174, 250, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(850, 30, Dtype(tr1)))(tr1);
	RTNHOOK(101,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 250, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(102);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 250, "lower_bar", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 250, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur2 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1174, 1887, dtype))(Current, ur1x, ur2x);
	RTHOOK(103);
	RTDBGAA(Current, dtype, 1174, 249, 0xF8000352, 0); /* upper_bar */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1174, 249, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(850, 30, Dtype(tr1)))(tr1);
	RTNHOOK(103,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1174, 249, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(104);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 249, "upper_bar", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 249, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur2 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1174, 1887, dtype))(Current, ur1x, ur2x);
	RTHOOK(105);
	RTDBGAL(Current, 1, 0xF8000379, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 302, "menu_bar", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(106);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(107);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1176, 311, "remove_menu_bar", arg1))(arg1);
		RTHOOK(108);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 312, dtype))(Current, ur1x);
	}
	RTHOOK(109);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1176, 1415, "ex_style", arg1))(arg1)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 1419, dtype))(Current, ui4_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(110);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(24);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ui4_1
#undef ui4_2
#undef ui1_1
#undef ub1
#undef arg1
}

/* {EV_DIALOG_IMP}.process_message */
EIF_TYPED_VALUE F1175_22293 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "process_message";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_p
#define arg4 arg4x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_POINTER *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 4, 26224);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1174, Current, 26224);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 922, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 1087, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN)(arg2 == ti4_1)) {
		RTHOOK(3);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 591, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 832, dtype))(Current, ui4_1x);
		RTHOOK(4);
		tb1 = '\0';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 34, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 242, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		if (tb1) {
			RTHOOK(5);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1174, 242, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			ur1 = NULL;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 180, "call", tr1))(tr1, ur1x);
		}
		RTHOOK(6);
		ub1 = (EIF_BOOLEAN) 0;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1174, 1386, dtype))(Current, ub1x);
	} else {
		RTHOOK(7);
		RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
		
		up1 = arg1;
		ui4_1 = arg2;
		up2 = arg3;
		up3 = arg4;
		Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1173, 1669, 1173))(Current, up1x, ui4_1x, up2x, up3x)).it_p);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef up1
#undef up2
#undef up3
#undef ur1
#undef ui4_1
#undef ub1
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_DIALOG_IMP}.common_dialog_imp */
EIF_TYPED_VALUE F1175_22294 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "common_dialog_imp";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26196);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1174, Current, 26196);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

/* {EV_DIALOG_IMP}.interface */
static EIF_TYPED_VALUE F1175_22295_body (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "interface";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1174, Current, 0, 0, 26197);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1174, Current, 26197);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

EIF_TYPED_VALUE F1175_22295 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1174,1917, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(1174, 1917, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1175_22295_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(1174,1917, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit1175 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
