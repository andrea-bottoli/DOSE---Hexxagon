/*
 * Code for class EV_CHECKABLE_MENU_ITEM_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1092_19960(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1092_19962(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1092_19963(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1092_19964(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1092_19965(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit1092(void);

#ifdef __cplusplus
}
#endif

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

/* {EV_CHECKABLE_MENU_ITEM_IMP}.on_draw_menu_item_left_part */
void F1092_19960 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "on_draw_menu_item_left_part";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_BOOLEAN loc7 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc8 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc9 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ur3x = {0, SK_REF};
#define ur3 ur3x.it_r
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
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(10);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,loc2);
	RTLR(4,Current);
	RTLR(5,loc10);
	RTLR(6,ur1);
	RTLR(7,ur2);
	RTLR(8,ur3);
	RTLR(9,loc11);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_BOOL, &loc7);
	RTLU(SK_BOOL, &loc8);
	RTLU(SK_BOOL, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	
	RTEAA(l_feature_name, 1091, Current, 11, 1, 23987);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1091, Current, 23987);
	if (arg1) {
		RTCC(arg1, 1091, l_feature_name, 1, 1097);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80002D8, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1097, 167, "dc", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF80002B3, 0, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1097, 168, "rect_item", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1097, 164, "item_state", arg1))(arg1)).it_i4);
	loc3 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", loc2))(loc2)).it_i4);
	loc4 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(5);
	RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", loc2))(loc2)).it_i4);
	loc5 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(6);
	RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 62, "bottom", loc2))(loc2)).it_i4);
	loc6 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(7);
	RTDBGAL(Current, 7, 0x04000000, 1, 0); /* loc7 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(7,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(303, 42, "ods_selected", tr1))(tr1)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_bit_and(loc3,ui4_1);
	loc7 = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 != ((EIF_INTEGER_32) 0L));
	RTHOOK(8);
	RTDBGAL(Current, 8, 0x04000000, 1, 0); /* loc8 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(8,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(303, 35, "ods_disabled", tr1))(tr1)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_bit_and(loc3,ui4_1);
	loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 != ((EIF_INTEGER_32) 0L));
	RTHOOK(9);
	RTDBGAL(Current, 9, 0x04000000, 1, 0); /* loc9 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(9,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(303, 32, "ods_checked", tr1))(tr1)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_bit_and(loc3,ui4_1);
	loc9 = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 != ((EIF_INTEGER_32) 0L));
	RTHOOK(10);
	RTDBGAL(Current, 10, 0xF80002B3, 0, 0); /* loc10 */
	
	tr1 = RTLN(691);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 0L);
	ui4_3 = ((EIF_INTEGER_32) 0L);
	ui4_4 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(691, 52, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTNHOOK(10,1);
	loc10 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(11);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 130, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		RTHOOK(12);
		if (loc7) {
			RTHOOK(13);
			ui4_1 = loc4;
			ui4_2 = loc5;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 135, dtype))(Current)).it_i4);
			ui4_3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc4 + ti4_1) - ((EIF_INTEGER_32) 2L));
			ui4_4 = loc6;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(691, 65, "set_rect", loc10))(loc10, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
			RTHOOK(14);
			ur1 = RTCCL(loc1);
			ur2 = RTCCL(loc10);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 65, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur3 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1091, 140, dtype))(Current, ur1x, ur2x, ur3x);
			RTHOOK(15);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 135, dtype))(Current)).it_i4);
			ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc4 + ti4_1) - ((EIF_INTEGER_32) 2L));
			ui4_2 = loc5;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 135, dtype))(Current)).it_i4);
			ui4_3 = (EIF_INTEGER_32) (loc4 + ti4_2);
			ui4_4 = loc6;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(691, 65, "set_rect", loc10))(loc10, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
			RTHOOK(16);
			ur1 = RTCCL(loc1);
			ur2 = RTCCL(loc10);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 65, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur3 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1091, 140, dtype))(Current, ur1x, ur2x, ur3x);
		} else {
			RTHOOK(17);
			ui4_1 = loc4;
			ui4_2 = loc5;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 135, dtype))(Current)).it_i4);
			ui4_3 = (EIF_INTEGER_32) (loc4 + ti4_1);
			ui4_4 = loc6;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(691, 65, "set_rect", loc10))(loc10, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
			RTHOOK(18);
			ur1 = RTCCL(loc1);
			ur2 = RTCCL(loc10);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur3 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1091, 140, dtype))(Current, ur1x, ur2x, ur3x);
		}
		RTHOOK(19);
		ur1 = RTCCL(loc1);
		ur2 = RTCCL(loc2);
		ub1 = loc9;
		ub2 = loc7;
		ub3 = loc8;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1091, 137, dtype))(Current, ur1x, ur2x, ub1x, ub2x, ub3x);
	} else {
		RTHOOK(20);
		ui4_1 = loc4;
		ui4_2 = loc5;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 135, dtype))(Current)).it_i4);
		ui4_3 = (EIF_INTEGER_32) (loc4 + ti4_1);
		ui4_4 = loc6;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(691, 65, "set_rect", loc10))(loc10, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
		RTHOOK(21);
		if (loc7) {
			RTHOOK(22);
			RTDBGAL(Current, 11, 0xF80003FC, 0, 0); /* loc11 */
			
			loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 65, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		} else {
			RTHOOK(23);
			RTDBGAL(Current, 11, 0xF80003FC, 0, 0); /* loc11 */
			
			loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		}
		RTHOOK(24);
		ur1 = RTCCL(loc1);
		ur2 = RTCCL(loc10);
		ur3 = RTCCL(loc11);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1091, 140, dtype))(Current, ur1x, ur2x, ur3x);
		RTHOOK(25);
		if (loc9) {
			RTHOOK(26);
			ur1 = RTCCL(loc1);
			ur2 = RTCCL(loc10);
			ub1 = loc7;
			ub2 = loc8;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1091, 136, dtype))(Current, ur1x, ur2x, ub1x, ub2x);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(27);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(14);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ur3
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ub1
#undef ub2
#undef ub3
#undef arg1
}

/* {EV_CHECKABLE_MENU_ITEM_IMP}.draw_check_mark */
void F1092_19962 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "draw_check_mark";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_b = * (EIF_BOOLEAN *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_b = * (EIF_BOOLEAN *) arg3x.it_r;
	
	RTLI(12);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc7);
	RTLR(3,Current);
	RTLR(4,tr1);
	RTLR(5,ur1);
	RTLR(6,loc3);
	RTLR(7,loc1);
	RTLR(8,loc2);
	RTLR(9,loc6);
	RTLR(10,tr2);
	RTLR(11,loc5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_BOOL,&arg3);
	RTLU(SK_BOOL,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	
	RTEAA(l_feature_name, 1091, Current, 7, 4, 23988);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1091, Current, 23988);
	if (arg1) {
		RTCC(arg1, 1091, l_feature_name, 1, 723);
	}
	if (arg2) {
		RTCC(arg2, 1091, l_feature_name, 2, 691);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 7, 0xF8000312, 0, 0); /* loc7 */
	
	loc7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 142, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(2);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc7 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(3);
	RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 42, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	ur1 = RTCCL(loc7);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1080, 154, "string_height", tr1))(tr1, ur1x)).it_i4);
	loc4 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAL(Current, 3, 0xF80002B3, 0, 0); /* loc3 */
	
	tr1 = RTLN(691);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 0L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", arg2))(arg2)).it_i4);
	ui4_3 = ti4_1;
	ui4_4 = loc4;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(691, 52, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTNHOOK(4,1);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAL(Current, 1, 0xF80002D4, 0, 0); /* loc1 */
	
	tr1 = RTLN(724);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(724, 477, Dtype(tr1)))(tr1);
	RTNHOOK(5,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAL(Current, 2, 0xF800025C, 0, 0); /* loc2 */
	
	tr1 = RTLN(604);
	ur1 = RTCCL(loc1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", arg2))(arg2)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", arg2))(arg2)).it_i4);
	ui4_2 = ti4_2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(604, 77, Dtype(tr1)))(tr1, ur1x, ui4_1x, ui4_2x);
	RTNHOOK(6,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	ur1 = RTCCL(loc2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc1))(loc1, ur1x);
	RTHOOK(8);
	ur1 = RTCCL(loc3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(8,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(187, 55, "dfc_menu", tr1))(tr1)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 141, dtype))(Current)).it_i4);
	ui4_2 = ti4_2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(724, 357, "draw_frame_control", loc1))(loc1, ur1x, ui4_1x, ui4_2x);
	RTHOOK(9);
	if (arg3) {
		RTHOOK(10);
		RTDBGAL(Current, 6, 0xF80003FC, 0, 0); /* loc6 */
		
		loc6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 65, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	} else {
		RTHOOK(11);
		RTDBGAL(Current, 6, 0xF80003FC, 0, 0); /* loc6 */
		
		loc6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	}
	RTHOOK(12);
	tb1 = '\0';
	if ((EIF_BOOLEAN) (arg4 && (EIF_BOOLEAN) !arg3)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(12,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 67, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		ur1 = RTCCL(tr2);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1020, 5, "is_equal", tr1))(tr1, ur1x)).it_b);
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(13);
		ur1 = RTCCL(loc6);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 320, "set_background_color", arg1))(arg1, ur1x);
		RTHOOK(14);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 74, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 321, "set_text_color", arg1))(arg1, ur1x);
		RTHOOK(15);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", arg2))(arg2)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (((EIF_INTEGER_32) 1L) + ti4_1);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", arg2))(arg2)).it_i4);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", arg2))(arg2)).it_i4);
		ui4_2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (((EIF_INTEGER_32) 1L) + ti4_2) + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_3 - loc4) / ((EIF_INTEGER_32) 2L)));
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", arg2))(arg2)).it_i4);
		ui4_3 = ti4_4;
		ui4_4 = loc4;
		ur1 = RTCCL(loc1);
		ui4_5 = ((EIF_INTEGER_32) 0L);
		ui4_6 = ((EIF_INTEGER_32) 0L);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(15,1);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(187, 127, "srccopy", tr1))(tr1)).it_i4);
		ui4_7 = ti4_5;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 379, "bit_blt", arg1))(arg1, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ur1x, ui4_5x, ui4_6x, ui4_7x);
		RTHOOK(16);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 321, "set_text_color", arg1))(arg1, ur1x);
		RTHOOK(17);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 112, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 320, "set_background_color", arg1))(arg1, ur1x);
		RTHOOK(18);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", arg2))(arg2)).it_i4);
		ui4_1 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", arg2))(arg2)).it_i4);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", arg2))(arg2)).it_i4);
		ui4_2 = (EIF_INTEGER_32) (ti4_2 + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_3 - loc4) / ((EIF_INTEGER_32) 2L)));
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", arg2))(arg2)).it_i4);
		ui4_3 = ti4_4;
		ui4_4 = loc4;
		ur1 = RTCCL(loc1);
		ui4_5 = ((EIF_INTEGER_32) 0L);
		ui4_6 = ((EIF_INTEGER_32) 0L);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(18,1);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(187, 129, "srcand", tr1))(tr1)).it_i4);
		ui4_7 = ti4_5;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 379, "bit_blt", arg1))(arg1, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ur1x, ui4_5x, ui4_6x, ui4_7x);
		RTHOOK(19);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 321, "set_text_color", arg1))(arg1, ur1x);
		RTHOOK(20);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 320, "set_background_color", arg1))(arg1, ur1x);
		RTHOOK(21);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", arg2))(arg2)).it_i4);
		ui4_1 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", arg2))(arg2)).it_i4);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", arg2))(arg2)).it_i4);
		ui4_2 = (EIF_INTEGER_32) (ti4_2 + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_3 - loc4) / ((EIF_INTEGER_32) 2L)));
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", arg2))(arg2)).it_i4);
		ui4_3 = ti4_4;
		ui4_4 = loc4;
		ur1 = RTCCL(loc1);
		ui4_5 = ((EIF_INTEGER_32) 0L);
		ui4_6 = ((EIF_INTEGER_32) 0L);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(21,1);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(187, 128, "srcpaint", tr1))(tr1)).it_i4);
		ui4_7 = ti4_5;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 379, "bit_blt", arg1))(arg1, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ur1x, ui4_5x, ui4_6x, ui4_7x);
	} else {
		RTHOOK(22);
		if (arg4) {
			RTHOOK(23);
			RTDBGAL(Current, 5, 0xF80003FC, 0, 0); /* loc5 */
			
			loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTHOOK(24);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 65, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr1);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1020, 5, "is_equal", loc5))(loc5, ur1x)).it_b);
			if (tb1) {
				RTHOOK(25);
				RTDBGAL(Current, 5, 0xF80003FC, 0, 0); /* loc5 */
				
				loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 74, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			}
		} else {
			RTHOOK(26);
			if (arg3) {
				RTHOOK(27);
				RTDBGAL(Current, 5, 0xF80003FC, 0, 0); /* loc5 */
				
				loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 66, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			} else {
				RTHOOK(28);
				RTDBGAL(Current, 5, 0xF80003FC, 0, 0); /* loc5 */
				
				loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 59, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			}
		}
		RTHOOK(29);
		ur1 = RTCCL(loc6);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 320, "set_background_color", arg1))(arg1, ur1x);
		RTHOOK(30);
		ur1 = RTCCL(loc5);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 321, "set_text_color", arg1))(arg1, ur1x);
		RTHOOK(31);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", arg2))(arg2)).it_i4);
		ui4_1 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", arg2))(arg2)).it_i4);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", arg2))(arg2)).it_i4);
		ui4_2 = (EIF_INTEGER_32) (ti4_2 + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_3 - loc4) / ((EIF_INTEGER_32) 2L)));
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", arg2))(arg2)).it_i4);
		ui4_3 = ti4_4;
		ui4_4 = loc4;
		ur1 = RTCCL(loc1);
		ui4_5 = ((EIF_INTEGER_32) 0L);
		ui4_6 = ((EIF_INTEGER_32) 0L);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(31,1);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(187, 127, "srccopy", tr1))(tr1)).it_i4);
		ui4_7 = ti4_5;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 379, "bit_blt", arg1))(arg1, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ur1x, ui4_5x, ui4_6x, ui4_7x);
	}
	RTHOOK(32);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc1))(loc1);
	RTHOOK(33);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc1))(loc1);
	RTHOOK(34);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 51, "delete", loc2))(loc2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(35);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(13);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ui4_6
#undef ui4_7
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_CHECKABLE_MENU_ITEM_IMP}.draw_pixmap */
void F1092_19963 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x)
{
	GTCX
	char *l_feature_name = "draw_pixmap";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_b
#define arg4 arg4x.it_b
#define arg5 arg5x.it_b
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_REFERENCE tr6 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_INTEGER_32 ti4_7;
	EIF_INTEGER_32 ti4_8;
	EIF_INTEGER_32 ti4_9;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_b = * (EIF_BOOLEAN *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_b = * (EIF_BOOLEAN *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_b = * (EIF_BOOLEAN *) arg3x.it_r;
	
	RTLI(19);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,tr4);
	RTLR(6,loc5);
	RTLR(7,tr5);
	RTLR(8,Current);
	RTLR(9,loc6);
	RTLR(10,tr6);
	RTLR(11,ur1);
	RTLR(12,loc8);
	RTLR(13,loc1);
	RTLR(14,loc9);
	RTLR(15,loc7);
	RTLR(16,ur2);
	RTLR(17,ur3);
	RTLR(18,ur4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_BOOL,&arg3);
	RTLU(SK_BOOL,&arg4);
	RTLU(SK_BOOL,&arg5);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	
	RTEAA(l_feature_name, 1091, Current, 9, 5, 23989);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1091, Current, 23989);
	if (arg1) {
		RTCC(arg1, 1091, l_feature_name, 1, 723);
	}
	if (arg2) {
		RTCC(arg2, 1091, l_feature_name, 2, 691);
	}
	RTIV(Current, RTAL);
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", arg2))(arg2)).it_i4);
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", arg2))(arg2)).it_i4);
		ti4_2 = ti4_3;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		RTE_OT
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 61, "right", arg2))(arg2)).it_i4);
		ti4_3 = ti4_4;
		tr3 = NULL;
		RTE_O
		tr3 = RTLA;
		RTE_OE
		RTE_OT
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 62, "bottom", arg2))(arg2)).it_i4);
		ti4_4 = ti4_5;
		tr4 = NULL;
		RTE_O
		tr4 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(1);
	RTDBGAL(Current, 5, 0xF80002B3, 0, 0); /* loc5 */
	
	tr5 = RTLN(691);
	ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", arg2))(arg2)).it_i4);
	ui4_1 = ti4_5;
	ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", arg2))(arg2)).it_i4);
	ui4_2 = ti4_6;
	ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", arg2))(arg2)).it_i4);
	ti4_8 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 135, dtype))(Current)).it_i4);
	ui4_3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_7 + ti4_8) - ((EIF_INTEGER_32) 2L));
	ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 62, "bottom", arg2))(arg2)).it_i4);
	ui4_4 = ti4_9;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(691, 52, Dtype(tr5)))(tr5, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTNHOOK(1,1);
	loc5 = (EIF_REFERENCE) RTCCL(tr5);
	RTHOOK(2);
	if (arg3) {
		RTHOOK(3);
		RTDBGAL(Current, 6, 0xF80003FC, 0, 0); /* loc6 */
		
		tr5 = RTLN(1020);
		tr6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr6);
		tr6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1091, 139, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ti4_5 = *(EIF_INTEGER_32 *)(tr6 + RTVA(1020, 74, "item", tr6));
		ui4_1 = ti4_5;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1020, 72, Dtype(tr5)))(tr5, ui4_1x);
		RTNHOOK(3,2);
		loc6 = (EIF_REFERENCE) RTCCL(tr5);
		RTHOOK(4);
		ur1 = RTCCL(loc5);
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(187, 91, "bdr_sunkenouter", tr5))(tr5)).it_i4);
		ui4_1 = ti4_5;
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,2);
		ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(187, 109, "bf_rect", tr5))(tr5)).it_i4);
		ui4_2 = ti4_6;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 358, "draw_edge", arg1))(arg1, ur1x, ui4_1x, ui4_2x);
	} else {
		RTHOOK(5);
		if ((EIF_BOOLEAN) (arg4 && (EIF_BOOLEAN) !arg5)) {
			RTHOOK(6);
			RTDBGAL(Current, 6, 0xF80003FC, 0, 0); /* loc6 */
			
			tr5 = RTLN(1020);
			tr6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 65, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr6);
			tr6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1091, 139, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(6,1);
			ti4_5 = *(EIF_INTEGER_32 *)(tr6 + RTVA(1020, 74, "item", tr6));
			ui4_1 = ti4_5;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1020, 72, Dtype(tr5)))(tr5, ui4_1x);
			RTNHOOK(6,2);
			loc6 = (EIF_REFERENCE) RTCCL(tr5);
		}
	}
	RTHOOK(7);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(691, 39, "dispose", loc5))(loc5);
	RTHOOK(8);
	RTDBGAL(Current, 8, 0xF80003FE, 0, 0); /* loc8 */
	
	loc8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 130, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(9);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc8 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(10);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", arg2))(arg2)).it_i4);
	ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 62, "bottom", arg2))(arg2)).it_i4);
	ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 159, "height", loc8))(loc8)).it_i4);
	loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) ((EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_5 + ti4_6) - ti4_7) - ((EIF_INTEGER_32) 2L)) / ((EIF_INTEGER_32) 2L));
	RTHOOK(11);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", arg2))(arg2)).it_i4);
	loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (((EIF_INTEGER_32) 1L) + ti4_5);
	RTHOOK(12);
	if (arg3) {
		RTHOOK(13);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2++;
		RTHOOK(14);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3++;
	}
	RTHOOK(15);
	if (arg5) {
		RTHOOK(16);
		RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
		
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(16,1);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(187, 120, "dss_disabled", tr5))(tr5)).it_i4);
		loc4 = (EIF_INTEGER_32) ti4_5;
	} else {
		RTHOOK(17);
		RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
		
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(17,1);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(187, 123, "dss_normal", tr5))(tr5)).it_i4);
		loc4 = (EIF_INTEGER_32) ti4_5;
	}
	RTHOOK(18);
	RTDBGAL(Current, 1, 0xF8000261, 0, 0); /* loc1 */
	
	ur1 = RTCCL(loc8);
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1091, 144, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(19);
	tb1 = '\0';
	if (arg5) {
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 138, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc9 = RTCCL(tr5);
		tb1 = EIF_TEST(loc9);
	}
	if (tb1) {
		RTHOOK(20);
		if (arg4) {
			RTHOOK(21);
			RTDBGAL(Current, 6, 0xF80003FC, 0, 0); /* loc6 */
			
			tr5 = RTLN(1020);
			tr6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 65, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr6);
			tr6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1091, 139, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(21,1);
			ti4_5 = *(EIF_INTEGER_32 *)(tr6 + RTVA(1020, 74, "item", tr6));
			ui4_1 = ti4_5;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1020, 72, Dtype(tr5)))(tr5, ui4_1x);
			RTNHOOK(21,2);
			loc6 = (EIF_REFERENCE) RTCCL(tr5);
		} else {
			RTHOOK(22);
			RTDBGAL(Current, 6, 0xF80003FC, 0, 0); /* loc6 */
			
			tr5 = RTLN(1020);
			tr6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1091, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr6);
			tr6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1091, 139, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(22,1);
			ti4_5 = *(EIF_INTEGER_32 *)(tr6 + RTVA(1020, 74, "item", tr6));
			ui4_1 = ti4_5;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1020, 72, Dtype(tr5)))(tr5, ui4_1x);
			RTNHOOK(22,2);
			loc6 = (EIF_REFERENCE) RTCCL(tr5);
		}
		RTHOOK(23);
		RTDBGAL(Current, 7, 0xF800025C, 0, 0); /* loc7 */
		
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 144, "get_bitmap", loc8))(loc8)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc7 = (EIF_REFERENCE) RTCCL(tr5);
		RTHOOK(24);
		ur1 = RTCCL(loc7);
		ur2 = RTCCL(loc1);
		ur3 = RTCCL(arg1);
		ui4_1 = loc3;
		ui4_2 = loc2;
		ur4 = RTCCL(loc6);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 148, "has_mask", loc8))(loc8)).it_b);
		ub1 = tb1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(29, 33, "draw_grayscale_bitmap_or_icon_with_memory_buffer", loc9))(loc9, ur1x, ur2x, ur3x, ui4_1x, ui4_2x, ur4x, ub1x);
		RTHOOK(25);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc7))(loc7);
	} else {
		RTHOOK(26);
		ur1 = NULL;
		ur2 = RTCCL(loc1);
		ui4_1 = loc3;
		ui4_2 = loc2;
		ui4_3 = loc4;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 352, "draw_state_icon", arg1))(arg1, ur1x, ur2x, ui4_1x, ui4_2x, ui4_3x);
	}
	RTHOOK(27);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(609, 53, "decrement_reference", loc1))(loc1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(28);
		RTCT("rect_ok", EX_POST);
		tb1 = '\0';
		tb2 = '\0';
		tb3 = '\0';
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", arg2))(arg2)).it_i4);
		RTCO(tr1);
		if ((EIF_BOOLEAN)(ti4_5 == ti4_1)) {
			ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", arg2))(arg2)).it_i4);
			RTCO(tr2);
			tb3 = (EIF_BOOLEAN)(ti4_5 == ti4_2);
		}
		if (tb3) {
			ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 61, "right", arg2))(arg2)).it_i4);
			RTCO(tr3);
			tb2 = (EIF_BOOLEAN)(ti4_5 == ti4_3);
		}
		if (tb2) {
			ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 62, "bottom", arg2))(arg2)).it_i4);
			RTCO(tr4);
			tb1 = (EIF_BOOLEAN)(ti4_5 == ti4_4);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(29);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(16);
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
#undef ub1
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_CHECKABLE_MENU_ITEM_IMP}.disabled_image */
RTOID (F1092_19964)
EIF_TYPED_VALUE F1092_19964 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disabled_image";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1092_19964);

	RTLI(3);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1091, Current, 1, 0, 23985);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1091, Current, 23985);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF800002D, 0, 0); /* loc1 */
	
	tr1 = RTLN(45);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(45, 26, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(45, 36, "is_gdi_plus_installed", loc1))(loc1)).it_b);
	if (tb1) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0xF800001D, 0,0); /* Result */
		
		tr1 = RTLN(29);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(29, 26, Dtype(tr1)))(tr1);
		RTNHOOK(3,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef Result
}

/* {EV_CHECKABLE_MENU_ITEM_IMP}.contrast_color */
EIF_TYPED_VALUE F1092_19965 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "contrast_color";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLR(3,Current);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1091, Current, 0, 1, 23986);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1091, Current, 23986);
	if (arg1) {
		RTCC(arg1, 1091, l_feature_name, 1, 1020);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_color_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF80003FC, 0,0); /* Result */
	
	tr1 = RTLN(1020);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1020, 69, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 75, "red", arg1))(arg1)).it_i4);
	if ((EIF_BOOLEAN) (ti4_1 < ((EIF_INTEGER_32) 220L))) {
		RTHOOK(4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 75, "red", arg1))(arg1)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 20L));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1020, 80, "set_red", Result))(Result, ui4_1x);
	} else {
		RTHOOK(5);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 75, "red", arg1))(arg1)).it_i4);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ti4_2 = eif_max_int32 ((EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 20L)),ui4_1);
		ui4_1 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1020, 80, "set_red", Result))(Result, ui4_1x);
	}
	RTHOOK(6);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 76, "green", arg1))(arg1)).it_i4);
	if ((EIF_BOOLEAN) (ti4_1 < ((EIF_INTEGER_32) 220L))) {
		RTHOOK(7);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 76, "green", arg1))(arg1)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 20L));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1020, 81, "set_green", Result))(Result, ui4_1x);
	} else {
		RTHOOK(8);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 76, "green", arg1))(arg1)).it_i4);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ti4_2 = eif_max_int32 ((EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 20L)),ui4_1);
		ui4_1 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1020, 81, "set_green", Result))(Result, ui4_1x);
	}
	RTHOOK(9);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 77, "blue", arg1))(arg1)).it_i4);
	if ((EIF_BOOLEAN) (ti4_1 < ((EIF_INTEGER_32) 220L))) {
		RTHOOK(10);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 77, "blue", arg1))(arg1)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 20L));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1020, 82, "set_blue", Result))(Result, ui4_1x);
	} else {
		RTHOOK(11);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 77, "blue", arg1))(arg1)).it_i4);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ti4_2 = eif_max_int32 ((EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 20L)),ui4_1);
		ui4_1 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1020, 82, "set_blue", Result))(Result, ui4_1x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(12);
		RTCT("contrast_color_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(13);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ui4_1
#undef arg1
}

void EIF_Minit1092 (void)
{
	GTCX
	RTOTS (19964,F1092_19964)
}


#ifdef __cplusplus
}
#endif
