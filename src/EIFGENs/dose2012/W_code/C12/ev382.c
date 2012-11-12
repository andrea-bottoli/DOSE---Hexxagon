/*
 * Code for class EV_XP_THEME_DRAWER_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F382_7187(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7188(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F382_7189(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F382_7190(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F382_7191(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F382_7192(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7193(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7194(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7195(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7196(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7197(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7198(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7199(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F382_7200(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F382_7201(EIF_REFERENCE);
extern EIF_TYPED_VALUE F382_7202(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F382_7203(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7204(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F382_7205(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7206(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7207(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F382_7208(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F382_7209(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F382_7210(EIF_REFERENCE);
extern EIF_TYPED_VALUE F382_7211(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit382(void);

#ifdef __cplusplus
}
#endif

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

/* {EV_XP_THEME_DRAWER_IMP}.open_theme_data */
EIF_TYPED_VALUE F382_7187 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "open_theme_data";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,arg2);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLR(3,tr1);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 2, 6892);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(381, Current, 6892);
	if (arg2) {
		RTCC(arg2, 381, l_feature_name, 2, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("item_exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(381, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("class_name_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
	
	up1 = arg1;
	ur1 = RTCCL(arg2);
	tr1 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(381, 71, dtype))(Current, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(3,1);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", tr1))(tr1)).it_p);
	up2 = tp1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(381, 72, dtype))(Current, up1x, up2x)).it_p);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.close_theme_data */
void F382_7188 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "close_theme_data";
	RTEX;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 1, 6893);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(381, Current, 6893);
	RTIV(Current, RTAL);
	RTHOOK(1);
	up1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(381, 73, Dtype(Current)))(Current, up1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.get_window_theme */
EIF_TYPED_VALUE F382_7189 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "get_window_theme";
	RTEX;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 1, 6894);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(381, Current, 6894);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("item_not_default_pointer", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(381, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
	
	up1 = arg1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(381, 78, dtype))(Current, up1x)).it_p);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef up1
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.draw_theme_background */
void F382_7190 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x)
{
	GTCX
	char *l_feature_name = "draw_theme_background";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_r
#define arg6 arg6x.it_r
#define arg7 arg7x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE up4x = {0, SK_POINTER};
#define up4 up4x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(5);
	RTLR(0,arg2);
	RTLR(1,arg5);
	RTLR(2,arg6);
	RTLR(3,arg7);
	RTLR(4,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_REF,&arg5);
	RTLU(SK_REF,&arg6);
	RTLU(SK_REF,&arg7);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	
	RTEAA(l_feature_name, 381, Current, 1, 7, 6895);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(381, Current, 6895);
	if (arg2) {
		RTCC(arg2, 381, l_feature_name, 2, 723);
	}
	if (arg5) {
		RTCC(arg5, 381, l_feature_name, 5, 691);
	}
	if (arg6) {
		RTCC(arg6, 381, l_feature_name, 6, 691);
	}
	if (arg7) {
		RTCC(arg7, 381, l_feature_name, 7, 606);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_hdc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_rect_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg5 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("background_brush_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg7 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCK;
		RTHOOK(4);
		RTCT("theme_exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(381, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_2);
		RTCK;
		RTJB;
label_2:
		RTCF;
	}
body:;
	RTHOOK(5);
	if ((EIF_BOOLEAN)(arg6 != NULL)) {
		RTHOOK(6);
		RTDBGAL(Current, 1, 0x40000000, 1, 0); /* loc1 */
		
		tp1 = *(EIF_POINTER *)(arg6 + RTVA(691, 32, "item", arg6));
		loc1 = (EIF_POINTER) tp1;
	}
	RTHOOK(7);
	up1 = arg1;
	tp1 = *(EIF_POINTER *)(arg2 + RTVA(723, 34, "item", arg2));
	up2 = tp1;
	ui4_1 = arg3;
	ui4_2 = arg4;
	tp2 = *(EIF_POINTER *)(arg5 + RTVA(691, 32, "item", arg5));
	up3 = tp2;
	up4 = loc1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(381, 75, dtype))(Current, up1x, up2x, ui4_1x, ui4_2x, up3x, up4x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef up4
#undef ui4_1
#undef ui4_2
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.get_notebook_parent */
EIF_TYPED_VALUE F382_7191 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "get_notebook_parent";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc2 = (EIF_BOOLEAN) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLR(3,Result);
	RTLR(4,Current);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_BOOL, &loc2);
	
	RTEAA(l_feature_name, 381, Current, 2, 1, 6896);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(381, Current, 6896);
	if (arg1) {
		RTCC(arg1, 381, l_feature_name, 1, 1164);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_widget_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 680, "background_color_imp", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 == NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF800048D, 0, 0); /* loc1 */
		
		loc1 = RTCCL(arg1);
		loc1 = RTRV(eif_non_attached_type(1165), loc1);
		RTHOOK(4);
		tb1 = '\01';
		if (!(EIF_BOOLEAN)(loc1 == NULL)) {
			tb2 = '\0';
			if ((EIF_BOOLEAN)(loc1 != NULL)) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1165, 783, "background_pixmap_imp", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				tb2 = (EIF_BOOLEAN)(tr1 == NULL);
			}
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(5);
			RTDBGAL(Current, 1, 0xF800048D, 0, 0); /* loc1 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 682, "parent_imp", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc1 = (EIF_REFERENCE) RTCCL(tr1);
			for (;;) {
				RTHOOK(6);
				if ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 == NULL) || (EIF_BOOLEAN)(Result != NULL)) || loc2)) break;
				RTHOOK(7);
				RTDBGAL(Current, 0, 0xF800049F, 0,0); /* Result */
				
				Result = RTCCL(loc1);
				Result = RTRV(eif_non_attached_type(1183), Result);
				RTHOOK(8);
				tb1 = '\0';
				if ((EIF_BOOLEAN)(Result == NULL)) {
					tb2 = '\01';
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1165, 707, "background_color_imp", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					if (!(EIF_BOOLEAN)(tr1 != NULL)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1165, 783, "background_pixmap_imp", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						tb2 = (EIF_BOOLEAN)(tr1 != NULL);
					}
					tb1 = tb2;
				}
				if (tb1) {
					RTHOOK(9);
					RTDBGAL(Current, 2, 0x04000000, 1, 0); /* loc2 */
					
					loc2 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
				}
				RTHOOK(10);
				RTDBGAL(Current, 1, 0xF800048D, 0, 0); /* loc1 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1165, 326, "parent_imp", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc1 = (EIF_REFERENCE) RTCCL(tr1);
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.draw_widget_background_gdip */
EIF_TYPED_VALUE F382_7192 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x)
{
	GTCX
	char *l_feature_name = "draw_widget_background_gdip";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_r
#define arg4 arg4x.it_r
#define arg5 arg5x.it_r
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
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(13);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,arg3);
	RTLR(3,arg4);
	RTLR(4,arg5);
	RTLR(5,loc1);
	RTLR(6,ur1);
	RTLR(7,Current);
	RTLR(8,loc2);
	RTLR(9,tr1);
	RTLR(10,loc7);
	RTLR(11,loc8);
	RTLR(12,ur2);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU(SK_REF,&arg4);
	RTLU(SK_REF,&arg5);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	
	RTEAA(l_feature_name, 381, Current, 8, 5, 6872);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(381, Current, 6872);
	if (arg1) {
		RTCC(arg1, 381, l_feature_name, 1, 1164);
	}
	if (arg2) {
		RTCC(arg2, 381, l_feature_name, 2, 723);
	}
	if (arg3) {
		RTCC(arg3, 381, l_feature_name, 3, 691);
	}
	if (arg4) {
		RTCC(arg4, 381, l_feature_name, 4, 620);
	}
	if (arg5) {
		RTCC(arg5, 381, l_feature_name, 5, 1020);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_widget_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_hdc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_rect_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg3 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("background_brush_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg4 != NULL), label_1);
		RTCK;
		RTHOOK(5);
		RTCT("a_background_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg5 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(6);
	RTDBGAL(Current, 1, 0xF800049F, 0, 0); /* loc1 */
	
	ur1 = RTCCL(arg1);
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(381, 60, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTRV(eif_non_attached_type(1183), loc1);
	RTHOOK(7);
	if ((EIF_BOOLEAN)(loc1 == NULL)) {
		RTHOOK(8);
		RTDBGAL(Current, 2, 0xF800048D, 0, 0); /* loc2 */
		
		loc2 = RTCCL(arg1);
		loc2 = RTRV(eif_non_attached_type(1165), loc2);
		RTHOOK(9);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1165, 783, "background_pixmap_imp", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		if (tb1) {
			RTHOOK(10);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 58, "x", arg3))(arg3)).it_i4);
			loc3 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(11);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 60, "y", arg3))(arg3)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(12);
			RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", arg3))(arg3)).it_i4);
			loc5 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(13);
			RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", arg3))(arg3)).it_i4);
			loc6 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(14);
			RTDBGAL(Current, 7, 0xF8000269, 0, 0); /* loc7 */
			
			tr1 = RTLN(617);
			ur1 = RTCCL(arg2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(617, 49, Dtype(tr1)))(tr1, ur1x);
			RTNHOOK(14,1);
			loc7 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(15);
			RTDBGAL(Current, 8, 0xF800004B, 0, 0); /* loc8 */
			
			tr1 = RTLN(75);
			ui4_1 = ((EIF_INTEGER_32) 255L);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 75, "red", arg5))(arg5)).it_i4);
			ui4_2 = ti4_1;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 76, "green", arg5))(arg5)).it_i4);
			ui4_3 = ti4_2;
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 77, "blue", arg5))(arg5)).it_i4);
			ui4_4 = ti4_3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(75, 32, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
			RTNHOOK(15,1);
			loc8 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(16);
			ur1 = RTCCL(loc8);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(617, 64, "clear", loc7))(loc7, ur1x);
			RTHOOK(17);
			ur1 = RTCCL(arg4);
			tr1 = RTLN(74);
			ui4_1 = loc3;
			ui4_2 = loc4;
			ui4_3 = loc5;
			ui4_4 = loc6;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(74, 33, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
			RTNHOOK(17,1);
			ur2 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(617, 60, "fill_rectangle", loc7))(loc7, ur1x, ur2x);
			RTHOOK(18);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(617, 71, "destroy_item", loc7))(loc7);
			RTHOOK(19);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(20);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef ur2
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.draw_widget_background */
void F382_7193 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "draw_widget_background";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_r
#define arg4 arg4x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ur3x = {0, SK_REF};
#define ur3 ur3x.it_r
	EIF_TYPED_VALUE ur4x = {0, SK_REF};
#define ur4 ur4x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_INTEGER_32 ti4_7;
	EIF_INTEGER_32 ti4_8;
	EIF_INTEGER_32 ti4_9;
	EIF_INTEGER_32 ti4_10;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(13);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,arg3);
	RTLR(3,arg4);
	RTLR(4,loc1);
	RTLR(5,ur1);
	RTLR(6,Current);
	RTLR(7,loc3);
	RTLR(8,ur2);
	RTLR(9,loc2);
	RTLR(10,tr1);
	RTLR(11,ur3);
	RTLR(12,ur4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU(SK_REF,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 381, Current, 3, 4, 6873);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(381, Current, 6873);
	if (arg1) {
		RTCC(arg1, 381, l_feature_name, 1, 1164);
	}
	if (arg2) {
		RTCC(arg2, 381, l_feature_name, 2, 723);
	}
	if (arg3) {
		RTCC(arg3, 381, l_feature_name, 3, 691);
	}
	if (arg4) {
		RTCC(arg4, 381, l_feature_name, 4, 606);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_widget_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_hdc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_rect_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg3 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("background_brush_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg4 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(5);
	RTDBGAL(Current, 1, 0xF800049F, 0, 0); /* loc1 */
	
	ur1 = RTCCL(arg1);
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(381, 60, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTRV(eif_non_attached_type(1183), loc1);
	RTHOOK(6);
	if ((EIF_BOOLEAN)(loc1 == NULL)) {
		RTHOOK(7);
		RTDBGAL(Current, 3, 0xF800048D, 0, 0); /* loc3 */
		
		loc3 = RTCCL(arg1);
		loc3 = RTRV(eif_non_attached_type(1165), loc3);
		RTHOOK(8);
		ur1 = RTCCL(arg3);
		ur2 = RTCCL(arg4);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 366, "fill_rect", arg2))(arg2, ur1x, ur2x);
	} else {
		RTHOOK(9);
		RTDBGAL(Current, 2, 0xF80002B3, 0, 0); /* loc2 */
		
		tr1 = RTLN(691);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1183, 868, "absolute_x", loc1))(loc1)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 733, "absolute_x", arg1))(arg1)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (ti4_1 - ti4_2);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1183, 867, "absolute_y", loc1))(loc1)).it_i4);
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 732, "absolute_y", arg1))(arg1)).it_i4);
		ui4_2 = (EIF_INTEGER_32) (ti4_3 - ti4_4);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1183, 305, "width", loc1))(loc1)).it_i4);
		ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1183, 868, "absolute_x", loc1))(loc1)).it_i4);
		ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 733, "absolute_x", arg1))(arg1)).it_i4);
		ui4_3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_5 + ti4_6) - ti4_7);
		ti4_8 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1183, 306, "height", loc1))(loc1)).it_i4);
		ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1183, 867, "absolute_y", loc1))(loc1)).it_i4);
		ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 732, "absolute_y", arg1))(arg1)).it_i4);
		ui4_4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_8 + ti4_9) - ti4_10);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(691, 52, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
		RTNHOOK(9,1);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(10);
		tp1 = *(EIF_POINTER *)(loc1 + RTVA(1183, 1857, "open_theme", loc1));
		up1 = tp1;
		ur1 = RTCCL(arg2);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(381, 44, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		ui4_2 = ((EIF_INTEGER_32) 0L);
		ur2 = RTCCL(loc2);
		ur3 = RTCCL(arg3);
		ur4 = RTCCL(arg4);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(381, 59, dtype))(Current, up1x, ur1x, ui4_1x, ui4_2x, ur2x, ur3x, ur4x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ur3
#undef ur4
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.draw_notebook_background */
void F382_7194 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "draw_notebook_background";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_r
#define arg4 arg4x.it_r
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,arg3);
	RTLR(3,arg4);
	RTLR(4,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU(SK_REF,&arg4);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 4, 6874);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(381, Current, 6874);
	if (arg1) {
		RTCC(arg1, 381, l_feature_name, 1, 1183);
	}
	if (arg2) {
		RTCC(arg2, 381, l_feature_name, 2, 723);
	}
	if (arg3) {
		RTCC(arg3, 381, l_feature_name, 3, 691);
	}
	if (arg4) {
		RTCC(arg4, 381, l_feature_name, 4, 606);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("notebook_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_hdc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_rect_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg3 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT(NULL, EX_PRE);
		RTTE((EIF_BOOLEAN)(arg4 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.draw_theme_parent_background */
void F382_7195 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "draw_theme_parent_background";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_r
#define arg3 arg3x.it_r
#define arg4 arg4x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,arg2);
	RTLR(1,arg3);
	RTLR(2,arg4);
	RTLR(3,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU(SK_REF,&arg4);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 4, 6875);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(381, Current, 6875);
	if (arg2) {
		RTCC(arg2, 381, l_feature_name, 2, 723);
	}
	if (arg3) {
		RTCC(arg3, 381, l_feature_name, 3, 691);
	}
	if (arg4) {
		RTCC(arg4, 381, l_feature_name, 4, 606);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("wel_item_exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(381, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_hdc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_rect_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg3 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	up1 = arg1;
	tp1 = *(EIF_POINTER *)(arg2 + RTVA(723, 34, "item", arg2));
	up2 = tp1;
	tp2 = *(EIF_POINTER *)(arg3 + RTVA(691, 32, "item", arg3));
	up3 = tp2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(381, 74, dtype))(Current, up1x, up2x, up3x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.draw_button_edge */
void F382_7196 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "draw_button_edge";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_r
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,arg3);
	RTLR(2,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 3, 6876);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(381, Current, 6876);
	if (arg1) {
		RTCC(arg1, 381, l_feature_name, 1, 723);
	}
	if (arg3) {
		RTCC(arg3, 381, l_feature_name, 3, 691);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("memory_dc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_rect_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg3 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.update_button_text_rect_for_state */
void F382_7197 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "update_button_text_rect_for_state";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_r
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,arg3);
	RTLR(1,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 3, 6877);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(381, Current, 6877);
	if (arg3) {
		RTCC(arg3, 381, l_feature_name, 3, 691);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_rect_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg3 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.update_button_pixmap_coordinates_for_state */
void F382_7198 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "update_button_pixmap_coordinates_for_state";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_r
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,arg3);
	RTLR(1,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 3, 6878);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(381, Current, 6878);
	if (arg3) {
		RTCC(arg3, 381, l_feature_name, 3, 564);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("coordinate_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg3 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.draw_text */
void F382_7199 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x, EIF_TYPED_VALUE arg9x)
{
	GTCX
	char *l_feature_name = "draw_text";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_r
#define arg6 arg6x.it_i4
#define arg7 arg7x.it_b
#define arg8 arg8x.it_r
#define arg9 arg9x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE up4x = {0, SK_POINTER};
#define up4 up4x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ur3x = {0, SK_REF};
#define ur3 ur3x.it_r
	EIF_TYPED_VALUE ur4x = {0, SK_REF};
#define ur4 ur4x.it_r
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_POINTER tp3;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_b = * (EIF_BOOLEAN *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_i4 = * (EIF_INTEGER_32 *) arg6x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(13);
	RTLR(0,arg2);
	RTLR(1,arg5);
	RTLR(2,arg8);
	RTLR(3,arg9);
	RTLR(4,loc1);
	RTLR(5,ur1);
	RTLR(6,Current);
	RTLR(7,tr1);
	RTLR(8,tr2);
	RTLR(9,tr3);
	RTLR(10,ur2);
	RTLR(11,ur3);
	RTLR(12,ur4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_REF,&arg5);
	RTLU(SK_INT32,&arg6);
	RTLU(SK_BOOL,&arg7);
	RTLU(SK_REF,&arg8);
	RTLU(SK_REF,&arg9);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 381, Current, 1, 9, 6879);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(381, Current, 6879);
	if (arg2) {
		RTCC(arg2, 381, l_feature_name, 2, 723);
	}
	if (arg5) {
		RTCC(arg5, 381, l_feature_name, 5, 780);
	}
	if (arg8) {
		RTCC(arg8, 381, l_feature_name, 8, 691);
	}
	if (arg9) {
		RTCC(arg9, 381, l_feature_name, 9, 1021);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_hdc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("text_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg5 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_content_rect_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg8 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("foreground_color_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg9 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(5);
	RTDBGAL(Current, 1, 0xF80001F7, 0, 0); /* loc1 */
	
	ur1 = RTCCL(arg5);
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(381, 71, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(6);
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1021, 35, "attached_interface", arg9))(arg9)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(6,1);
	tr2 = RTLN(83);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(83, 26, Dtype(tr2)))(tr2);
	RTNHOOK(6,2);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(83, 57, "default_foreground_color", tr2))(tr2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr3);
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(795, 71, "is_equal", tr1))(tr1, ur1x)).it_b);
	if (tb2) {
		tb1 = arg7;
	}
	if (tb1) {
		RTHOOK(7);
		up1 = arg1;
		tp1 = *(EIF_POINTER *)(arg2 + RTVA(723, 34, "item", arg2));
		up2 = tp1;
		ui4_1 = arg3;
		ui4_2 = arg4;
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc1))(loc1)).it_p);
		up3 = tp2;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 46, "count", arg5))(arg5)).it_i4);
		ui4_3 = ti4_1;
		ui4_4 = arg6;
		ui4_5 = ((EIF_INTEGER_32) 0L);
		tp3 = *(EIF_POINTER *)(arg8 + RTVA(691, 32, "item", arg8));
		up4 = tp3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(381, 76, dtype))(Current, up1x, up2x, ui4_1x, ui4_2x, up3x, ui4_3x, ui4_4x, ui4_5x, up4x);
	} else {
		RTHOOK(8);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(381, 70, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(8,1);
		up2 = arg1;
		ur1 = RTCCL(arg2);
		ui4_1 = arg3;
		ui4_2 = arg4;
		ur2 = RTCCL(arg5);
		ui4_3 = arg6;
		ub1 = arg7;
		ur3 = RTCCL(arg8);
		ur4 = RTCCL(arg9);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(716, 93, "draw_text", tr1))(tr1, up2x, ur1x, ui4_1x, ui4_2x, ur2x, ui4_3x, ub1x, ur3x, ur4x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(12);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef up4
#undef ur1
#undef ur2
#undef ur3
#undef ur4
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ub1
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

/* {EV_XP_THEME_DRAWER_IMP}.theme_color */
EIF_TYPED_VALUE F382_7200 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "theme_color";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(5);
	RTLR(0,Current);
	RTLR(1,loc2);
	RTLR(2,tr1);
	RTLR(3,loc1);
	RTLR(4,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_INT32, &loc3);
	
	RTEAA(l_feature_name, 381, Current, 3, 2, 6880);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(381, Current, 6880);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid", EX_PRE);
		ui4_1 = arg2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(381, 34, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (
		WDBG(381,"vision2_windows")
	) {
		RTHOOK(2);
		RTDBGAL(Current, 2, 0xF8000038, 0, 0); /* loc2 */
		
		tr1 = RTLN(56);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(56, 26, Dtype(tr1)))(tr1);
		RTNHOOK(2,1);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(56, 35, "reset_last_error_code", loc2))(loc2);
	}
	RTHOOK(4);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	up1 = arg1;
	ui4_1 = arg2;
	loc3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(381, 80, dtype))(Current, up1x, ui4_1x)).it_i4);
	if (
		WDBG(381,"vision2_windows")
	) {
		if (RTAL & CK_CHECK) {
			RTHOOK(5);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc2 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(6);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(56, 32, "last_error_code", loc2))(loc2)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 != ((EIF_INTEGER_32) 0L))) {
			RTHOOK(7);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(56, 33, "display_last_error", loc2))(loc2);
		}
	}
	RTHOOK(8);
	RTDBGAL(Current, 1, 0xF80003FC, 0, 0); /* loc1 */
	
	tr1 = RTLN(1020);
	ui4_1 = loc3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1020, 72, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(8,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(9);
	RTDBGAL(Current, 0, 0xF800031B, 0,0); /* Result */
	
	tr1 = RTLN(795);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 75, "red", loc1))(loc1)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 76, "green", loc1))(loc1)).it_i4);
	ui4_2 = ti4_2;
	ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 77, "blue", loc1))(loc1)).it_i4);
	ui4_3 = ti4_3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(795, 42, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x);
	RTNHOOK(9,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(10);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.classic_drawer */
RTOID (F382_7201)
EIF_TYPED_VALUE F382_7201 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "classic_drawer";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F382_7201);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 0, 6881);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(381, Current, 6881);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80002CC, 0,0); /* Result */
	
	tr1 = RTLN(716);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(716, 26, Dtype(tr1)))(tr1);
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

/* {EV_XP_THEME_DRAWER_IMP}.unicode_string */
EIF_TYPED_VALUE F382_7202 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "unicode_string";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,Result);
	RTLR(4,Current);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 1, 6882);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(381, Current, 6882);
	if (arg1) {
		RTCC(arg1, 381, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF80001F7, 0,0); /* Result */
	
	tr1 = RTLN(503);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
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
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.cwin_open_theme_data */
EIF_TYPED_VALUE F382_7203 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "cwin_open_theme_data";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 2, 6883);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(381, Current, 6883);
	RTIV(Current, RTAL);{
	static char done = 0;
		static EIF_POINTER fp = NULL;
		if (!done) {
			HMODULE a_result;
			a_result = eif_load_dll("uxtheme.dll");
			if (a_result == NULL) eraise("Cannot load library",EN_PROG);
			fp = (EIF_POINTER) GetProcAddress(a_result,"OpenThemeData");
			if (fp == NULL) eraise("Cannot find entry point of OpenThemeData",EN_PROG);
			done = (char) 1;
			}
		Result = (EIF_POINTER) ((FUNCTION_CAST_TYPE(EIF_POINTER,__stdcall, (HWND, LPCWSTR)) fp )((HWND) arg1, (LPCWSTR) arg2));
	}
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.cwin_close_theme_data */
void F382_7204 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "cwin_close_theme_data";
	RTEX;
#define arg1 arg1x.it_p
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 1, 6884);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(381, Current, 6884);
	RTIV(Current, RTAL);{
	static char done = 0;
		static EIF_POINTER fp = NULL;
		if (!done) {
			HMODULE a_result;
			a_result = eif_load_dll("uxtheme.dll");
			if (a_result == NULL) eraise("Cannot load library",EN_PROG);
			fp = (EIF_POINTER) GetProcAddress(a_result,"CloseThemeData");
			if (fp == NULL) eraise("Cannot find entry point of CloseThemeData",EN_PROG);
			done = (char) 1;
			}
		((FUNCTION_CAST_TYPE(void,__stdcall, (HWND)) fp )((HWND) arg1));
	}
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.cwin_draw_theme_parent_background */
void F382_7205 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "cwin_draw_theme_parent_background";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_p
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 3, 6885);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(381, Current, 6885);
	RTIV(Current, RTAL);{
	static char done = 0;
		static EIF_POINTER fp = NULL;
		if (!done) {
			HMODULE a_result;
			a_result = eif_load_dll("uxtheme.dll");
			if (a_result == NULL) eraise("Cannot load library",EN_PROG);
			fp = (EIF_POINTER) GetProcAddress(a_result,"DrawThemeParentBackground");
			if (fp == NULL) eraise("Cannot find entry point of DrawThemeParentBackground",EN_PROG);
			done = (char) 1;
			}
		((FUNCTION_CAST_TYPE(void,__stdcall, (HWND, HDC, RECT*)) fp )((HWND) arg1, (HDC) arg2, (RECT*) arg3));
	}
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(5);
	RTEE;
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.cwin_draw_theme_background */
void F382_7206 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x)
{
	GTCX
	char *l_feature_name = "cwin_draw_theme_background";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_p
#define arg6 arg6x.it_p
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_p = * (EIF_POINTER *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_p = * (EIF_POINTER *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_POINTER,&arg5);
	RTLU(SK_POINTER,&arg6);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 6, 6886);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(381, Current, 6886);
	RTIV(Current, RTAL);{
	static char done = 0;
		static EIF_POINTER fp = NULL;
		if (!done) {
			HMODULE a_result;
			a_result = eif_load_dll("uxtheme.dll");
			if (a_result == NULL) eraise("Cannot load library",EN_PROG);
			fp = (EIF_POINTER) GetProcAddress(a_result,"DrawThemeBackground");
			if (fp == NULL) eraise("Cannot find entry point of DrawThemeBackground",EN_PROG);
			done = (char) 1;
			}
		((FUNCTION_CAST_TYPE(void,__stdcall, (EIF_POINTER, HDC, int, int, RECT*, RECT*)) fp )((EIF_POINTER) arg1, (HDC) arg2, (int) arg3, (int) arg4, (RECT*) arg5, (RECT*) arg6));
	}
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(8);
	RTEE;
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.cwin_draw_theme_text */
void F382_7207 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x, EIF_TYPED_VALUE arg9x)
{
	GTCX
	char *l_feature_name = "cwin_draw_theme_text";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_p
#define arg6 arg6x.it_i4
#define arg7 arg7x.it_i4
#define arg8 arg8x.it_i4
#define arg9 arg9x.it_p
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg9x.type & SK_HEAD) == SK_REF) arg9x.it_p = * (EIF_POINTER *) arg9x.it_r;
	if ((arg8x.type & SK_HEAD) == SK_REF) arg8x.it_i4 = * (EIF_INTEGER_32 *) arg8x.it_r;
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_i4 = * (EIF_INTEGER_32 *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_i4 = * (EIF_INTEGER_32 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_p = * (EIF_POINTER *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_POINTER,&arg5);
	RTLU(SK_INT32,&arg6);
	RTLU(SK_INT32,&arg7);
	RTLU(SK_INT32,&arg8);
	RTLU(SK_POINTER,&arg9);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 9, 6887);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(381, Current, 6887);
	RTIV(Current, RTAL);{
	static char done = 0;
		static EIF_POINTER fp = NULL;
		if (!done) {
			HMODULE a_result;
			a_result = eif_load_dll("uxtheme.dll");
			if (a_result == NULL) eraise("Cannot load library",EN_PROG);
			fp = (EIF_POINTER) GetProcAddress(a_result,"DrawThemeText");
			if (fp == NULL) eraise("Cannot find entry point of DrawThemeText",EN_PROG);
			done = (char) 1;
			}
		((FUNCTION_CAST_TYPE(void,__stdcall, (EIF_POINTER, HDC, int, int, LPCWSTR, int, DWORD, DWORD, RECT*)) fp )((EIF_POINTER) arg1, (HDC) arg2, (int) arg3, (int) arg4, (LPCWSTR) arg5, (int) arg6, (DWORD) arg7, (DWORD) arg8, (RECT*) arg9));
	}
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(11);
	RTEE;
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

/* {EV_XP_THEME_DRAWER_IMP}.cwin_draw_theme_edge */
void F382_7208 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x)
{
	GTCX
	char *l_feature_name = "cwin_draw_theme_edge";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_p
#define arg6 arg6x.it_i4
#define arg7 arg7x.it_i4
#define arg8 arg8x.it_p
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg8x.type & SK_HEAD) == SK_REF) arg8x.it_p = * (EIF_POINTER *) arg8x.it_r;
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_i4 = * (EIF_INTEGER_32 *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_i4 = * (EIF_INTEGER_32 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_p = * (EIF_POINTER *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_POINTER,&arg5);
	RTLU(SK_INT32,&arg6);
	RTLU(SK_INT32,&arg7);
	RTLU(SK_POINTER,&arg8);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 8, 6888);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(381, Current, 6888);
	RTIV(Current, RTAL);{
	static char done = 0;
		static EIF_POINTER fp = NULL;
		if (!done) {
			HMODULE a_result;
			a_result = eif_load_dll("uxtheme.dll");
			if (a_result == NULL) eraise("Cannot load library",EN_PROG);
			fp = (EIF_POINTER) GetProcAddress(a_result,"DrawThemeEdge");
			if (fp == NULL) eraise("Cannot find entry point of DrawThemeEdge",EN_PROG);
			done = (char) 1;
			}
		((FUNCTION_CAST_TYPE(void,__stdcall, (EIF_POINTER, HDC, int, int, RECT*, UINT, UINT, RECT*)) fp )((EIF_POINTER) arg1, (HDC) arg2, (int) arg3, (int) arg4, (RECT*) arg5, (UINT) arg6, (UINT) arg7, (RECT*) arg8));
	}
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(10);
	RTEE;
#undef arg8
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_XP_THEME_DRAWER_IMP}.cwin_get_window_theme */
EIF_TYPED_VALUE F382_7209 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "cwin_get_window_theme";
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
	
	RTEAA(l_feature_name, 381, Current, 0, 1, 6889);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(381, Current, 6889);
	RTIV(Current, RTAL);{
	static char done = 0;
		static EIF_POINTER fp = NULL;
		if (!done) {
			HMODULE a_result;
			a_result = eif_load_dll("uxtheme.dll");
			if (a_result == NULL) eraise("Cannot load library",EN_PROG);
			fp = (EIF_POINTER) GetProcAddress(a_result,"GetWindowTheme");
			if (fp == NULL) eraise("Cannot find entry point of GetWindowTheme",EN_PROG);
			done = (char) 1;
			}
		Result = (EIF_POINTER) ((FUNCTION_CAST_TYPE(EIF_POINTER,__stdcall, (EIF_POINTER)) fp )((EIF_POINTER) arg1));
	}
	
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

/* {EV_XP_THEME_DRAWER_IMP}.cwin_dtt_grayed */
EIF_TYPED_VALUE F382_7210 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	return r;
}

/* {EV_XP_THEME_DRAWER_IMP}.cwin_get_theme_sys_color */
EIF_TYPED_VALUE F382_7211 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "cwin_get_theme_sys_color";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 381, Current, 0, 2, 6891);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(381, Current, 6891);
	RTIV(Current, RTAL);{
	static char done = 0;
		static EIF_POINTER fp = NULL;
		if (!done) {
			HMODULE a_result;
			a_result = eif_load_dll("uxtheme.dll");
			if (a_result == NULL) eraise("Cannot load library",EN_PROG);
			fp = (EIF_POINTER) GetProcAddress(a_result,"GetThemeSysColor");
			if (fp == NULL) eraise("Cannot find entry point of GetThemeSysColor",EN_PROG);
			done = (char) 1;
			}
		Result = (EIF_INTEGER_32) ((FUNCTION_CAST_TYPE(EIF_INTEGER_32,__stdcall, (EIF_POINTER, int)) fp )((EIF_POINTER) arg1, (int) arg2));
	}
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg2
#undef arg1
}

void EIF_Minit382 (void)
{
	GTCX
	RTOTS (7201,F382_7201)
}


#ifdef __cplusplus
}
#endif
