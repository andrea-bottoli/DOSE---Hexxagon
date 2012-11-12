/*
 * Code for class EV_PIXMAP_IMP_STATE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1023_18309(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1023_18311(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1023_18312(EIF_REFERENCE);
extern void F1023_18313(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1023_18314(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1023_18315(EIF_REFERENCE);
extern void F1023_18316(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1023_18319(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1023_18320(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1023_18321(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1023_18322(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1023_18323(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1023_18324(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1023_18325(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
static EIF_TYPED_VALUE F1023_18326_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1023_18326(EIF_REFERENCE);
extern void EIF_Minit1023(void);

#ifdef __cplusplus
}
#endif

#include <windows.h>
#include "load_pixmap.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {EV_PIXMAP_IMP_STATE}.save_to_named_file */
void F1023_18309 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "save_to_named_file";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc8 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_POINTER loc11 = (EIF_POINTER) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
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
	EIF_TYPED_VALUE ui4_5x = {0, SK_INT32};
#define ui4_5 ui4_5x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(15);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc1);
	RTLR(3,loc2);
	RTLR(4,loc9);
	RTLR(5,Current);
	RTLR(6,loc3);
	RTLR(7,tr1);
	RTLR(8,loc4);
	RTLR(9,ur1);
	RTLR(10,ur2);
	RTLR(11,loc5);
	RTLR(12,loc10);
	RTLR(13,loc6);
	RTLR(14,ur3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_INT32, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_POINTER, &loc11);
	
	RTEAA(l_feature_name, 1022, Current, 11, 2, 21724);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1022, Current, 21724);
	if (arg1) {
		RTCC(arg1, 1022, l_feature_name, 1, 348);
	}
	if (arg2) {
		RTCC(arg2, 1022, l_feature_name, 2, 792);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_format_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_filename_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_filename_valid", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(792, 261, "is_valid", arg2))(arg2)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF800015D, 0, 0); /* loc1 */
	
	loc1 = RTCCL(arg1);
	loc1 = RTRV(eif_non_attached_type(349), loc1);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0xF800015E, 0, 0); /* loc2 */
	
	loc2 = RTCCL(arg1);
	loc2 = RTRV(eif_non_attached_type(350), loc2);
	RTHOOK(6);
	RTDBGAL(Current, 9, 0xF80001EA, 0, 0); /* loc9 */
	
	loc9 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 153, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(7);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(8);
		RTDBGAL(Current, 3, 0xF80002D4, 0, 0); /* loc3 */
		
		tr1 = RTLN(724);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(724, 477, Dtype(tr1)))(tr1);
		RTNHOOK(8,1);
		loc3 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(9);
		RTDBGAL(Current, 4, 0xF800025C, 0, 0); /* loc4 */
		
		loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 144, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(10);
		ur1 = RTCCL(loc4);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc3))(loc3, ur1x);
		RTHOOK(11);
		ur1 = RTCCL(loc4);
		ur2 = RTCCL(arg2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(724, 384, "save_bitmap", loc3))(loc3, ur1x, ur2x);
		RTHOOK(12);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc3))(loc3);
		RTHOOK(13);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc3))(loc3);
		RTHOOK(14);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc4))(loc4);
	} else {
		RTHOOK(15);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTHOOK(16);
			RTDBGAL(Current, 5, 0xF80001F8, 0, 0); /* loc5 */
			
			tr1 = RTLN(504);
			ur1 = RTCCL(arg2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(504, 32, Dtype(tr1)))(tr1, ur1x);
			RTNHOOK(16,1);
			loc5 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(17);
			ti4_1 = *(EIF_INTEGER_32 *)(loc2 + RTVA(350, 33, "scale_height", loc2));
			if ((EIF_BOOLEAN)(ti4_1 != ((EIF_INTEGER_32) 0L))) {
				RTHOOK(18);
				RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
				
				ti4_1 = *(EIF_INTEGER_32 *)(loc2 + RTVA(350, 33, "scale_height", loc2));
				loc8 = (EIF_INTEGER_32) ti4_1;
			} else {
				RTHOOK(19);
				RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
				
				ti4_1 = *(EIF_INTEGER_32 *)(loc9 + RTVA(490, 111, "height", loc9));
				loc8 = (EIF_INTEGER_32) ti4_1;
			}
			RTHOOK(20);
			ti4_1 = *(EIF_INTEGER_32 *)(loc2 + RTVA(350, 32, "scale_width", loc2));
			if ((EIF_BOOLEAN)(ti4_1 != ((EIF_INTEGER_32) 0L))) {
				RTHOOK(21);
				RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
				
				ti4_1 = *(EIF_INTEGER_32 *)(loc2 + RTVA(350, 32, "scale_width", loc2));
				loc7 = (EIF_INTEGER_32) ti4_1;
			} else {
				RTHOOK(22);
				RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
				
				ti4_1 = *(EIF_INTEGER_32 *)(loc9 + RTVA(490, 112, "width", loc9));
				loc7 = (EIF_INTEGER_32) ti4_1;
			}
			RTHOOK(23);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(456, 34, 456))(Current)).it_b);
			if (tb1) {
				RTHOOK(24);
				RTDBGAL(Current, 10, 0xF800023B, 0, 0); /* loc10 */
				
				tr1 = RTLN(571);
				ur1 = RTCCL(loc9);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(571, 82, Dtype(tr1)))(tr1, ur1x);
				RTNHOOK(24,1);
				loc10 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(25);
				RTDBGAL(Current, 11, 0x40000000, 1, 0); /* loc11 */
				
				tp1 = *(EIF_POINTER *)(loc10 + RTVA(571, 87, "item", loc10));
				loc11 = (EIF_POINTER) tp1;
			} else {
				RTHOOK(26);
				RTDBGAL(Current, 6, 0xF8000000, 0, 0); /* loc6 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(490, 93, "to_c", loc9))(loc9)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc6 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(27);
				RTDBGAL(Current, 11, 0x40000000, 1, 0); /* loc11 */
				
				loc11 = (EIF_POINTER) loc6;
			}
			RTHOOK(28);
			up1 = loc11;
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(504, 51, "item", loc5))(loc5)).it_p);
			up2 = tp1;
			ti4_1 = *(EIF_INTEGER_32 *)(loc9 + RTVA(490, 112, "width", loc9));
			ui4_1 = ti4_1;
			ti4_2 = *(EIF_INTEGER_32 *)(loc9 + RTVA(490, 111, "height", loc9));
			ui4_2 = ti4_2;
			ui4_3 = loc7;
			ui4_4 = loc8;
			ti4_3 = *(EIF_INTEGER_32 *)(loc2 + RTVA(350, 34, "color_mode", loc2));
			ui4_5 = ti4_3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1022, 166, dtype))(Current, up1x, up2x, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ui4_5x);
		}
	}
	RTHOOK(29);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	ur3 = RTCCL(loc9);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1022, 151, dtype))(Current, ur1x, ur2x, ur3x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(30);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ur3
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef arg2
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.copy_events_from_other */
void F1023_18311 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "copy_events_from_other";
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
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(20);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,Current);
	RTLR(4,loc2);
	RTLR(5,loc3);
	RTLR(6,loc4);
	RTLR(7,loc5);
	RTLR(8,loc6);
	RTLR(9,loc7);
	RTLR(10,loc8);
	RTLR(11,loc9);
	RTLR(12,loc10);
	RTLR(13,loc11);
	RTLR(14,loc12);
	RTLR(15,loc13);
	RTLR(16,loc14);
	RTLR(17,loc15);
	RTLR(18,loc16);
	RTLR(19,loc17);
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
	
	RTEAA(l_feature_name, 1022, Current, 17, 1, 21725);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1022, Current, 21725);
	if (arg1) {
		RTCC(arg1, 1022, l_feature_name, 1, 1022);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 86, "expose_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	if (EIF_TEST(loc1)) {
		RTHOOK(2);
		RTDBGAA(Current, dtype, 1022, 86, 0xF8000217, 0); /* expose_actions_internal */
		
		RTAR(Current, loc1);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 86, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
	}
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 55, "focus_in_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = RTCCL(tr1);
	if (EIF_TEST(loc2)) {
		RTHOOK(4);
		RTDBGAA(Current, dtype, 1022, 55, 0xF800021A, 0); /* focus_in_actions_internal */
		
		RTAR(Current, loc2);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 55, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
	}
	RTHOOK(5);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 57, "focus_out_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = RTCCL(tr1);
	if (EIF_TEST(loc3)) {
		RTHOOK(6);
		RTDBGAA(Current, dtype, 1022, 57, 0xF800021A, 0); /* focus_out_actions_internal */
		
		RTAR(Current, loc3);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 57, dtype)) = (EIF_REFERENCE) RTCCL(loc3);
	}
	RTHOOK(7);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 49, "key_press_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc4 = RTCCL(tr1);
	if (EIF_TEST(loc4)) {
		RTHOOK(8);
		RTDBGAA(Current, dtype, 1022, 49, 0xF8000212, 0); /* key_press_actions_internal */
		
		RTAR(Current, loc4);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 49, dtype)) = (EIF_REFERENCE) RTCCL(loc4);
	}
	RTHOOK(9);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 51, "key_press_string_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc5 = RTCCL(tr1);
	if (EIF_TEST(loc5)) {
		RTHOOK(10);
		RTDBGAA(Current, dtype, 1022, 51, 0xF8000213, 0); /* key_press_string_actions_internal */
		
		RTAR(Current, loc5);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 51, dtype)) = (EIF_REFERENCE) RTCCL(loc5);
	}
	RTHOOK(11);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 53, "key_release_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc6 = RTCCL(tr1);
	if (EIF_TEST(loc6)) {
		RTHOOK(12);
		RTDBGAA(Current, dtype, 1022, 53, 0xF8000212, 0); /* key_release_actions_internal */
		
		RTAR(Current, loc6);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 53, dtype)) = (EIF_REFERENCE) RTCCL(loc6);
	}
	RTHOOK(13);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 37, "pointer_button_press_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc7 = RTCCL(tr1);
	if (EIF_TEST(loc7)) {
		RTHOOK(14);
		RTDBGAA(Current, dtype, 1022, 37, 0xF8000219, 0); /* pointer_button_press_actions_internal */
		
		RTAR(Current, loc7);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 37, dtype)) = (EIF_REFERENCE) RTCCL(loc7);
	}
	RTHOOK(15);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 41, "pointer_button_release_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc8 = RTCCL(tr1);
	if (EIF_TEST(loc8)) {
		RTHOOK(16);
		RTDBGAA(Current, dtype, 1022, 41, 0xF8000219, 0); /* pointer_button_release_actions_internal */
		
		RTAR(Current, loc8);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 41, dtype)) = (EIF_REFERENCE) RTCCL(loc8);
	}
	RTHOOK(17);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 39, "pointer_double_press_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc9 = RTCCL(tr1);
	if (EIF_TEST(loc9)) {
		RTHOOK(18);
		RTDBGAA(Current, dtype, 1022, 39, 0xF8000219, 0); /* pointer_double_press_actions_internal */
		
		RTAR(Current, loc9);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 39, dtype)) = (EIF_REFERENCE) RTCCL(loc9);
	}
	RTHOOK(19);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 43, "pointer_enter_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc10 = RTCCL(tr1);
	if (EIF_TEST(loc10)) {
		RTHOOK(20);
		RTDBGAA(Current, dtype, 1022, 43, 0xF800021A, 0); /* pointer_enter_actions_internal */
		
		RTAR(Current, loc10);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 43, dtype)) = (EIF_REFERENCE) RTCCL(loc10);
	}
	RTHOOK(21);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 47, "pointer_leave_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc11 = RTCCL(tr1);
	if (EIF_TEST(loc11)) {
		RTHOOK(22);
		RTDBGAA(Current, dtype, 1022, 47, 0xF800021A, 0); /* pointer_leave_actions_internal */
		
		RTAR(Current, loc11);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 47, dtype)) = (EIF_REFERENCE) RTCCL(loc11);
	}
	RTHOOK(23);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 35, "pointer_motion_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc12 = RTCCL(tr1);
	if (EIF_TEST(loc12)) {
		RTHOOK(24);
		RTDBGAA(Current, dtype, 1022, 35, 0xF8000214, 0); /* pointer_motion_actions_internal */
		
		RTAR(Current, loc12);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 35, dtype)) = (EIF_REFERENCE) RTCCL(loc12);
	}
	RTHOOK(25);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 59, "resize_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc13 = RTCCL(tr1);
	if (EIF_TEST(loc13)) {
		RTHOOK(26);
		RTDBGAA(Current, dtype, 1022, 59, 0xF8000217, 0); /* resize_actions_internal */
		
		RTAR(Current, loc13);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 59, dtype)) = (EIF_REFERENCE) RTCCL(loc13);
	}
	RTHOOK(27);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 78, "conforming_pick_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc14 = RTCCL(tr1);
	if (EIF_TEST(loc14)) {
		RTHOOK(28);
		RTDBGAA(Current, dtype, 1022, 78, 0xF800021A, 0); /* conforming_pick_actions_internal */
		
		RTAR(Current, loc14);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 78, dtype)) = (EIF_REFERENCE) RTCCL(loc14);
	}
	RTHOOK(29);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 80, "drop_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc15 = RTCCL(tr1);
	if (EIF_TEST(loc15)) {
		RTHOOK(30);
		RTDBGAA(Current, dtype, 1022, 80, 0xF8000208, 0); /* drop_actions_internal */
		
		RTAR(Current, loc15);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 80, dtype)) = (EIF_REFERENCE) RTCCL(loc15);
	}
	RTHOOK(31);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 74, "pick_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc16 = RTCCL(tr1);
	if (EIF_TEST(loc16)) {
		RTHOOK(32);
		RTDBGAA(Current, dtype, 1022, 74, 0xF8000215, 0); /* pick_actions_internal */
		
		RTAR(Current, loc16);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 74, dtype)) = (EIF_REFERENCE) RTCCL(loc16);
	}
	RTHOOK(33);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 76, "pick_ended_actions_internal", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc17 = RTCCL(tr1);
	if (EIF_TEST(loc17)) {
		RTHOOK(34);
		RTDBGAA(Current, dtype, 1022, 76, 0xF8000210, 0); /* pick_ended_actions_internal */
		
		RTAR(Current, loc17);
		*(EIF_REFERENCE *)(Current + RTWA(1022, 76, dtype)) = (EIF_REFERENCE) RTCCL(loc17);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(35);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(20);
	RTEE;
#undef up1
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.raw_image_data */
EIF_TYPED_VALUE F1023_18312 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "raw_image_data";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_NATURAL_32 loc7 = (EIF_NATURAL_32) 0;
	EIF_POINTER loc8 = (EIF_POINTER) 0;
	EIF_POINTER loc9 = (EIF_POINTER) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc12 = (EIF_BOOLEAN) 0;
	EIF_INTEGER_32 loc13 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc14 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc15 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(10);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,Result);
	RTLR(3,loc2);
	RTLR(4,loc11);
	RTLR(5,ur1);
	RTLR(6,loc1);
	RTLR(7,loc10);
	RTLR(8,loc15);
	RTLR(9,loc6);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_UINT32, &loc7);
	RTLU(SK_POINTER, &loc8);
	RTLU(SK_POINTER, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_BOOL, &loc12);
	RTLU(SK_INT32, &loc13);
	RTLU(SK_INT32, &loc14);
	RTLU(SK_REF, &loc15);
	
	RTEAA(l_feature_name, 1022, Current, 15, 0, 21726);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1022, Current, 21726);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80001EA, 0,0); /* Result */
	
	tr1 = RTLN(490);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 158, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 159, dtype))(Current)).it_i4);
	ui4_2 = ti4_2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(490, 109, Dtype(tr1)))(tr1, ui4_1x, ui4_2x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF80002D4, 0, 0); /* loc2 */
	
	tr1 = RTLN(724);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(724, 477, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 11, 0xF800025C, 0, 0); /* loc11 */
	
	loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 144, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(4);
	ur1 = RTCCL(loc11);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc2))(loc2, ur1x);
	RTHOOK(5);
	RTDBGAL(Current, 12, 0x04000000, 1, 0); /* loc12 */
	
	loc12 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 148, dtype))(Current)).it_b);
	RTHOOK(6);
	if (loc12) {
		RTHOOK(7);
		RTDBGAL(Current, 1, 0xF80002D4, 0, 0); /* loc1 */
		
		tr1 = RTLN(724);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(724, 477, Dtype(tr1)))(tr1);
		RTNHOOK(7,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(8);
		RTDBGAL(Current, 10, 0xF800025C, 0, 0); /* loc10 */
		
		loc10 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 145, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTAL & CK_CHECK) {
			RTHOOK(9);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc10 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(10);
		ur1 = RTCCL(loc10);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc1))(loc1, ur1x);
		RTHOOK(11);
		RTDBGAL(Current, 8, 0x40000000, 1, 0); /* loc8 */
		
		tp1 = *(EIF_POINTER *)(loc1 + RTVA(724, 34, "item", loc1));
		loc8 = (EIF_POINTER) tp1;
	}
	RTHOOK(12);
	RTDBGAL(Current, 15, 0xF8000356, 0, 0); /* loc15 */
	
	loc15 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 167, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(13);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc15 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(14);
	ur1 = RTCCL(loc15);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(490, 126, "set_originating_pixmap", Result))(Result, ur1x);
	RTHOOK(15);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	loc3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 158, dtype))(Current)).it_i4);
	loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc3 * ((EIF_INTEGER_32) 4L));
	RTHOOK(16);
	RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
	
	loc5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 159, dtype))(Current)).it_i4);
	loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc3 * loc5);
	RTHOOK(17);
	RTDBGAL(Current, 6, 0xF800055E, 0, 0); /* loc6 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(490, 45, "area", Result))(Result)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc6 = (EIF_REFERENCE) tr1;
	RTHOOK(18);
	RTDBGAL(Current, 9, 0x40000000, 1, 0); /* loc9 */
	
	tp1 = *(EIF_POINTER *)(loc2 + RTVA(724, 34, "item", loc2));
	loc9 = (EIF_POINTER) tp1;
	for (;;) {
		RTHOOK(19);
		if ((EIF_BOOLEAN)(loc4 == loc5)) break;
		RTHOOK(20);
		RTDBGAL(Current, 13, 0x10000000, 1, 0); /* loc13 */
		
		loc13 = (EIF_INTEGER_32) ((EIF_INTEGER_32) ((EIF_INTEGER_32) (loc4 % loc3) / ((EIF_INTEGER_32) 4L)));
		RTHOOK(21);
		RTDBGAL(Current, 14, 0x10000000, 1, 0); /* loc14 */
		
		loc14 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc4 / loc3));
		RTHOOK(22);
		RTDBGAL(Current, 7, 0x38000000, 1, 0); /* loc7 */
		
		up1 = loc9;
		ui4_1 = loc13;
		ui4_2 = loc14;
		loc7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1022, 165, dtype))(Current, up1x, ui4_1x, ui4_2x)).it_n4);
		RTHOOK(23);
		uu4_1 = loc7;
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1022, 162, dtype))(Current, uu4_1x)).it_n1);
		uu1_1 = tu1_1;
		ui4_1 = loc4;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1374, 51, "put", loc6))(loc6, uu1_1x, ui4_1x);
		RTHOOK(24);
		uu4_1 = loc7;
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1022, 163, dtype))(Current, uu4_1x)).it_n1);
		uu1_1 = tu1_1;
		ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 1L));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1374, 51, "put", loc6))(loc6, uu1_1x, ui4_1x);
		RTHOOK(25);
		uu4_1 = loc7;
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1022, 164, dtype))(Current, uu4_1x)).it_n1);
		uu1_1 = tu1_1;
		ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 2L));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1374, 51, "put", loc6))(loc6, uu1_1x, ui4_1x);
		RTHOOK(26);
		if (loc12) {
			RTHOOK(27);
			RTDBGAL(Current, 7, 0x38000000, 1, 0); /* loc7 */
			
			up1 = loc8;
			ui4_1 = loc13;
			ui4_2 = loc14;
			loc7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1022, 165, dtype))(Current, up1x, ui4_1x, ui4_2x)).it_n4);
			RTHOOK(28);
			uu4_1 = loc7;
			tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1022, 162, dtype))(Current, uu4_1x)).it_n1);
			tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
			if ((EIF_BOOLEAN)(tu1_1 != tu1_2)) {
				RTHOOK(29);
				tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
				uu1_1 = tu1_1;
				ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 3L));
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1374, 51, "put", loc6))(loc6, uu1_1x, ui4_1x);
			} else {
				RTHOOK(30);
				tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
				uu1_1 = tu1_1;
				ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 3L));
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1374, 51, "put", loc6))(loc6, uu1_1x, ui4_1x);
			}
		} else {
			RTHOOK(31);
			tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
			uu1_1 = tu1_1;
			ui4_1 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 3L));
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1374, 51, "put", loc6))(loc6, uu1_1x, ui4_1x);
		}
		RTHOOK(32);
		RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
		
		loc4 += ((EIF_INTEGER_32) 4L);
	}
	RTHOOK(33);
	if (loc12) {
		if (RTAL & CK_CHECK) {
			RTHOOK(34);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc1 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(35);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc1))(loc1);
		RTHOOK(36);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc1))(loc1);
		if (RTAL & CK_CHECK) {
			RTHOOK(37);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc10 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(38);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc10))(loc10);
		RTHOOK(39);
		RTDBGAL(Current, 10, 0xF800025C, 0, 0); /* loc10 */
		
		loc10 = (EIF_REFERENCE) NULL;
	}
	RTHOOK(40);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc2))(loc2);
	RTHOOK(41);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc2))(loc2);
	RTHOOK(42);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc11))(loc11);
	RTHOOK(43);
	RTDBGAL(Current, 11, 0xF800025C, 0, 0); /* loc11 */
	
	loc11 = (EIF_REFERENCE) NULL;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(44);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(17);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef uu4_1
#undef uu1_1
}

/* {EV_PIXMAP_IMP_STATE}.gdi_compact */
void F1023_18313 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "gdi_compact";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1022, Current, 0, 0, 21727);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1022, Current, 21727);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_PIXMAP_IMP_STATE}.build_icon */
EIF_TYPED_VALUE F1023_18314 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "build_icon";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1022, Current, 1, 0, 21728);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1022, Current, 21728);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000261, 0, 0); /* loc1 */
	
	ub1 = (EIF_BOOLEAN) 1;
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1022, 160, dtype))(Current, ub1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTRV(eif_non_attached_type(609), loc1);
	if (RTAL & CK_CHECK) {
		RTHOOK(2);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(3);
	RTDBGAL(Current, 0, 0xF8000261, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(loc1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("result_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ub1
}

/* {EV_PIXMAP_IMP_STATE}.build_cursor */
EIF_TYPED_VALUE F1023_18315 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "build_cursor";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1022, Current, 1, 0, 21729);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1022, Current, 21729);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000403, 0, 0); /* loc1 */
	
	ub1 = (EIF_BOOLEAN) 0;
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1022, 160, dtype))(Current, ub1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTRV(eif_non_attached_type(1027), loc1);
	if (RTAL & CK_CHECK) {
		RTHOOK(2);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(3);
	RTDBGAL(Current, 0, 0xF8000403, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(loc1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("result_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ub1
}

/* {EV_PIXMAP_IMP_STATE}.init_from_pixel_buffer */
void F1023_18316 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "init_from_pixel_buffer";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
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
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,loc2);
	RTLR(2,Current);
	RTLR(3,loc1);
	RTLR(4,tr1);
	RTLR(5,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1022, Current, 2, 1, 21730);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1022, Current, 21730);
	if (arg1) {
		RTCC(arg1, 1022, l_feature_name, 1, 800);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF8000356, 0, 0); /* loc2 */
	
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 167, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(2);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF8000389, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(800, 63, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	loc1 = RTRV(eif_non_attached_type(905), loc1);
	if (RTAL & CK_CHECK) {
		RTHOOK(4);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(5);
	ur1 = RTCCL(loc2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(905, 74, "draw_to_drawable", loc1))(loc1, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef ur1
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.build_graphical_resource */
EIF_TYPED_VALUE F1023_18319 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "build_graphical_resource";
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
#define arg1 arg1x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
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
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(14);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,loc6);
	RTLR(3,Current);
	RTLR(4,loc7);
	RTLR(5,ur1);
	RTLR(6,loc5);
	RTLR(7,loc2);
	RTLR(8,loc3);
	RTLR(9,loc4);
	RTLR(10,loc8);
	RTLR(11,loc9);
	RTLR(12,loc10);
	RTLR(13,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_BOOL,&arg1);
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
	
	RTEAA(l_feature_name, 1022, Current, 10, 1, 21731);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1022, Current, 21731);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80002B1, 0, 0); /* loc1 */
	
	tr1 = RTLN(689);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(689, 41, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(689, 37, "set_unshared", loc1))(loc1);
	RTHOOK(3);
	ub1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(689, 70, "set_is_icon", loc1))(loc1, ub1x);
	RTHOOK(4);
	RTDBGAL(Current, 6, 0xF800025C, 0, 0); /* loc6 */
	
	loc6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 144, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	RTDBGAL(Current, 7, 0xF800025C, 0, 0); /* loc7 */
	
	tr1 = RTLN(604);
	ur1 = RTCCL(loc6);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(604, 79, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(5,1);
	loc7 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 48, "enable_reference_tracking", loc7))(loc7);
	RTHOOK(7);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc6))(loc6);
	RTHOOK(8);
	if ((EIF_BOOLEAN) !arg1) {
		RTHOOK(9);
		RTDBGAL(Current, 5, 0xF8000357, 0, 0); /* loc5 */
		
		loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 167, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc5 = RTRV(eif_non_attached_type(855), loc5);
		RTHOOK(10);
		if ((EIF_BOOLEAN)(loc5 != NULL)) {
			RTHOOK(11);
			ti4_1 = *(EIF_INTEGER_32 *)(loc5 + RTVA(855, 263, "x_hotspot", loc5));
			ui4_1 = ti4_1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(689, 66, "set_x_hotspot", loc1))(loc1, ui4_1x);
			RTHOOK(12);
			ti4_1 = *(EIF_INTEGER_32 *)(loc5 + RTVA(855, 264, "y_hotspot", loc5));
			ui4_1 = ti4_1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(689, 67, "set_y_hotspot", loc1))(loc1, ui4_1x);
		}
	}
	RTHOOK(13);
	RTDBGAL(Current, 2, 0xF80002D4, 0, 0); /* loc2 */
	
	tr1 = RTLN(724);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(724, 477, Dtype(tr1)))(tr1);
	RTNHOOK(13,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(14);
	RTDBGAL(Current, 3, 0xF800025C, 0, 0); /* loc3 */
	
	tr1 = RTLN(604);
	ur1 = RTCCL(loc2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 158, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 159, dtype))(Current)).it_i4);
	ui4_2 = ti4_2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(604, 77, Dtype(tr1)))(tr1, ur1x, ui4_1x, ui4_2x);
	RTNHOOK(14,1);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(15);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 48, "enable_reference_tracking", loc3))(loc3);
	RTHOOK(16);
	ur1 = RTCCL(loc3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc2))(loc2, ur1x);
	RTHOOK(17);
	RTDBGAL(Current, 4, 0xF80000D7, 0, 0); /* loc4 */
	
	tr1 = RTLN(215);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(215, 26, Dtype(tr1)))(tr1);
	RTNHOOK(17,1);
	loc4 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(18);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 148, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(19);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ui4_2 = ((EIF_INTEGER_32) 0L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 158, dtype))(Current)).it_i4);
		ui4_3 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 159, dtype))(Current)).it_i4);
		ui4_4 = ti4_2;
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(215, 46, "whiteness", loc4))(loc4)).it_i4);
		ui4_5 = ti4_3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(724, 383, "pat_blt", loc2))(loc2, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ui4_5x);
		RTHOOK(20);
		RTDBGAL(Current, 8, 0xF800025C, 0, 0); /* loc8 */
		
		loc8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 145, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTAL & CK_CHECK) {
			RTHOOK(21);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc8 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(22);
		RTDBGAL(Current, 9, 0xF80002D4, 0, 0); /* loc9 */
		
		tr1 = RTLN(724);
		ur1 = RTCCL(loc2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(724, 478, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(22,1);
		loc9 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(23);
		ur1 = RTCCL(loc8);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc9))(loc9, ur1x);
		RTHOOK(24);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ui4_2 = ((EIF_INTEGER_32) 0L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 158, dtype))(Current)).it_i4);
		ui4_3 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 159, dtype))(Current)).it_i4);
		ui4_4 = ti4_2;
		ur1 = RTCCL(loc9);
		ui4_5 = ((EIF_INTEGER_32) 0L);
		ui4_6 = ((EIF_INTEGER_32) 0L);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(215, 35, "srcinvert", loc4))(loc4)).it_i4);
		ui4_7 = ti4_3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(724, 377, "bit_blt", loc2))(loc2, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ur1x, ui4_5x, ui4_6x, ui4_7x);
		RTHOOK(25);
		RTDBGAL(Current, 10, 0xF80002D4, 0, 0); /* loc10 */
		
		tr1 = RTLN(724);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(724, 477, Dtype(tr1)))(tr1);
		RTNHOOK(25,1);
		loc10 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(26);
		ur1 = RTCCL(loc7);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc10))(loc10, ur1x);
		RTHOOK(27);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ui4_2 = ((EIF_INTEGER_32) 0L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 158, dtype))(Current)).it_i4);
		ui4_3 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 159, dtype))(Current)).it_i4);
		ui4_4 = ti4_2;
		ur1 = RTCCL(loc2);
		ui4_5 = ((EIF_INTEGER_32) 0L);
		ui4_6 = ((EIF_INTEGER_32) 0L);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(215, 47, "maskpaint", loc4))(loc4)).it_i4);
		ui4_7 = ti4_3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(724, 377, "bit_blt", loc10))(loc10, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ur1x, ui4_5x, ui4_6x, ui4_7x);
		RTHOOK(28);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc10))(loc10);
		RTHOOK(29);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc10))(loc10);
		RTHOOK(30);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc9))(loc9);
		RTHOOK(31);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc9))(loc9);
	} else {
		RTHOOK(32);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ui4_2 = ((EIF_INTEGER_32) 0L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 158, dtype))(Current)).it_i4);
		ui4_3 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1022, 159, dtype))(Current)).it_i4);
		ui4_4 = ti4_2;
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(215, 45, "blackness", loc4))(loc4)).it_i4);
		ui4_5 = ti4_3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(724, 383, "pat_blt", loc2))(loc2, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ui4_5x);
	}
	RTHOOK(33);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc2))(loc2);
	RTHOOK(34);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc2))(loc2);
	RTHOOK(35);
	ur1 = RTCCL(loc7);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(689, 69, "set_color_bitmap", loc1))(loc1, ur1x);
	RTHOOK(36);
	ur1 = RTCCL(loc3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(689, 68, "set_mask_bitmap", loc1))(loc1, ur1x);
	RTHOOK(37);
	if (arg1) {
		RTHOOK(38);
		RTDBGAL(Current, 0, 0xF8000260, 0,0); /* Result */
		
		tr1 = RTLN(609);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(609, 70, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(38,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	} else {
		RTHOOK(39);
		RTDBGAL(Current, 0, 0xF8000260, 0,0); /* Result */
		
		tr1 = RTLN(1027);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1027, 70, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(39,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(40);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc3))(loc3);
	RTHOOK(41);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(689, 78, "delete", loc1))(loc1);
	RTHOOK(42);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc7))(loc7);
	RTHOOK(43);
	if ((EIF_BOOLEAN)(loc8 != NULL)) {
		RTHOOK(44);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc8))(loc8);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(45);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(13);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ui4_6
#undef ui4_7
#undef ub1
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.update_for_pick_and_drop */
void F1023_18320 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "update_for_pick_and_drop";
	RTEX;
#define arg1 arg1x.it_b
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1022, Current, 0, 1, 21732);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1022, Current, 21732);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.get_rvalue */
EIF_TYPED_VALUE F1023_18321 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "get_rvalue";
	RTEX;
#define arg1 arg1x.it_n4
	EIF_NATURAL_8 Result = ((EIF_NATURAL_8) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n4 = * (EIF_NATURAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT8, &Result);
	RTLU(SK_UINT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1022, Current, 0, 1, 21718);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1022, Current, 21718);
	RTIV(Current, RTAL);
	Result = (EIF_NATURAL_8) GetRValue(((DWORD) arg1));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT8; r.it_n1 = Result; return r; }
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.get_gvalue */
EIF_TYPED_VALUE F1023_18322 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "get_gvalue";
	RTEX;
#define arg1 arg1x.it_n4
	EIF_NATURAL_8 Result = ((EIF_NATURAL_8) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n4 = * (EIF_NATURAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT8, &Result);
	RTLU(SK_UINT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1022, Current, 0, 1, 21719);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1022, Current, 21719);
	RTIV(Current, RTAL);
	Result = (EIF_NATURAL_8) GetGValue(((DWORD) arg1));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT8; r.it_n1 = Result; return r; }
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.get_bvalue */
EIF_TYPED_VALUE F1023_18323 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "get_bvalue";
	RTEX;
#define arg1 arg1x.it_n4
	EIF_NATURAL_8 Result = ((EIF_NATURAL_8) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n4 = * (EIF_NATURAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT8, &Result);
	RTLU(SK_UINT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1022, Current, 0, 1, 21720);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1022, Current, 21720);
	RTIV(Current, RTAL);
	Result = (EIF_NATURAL_8) GetBValue(((DWORD) arg1));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT8; r.it_n1 = Result; return r; }
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.cwin_get_pixel */
EIF_TYPED_VALUE F1023_18324 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "cwin_get_pixel";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1022, Current, 0, 3, 21721);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1022, Current, 21721);
	RTIV(Current, RTAL);
	Result = (EIF_NATURAL_32) GetPixel(((HDC) arg1), ((int) arg2), ((int) arg3));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.c_ev_save_png */
void F1023_18325 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x)
{
	GTCX
	char *l_feature_name = "c_ev_save_png";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_i4
#define arg6 arg6x.it_i4
#define arg7 arg7x.it_i4
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_i4 = * (EIF_INTEGER_32 *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_i4 = * (EIF_INTEGER_32 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_i4 = * (EIF_INTEGER_32 *) arg5x.it_r;
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
	RTLU(SK_INT32,&arg5);
	RTLU(SK_INT32,&arg6);
	RTLU(SK_INT32,&arg7);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1022, Current, 0, 7, 21722);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1022, Current, 21722);
	RTIV(Current, RTAL);c_ev_save_png((char*) arg1, (char*) arg2, (int) arg3, (int) arg4, (int) arg5, (int) arg6, (int) arg7);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(9);
	RTEE;
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PIXMAP_IMP_STATE}.interface */
static EIF_TYPED_VALUE F1023_18326_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 1022, Current, 0, 0, 21723);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1022, Current, 21723);
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

EIF_TYPED_VALUE F1023_18326 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1022,167, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(1022, 167, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1023_18326_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(1022,167, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit1023 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
