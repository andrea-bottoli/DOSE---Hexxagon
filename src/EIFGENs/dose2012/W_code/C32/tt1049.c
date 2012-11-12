/*
 * Code for class TTT_TILE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1049_19040(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1049_19041(EIF_REFERENCE);
extern void F1049_19042(EIF_REFERENCE);
extern void F1049_19043(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1049_19044(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19045(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19046(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19047(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19048(EIF_REFERENCE);
extern void F1049_19049(EIF_REFERENCE);
extern void F1049_19050(EIF_REFERENCE);
extern void F1049_19051(EIF_REFERENCE);
extern void F1049_19052(EIF_REFERENCE);
extern void F1049_19053(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19054(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19055(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19056(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19057(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19058(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19059(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19060(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19061(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19062(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19063(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19064(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_19065(EIF_REFERENCE);
extern void F1049_19066(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1049_19067(EIF_REFERENCE);
extern void F1049_19068(EIF_REFERENCE);
extern void F1049_19069(EIF_REFERENCE);
extern void F1049_19070(EIF_REFERENCE);
extern void F1049_19071(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_23663(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1049_23664(EIF_REFERENCE);
extern void F1049_23853(EIF_REFERENCE, int);
extern void EIF_Minit1049(void);
extern EIF_REFERENCE _A1049_330_2_3_4_5_6_7_8_9();
extern EIF_REFERENCE _A1049_329();
extern EIF_REFERENCE _A1049_328();

#ifdef __cplusplus
}
#endif

#include "eif_out.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {TTT_TILE}.make */
void F1049_19040 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_r
#define arg4 arg4x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(9);
	RTLR(0,arg3);
	RTLR(1,arg4);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,tr2);
	RTLR(5,tr3);
	RTLR(6,ur1);
	RTLR(7,tr4);
	RTLR(8,tr5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU(SK_REF,&arg4);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1048, Current, 0, 4, 23105);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23105);
	if (arg3) {
		RTCC(arg3, 1048, l_feature_name, 3, 847);
	}
	if (arg4) {
		RTCC(arg4, 1048, l_feature_name, 4, 338);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("row_is_valid", EX_PRE);
		RTTE((EIF_BOOLEAN) ((EIF_BOOLEAN) (((EIF_INTEGER_32) 1L) <= arg1) && (EIF_BOOLEAN) (arg1 <= ((EIF_INTEGER_32) 3L))), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("col_is_valid", EX_PRE);
		RTTE((EIF_BOOLEAN) ((EIF_BOOLEAN) (((EIF_INTEGER_32) 1L) <= arg2) && (EIF_BOOLEAN) (arg2 <= ((EIF_INTEGER_32) 3L))), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("player_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg4 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1048, 30, dtype))(Current);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 1048, 341, 0x10000000, 1); /* row */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(6);
	RTDBGAA(Current, dtype, 1048, 342, 0x10000000, 1); /* column */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype)) = (EIF_INTEGER_32) arg2;
	RTHOOK(7);
	RTDBGAA(Current, dtype, 1048, 347, 0xF8000152, 0); /* player */
	
	RTAR(Current, arg4);
	*(EIF_REFERENCE *)(Current + RTWA(1048, 347, dtype)) = (EIF_REFERENCE) RTCCL(arg4);
	RTHOOK(8);
	RTDBGAA(Current, dtype, 1048, 335, 0x04000000, 1); /* blocked */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 335, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(9);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1048, 358, dtype))(Current);
	RTHOOK(10);
	RTDBGAA(Current, dtype, 1048, 343, 0x10000000, 1); /* x_coord */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype));
	*(EIF_INTEGER_32 *)(Current + RTWA(1048, 343, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (((EIF_INTEGER_32) 100L) + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L)) * ((EIF_INTEGER_32) 190L))) + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_2 - ((EIF_INTEGER_32) 1L)) * ((EIF_INTEGER_32) 10L)));
	RTHOOK(11);
	RTDBGAA(Current, dtype, 1048, 344, 0x10000000, 1); /* y_coord */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype));
	*(EIF_INTEGER_32 *)(Current + RTWA(1048, 344, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (((EIF_INTEGER_32) 90L) + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L)) * ((EIF_INTEGER_32) 190L))) + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_2 - ((EIF_INTEGER_32) 1L)) * ((EIF_INTEGER_32) 10L)));
	RTHOOK(12);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 138, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(12,1);
	{
		EIF_TYPE_INDEX typarr0[] = {1048,0xFFF9,1,734,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr2 = RTLNTS(typres0, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr2+1)->it_r = Current;
	RTAR(tr2,Current);
	
	{
		EIF_TYPE_INDEX typarr0[] = {1048,1219,0,0xFFF9,0,734,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr3 = RTLNRW(typres0, 0, (EIF_POINTER) _A1049_328, (EIF_POINTER)(0),1048, 328, 0, 0, 0, 1, 0, tr2, 0);
	}
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 124, "extend", tr1))(tr1, ur1x);
	RTHOOK(13);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 139, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(13,1);
	{
		EIF_TYPE_INDEX typarr0[] = {1048,0xFFF9,1,734,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr2 = RTLNTS(typres0, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr2+1)->it_r = Current;
	RTAR(tr2,Current);
	
	{
		EIF_TYPE_INDEX typarr0[] = {1048,1219,0,0xFFF9,0,734,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr3 = RTLNRW(typres0, 0, (EIF_POINTER) _A1049_329, (EIF_POINTER)(0),1048, 329, 0, 0, 0, 1, 0, tr2, 0);
	}
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 124, "extend", tr1))(tr1, ur1x);
	RTHOOK(14);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 137, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(14,1);
	{
		EIF_TYPE_INDEX typarr0[] = {1048,0xFFF9,1,734,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr2 = RTLNTS(typres0, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr2+1)->it_r = Current;
	RTAR(tr2,Current);
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {1048,1304,739,0xFFFF};
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
		EIF_TYPE_INDEX typarr0[] = {1048,1219,0,0xFFF9,8,734,739,739,739,763,763,763,739,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		
		typres0 = eif_compound_id(dftype, 1219, typarr0);
		tr5 = RTLNRW(typres0, 0, (EIF_POINTER) _A1049_330_2_3_4_5_6_7_8_9, (EIF_POINTER)(0),1048, 330, tr3, 0, 0, 1, 0, tr2, 8);
	}
	ur1 = RTCCL(tr5);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(537, 124, "extend", tr1))(tr1, ur1x);
	RTHOOK(15);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1048, 337, dtype))(Current);
	RTHOOK(16);
	ur1 = RTCCL(arg3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1048, 353, dtype))(Current, ur1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(17);
		RTCT("tile_is_blank", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 331, dtype));
		if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) 1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(18);
		RTCT("player_initialized", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 347, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg4)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(19);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {TTT_TILE}.mouse_enter_action */
void F1049_19041 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "mouse_enter_action";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23106);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23106);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 335, dtype));
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 331, dtype));
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN) !tb1 && tb2)) {
		RTHOOK(2);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1048, 339, dtype))(Current);
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

/* {TTT_TILE}.mouse_leave_action */
void F1049_19042 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "mouse_leave_action";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23107);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23107);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 335, dtype));
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 332, dtype));
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN) !tb1 && tb2)) {
		RTHOOK(2);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1048, 337, dtype))(Current);
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

/* {TTT_TILE}.mouse_button_action */
void F1049_19043 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x)
{
	GTCX
	char *l_feature_name = "mouse_button_action";
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
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
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
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
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
	
	RTEAA(l_feature_name, 1048, Current, 0, 8, 23108);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23108);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 335, dtype));
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 331, dtype));
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 332, dtype));
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN) !tb1 && (EIF_BOOLEAN) (tb2 || tb3))) {
		RTHOOK(2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 347, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype));
		ui4_1 = ti4_1;
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype));
		ui4_2 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(338, 34, "process_user_move", tr1))(tr1, ui4_1x, ui4_2x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
#undef up1
#undef ui4_1
#undef ui4_2
#undef arg8
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {TTT_TILE}.blank */
EIF_TYPED_VALUE F1049_19044 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1048,331, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.highlight */
EIF_TYPED_VALUE F1049_19045 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1048,332, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.bender */
EIF_TYPED_VALUE F1049_19046 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1048,333, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.fry */
EIF_TYPED_VALUE F1049_19047 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1048,334, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.blocked */
EIF_TYPED_VALUE F1049_19048 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1048,335, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.set_bender */
void F1049_19049 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_bender";
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
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23124);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23124);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1048, 355, dtype))(Current);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1048, 333, 0x04000000, 1); /* bender */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 333, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1048, 331, 0x04000000, 1); /* blank */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 331, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1048, 334, 0x04000000, 1); /* fry */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 334, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 1048, 332, 0x04000000, 1); /* highlight */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 332, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("set_bender", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 333, dtype));
		if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) 1)) {
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
}

/* {TTT_TILE}.set_blank */
void F1049_19050 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_blank";
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
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23115);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23115);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1048, 356, dtype))(Current);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1048, 333, 0x04000000, 1); /* bender */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 333, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1048, 331, 0x04000000, 1); /* blank */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 331, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1048, 334, 0x04000000, 1); /* fry */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 334, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 1048, 332, 0x04000000, 1); /* highlight */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 332, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("set_blank", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 331, dtype));
		if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) 1)) {
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
}

/* {TTT_TILE}.set_fry */
void F1049_19051 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_fry";
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
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23116);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23116);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1048, 354, dtype))(Current);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1048, 333, 0x04000000, 1); /* bender */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 333, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1048, 331, 0x04000000, 1); /* blank */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 331, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1048, 334, 0x04000000, 1); /* fry */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 334, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 1048, 332, 0x04000000, 1); /* highlight */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 332, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("set_fry", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 334, dtype));
		if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) 1)) {
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
}

/* {TTT_TILE}.set_highlight */
void F1049_19052 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_highlight";
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
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23117);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23117);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1048, 357, dtype))(Current);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1048, 333, 0x04000000, 1); /* bender */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 333, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1048, 331, 0x04000000, 1); /* blank */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 331, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1048, 334, 0x04000000, 1); /* fry */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 334, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 1048, 332, 0x04000000, 1); /* highlight */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 332, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("set_highlight", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 332, dtype));
		if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) 1)) {
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
}

/* {TTT_TILE}.set_blocked */
void F1049_19053 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_blocked";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23118);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1048, Current, 23118);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 1048, 335, 0x04000000, 1); /* blocked */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1048, 335, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {TTT_TILE}.row */
EIF_TYPED_VALUE F1049_19054 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1048,341, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.column */
EIF_TYPED_VALUE F1049_19055 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1048,342, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.x_coord */
EIF_TYPED_VALUE F1049_19056 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1048,343, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.y_coord */
EIF_TYPED_VALUE F1049_19057 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1048,344, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.height */
EIF_TYPED_VALUE F1049_19058 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 190L);
	return r;
}

/* {TTT_TILE}.width */
EIF_TYPED_VALUE F1049_19059 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 190L);
	return r;
}

/* {TTT_TILE}.player */
EIF_TYPED_VALUE F1049_19060 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1048,347, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.pixmap_fry */
EIF_TYPED_VALUE F1049_19061 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1048,348, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.pixmap_bender */
EIF_TYPED_VALUE F1049_19062 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1048,349, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.pixmap_blank */
EIF_TYPED_VALUE F1049_19063 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1048,350, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.pixmap_highlight */
EIF_TYPED_VALUE F1049_19064 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1048,351, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.pixmaps_are_initialized */
EIF_TYPED_VALUE F1049_19065 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1048,352, Dtype(Current)));
	return r;
}


/* {TTT_TILE}.put_in_parent_container */
void F1049_19066 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_in_parent_container";
	RTEX;
#define arg1 arg1x.it_r
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
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1048, Current, 0, 1, 23131);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23131);
	if (arg1) {
		RTCC(arg1, 1048, l_feature_name, 1, 847);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	ur1 = RTCCL(Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 343, dtype));
	ui4_1 = ti4_1;
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 344, dtype));
	ui4_2 = ti4_2;
	ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 346, dtype))(Current)).it_i4);
	ui4_3 = ti4_3;
	ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 345, dtype))(Current)).it_i4);
	ui4_4 = ti4_4;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(847, 296, "extend_with_position_and_size", arg1))(arg1, ur1x, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef arg1
}

/* {TTT_TILE}.set_pixmap_to_fry */
void F1049_19067 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_pixmap_to_fry";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
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
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23132);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23132);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1048, 190, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef ur1
}

/* {TTT_TILE}.set_pixmap_to_bender */
void F1049_19068 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_pixmap_to_bender";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
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
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23133);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23133);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 349, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1048, 190, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef ur1
}

/* {TTT_TILE}.set_pixmap_to_blank */
void F1049_19069 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_pixmap_to_blank";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
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
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23134);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23134);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 350, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1048, 190, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef ur1
}

/* {TTT_TILE}.set_pixmap_to_highlight */
void F1049_19070 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_pixmap_to_highlight";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
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
	
	RTEAA(l_feature_name, 1048, Current, 0, 0, 23135);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23135);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 351, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1048, 190, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef ur1
}

/* {TTT_TILE}.initialize_pixmaps */
void F1049_19071 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "initialize_pixmaps";
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
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	dtype = Dtype(Current);

	RTLI(5);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLR(4,loc1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1048, Current, 1, 0, 23136);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1048, Current, 23136);
	RTIV(Current, RTAL);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 363, dtype));
	if (tb1) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 364, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 != NULL)) {
			tr1 = RTLN(235);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(235, 26, Dtype(tr1)))(tr1);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 364, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(235, 54, "once_raise", tr1))(tr1, ur1x);
		}
	} else {
		RTO_TRY
			RTDBGAA(Current, dtype, 1048, 363, 0x04000000, 1); /* _19071_initialize_pixmaps__called */
			
			*(EIF_BOOLEAN *)(Current + RTWA(1048, 363, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(1);
			RTDBGAL(Current, 1, 0xF8000356, 0, 0); /* loc1 */
			
			tr1 = RTLN(854);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
			RTNHOOK(1,1);
			loc1 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(2);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 305, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(2,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 320, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ur1 = RTCCL(tr2);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype));
			tr1 = c_outi(ti4_1);
			ur1 = RTCCL(tr1);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = RTMS_EX_H("_",1,95);
			ur1 = tr2;
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype));
			tr1 = c_outi(ti4_1);
			ur1 = RTCCL(tr1);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 322, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", loc1))(loc1, ur1x);
			RTHOOK(3);
			RTDBGAA(Current, dtype, 1048, 348, 0xF8000356, 0); /* pixmap_fry */
			
			RTAR(Current, loc1);
			*(EIF_REFERENCE *)(Current + RTWA(1048, 348, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
			RTHOOK(4);
			RTDBGAL(Current, 1, 0xF8000356, 0, 0); /* loc1 */
			
			tr1 = RTLN(854);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
			RTNHOOK(4,1);
			loc1 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(5);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 305, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 320, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ur1 = RTCCL(tr2);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype));
			tr1 = c_outi(ti4_1);
			ur1 = RTCCL(tr1);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = RTMS_EX_H("_",1,95);
			ur1 = tr2;
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype));
			tr1 = c_outi(ti4_1);
			ur1 = RTCCL(tr1);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 321, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", loc1))(loc1, ur1x);
			RTHOOK(6);
			RTDBGAA(Current, dtype, 1048, 349, 0xF8000356, 0); /* pixmap_bender */
			
			RTAR(Current, loc1);
			*(EIF_REFERENCE *)(Current + RTWA(1048, 349, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
			RTHOOK(7);
			RTDBGAL(Current, 1, 0xF8000356, 0, 0); /* loc1 */
			
			tr1 = RTLN(854);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
			RTNHOOK(7,1);
			loc1 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(8);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 305, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(8,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 320, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ur1 = RTCCL(tr2);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype));
			tr1 = c_outi(ti4_1);
			ur1 = RTCCL(tr1);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = RTMS_EX_H("_",1,95);
			ur1 = tr2;
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype));
			tr1 = c_outi(ti4_1);
			ur1 = RTCCL(tr1);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 323, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", loc1))(loc1, ur1x);
			RTHOOK(9);
			RTDBGAA(Current, dtype, 1048, 350, 0xF8000356, 0); /* pixmap_blank */
			
			RTAR(Current, loc1);
			*(EIF_REFERENCE *)(Current + RTWA(1048, 350, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
			RTHOOK(10);
			RTDBGAL(Current, 1, 0xF8000356, 0, 0); /* loc1 */
			
			tr1 = RTLN(854);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
			RTNHOOK(10,1);
			loc1 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(11);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 305, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(11,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 320, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ur1 = RTCCL(tr2);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1064, 98, "pathname_to_string", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype));
			tr1 = c_outi(ti4_1);
			ur1 = RTCCL(tr1);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = RTMS_EX_H("_",1,95);
			ur1 = tr2;
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype));
			tr1 = c_outi(ti4_1);
			ur1 = RTCCL(tr1);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr2))(tr2, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 324, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr1))(tr1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 254, "set_with_named_file", loc1))(loc1, ur1x);
			RTHOOK(12);
			RTDBGAA(Current, dtype, 1048, 351, 0xF8000356, 0); /* pixmap_highlight */
			
			RTAR(Current, loc1);
			*(EIF_REFERENCE *)(Current + RTWA(1048, 351, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
			RTHOOK(13);
			RTDBGAA(Current, dtype, 1048, 352, 0x04000000, 1); /* pixmaps_are_initialized */
			
			*(EIF_BOOLEAN *)(Current + RTWA(1048, 352, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		RTO_EXCEPT
			RTDBGAA(Current, dtype, 1048, 364, 0xF800019F, 0); /* _19071_initialize_pixmaps__exception */
			
			tr1 = RTLN(235);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(235, 26, Dtype(tr1)))(tr1);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(235, 32, "last_exception", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTAR(Current, tr2);
			*(EIF_REFERENCE *)(Current + RTWA(1048, 364, dtype)) = (EIF_REFERENCE) RTCCL(tr2);
		ereturn();
		RTO_END_EXCEPT
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(14);
		RTCT("pixmaps_initialized", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 352, dtype));
		if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) 1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(15);
		RTCT("pixmaps_not_void", EX_POST);
		tb1 = '\0';
		tb2 = '\0';
		tb3 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 348, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 != NULL)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 349, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb3 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		if (tb3) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 350, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb2 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		if (tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1048, 351, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(16);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
#undef ur1
}

/* {TTT_TILE}._19071_initialize_pixmaps__called */
EIF_TYPED_VALUE F1049_23663 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1048,363, Dtype(Current)));
	return r;
}


/* {TTT_TILE}._19071_initialize_pixmaps__exception */
EIF_TYPED_VALUE F1049_23664 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1048,364, Dtype(Current)));
	return r;
}


/* {TTT_TILE}._invariant */
void F1049_23853 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 1048, Current, 0, 23852);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("row_is_valid_value", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 341, dtype));
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (((EIF_INTEGER_32) 1L) <= ti4_1) && (EIF_BOOLEAN) (ti4_2 <= ((EIF_INTEGER_32) 3L)))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("column_is_valid_value", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 342, dtype));
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (((EIF_INTEGER_32) 1L) <= ti4_1) && (EIF_BOOLEAN) (ti4_2 <= ((EIF_INTEGER_32) 3L)))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("x_position_is_valid", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 343, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 343, dtype));
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (((EIF_INTEGER_32) 0L) <= ti4_1) && (EIF_BOOLEAN) (ti4_2 <= ((EIF_INTEGER_32) 780L)))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("y_position_is_valid", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 344, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1048, 344, dtype));
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (((EIF_INTEGER_32) 0L) <= ti4_1) && (EIF_BOOLEAN) (ti4_2 <= ((EIF_INTEGER_32) 780L)))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("only_one_state", Current);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 333, dtype));
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 334, dtype));
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 331, dtype));
	tb4 = *(EIF_BOOLEAN *)(Current + RTWA(1048, 332, dtype));
	if (((((((tb1) != (tb2))) != (tb3))) != (tb4))) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
}

void EIF_Minit1049 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
