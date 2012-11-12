/*
 * Code for class MAIN_WINDOW
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1037_18914(EIF_REFERENCE);
extern void F1037_18915(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1037_18916(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1037_18917(EIF_REFERENCE);
extern void F1037_18918(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1037_18919(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1037_18920(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1037_18921(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1037_18922(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1037_18923(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1037_18924(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18925(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18926(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18927(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18928(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18929(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18930(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18931(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18932(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18933(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18934(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18935(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18936(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1037_18937(EIF_REFERENCE);
extern void EIF_Minit1037(void);
extern EIF_REFERENCE _A1037_329();
extern EIF_REFERENCE _A1037_326_2_3_4_5_6_7_8_9();
extern EIF_REFERENCE _A1037_332();
extern EIF_REFERENCE _A1037_327_2_3_4_5_6_7_8_9();
extern EIF_REFERENCE _A1037_331();

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

/* {MAIN_WINDOW}.make_and_launch */
void F1037_18914 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make_and_launch";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
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
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(9);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,loc2);
	RTLR(4,tr2);
	RTLR(5,ur1);
	RTLR(6,tr3);
	RTLR(7,tr4);
	RTLR(8,tr5);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1036, Current, 2, 0, 23003);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1036, Current, 23003);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1036, 30, dtype))(Current);
	RTHOOK(2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 347, dtype))(Current)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 341, dtype))(Current)).it_i4);
	ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 / ((EIF_INTEGER_32) 2L)) - (EIF_INTEGER_32) (ti4_2 / ((EIF_INTEGER_32) 2L)));
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1036, 235, dtype))(Current, ui4_1x);
	RTHOOK(3);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 346, dtype))(Current)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 342, dtype))(Current)).it_i4);
	ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 / ((EIF_INTEGER_32) 2L)) - (EIF_INTEGER_32) (ti4_2 / ((EIF_INTEGER_32) 2L)));
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1036, 236, dtype))(Current, ui4_1x);
	RTHOOK(4);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 342, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1036, 239, dtype))(Current, ui4_1x);
	RTHOOK(5);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 341, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1036, 238, dtype))(Current, ui4_1x);
	RTHOOK(6);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1036, 262, dtype))(Current);
	RTHOOK(7);
	RTDBGAL(Current, 1, 0xF800034F, 0, 0); /* loc1 */
	
	tr1 = RTLN(847);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(847, 30, Dtype(tr1)))(tr1);
	RTNHOOK(7,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(8);
	RTDBGAL(Current, 2, 0xF8000356, 0, 0); /* loc2 */
	
	tr1 = RTLN(854);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
	RTNHOOK(8,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(9);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 309, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(9,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 318, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", loc2))(loc2, ur1x);
	RTHOOK(10);
	ur1 = RTCCL(loc2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(847, 192, "set_background_pixmap", loc1))(loc1, ur1x);
	RTHOOK(11);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1036, 328, dtype))(Current);
	RTHOOK(12);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 343, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(12,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(892, 290, "select_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(12,2);
	{
		EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,2,734,0,869,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr1 = RTLNTS(typres0, 3, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 343, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(12,3);
	tr4 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(892, 293, "selected_item", tr3))(tr3)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr4;
	RTAR(tr1,tr4);
	
	{
		EIF_TYPE_INDEX typarr0[] = {1036,1219,0,0xFFF9,0,734,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr3 = RTLNRW(typres0, 0, (EIF_POINTER) _A1037_329, (EIF_POINTER)(0),1036, 329, 0, 0, 0, 1, 0, tr1, 0);
	}
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 124, "extend", tr2))(tr2, ur1x);
	RTHOOK(13);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 343, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	ui4_1 = ((EIF_INTEGER_32) 30L);
	ui4_2 = ((EIF_INTEGER_32) 155L);
	ui4_3 = ((EIF_INTEGER_32) 250L);
	ui4_4 = ((EIF_INTEGER_32) 325L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(847, 296, "extend_with_position_and_size", loc1))(loc1, ur1x, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTHOOK(14);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 345, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	ui4_1 = ((EIF_INTEGER_32) 300L);
	ui4_2 = ((EIF_INTEGER_32) 155L);
	ui4_3 = ((EIF_INTEGER_32) 465L);
	ui4_4 = ((EIF_INTEGER_32) 325L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(847, 296, "extend_with_position_and_size", loc1))(loc1, ur1x, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTHOOK(15);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 345, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(15,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(860, 208, "disable_edit", tr1))(tr1);
	RTHOOK(16);
	RTDBGAA(Current, dtype, 1036, 335, 0xF800034F, 0); /* play_area */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1036, 335, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(847, 30, Dtype(tr1)))(tr1);
	RTNHOOK(16,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1036, 335, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(17);
	RTDBGAA(Current, dtype, 1036, 336, 0xF8000356, 0); /* play_pixmap_pointer_in */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1036, 336, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
	RTNHOOK(17,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1036, 336, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(18);
	RTDBGAA(Current, dtype, 1036, 337, 0xF8000356, 0); /* play_pixmap_pointer_out */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1036, 337, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
	RTNHOOK(18,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1036, 337, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(19);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 337, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(19,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 309, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(19,2);
	tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 319, dtype))(Current)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	ur1 = RTCCL(tr3);
	tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr2))(tr2, ur1x)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", tr1))(tr1, ur1x);
	RTHOOK(20);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 336, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(20,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 309, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(20,2);
	tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 320, dtype))(Current)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	ur1 = RTCCL(tr3);
	tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr2))(tr2, ur1x)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", tr1))(tr1, ur1x);
	RTHOOK(21);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(21,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 337, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(847, 192, "set_background_pixmap", tr1))(tr1, ur1x);
	RTHOOK(22);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(22,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(847, 140, "pointer_enter_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(22,2);
	{
		EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,2,734,0,847,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr1 = RTLNTS(typres0, 3, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr3;
	RTAR(tr1,tr3);
	
	{
		EIF_TYPE_INDEX typarr0[] = {1036,1219,0,0xFFF9,0,734,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr3 = RTLNRW(typres0, 0, (EIF_POINTER) _A1037_331, (EIF_POINTER)(0),1036, 331, 0, 0, 0, 1, 0, tr1, 0);
	}
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 124, "extend", tr2))(tr2, ur1x);
	RTHOOK(23);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(23,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(847, 141, "pointer_leave_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(23,2);
	{
		EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,2,734,0,847,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr1 = RTLNTS(typres0, 3, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr3;
	RTAR(tr1,tr3);
	
	{
		EIF_TYPE_INDEX typarr0[] = {1036,1219,0,0xFFF9,0,734,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr3 = RTLNRW(typres0, 0, (EIF_POINTER) _A1037_332, (EIF_POINTER)(0),1036, 332, 0, 0, 0, 1, 0, tr1, 0);
	}
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 124, "extend", tr2))(tr2, ur1x);
	RTHOOK(24);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(24,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(847, 139, "pointer_button_release_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(24,2);
	{
		EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,1,734,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr1 = RTLNTS(typres0, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,1304,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1304, typarr0)));
		tr4 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_INTEGER_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr4) = 8L;
		memset(tr4, 0, RT_SPECIAL_VISIBLE_SIZE(tr4));
	}
	*((EIF_INTEGER_32 *)tr4+0) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	*((EIF_INTEGER_32 *)tr4+1) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 3L);
	*((EIF_INTEGER_32 *)tr4+2) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
	*((EIF_INTEGER_32 *)tr4+3) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 5L);
	*((EIF_INTEGER_32 *)tr4+4) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 6L);
	*((EIF_INTEGER_32 *)tr4+5) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 7L);
	*((EIF_INTEGER_32 *)tr4+6) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 8L);
	*((EIF_INTEGER_32 *)tr4+7) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 9L);
	tr3 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1304, 42, Dtype(tr4)))(tr4).it_r;
	
	{
		EIF_TYPE_INDEX typarr0[] = {1036,1219,0,0xFFF9,8,734,739,739,739,763,763,763,739,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr5 = RTLNRW(typres0, 0, (EIF_POINTER) _A1037_327_2_3_4_5_6_7_8_9, (EIF_POINTER)(0),1036, 327, tr3, 0, 0, 1, 0, tr1, 8);
	}
	ur1 = RTCCL(tr5);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(537, 124, "extend", tr2))(tr2, ur1x);
	RTHOOK(25);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	ui4_1 = ((EIF_INTEGER_32) 48L);
	ui4_2 = ((EIF_INTEGER_32) 502L);
	ui4_3 = ((EIF_INTEGER_32) 293L);
	ui4_4 = ((EIF_INTEGER_32) 84L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(847, 296, "extend_with_position_and_size", loc1))(loc1, ur1x, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTHOOK(26);
	RTDBGAA(Current, dtype, 1036, 338, 0xF800034F, 0); /* quit_area */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1036, 338, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(847, 30, Dtype(tr1)))(tr1);
	RTNHOOK(26,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1036, 338, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(27);
	RTDBGAA(Current, dtype, 1036, 339, 0xF8000356, 0); /* quit_pixmap_pointer_in */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1036, 339, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
	RTNHOOK(27,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1036, 339, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(28);
	RTDBGAA(Current, dtype, 1036, 340, 0xF8000356, 0); /* quit_pixmap_pointer_out */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1036, 340, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
	RTNHOOK(28,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1036, 340, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(29);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 340, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(29,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 309, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(29,2);
	tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 321, dtype))(Current)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	ur1 = RTCCL(tr3);
	tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr2))(tr2, ur1x)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", tr1))(tr1, ur1x);
	RTHOOK(30);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 339, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(30,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 309, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(30,2);
	tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 322, dtype))(Current)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	ur1 = RTCCL(tr3);
	tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr2))(tr2, ur1x)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", tr1))(tr1, ur1x);
	RTHOOK(31);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(31,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 340, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(847, 192, "set_background_pixmap", tr1))(tr1, ur1x);
	RTHOOK(32);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(32,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(847, 140, "pointer_enter_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(32,2);
	{
		EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,2,734,0,847,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr1 = RTLNTS(typres0, 3, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr3;
	RTAR(tr1,tr3);
	
	{
		EIF_TYPE_INDEX typarr0[] = {1036,1219,0,0xFFF9,0,734,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr3 = RTLNRW(typres0, 0, (EIF_POINTER) _A1037_331, (EIF_POINTER)(0),1036, 331, 0, 0, 0, 1, 0, tr1, 0);
	}
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 124, "extend", tr2))(tr2, ur1x);
	RTHOOK(33);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(33,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(847, 141, "pointer_leave_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(33,2);
	{
		EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,2,734,0,847,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr1 = RTLNTS(typres0, 3, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr3;
	RTAR(tr1,tr3);
	
	{
		EIF_TYPE_INDEX typarr0[] = {1036,1219,0,0xFFF9,0,734,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr3 = RTLNRW(typres0, 0, (EIF_POINTER) _A1037_332, (EIF_POINTER)(0),1036, 332, 0, 0, 0, 1, 0, tr1, 0);
	}
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 124, "extend", tr2))(tr2, ur1x);
	RTHOOK(34);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(34,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(847, 139, "pointer_button_release_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(34,2);
	{
		EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,1,734,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr1 = RTLNTS(typres0, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,1304,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1304, typarr0)));
		tr4 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_INTEGER_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr4) = 8L;
		memset(tr4, 0, RT_SPECIAL_VISIBLE_SIZE(tr4));
	}
	*((EIF_INTEGER_32 *)tr4+0) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	*((EIF_INTEGER_32 *)tr4+1) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 3L);
	*((EIF_INTEGER_32 *)tr4+2) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
	*((EIF_INTEGER_32 *)tr4+3) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 5L);
	*((EIF_INTEGER_32 *)tr4+4) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 6L);
	*((EIF_INTEGER_32 *)tr4+5) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 7L);
	*((EIF_INTEGER_32 *)tr4+6) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 8L);
	*((EIF_INTEGER_32 *)tr4+7) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 9L);
	tr3 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1304, 42, Dtype(tr4)))(tr4).it_r;
	
	{
		EIF_TYPE_INDEX typarr0[] = {1036,1219,0,0xFFF9,8,734,739,739,739,763,763,763,739,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr5 = RTLNRW(typres0, 0, (EIF_POINTER) _A1037_326_2_3_4_5_6_7_8_9, (EIF_POINTER)(0),1036, 326, tr3, 0, 0, 1, 0, tr1, 8);
	}
	ur1 = RTCCL(tr5);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(537, 124, "extend", tr2))(tr2, ur1x);
	RTHOOK(35);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	ui4_1 = ((EIF_INTEGER_32) 450L);
	ui4_2 = ((EIF_INTEGER_32) 502L);
	ui4_3 = ((EIF_INTEGER_32) 293L);
	ui4_4 = ((EIF_INTEGER_32) 84L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(847, 296, "extend_with_position_and_size", loc1))(loc1, ur1x, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTHOOK(36);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1036, 198, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(37);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
}

/* {MAIN_WINDOW}.destroy_window */
void F1037_18915 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x)
{
	GTCX
	char *l_feature_name = "destroy_window";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_r8
#define arg5 arg5x.it_r8
#define arg6 arg6x.it_r8
#define arg7 arg7x.it_i4
#define arg8 arg8x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg8x.type & SK_HEAD) == SK_REF) arg8x.it_i4 = * (EIF_INTEGER_32 *) arg8x.it_r;
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_i4 = * (EIF_INTEGER_32 *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_r8 = * (EIF_REAL_64 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_r8 = * (EIF_REAL_64 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_r8 = * (EIF_REAL_64 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_REAL64,&arg4);
	RTLU(SK_REAL64,&arg5);
	RTLU(SK_REAL64,&arg6);
	RTLU(SK_INT32,&arg7);
	RTLU(SK_INT32,&arg8);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1036, Current, 0, 8, 23004);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1036, Current, 23004);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1036, 33, Dtype(Current)))(Current);
	RTHOOK(2);
	tr1 = RTLN(803);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(803, 30, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(803, 44, "application", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(807, 33, "destroy", tr2))(tr2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
#undef up1
#undef arg8
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {MAIN_WINDOW}.start_a_game */
void F1037_18916 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x)
{
	GTCX
	char *l_feature_name = "start_a_game";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_r8
#define arg5 arg5x.it_r8
#define arg6 arg6x.it_r8
#define arg7 arg7x.it_i4
#define arg8 arg8x.it_i4
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
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg8x.type & SK_HEAD) == SK_REF) arg8x.it_i4 = * (EIF_INTEGER_32 *) arg8x.it_r;
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_i4 = * (EIF_INTEGER_32 *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_r8 = * (EIF_REAL_64 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_r8 = * (EIF_REAL_64 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_r8 = * (EIF_REAL_64 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(11);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,loc1);
	RTLR(4,ur1);
	RTLR(5,tr3);
	RTLR(6,tr4);
	RTLR(7,loc3);
	RTLR(8,loc4);
	RTLR(9,loc2);
	RTLR(10,loc5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_REAL64,&arg4);
	RTLU(SK_REAL64,&arg5);
	RTLU(SK_REAL64,&arg6);
	RTLU(SK_INT32,&arg7);
	RTLU(SK_INT32,&arg8);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 1036, Current, 5, 8, 23005);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1036, Current, 23005);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 343, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(892, 293, "selected_item", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	if ((EIF_BOOLEAN) !(EIF_BOOLEAN)(tr2 != NULL)) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0xF800034C, 0, 0); /* loc1 */
		
		tr1 = RTLN(844);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 324, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(844, 315, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(2,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(844, 256, "disable_user_resize", loc1))(loc1);
		RTHOOK(4);
		ur1 = RTCCL(Current);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(844, 295, "show_modal_to_window", loc1))(loc1, ur1x);
	} else {
		RTHOOK(5);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 343, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTNHOOK(5,2);
		tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 343, dtype))(Current)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
		RTNHOOK(5,3);
		tr4 = ((up4x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(892, 293, "selected_item", tr3))(tr3)), (((up4x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up4x.it_r = RTBU(up4x))), (up4x.type = SK_POINTER), up4x.it_r);
		ur1 = RTCCL(tr4);
		ui4_1 = ((EIF_INTEGER_32) 1L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(892, 244, "index_of", tr2))(tr2, ur1x, ui4_1x)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 95, "go_i_th", tr1))(tr1, ui4_1x);
		RTHOOK(6);
		RTDBGAL(Current, 3, 0xF80004C5, 0, 0); /* loc3 */
		
		loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		tr1 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1287, 73, "item", loc3))(loc3)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTNHOOK(6,2);
		tr2 = eif_boxed_item(tr1,3);
		loc3 = (EIF_REFERENCE) RTCCL(tr2);
		RTHOOK(7);
		RTDBGAL(Current, 4, 0xF80000E6, 0, 0); /* loc4 */
		
		tr1 = RTLN(230);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(230, 26, Dtype(tr1)))(tr1);
		RTNHOOK(7,1);
		loc4 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(8);
		RTDBGAL(Current, 2, 0xF8000000, 0, 0); /* loc2 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1221, 33, "type_id", loc3))(loc3)).it_i4);
		ui4_1 = ti4_1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 49, "new_instance_of", loc4))(loc4, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(9);
		loc5 = RTCCL(loc2);
		loc5 = RTRV(eif_non_attached_type(541),loc5);
		if (EIF_TEST(loc5)) {
			RTHOOK(10);
			ur1 = RTCCL(Current);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(541, 32, "launch", loc5))(loc5, ur1x);
			RTHOOK(11);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1036, 287, dtype))(Current);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef up4
#undef ur1
#undef ui4_1
#undef arg8
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {MAIN_WINDOW}.add_game_entries */
void F1037_18917 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "add_game_entries";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1036, Current, 1, 0, 23006);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1036, Current, 23006);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1287, 90, "start", tr1))(tr1);
	for (;;) {
		RTHOOK(2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		tb1 = *(EIF_BOOLEAN *)(tr1 + RTVA(1287, 82, "after", tr1));
		if (tb1) break;
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF8000365, 0, 0); /* loc1 */
		
		tr1 = RTLN(869);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		tr3 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1287, 73, "item", tr2))(tr2)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTNHOOK(3,2);
		tr2 = eif_boxed_item(tr3,1);
		ur1 = RTCCL(tr2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(869, 117, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(3,3);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 343, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(892, 258, "extend", tr1))(tr1, ur1x);
		RTHOOK(5);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1287, 92, "forth", tr1))(tr1);
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
#undef ur1
}

/* {MAIN_WINDOW}.load_description */
void F1037_18918 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "load_description";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(8);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLR(6,loc2);
	RTLR(7,loc3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1036, Current, 3, 1, 23007);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1036, Current, 23007);
	if (arg1) {
		RTCC(arg1, 1036, l_feature_name, 1, 869);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 343, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 343, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(1,2);
	tr3 = ((up3x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(892, 293, "selected_item", tr2))(tr2)), (((up3x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up3x.it_r = RTBU(up3x))), (up3x.type = SK_POINTER), up3x.it_r);
	ur1 = RTCCL(tr3);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(892, 244, "index_of", tr1))(tr1, ur1x, ui4_1x)).it_i4);
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ui4_1 = loc1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 95, "go_i_th", tr1))(tr1, ui4_1x);
	RTHOOK(3);
	RTDBGAL(Current, 2, 0xF80004C0, 0, 0); /* loc2 */
	
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 323, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1287, 73, "item", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(4,2);
	tr1 = eif_boxed_item(tr2,2);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1216, 61, "append_name", loc2))(loc2, ur1x);
	RTHOOK(5);
	RTDBGAL(Current, 3, 0xF8000313, 0, 0); /* loc3 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 309, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(5,1);
	ur1 = RTCCL(loc2);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc3 = (EIF_REFERENCE) RTCCL(tr2);
	RTHOOK(6);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 345, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(6,1);
	tr2 = RTLN(792);
	ur1 = RTCCL(loc3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(792, 92, Dtype(tr2)))(tr2, ur1x);
	RTNHOOK(6,2);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(860, 272, "set_with_named_file", tr1))(tr1, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef ur1
#undef ui4_1
#undef arg1
}

/* {MAIN_WINDOW}.play_game */
void F1037_18919 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "play_game";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
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
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,Current);
	RTLR(4,tr2);
	RTLR(5,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1036, Current, 1, 1, 23008);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1036, Current, 23008);
	if (arg1) {
		RTCC(arg1, 1036, l_feature_name, 1, 847);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000356, 0, 0); /* loc1 */
	
	tr1 = RTLN(854);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 309, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 320, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", loc1))(loc1, ur1x);
	RTHOOK(3);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(847, 192, "set_background_pixmap", arg1))(arg1, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef arg1
}

/* {MAIN_WINDOW}.pointer_enter_area */
void F1037_18920 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "pointer_enter_area";
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
	
	RTEAA(l_feature_name, 1036, Current, 0, 1, 23009);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1036, Current, 23009);
	if (arg1) {
		RTCC(arg1, 1036, l_feature_name, 1, 847);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTCEQ(arg1, tr1)) {
		RTHOOK(2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 336, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		ur1 = RTCCL(tr2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(847, 192, "set_background_pixmap", tr1))(tr1, ur1x);
	} else {
		RTHOOK(3);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(arg1, tr1)) {
			RTHOOK(4);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(4,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 339, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ur1 = RTCCL(tr2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(847, 192, "set_background_pixmap", tr1))(tr1, ur1x);
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
#undef up2
#undef ur1
#undef arg1
}

/* {MAIN_WINDOW}.pointer_leave_area */
void F1037_18921 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "pointer_leave_area";
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
	
	RTEAA(l_feature_name, 1036, Current, 0, 1, 23010);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1036, Current, 23010);
	if (arg1) {
		RTCC(arg1, 1036, l_feature_name, 1, 847);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTCEQ(arg1, tr1)) {
		RTHOOK(2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 335, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 337, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		ur1 = RTCCL(tr2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(847, 192, "set_background_pixmap", tr1))(tr1, ur1x);
	} else {
		RTHOOK(3);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(arg1, tr1)) {
			RTHOOK(4);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 338, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(4,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 340, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ur1 = RTCCL(tr2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(847, 192, "set_background_pixmap", tr1))(tr1, ur1x);
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
#undef up2
#undef ur1
#undef arg1
}

/* {MAIN_WINDOW}.add_reference_to_game_window */
void F1037_18922 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "add_reference_to_game_window";
	RTEX;
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
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1036, Current, 0, 1, 23011);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1036, Current, 23011);
	if (arg1) {
		RTCC(arg1, 1036, l_feature_name, 1, 835);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("arg_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 344, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1244, 91, "extend", tr1))(tr1, ur1x);
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
#undef arg1
}

/* {MAIN_WINDOW}.remove_reference_to_game_window */
void F1037_18923 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "remove_reference_to_game_window";
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
	
	RTEAA(l_feature_name, 1036, Current, 0, 1, 23012);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1036, Current, 23012);
	if (arg1) {
		RTCC(arg1, 1036, l_feature_name, 1, 835);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("arg_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 344, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ur1 = RTCCL(arg1);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1244, 60, "has", tr1))(tr1, ur1x)).it_b);
	if (tb1) {
		RTHOOK(3);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 344, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1244, 66, "start", tr1))(tr1);
		RTHOOK(4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 344, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1244, 53, "search", tr1))(tr1, ur1x);
		RTHOOK(5);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1036, 344, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1244, 80, "remove", tr1))(tr1);
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
#undef ur1
#undef arg1
}

/* {MAIN_WINDOW}.play_area */
EIF_TYPED_VALUE F1037_18924 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1036,335, Dtype(Current)));
	return r;
}


/* {MAIN_WINDOW}.play_pixmap_pointer_in */
EIF_TYPED_VALUE F1037_18925 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1036,336, Dtype(Current)));
	return r;
}


/* {MAIN_WINDOW}.play_pixmap_pointer_out */
EIF_TYPED_VALUE F1037_18926 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1036,337, Dtype(Current)));
	return r;
}


/* {MAIN_WINDOW}.quit_area */
EIF_TYPED_VALUE F1037_18927 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1036,338, Dtype(Current)));
	return r;
}


/* {MAIN_WINDOW}.quit_pixmap_pointer_in */
EIF_TYPED_VALUE F1037_18928 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1036,339, Dtype(Current)));
	return r;
}


/* {MAIN_WINDOW}.quit_pixmap_pointer_out */
EIF_TYPED_VALUE F1037_18929 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1036,340, Dtype(Current)));
	return r;
}


/* {MAIN_WINDOW}.window_width */
EIF_TYPED_VALUE F1037_18930 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 800L);
	return r;
}

/* {MAIN_WINDOW}.window_height */
EIF_TYPED_VALUE F1037_18931 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 600L);
	return r;
}

/* {MAIN_WINDOW}.games_list */
RTOID (F1037_18932)
EIF_TYPED_VALUE F1037_18932 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "games_list";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1037_18932);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1036, Current, 0, 0, 23021);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1036, Current, 23021);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800037C, 0,0); /* Result */
	
	tr1 = RTLN(892);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(892, 30, Dtype(tr1)))(tr1);
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

/* {MAIN_WINDOW}.game_windows */
EIF_TYPED_VALUE F1037_18933 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "game_windows";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1036, Current, 0, 0, 23022);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1036, Current, 23022);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004DC, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,1287,835,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1287, typarr0)));
		tr1 = RTLN(typres0);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1287, 72, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
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

/* {MAIN_WINDOW}.rich_text_area */
RTOID (F1037_18934)
EIF_TYPED_VALUE F1037_18934 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "rich_text_area";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1037_18934);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1036, Current, 0, 0, 23023);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1036, Current, 23023);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800035C, 0,0); /* Result */
	
	tr1 = RTLN(860);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(860, 30, Dtype(tr1)))(tr1);
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

/* {MAIN_WINDOW}.screen_height */
RTOID (F1037_18935)
EIF_TYPED_VALUE F1037_18935 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "screen_height";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRB(EIF_INTEGER_32)
	RTOTDB(EIF_INTEGER_32, F1037_18935);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1036, Current, 0, 0, 23024);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1036, Current, 23024);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	tr1 = RTLN(823);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(823, 30, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(823, 124, "height", tr1))(tr1)).it_i4);
	Result = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef Result
}

/* {MAIN_WINDOW}.screen_width */
RTOID (F1037_18936)
EIF_TYPED_VALUE F1037_18936 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "screen_width";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRB(EIF_INTEGER_32)
	RTOTDB(EIF_INTEGER_32, F1037_18936);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1036, Current, 0, 0, 23025);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1036, Current, 23025);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	tr1 = RTLN(823);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(823, 30, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(823, 123, "width", tr1))(tr1)).it_i4);
	Result = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef Result
}

/* {MAIN_WINDOW}.game_entries */
RTOID (F1037_18937)
EIF_TYPED_VALUE F1037_18937 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "game_entries";
	RTEX;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	RTCFDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1037_18937);
	dftype = Dftype(Current);

	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1036, Current, 0, 0, 23026);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1036, Current, 23026);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000507, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,1287,0xFFF9,3,734,787,787,1221,541,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1287, typarr0)));
		tr1 = RTLN(typres0);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1287, 72, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Monopoly",8,7387001);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group_01.rtf",12,1298765670);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(3);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,549,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Triple Triad New Generation",27,1257208174);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("ttng_description.rtf",20,182510694);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(549);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(4);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Tichu",5,1768767605);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("Tichu_group03.rtf",17,1112113766);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(5);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Bang!",5,1635132193);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("bang_description.rtf",20,253419110);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(6);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Dominion",8,2116834158);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group_05.rtf",12,1298796390);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(7);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Game of group 6",15,916030006);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("dummy_description.rtf",21,750873702);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(8);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Game of group 7",15,916030007);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("dummy_description.rtf",21,750873702);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(9);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,548,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Blokus - Group 8",16,919931448);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group_8.rtf",11,1410486630);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(548);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(10);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Game of group 9",15,916030009);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("dummy_description.rtf",21,750873702);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(11);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,547,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Carcassonne",11,215869285);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group_10_Carcassonne.rtf",24,293059942);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(547);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(12);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Battle Beyond Space",19,430041189);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group_11.rtf",12,1300731750);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(13);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,546,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Hive",4,1214871141);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("hive.rtf",8,197222758);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(546);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(14);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Cluedo",6,2102135919);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group_13.rtf",12,1300747110);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(15);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,545,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Hexxagon (Group 14)",19,2123131177);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("hexxagon_group14.rtf",20,303817062);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(545);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(16);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Blokus",6,1999904115);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group_15.rtf",12,1300762470);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(17);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,544,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Ingenious",9,159032947);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("ing_description.rtf",19,576504422);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(544);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(18);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,542,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Dominion 17",11,928230711);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group17.rtf",11,1320039270);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(542);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(19);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,543,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Hexxagon (Group 18)",19,2123132201);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("hexxagon_group18.rtf",20,303847782);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(543);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(20);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Game of group 19",16,428381241);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("dummy_description.rtf",21,750873702);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(21);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Ingenious 20-12",15,19408690);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group_20.rtf",12,1302690150);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(22);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,550,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("Triple Triad Gold",17,2099549796);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("group_21.rtf",12,1302697830);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(550);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTHOOK(23);
	{
		static EIF_TYPE_INDEX typarr0[] = {1036,0xFFF9,3,734,787,787,1221,551,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
		tr1 = RTLNTS(typres0, 4, 0);
	}
	tr2 = RTMS_EX_H("TicTacToe",9,804943717);
	((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTMS_EX_H("ttt_description.rtf",19,819756646);
	((EIF_TYPED_VALUE *)tr1+2)->it_r = tr2;
	RTAR(tr1,tr2);
	tr2 = RTLNTY(551);
	((EIF_TYPED_VALUE *)tr1+3)->it_r = tr2;
	RTAR(tr1,tr2);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1287, 98, "extend", Result))(Result, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(24);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef Result
}

void EIF_Minit1037 (void)
{
	GTCX
	RTOTS (18932,F1037_18932)
	RTOTS (18934,F1037_18934)
	RTOTS (18935,F1037_18935)
	RTOTS (18936,F1037_18936)
	RTOTS (18937,F1037_18937)
}


#ifdef __cplusplus
}
#endif
