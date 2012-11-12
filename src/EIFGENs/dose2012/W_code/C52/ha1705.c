/*
 * Code for class HASH_TABLE [G#1, POINTER]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1705_9556(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9557(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9558(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9559(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9560(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9561(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9562(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9563(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9564(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9565(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9566(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9567(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9568(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9569(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9570(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9571(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9572(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9573(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9574(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9575(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9576(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9577(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9578(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9579(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9580(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9581(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9582(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9583(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9584(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9585(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9586(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9587(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9588(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9589(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9590(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9591(EIF_REFERENCE);
extern void F1705_9592(EIF_REFERENCE);
extern void F1705_9593(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9594(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9595(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9596(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9597(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9598(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1705_9599(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1705_9600(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1705_9601(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1705_9602(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1705_9603(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9604(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9605(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9606(EIF_REFERENCE);
extern void F1705_9607(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9608(EIF_REFERENCE);
extern void F1705_9609(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9610(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9611(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9612(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9613(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9614(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9615(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9616(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9617(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9618(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9619(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9620(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9621(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9622(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9623(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9624(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9625(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9626(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9627(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9628(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9629(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9630(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9631(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9632(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9633(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9634(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9635(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9636(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9637(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9638(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9639(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9640(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9641(EIF_REFERENCE);
extern void F1705_9642(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_9643(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9644(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9645(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9646(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1705_9647(EIF_REFERENCE);
extern void F1705_9648(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9649(EIF_REFERENCE);
extern void F1705_9650(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9651(EIF_REFERENCE);
extern void F1705_9652(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9653(EIF_REFERENCE);
extern void F1705_9654(EIF_REFERENCE);
extern void F1705_9655(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9656(EIF_REFERENCE);
extern void F1705_9657(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9658(EIF_REFERENCE);
extern void F1705_9659(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9660(EIF_REFERENCE);
extern void F1705_9661(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1705_9662(EIF_REFERENCE);
extern void F1705_9663(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1705_23744(EIF_REFERENCE, int);
extern void EIF_Minit1705(void);
extern EIF_REFERENCE _A1705_46_2();

#ifdef __cplusplus
}
#endif

#include "eif_helpers.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {HASH_TABLE}.make */
void F1705_9556 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_POINTER loc3 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
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
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,loc2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_POINTER, &loc3);
	RTLU(SK_INT32, &loc4);
	
	RTEAA(l_feature_name, 1704, Current, 4, 1, 11369);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11369);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("n_non_negative", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF80001D7, 0, 0); /* loc1 */
	
	tr1 = RTLN(471);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(471, 26, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 147, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_max_int32 (arg1,ui4_1);
	loc4 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
	
	loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc4 + (EIF_INTEGER_32) (loc4 / ((EIF_INTEGER_32) 2L))) + ((EIF_INTEGER_32) 1L));
	RTHOOK(5);
	RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
	
	ui4_1 = loc4;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(471, 72, "higher_prime", loc1))(loc1, ui4_1x)).it_i4);
	loc4 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(6);
	RTDBGAA(Current, dtype, 1704, 56, 0x10000000, 1); /* capacity */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype)) = (EIF_INTEGER_32) loc4;
	RTHOOK(7);
	RTDBGAA(Current, dtype, 1704, 98, 0xF80004C9, 0); /* content */
	
	ui4_1 = (EIF_INTEGER_32) (arg1 + ((EIF_INTEGER_32) 1L));
	if (ui4_1< 0) {
		eraise ("non_negative_argument", EN_RT_CHECK);
	}
	tr1 = RTLNSP2(eif_non_attached_type(RTWCT(1704, 98, Current)),EO_REF,ui4_1,sizeof(EIF_REFERENCE), EIF_FALSE);
	RT_SPECIAL_COUNT(tr1) = 0;
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 98, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(8);
	RTDBGAA(Current, dtype, 1704, 99, 0xF8000642, 0); /* keys */
	
	ui4_2 = (EIF_INTEGER_32) (arg1 + ((EIF_INTEGER_32) 1L));
	if (ui4_2< 0) {
		eraise ("non_negative_argument", EN_RT_CHECK);
	}
	tr1 = RTLNSP2(eif_non_attached_type(RTWCT(1704, 99, Current)),0,ui4_2,sizeof(EIF_POINTER), EIF_TRUE);
	RT_SPECIAL_COUNT(tr1) = 0;
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 99, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(9);
	RTDBGAA(Current, dtype, 1704, 101, 0xF80005D0, 0); /* deleted_marks */
	
	ub1 = (EIF_BOOLEAN) 0;
	ui4_3 = (EIF_INTEGER_32) (arg1 + ((EIF_INTEGER_32) 1L));
	if (ui4_3< 0) {
		eraise ("non_negative_argument", EN_RT_CHECK);
	}
	tr1 = RTLNSP2(eif_non_attached_type(RTWCT(1704, 101, Current)),0,ui4_3,sizeof(EIF_BOOLEAN), EIF_TRUE);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1488, 34, Dtype(tr1)))(tr1, ub1x, ui4_3x);
	RTNHOOK(9,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 101, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(10);
	RTDBGAA(Current, dtype, 1704, 100, 0xF8000518, 0); /* indexes_map */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
	ui4_3 = ti4_1;
	ui4_4 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 1L));
	if (ui4_4< 0) {
		eraise ("non_negative_argument", EN_RT_CHECK);
	}
	tr1 = RTLNSP2(eif_non_attached_type(RTWCT(1704, 100, Current)),0,ui4_4,sizeof(EIF_INTEGER_32), EIF_TRUE);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1304, 34, Dtype(tr1)))(tr1, ui4_3x, ui4_4x);
	RTNHOOK(10,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 100, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(11);
	RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg1 + ((EIF_INTEGER_32) 1L));
	RTHOOK(12);
	RTDBGAA(Current, dtype, 1704, 55, 0x10000000, 1); /* count */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(13);
	RTDBGAA(Current, dtype, 1704, 108, 0x10000000, 1); /* deleted_item_position */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(14);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(15);
	RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
	
	RTAR(Current, loc2);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
	RTHOOK(16);
	RTDBGAA(Current, dtype, 1704, 103, 0x04000000, 1); /* has_default */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(17);
	RTDBGAA(Current, dtype, 1704, 102, 0x10000000, 1); /* item_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(18);
	RTDBGAA(Current, dtype, 1704, 112, 0x10000000, 1); /* ht_lowest_deleted_position */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 109, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 112, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(19);
	RTDBGAA(Current, dtype, 1704, 113, 0xF8000000, 0); /* ht_deleted_item */
	
	RTAR(Current, loc2);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 113, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
	RTHOOK(20);
	RTDBGAA(Current, dtype, 1704, 114, 0x40000000, 0); /* ht_deleted_key */
	
	*(EIF_POINTER *)(Current + RTWA(1704, 114, dtype)) = (EIF_POINTER) loc3;
	if (RTAL & CK_ENSURE) {
		RTHOOK(21);
		RTCT("breathing_space", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		if ((EIF_BOOLEAN) (arg1 < ti4_1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(22);
		RTCT("more_than_minimum", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 147, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (ti4_1 > ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(23);
		RTCT("no_status", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 145, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(24);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ub1
#undef arg1
}

/* {HASH_TABLE}.accommodate */
void F1705_9557 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "accommodate";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(8);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc3);
	RTLR(3,tr2);
	RTLR(4,loc4);
	RTLR(5,loc5);
	RTLR(6,ur1);
	RTLR(7,tr3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 1704, Current, 5, 1, 11370);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11370);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT(NULL, EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(2);
	RTDBGAL(Current, 3, 0xF80006A8, 0, 0); /* loc3 */
	
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr2))(tr2)).it_i4);
	RTNHOOK(2,2);
	ui4_1 = arg1;
	ti4_3 = eif_max_int32 (ti4_2,ui4_1);
	ui4_1 = ti4_3;
	loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 95, dtype))(Current, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	RTDBGAL(Current, 4, 0xF80004C9, 0, 0); /* loc4 */
	
	loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(4);
	RTDBGAL(Current, 5, 0xF8000642, 0, 0); /* loc5 */
	
	loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", loc5))(loc5)).it_i4);
	loc2 = (EIF_INTEGER_32) ti4_2;
	for (;;) {
		RTHOOK(6);
		if ((EIF_BOOLEAN)(loc1 == loc2)) break;
		RTHOOK(7);
		ui4_1 = loc1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 116, dtype))(Current, ui4_1x)).it_b);
		if (tb1) {
			RTHOOK(8);
			ui4_1 = loc1;
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", loc4))(loc4, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr2);
			ui4_1 = loc1;
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", loc5))(loc5, ui4_1x)).it_p);
			up1 = tp1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1704, 83, "put", loc3))(loc3, ur1x, up1x);
		}
		RTHOOK(9);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	RTHOOK(10);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
	if (tb1) {
		RTHOOK(11);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(11,1);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		ui4_1 = ti4_2;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr2))(tr2, ui4_1x)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_2;
		RTHOOK(12);
		ui4_1 = loc1;
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", loc4))(loc4, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr2);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(12,1);
		ui4_1 = loc1;
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", tr3))(tr3, ui4_1x)).it_p);
		up1 = tp1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1704, 83, "put", loc3))(loc3, ur1x, up1x);
	}
	RTHOOK(13);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 98, "content", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 119, dtype))(Current, ur1x);
	RTHOOK(14);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 99, "keys", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 121, dtype))(Current, ur1x);
	RTHOOK(15);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 101, "deleted_marks", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 122, dtype))(Current, ur1x);
	RTHOOK(16);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 100, "indexes_map", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 123, dtype))(Current, ur1x);
	RTHOOK(17);
	RTDBGAA(Current, dtype, 1704, 56, 0x10000000, 1); /* capacity */
	
	ti4_2 = *(EIF_INTEGER_32 *)(loc3 + RTVA(1704, 56, "capacity", loc3));
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype)) = (EIF_INTEGER_32) ti4_2;
	RTHOOK(18);
	RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
	
	ti4_2 = *(EIF_INTEGER_32 *)(loc3 + RTVA(1704, 104, "iteration_position", loc3));
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) ti4_2;
	if (RTAL & CK_ENSURE) {
		RTHOOK(19);
		RTCT("count_not_changed", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		RTCO(tr1);
		if ((EIF_BOOLEAN)(ti4_2 == ti4_1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(20);
		RTCT("breathing_space", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		if ((EIF_BOOLEAN) (ti4_2 < ti4_3)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(21);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.found_item */
EIF_TYPED_VALUE F1705_9558 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1704,43, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.item */
EIF_TYPED_VALUE F1705_9559 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "item";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc8 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_POINTER loc12 = (EIF_POINTER) 0;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(8);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,Result);
	RTLR(4,loc9);
	RTLR(5,loc10);
	RTLR(6,loc11);
	RTLR(7,ur1);
	RTLU (SK_REF, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_INT32, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_POINTER, &loc12);
	
	RTEAA(l_feature_name, 1704, Current, 12, 1, 11372);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11372);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_key", EX_PRE);
		up1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 74, dtype))(Current, up1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
	
	loc7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
	loc7 = (EIF_INTEGER_32) loc7;
	RTHOOK(3);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 == loc1) || EIF_FALSE)) {
		RTHOOK(4);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		if (tb1) {
			RTHOOK(5);
			RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			RTNHOOK(5,2);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
			ui4_1 = ti4_1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr2))(tr2, ui4_1x)).it_i4);
			ui4_1 = ti4_1;
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			Result = (EIF_REFERENCE) RTCCL(tr2);
		}
	} else {
		RTHOOK(6);
		RTDBGAL(Current, 9, 0xF8000642, 0, 0); /* loc9 */
		
		loc9 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(7);
		RTDBGAL(Current, 10, 0xF8000518, 0, 0); /* loc10 */
		
		loc10 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(8);
		RTDBGAL(Current, 11, 0xF80005D0, 0, 0); /* loc11 */
		
		loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(9);
		RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
		
		loc6 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		RTHOOK(10);
		RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
		
		loc8 = (EIF_INTEGER_32) loc6;
		RTHOOK(11);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (EIF_INTEGER_32) (0x7FFFFFFF & (EIF_INTEGER_32) ((rt_int_ptr) (arg1)));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(12);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (((EIF_INTEGER_32) 1L) + (EIF_INTEGER_32) (loc2 % (EIF_INTEGER_32) (loc6 - ((EIF_INTEGER_32) 1L))));
		RTHOOK(13);
		RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
		
		loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc2 % loc6) - loc3);
		for (;;) {
			RTHOOK(14);
			if ((EIF_BOOLEAN)(loc8 == ((EIF_INTEGER_32) 0L))) break;
			RTHOOK(15);
			RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
			
			loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc5 + loc3) % loc6);
			RTHOOK(16);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			ui4_1 = loc5;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", loc10))(loc10, ui4_1x)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(17);
			if ((EIF_BOOLEAN) (loc4 >= ((EIF_INTEGER_32) 0L))) {
				RTHOOK(18);
				RTDBGAL(Current, 12, 0x40000000, 0, 0); /* loc12 */
				
				ui4_1 = loc4;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", loc9))(loc9, ui4_1x)).it_p);
				loc12 = (EIF_POINTER) tp1;
				if (
					WDBG(1704,"detect_hash_table_catcall")
				) {
					if (RTAL & CK_CHECK) {
						RTHOOK(19);
						RTCT("catcall_detected", EX_CHECK);
						tb1 = '\0';
						if (EIF_TRUE) {
							ur1 = RTLN(778);
							*(EIF_POINTER *)ur1 = arg1;
							tr1 = RTLN(778);
							*(EIF_POINTER *)tr1 = loc12;
							
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(779, 4, "same_type", tr1))(tr1, ur1x)).it_b);
							tb1 = tb2;
						}
						if (tb1) {
							RTCK;
						} else {
							RTCF;
						}
					}
				}
				RTHOOK(20);
				up1 = loc12;
				up2 = arg1;
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1704, 60, dtype))(Current, up1x, up2x)).it_b);
				if (tb1) {
					RTHOOK(21);
					RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					RTHOOK(22);
					RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(22,1);
					ui4_1 = loc4;
					tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
					Result = (EIF_REFERENCE) RTCCL(tr2);
				}
			} else {
				RTHOOK(23);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(loc4 == ti4_1)) {
					RTHOOK(24);
					RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
				} else {
					RTHOOK(25);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(loc7 == ti4_1)) {
						RTHOOK(26);
						RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
						
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 111, dtype))(Current)).it_i4);
						loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) -loc4 + ti4_1);
						if (RTAL & CK_CHECK) {
							RTHOOK(27);
							RTCT("l_pos_valid", EX_CHECK);
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc11))(loc11)).it_i4);
							if ((EIF_BOOLEAN) (loc4 < ti4_1)) {
								RTCK;
							} else {
								RTCF;
							}
						}
						RTHOOK(28);
						ui4_1 = loc4;
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", loc11))(loc11, ui4_1x)).it_b);
						if ((EIF_BOOLEAN) !tb1) {
							RTHOOK(29);
							RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
							
							loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
						} else {
							RTHOOK(30);
							RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
							
							loc7 = (EIF_INTEGER_32) loc5;
						}
					}
				}
			}
			RTHOOK(31);
			RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
			
			loc8--;
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(32);
		RTCT("default_value_if_not_present", EX_POST);
		tb1 = '\01';
		up1 = arg1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		if (((EIF_BOOLEAN) !tb2)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 126, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = RTCEQ(Result, tr1);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(33);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.at */
EIF_TYPED_VALUE F1705_9560 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "at";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc8 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_POINTER loc12 = (EIF_POINTER) 0;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(8);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,Result);
	RTLR(4,loc9);
	RTLR(5,loc10);
	RTLR(6,loc11);
	RTLR(7,ur1);
	RTLU (SK_REF, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_INT32, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_POINTER, &loc12);
	
	RTEAA(l_feature_name, 1704, Current, 12, 1, 11373);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11373);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_key", EX_PRE);
		up1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 74, dtype))(Current, up1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
	
	loc7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
	loc7 = (EIF_INTEGER_32) loc7;
	RTHOOK(3);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 == loc1) || EIF_FALSE)) {
		RTHOOK(4);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		if (tb1) {
			RTHOOK(5);
			RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			RTNHOOK(5,2);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
			ui4_1 = ti4_1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr2))(tr2, ui4_1x)).it_i4);
			ui4_1 = ti4_1;
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			Result = (EIF_REFERENCE) RTCCL(tr2);
		}
	} else {
		RTHOOK(6);
		RTDBGAL(Current, 9, 0xF8000642, 0, 0); /* loc9 */
		
		loc9 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(7);
		RTDBGAL(Current, 10, 0xF8000518, 0, 0); /* loc10 */
		
		loc10 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(8);
		RTDBGAL(Current, 11, 0xF80005D0, 0, 0); /* loc11 */
		
		loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(9);
		RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
		
		loc6 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		RTHOOK(10);
		RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
		
		loc8 = (EIF_INTEGER_32) loc6;
		RTHOOK(11);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (EIF_INTEGER_32) (0x7FFFFFFF & (EIF_INTEGER_32) ((rt_int_ptr) (arg1)));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(12);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (((EIF_INTEGER_32) 1L) + (EIF_INTEGER_32) (loc2 % (EIF_INTEGER_32) (loc6 - ((EIF_INTEGER_32) 1L))));
		RTHOOK(13);
		RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
		
		loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc2 % loc6) - loc3);
		for (;;) {
			RTHOOK(14);
			if ((EIF_BOOLEAN)(loc8 == ((EIF_INTEGER_32) 0L))) break;
			RTHOOK(15);
			RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
			
			loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc5 + loc3) % loc6);
			RTHOOK(16);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			ui4_1 = loc5;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", loc10))(loc10, ui4_1x)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(17);
			if ((EIF_BOOLEAN) (loc4 >= ((EIF_INTEGER_32) 0L))) {
				RTHOOK(18);
				RTDBGAL(Current, 12, 0x40000000, 0, 0); /* loc12 */
				
				ui4_1 = loc4;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", loc9))(loc9, ui4_1x)).it_p);
				loc12 = (EIF_POINTER) tp1;
				if (
					WDBG(1704,"detect_hash_table_catcall")
				) {
					if (RTAL & CK_CHECK) {
						RTHOOK(19);
						RTCT("catcall_detected", EX_CHECK);
						tb1 = '\0';
						if (EIF_TRUE) {
							ur1 = RTLN(778);
							*(EIF_POINTER *)ur1 = arg1;
							tr1 = RTLN(778);
							*(EIF_POINTER *)tr1 = loc12;
							
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(779, 4, "same_type", tr1))(tr1, ur1x)).it_b);
							tb1 = tb2;
						}
						if (tb1) {
							RTCK;
						} else {
							RTCF;
						}
					}
				}
				RTHOOK(20);
				up1 = loc12;
				up2 = arg1;
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1704, 60, dtype))(Current, up1x, up2x)).it_b);
				if (tb1) {
					RTHOOK(21);
					RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					RTHOOK(22);
					RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(22,1);
					ui4_1 = loc4;
					tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
					Result = (EIF_REFERENCE) RTCCL(tr2);
				}
			} else {
				RTHOOK(23);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(loc4 == ti4_1)) {
					RTHOOK(24);
					RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
				} else {
					RTHOOK(25);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(loc7 == ti4_1)) {
						RTHOOK(26);
						RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
						
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 111, dtype))(Current)).it_i4);
						loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) -loc4 + ti4_1);
						if (RTAL & CK_CHECK) {
							RTHOOK(27);
							RTCT("l_pos_valid", EX_CHECK);
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc11))(loc11)).it_i4);
							if ((EIF_BOOLEAN) (loc4 < ti4_1)) {
								RTCK;
							} else {
								RTCF;
							}
						}
						RTHOOK(28);
						ui4_1 = loc4;
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", loc11))(loc11, ui4_1x)).it_b);
						if ((EIF_BOOLEAN) !tb1) {
							RTHOOK(29);
							RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
							
							loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
						} else {
							RTHOOK(30);
							RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
							
							loc7 = (EIF_INTEGER_32) loc5;
						}
					}
				}
			}
			RTHOOK(31);
			RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
			
			loc8--;
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(32);
		RTCT("default_value_if_not_present", EX_POST);
		tb1 = '\01';
		up1 = arg1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		if (((EIF_BOOLEAN) !tb2)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 126, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = RTCEQ(Result, tr1);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(33);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.has */
EIF_TYPED_VALUE F1705_9561 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "has";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc8 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_POINTER loc12 = (EIF_POINTER) 0;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,loc9);
	RTLR(2,loc10);
	RTLR(3,loc11);
	RTLR(4,tr1);
	RTLR(5,ur1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_INT32, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_POINTER, &loc12);
	
	RTEAA(l_feature_name, 1704, Current, 12, 1, 11374);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11374);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
	
	loc7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
	loc7 = (EIF_INTEGER_32) loc7;
	RTHOOK(2);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 == loc1) || EIF_FALSE)) {
		RTHOOK(3);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		if (tb1) {
			RTHOOK(4);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
	} else {
		RTHOOK(5);
		RTDBGAL(Current, 9, 0xF8000642, 0, 0); /* loc9 */
		
		loc9 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(6);
		RTDBGAL(Current, 10, 0xF8000518, 0, 0); /* loc10 */
		
		loc10 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(7);
		RTDBGAL(Current, 11, 0xF80005D0, 0, 0); /* loc11 */
		
		loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(8);
		RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
		
		loc6 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		RTHOOK(9);
		RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
		
		loc8 = (EIF_INTEGER_32) loc6;
		RTHOOK(10);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (EIF_INTEGER_32) (0x7FFFFFFF & (EIF_INTEGER_32) ((rt_int_ptr) (arg1)));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(11);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (((EIF_INTEGER_32) 1L) + (EIF_INTEGER_32) (loc2 % (EIF_INTEGER_32) (loc6 - ((EIF_INTEGER_32) 1L))));
		RTHOOK(12);
		RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
		
		loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc2 % loc6) - loc3);
		for (;;) {
			RTHOOK(13);
			if ((EIF_BOOLEAN)(loc8 == ((EIF_INTEGER_32) 0L))) break;
			RTHOOK(14);
			RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
			
			loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc5 + loc3) % loc6);
			RTHOOK(15);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			ui4_1 = loc5;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", loc10))(loc10, ui4_1x)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(16);
			if ((EIF_BOOLEAN) (loc4 >= ((EIF_INTEGER_32) 0L))) {
				RTHOOK(17);
				RTDBGAL(Current, 12, 0x40000000, 0, 0); /* loc12 */
				
				ui4_1 = loc4;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", loc9))(loc9, ui4_1x)).it_p);
				loc12 = (EIF_POINTER) tp1;
				if (
					WDBG(1704,"detect_hash_table_catcall")
				) {
					if (RTAL & CK_CHECK) {
						RTHOOK(18);
						RTCT("catcall_detected", EX_CHECK);
						tb1 = '\0';
						if (EIF_TRUE) {
							ur1 = RTLN(778);
							*(EIF_POINTER *)ur1 = arg1;
							tr1 = RTLN(778);
							*(EIF_POINTER *)tr1 = loc12;
							
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(779, 4, "same_type", tr1))(tr1, ur1x)).it_b);
							tb1 = tb2;
						}
						if (tb1) {
							RTCK;
						} else {
							RTCF;
						}
					}
				}
				RTHOOK(19);
				up1 = loc12;
				up2 = arg1;
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1704, 60, dtype))(Current, up1x, up2x)).it_b);
				if (tb1) {
					RTHOOK(20);
					RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					RTHOOK(21);
					RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
					
					Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
				}
			} else {
				RTHOOK(22);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(loc4 == ti4_1)) {
					RTHOOK(23);
					RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
				} else {
					RTHOOK(24);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(loc7 == ti4_1)) {
						RTHOOK(25);
						RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
						
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 111, dtype))(Current)).it_i4);
						loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) -loc4 + ti4_1);
						if (RTAL & CK_CHECK) {
							RTHOOK(26);
							RTCT("l_pos_valid", EX_CHECK);
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc11))(loc11)).it_i4);
							if ((EIF_BOOLEAN) (loc4 < ti4_1)) {
								RTCK;
							} else {
								RTCF;
							}
						}
						RTHOOK(27);
						ui4_1 = loc4;
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", loc11))(loc11, ui4_1x)).it_b);
						if ((EIF_BOOLEAN) !tb1) {
							RTHOOK(28);
							RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
							
							loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
						} else {
							RTHOOK(29);
							RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
							
							loc7 = (EIF_INTEGER_32) loc5;
						}
					}
				}
			}
			RTHOOK(30);
			RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
			
			loc8--;
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(31);
		RTCT("default_case", EX_POST);
		tb1 = '\01';
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(arg1 == tp1)) {
			tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
			tb1 = (EIF_BOOLEAN)(Result == tb2);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(32);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.has_key */
EIF_TYPED_VALUE F1705_9562 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "has_key";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,loc2);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1704, Current, 2, 1, 11375);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11375);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
	RTHOOK(2);
	up1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
	RTHOOK(4);
	if (Result) {
		RTHOOK(5);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 105, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTAR(Current, tr2);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(tr2);
	} else {
		RTHOOK(6);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		RTAR(Current, loc2);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
	}
	RTHOOK(7);
	RTDBGAA(Current, dtype, 1704, 102, 0x10000000, 1); /* item_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype)) = (EIF_INTEGER_32) loc1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("default_case", EX_POST);
		tb1 = '\01';
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(arg1 == tp1)) {
			tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
			tb1 = (EIF_BOOLEAN)(Result == tb2);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("found", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN)(Result == tb1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("item_if_found", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		if (tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			up2 = arg1;
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			tb1 = RTCEQ(tr1, tr2);
		}
		if (tb1) {
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
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef up2
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.has_item */
EIF_TYPED_VALUE F1705_9563 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "has_item";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,loc3);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1704, Current, 3, 1, 11376);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11376);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 149, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
	if (tb1) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTNHOOK(2,2);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		ui4_1 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr2))(tr2, ui4_1x)).it_i4);
		ui4_1 = ti4_1;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		Result = (EIF_BOOLEAN) RTCEQ(arg1, tr2);
	}
	RTHOOK(3);
	if ((EIF_BOOLEAN) !Result) {
		RTHOOK(4);
		RTDBGAL(Current, 3, 0xF80004C9, 0, 0); /* loc3 */
		
		loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(5);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1225, 46, "count", loc3))(loc3)).it_i4);
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(6);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 31, dtype));
		if (tb1) {
			for (;;) {
				RTHOOK(7);
				if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 == loc2) || Result)) break;
				RTHOOK(8);
				RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
				
				tb1 = '\0';
				ui4_1 = loc1;
				tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 116, dtype))(Current, ui4_1x)).it_b);
				if (tb2) {
					ui4_1 = loc1;
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", loc3))(loc3, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					tb1 = RTEQ(arg1, tr1);
				}
				Result = (EIF_BOOLEAN) tb1;
				RTHOOK(9);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				
				loc1++;
			}
		} else {
			for (;;) {
				RTHOOK(10);
				if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 == loc2) || Result)) break;
				RTHOOK(11);
				RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
				
				tb1 = '\0';
				ui4_1 = loc1;
				tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 116, dtype))(Current, ui4_1x)).it_b);
				if (tb2) {
					ui4_1 = loc1;
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", loc3))(loc3, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					tb1 = RTCEQ(arg1, tr1);
				}
				Result = (EIF_BOOLEAN) tb1;
				RTHOOK(12);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				
				loc1++;
			}
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(13);
		RTCT("not_found_in_empty", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 35, dtype))(Current)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef up2
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.current_keys */
EIF_TYPED_VALUE F1705_9564 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "current_keys";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 1704, Current, 2, 0, 11377);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11377);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 35, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0xF8000648, 0,0); /* Result */
		
		{
			EIF_TYPE_INDEX typarr0[] = {1704,1608,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[2] = RTWCT(1704, 151, Current);
			
			typres0 = eif_compound_id(dftype, 1608, typarr0);
			tr1 = RTLN(typres0);
		}
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1608, 49, Dtype(tr1)))(tr1);
		RTNHOOK(2,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
		RTHOOK(4);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 76, dtype))(Current);
		RTHOOK(5);
		RTDBGAL(Current, 0, 0xF8000648, 0,0); /* Result */
		
		{
			EIF_TYPE_INDEX typarr0[] = {1704,1608,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[2] = RTWCT(1704, 151, Current);
			
			typres0 = eif_compound_id(dftype, 1608, typarr0);
			tr1 = RTLN(typres0);
		}
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 51, dtype))(Current)).it_p);
		up1 = tp1;
		ui4_1 = ((EIF_INTEGER_32) 1L);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ui4_2 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1608, 50, Dtype(tr1)))(tr1, up1x, ui4_1x, ui4_2x);
		RTNHOOK(5,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(6);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
		RTHOOK(7);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 77, dtype))(Current);
		for (;;) {
			RTHOOK(8);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 72, dtype))(Current)).it_b);
			if (tb1) break;
			RTHOOK(9);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			loc1++;
			RTHOOK(10);
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 51, dtype))(Current)).it_p);
			up1 = tp1;
			ui4_1 = loc1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1608, 75, "put", Result))(Result, up1x, ui4_1x);
			RTHOOK(11);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 77, dtype))(Current);
		}
		RTHOOK(12);
		RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) loc2;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(13);
		RTCT("good_count", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1608, 61, "count", Result))(Result)).it_i4);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ui4_1
#undef ui4_2
}

/* {HASH_TABLE}.item_for_iteration */
EIF_TYPED_VALUE F1705_9565 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "item_for_iteration";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11378);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11378);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_off", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 72, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
	ui4_1 = ti4_1;
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr2);
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
#undef up2
#undef ui4_1
}

/* {HASH_TABLE}.key_for_iteration */
EIF_TYPED_VALUE F1705_9566 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "key_for_iteration";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11379);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11379);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_off", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 72, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x40000000, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
	ui4_1 = ti4_1;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", tr1))(tr1, ui4_1x)).it_p);
	Result = (EIF_POINTER) tp1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef up1
#undef ui4_1
}

/* {HASH_TABLE}.cursor */
EIF_TYPED_VALUE F1705_9567 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cursor";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11380);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11380);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80001D8, 0,0); /* Result */
	
	tr1 = RTLN(473);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(473, 32, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("cursor_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ui4_1
}

/* {HASH_TABLE}.new_cursor */
EIF_TYPED_VALUE F1705_9568 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "new_cursor";
	RTEX;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11381);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11381);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80006AD, 0,0); /* Result */
	
	{
		EIF_TYPE_INDEX typarr0[] = {1704,1709,0,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = RTWCT(1704, 149, Current);
		typarr0[3] = RTWCT(1704, 151, Current);
		
		typres0 = eif_compound_id(Dftype(Current), 1709, typarr0);
		tr1 = RTLN(typres0);
	}
	ur1 = RTCCL(Current);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1709, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1709, 45, "start", Result))(Result);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("result_attached", EX_POST);
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
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
}

/* {HASH_TABLE}.iteration_item */
EIF_TYPED_VALUE F1705_9569 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "iteration_item";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11382);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11382);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_index", EX_PRE);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 75, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ui4_1 = arg1;
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.count */
EIF_TYPED_VALUE F1705_9570 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704,55, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.capacity */
EIF_TYPED_VALUE F1705_9571 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704,56, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.occurrences */
EIF_TYPED_VALUE F1705_9572 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "occurrences";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 1704, Current, 1, 1, 11385);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11385);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 149, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
	RTHOOK(2);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 31, dtype));
	if (tb1) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 76, dtype))(Current);
		for (;;) {
			RTHOOK(4);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 72, dtype))(Current)).it_b);
			if (tb1) break;
			RTHOOK(5);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 50, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			if (RTEQ(tr1, arg1)) {
				RTHOOK(6);
				RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
				
				Result++;
			}
			RTHOOK(7);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 77, dtype))(Current);
		}
	} else {
		RTHOOK(8);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 76, dtype))(Current);
		for (;;) {
			RTHOOK(9);
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 72, dtype))(Current)).it_b);
			if (tb2) break;
			RTHOOK(10);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 50, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			if (RTCEQ(tr1, arg1)) {
				RTHOOK(11);
				RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
				
				Result++;
			}
			RTHOOK(12);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 77, dtype))(Current);
		}
	}
	RTHOOK(13);
	RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) loc1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(14);
		RTCT("non_negative_occurrences", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(15);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef arg1
}

/* {HASH_TABLE}.iteration_index_set */
EIF_TYPED_VALUE F1705_9573 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "iteration_index_set";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11386);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11386);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80001DC, 0,0); /* Result */
	
	tr1 = RTLN(476);
	ui4_1 = ((EIF_INTEGER_32) -1L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 81, dtype))(Current, ui4_1x)).it_i4);
	ui4_1 = ti4_1;
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr2))(tr2)).it_i4);
	ui4_2 = ti4_2;
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 82, dtype))(Current, ui4_2x)).it_i4);
	ui4_2 = ti4_2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(476, 47, Dtype(tr1)))(tr1, ui4_1x, ui4_2x);
	RTNHOOK(1,2);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ui4_1
#undef ui4_2
}

/* {HASH_TABLE}.is_equal */
EIF_TYPED_VALUE F1705_9574 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_equal";
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
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
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
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11387);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11387);
	RTCC(arg1, 1704, l_feature_name, 1, Dftype(Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tb2 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 99, "keys", arg1))(arg1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	if (RTEQ(tr1, tr2)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 98, "content", arg1))(arg1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		tb2 = RTEQ(tr1, tr2);
	}
	if (tb2) {
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		tb3 = *(EIF_BOOLEAN *)(arg1 + RTVA(1704, 103, "has_default", arg1));
		tb1 = (EIF_BOOLEAN)(tb2 == tb3);
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("symmetric", EX_POST);
		if ((!(Result) || (RTEQ(arg1, Current)))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("consistent", EX_POST);
		tb1 = '\01';
		ur1 = RTCCL(arg1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 5, dtype))(Current, ur1x)).it_b);
		if (tb2) {
			tb1 = Result;
		}
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
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef arg1
}

/* {HASH_TABLE}.same_keys */
EIF_TYPED_VALUE F1705_9575 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "same_keys";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 2, 11388);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11388);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_search_key", EX_PRE);
		up1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 74, dtype))(Current, up1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid_key", EX_PRE);
		up1 = arg2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 74, dtype))(Current, up1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (arg1 == arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef arg2
#undef arg1
}

/* {HASH_TABLE}.disjoint */
EIF_TYPED_VALUE F1705_9576 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "disjoint";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc1);
	RTLR(3,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1704, Current, 1, 1, 11389);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11389);
	if (arg1) {
		{
			EIF_TYPE_INDEX typarr0[] = {1704,1704,0,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[2] = RTWCT(1704, 149, Current);
			typarr0[3] = RTWCT(1704, 151, Current);
			
			typres0 = eif_compound_id(Dftype(Current), 1704, typarr0);
			RTCC(arg1, 1704, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	tb2 = '\01';
	tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 35, dtype))(Current)).it_b);
	if (!tb3) {
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 35, "is_empty", arg1))(arg1)).it_b);
		tb2 = tb3;
	}
	if (!tb2) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0xF80006AD, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 53, "new_cursor", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		tb2 = EIF_FALSE;
		for (;;) {
			if (tb2) break;
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1229, 33, "after", loc1))(loc1)).it_b);
			if (tb3) break;
			RTHOOK(3);
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1709, 49, "key", loc1))(loc1)).it_p);
			up1 = tp1;
			tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
			tb2 = tb4;
			RTHOOK(4);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1229, 34, "forth", loc1))(loc1);
		}
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef arg1
}

/* {HASH_TABLE}.full */
EIF_TYPED_VALUE F1705_9577 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = (EIF_BOOLEAN) EIF_FALSE;
	return r;
}

/* {HASH_TABLE}.extendible */
EIF_TYPED_VALUE F1705_9578 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = (EIF_BOOLEAN) EIF_FALSE;
	return r;
}

/* {HASH_TABLE}.prunable */
EIF_TYPED_VALUE F1705_9579 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "prunable";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11392);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1704, Current, 11392);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
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

/* {HASH_TABLE}.conflict */
EIF_TYPED_VALUE F1705_9580 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "conflict";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11393);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11393);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 132, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {HASH_TABLE}.inserted */
EIF_TYPED_VALUE F1705_9581 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "inserted";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11394);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11394);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 136, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {HASH_TABLE}.replaced */
EIF_TYPED_VALUE F1705_9582 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "replaced";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11395);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11395);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 143, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {HASH_TABLE}.removed */
EIF_TYPED_VALUE F1705_9583 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "removed";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11396);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11396);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 141, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {HASH_TABLE}.found */
EIF_TYPED_VALUE F1705_9584 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "found";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11397);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11397);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 134, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {HASH_TABLE}.not_found */
EIF_TYPED_VALUE F1705_9585 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "not_found";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11398);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11398);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype));
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 138, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
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

/* {HASH_TABLE}.after */
EIF_TYPED_VALUE F1705_9586 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "after";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11399);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11399);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
	ui4_1 = ti4_1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 118, dtype))(Current, ui4_1x)).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ui4_1
}

/* {HASH_TABLE}.off */
EIF_TYPED_VALUE F1705_9587 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "off";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11400);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11400);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
	ui4_1 = ti4_1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 118, dtype))(Current, ui4_1x)).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ui4_1
}

/* {HASH_TABLE}.valid_cursor */
EIF_TYPED_VALUE F1705_9588 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_cursor";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,loc2);
	RTLR(2,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1704, Current, 2, 1, 11401);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11401);
	if (arg1) {
		RTCC(arg1, 1704, l_feature_name, 1, 472);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("c_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	loc2 = RTCCL(arg1);
	loc2 = RTRV(eif_non_attached_type(473),loc2);
	if (EIF_TEST(loc2)) {
		RTHOOK(3);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = *(EIF_INTEGER_32 *)(loc2 + RTVA(473, 33, "position", loc2));
		loc1 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(4);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tb1 = '\01';
		ui4_1 = loc1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 118, dtype))(Current, ui4_1x)).it_b);
		if (!tb2) {
			ui4_1 = loc1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 117, dtype))(Current, ui4_1x)).it_b);
			tb1 = tb2;
		}
		Result = (EIF_BOOLEAN) tb1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.valid_key */
EIF_TYPED_VALUE F1705_9589 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_key";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_POINTER loc2 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,loc7);
	RTLR(3,Current);
	RTLR(4,ur1);
	RTLR(5,loc6);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_POINTER, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	
	RTEAA(l_feature_name, 1704, Current, 7, 1, 11402);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1704, Current, 11402);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (
		WDBG(1704,"prevent_hash_table_catcall")
	) {
		RTHOOK(2);
		if ((EIF_BOOLEAN)(arg1 != loc2)) {
			RTHOOK(3);
			RTDBGAL(Current, 1, 0xF80000E6, 0, 0); /* loc1 */
			
			tr1 = RTLN(230);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(230, 26, Dtype(tr1)))(tr1);
			RTNHOOK(3,1);
			loc1 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(4);
			RTDBGAL(Current, 7, 0xF80006A9, 0, 0); /* loc7 */
			
			{
				EIF_TYPE_INDEX typarr0[] = {1704,1705,0,0xFFFF};
				EIF_TYPE_INDEX typres0;
				typarr0[2] = RTWCT(1704, 151, Current);
				
				typres0 = eif_compound_id(Dftype(Current), 1705, typarr0);
				tr1 = RTLN(typres0);
			}
			up1 = loc2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1705, 33, Dtype(tr1)))(tr1, up1x);
			RTNHOOK(4,1);
			loc7 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(5);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			loc4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			RTHOOK(6);
			RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
			
			ur1 = RTCCL(loc7);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 146, "field_count", loc1))(loc1, ur1x)).it_i4);
			loc5 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(7);
			RTDBGAL(Current, 6, 0xF8000313, 0, 0); /* loc6 */
			
			loc6 = RTMS_EX_H("item",4,1769235821);
			for (;;) {
				RTHOOK(8);
				if ((EIF_BOOLEAN) (loc4 > loc5)) break;
				RTHOOK(9);
				ui4_1 = loc4;
				ur1 = RTCCL(loc7);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(230, 101, "field_name", loc1))(loc1, ui4_1x, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				if (RTEQ(tr1, loc6)) {
					RTHOOK(10);
					RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
					
					loc3 = (EIF_INTEGER_32) loc4;
					RTHOOK(11);
					RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
					
					loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc5 + ((EIF_INTEGER_32) 1L));
				}
				RTHOOK(12);
				RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
				
				loc4++;
			}
			RTHOOK(13);
			if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc3 > ((EIF_INTEGER_32) 0L)) && EIF_TRUE)) {
				RTHOOK(14);
				RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
				
				ui4_1 = loc3;
				ur1 = RTCCL(loc7);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 92, "dynamic_type", loc1))(loc1, ur1x)).it_i4);
				ui4_2 = ti4_1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(230, 106, "field_static_type_of_type", loc1))(loc1, ui4_1x, ui4_2x)).it_i4);
				ur1 = RTLN(778);
				*(EIF_POINTER *)ur1 = arg1;
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 92, "dynamic_type", loc1))(loc1, ur1x)).it_i4);
				Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(15);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg1
}

/* {HASH_TABLE}.valid_iteration_index */
EIF_TYPED_VALUE F1705_9590 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "valid_iteration_index";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11403);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11403);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ui4_1 = arg1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 117, dtype))(Current, ui4_1x)).it_b);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("only_if_in_index_set", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = '\0';
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 58, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(2,1);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 50, "lower", tr1))(tr1)).it_i4);
			if ((EIF_BOOLEAN) (arg1 >= ti4_1)) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 58, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(2,2);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(476, 52, "upper", tr1))(tr1)).it_i4);
				tb2 = (EIF_BOOLEAN) (arg1 <= ti4_1);
			}
			tb1 = tb2;
		}
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
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.start */
void F1705_9591 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "start";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11404);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11404);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
	
	ui4_1 = ((EIF_INTEGER_32) -1L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 81, dtype))(Current, ui4_1x)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef ui4_1
}

/* {HASH_TABLE}.forth */
void F1705_9592 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "forth";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11405);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11405);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_off", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 72, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
	ui4_1 = ti4_1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 81, dtype))(Current, ui4_1x)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef ui4_1
}

/* {HASH_TABLE}.go_to */
void F1705_9593 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "go_to";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,loc1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1704, Current, 1, 1, 11406);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11406);
	if (arg1) {
		RTCC(arg1, 1704, l_feature_name, 1, 472);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("c_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid_cursor", EX_PRE);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 73, dtype))(Current, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	loc1 = RTCCL(arg1);
	loc1 = RTRV(eif_non_attached_type(473),loc1);
	if (EIF_TEST(loc1)) {
		RTHOOK(4);
		RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
		
		ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(473, 33, "position", loc1));
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) ti4_1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ur1
#undef arg1
}

/* {HASH_TABLE}.search */
void F1705_9594 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "search";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,loc2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1704, Current, 2, 1, 11407);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11407);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
	RTHOOK(2);
	up1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
	RTHOOK(3);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(4);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 105, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTAR(Current, tr2);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(tr2);
	} else {
		RTHOOK(5);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		RTAR(Current, loc2);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
	}
	RTHOOK(6);
	RTDBGAA(Current, dtype, 1704, 102, 0x10000000, 1); /* item_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype)) = (EIF_INTEGER_32) loc1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("found_or_not_found", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		if (!tb2) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("item_if_found", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		if (tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			up2 = arg1;
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			tb1 = RTCEQ(tr1, tr2);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef up2
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.search_item */
EIF_TYPED_VALUE F1705_9595 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "search_item";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11408);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1704, Current, 11408);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 43, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
}

/* {HASH_TABLE}.next_iteration_position */
EIF_TYPED_VALUE F1705_9596 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "next_iteration_position";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 1704, Current, 2, 1, 11409);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11409);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_position_big_enough", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) -1L)), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_position_small_enough", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
		RTTE((EIF_BOOLEAN) (arg1 < ti4_1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg1 + ((EIF_INTEGER_32) 1L));
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(5,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1225, 46, "count", tr1))(tr1)).it_i4);
	loc2 = (EIF_INTEGER_32) ti4_1;
	for (;;) {
		RTHOOK(6);
		tb1 = '\01';
		if (!(EIF_BOOLEAN) (Result >= loc2)) {
			ui4_1 = Result;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", loc1))(loc1, ui4_1x)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) break;
		RTHOOK(7);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result++;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.previous_iteration_position */
EIF_TYPED_VALUE F1705_9597 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "previous_iteration_position";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 1704, Current, 2, 1, 11410);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11410);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_position_big_enough", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_position_small_enough", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
		RTTE((EIF_BOOLEAN) (arg1 <= ti4_1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg1 - ((EIF_INTEGER_32) 1L));
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(5,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1225, 46, "count", tr1))(tr1)).it_i4);
	loc2 = (EIF_INTEGER_32) ti4_1;
	for (;;) {
		RTHOOK(6);
		tb1 = '\01';
		if (!(EIF_BOOLEAN) (Result <= ((EIF_INTEGER_32) 0L))) {
			ui4_1 = Result;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", loc1))(loc1, ui4_1x)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		if (tb1) break;
		RTHOOK(7);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result--;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.put */
void F1705_9598 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "put";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_p
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_REFERENCE tr6 = NULL;
	EIF_REFERENCE tr7 = NULL;
	EIF_REFERENCE tr8 = NULL;
	EIF_REFERENCE tr9 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	EIF_BOOLEAN tb6;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	
	RTLI(12);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,tr4);
	RTLR(6,tr5);
	RTLR(7,tr6);
	RTLR(8,tr7);
	RTLR(9,tr8);
	RTLR(10,tr9);
	RTLR(11,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	
	RTEAA(l_feature_name, 1704, Current, 3, 2, 11411);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11411);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 149, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_key", EX_PRE);
		up1 = arg2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 74, dtype))(Current, up1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_2 = ti4_3;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		RTE_OT
		up1 = arg2;
		tr4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr3 = tr4;
		tr4 = NULL;
		RTE_O
		tr4 = RTLA;
		RTE_OE
		RTE_OT
		up1 = arg2;
		tr6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr5 = tr6;
		tr6 = NULL;
		RTE_O
		tr6 = RTLA;
		RTE_OE
		RTE_OT
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		tb1 = tb2;
		tr7 = NULL;
		RTE_O
		tr7 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(2);
	up1 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
	RTHOOK(3);
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
	if (tb2) {
		RTHOOK(4);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 133, dtype))(Current);
		RTHOOK(5);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 105, dtype))(Current)).it_i4);
		ui4_1 = ti4_3;
		tr9 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr8))(tr8, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTAR(Current, tr9);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(tr9);
	} else {
		RTHOOK(6);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 106, dtype))(Current)).it_b);
		if (tb2) {
			RTHOOK(7);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 146, dtype))(Current);
			RTHOOK(8);
			up1 = arg2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
			if (RTAL & CK_CHECK) {
				RTHOOK(9);
				RTCT("not_present", EX_CHECK);
				tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
				if ((EIF_BOOLEAN) !tb2) {
					RTCK;
				} else {
					RTCF;
				}
			}
		}
		RTHOOK(10);
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_3 != ti4_4)) {
			RTHOOK(11);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
			ui4_1 = ti4_3;
			loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 115, dtype))(Current, ui4_1x)).it_i4);
			RTHOOK(12);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			loc3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
			RTHOOK(13);
			tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(13,1);
			ub1 = (EIF_BOOLEAN) 0;
			ui4_1 = loc2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 52, "force", tr8))(tr8, ub1x, ui4_1x);
		} else {
			RTHOOK(14);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(14,1);
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr8))(tr8)).it_i4);
			loc2 = (EIF_INTEGER_32) ti4_3;
			RTHOOK(15);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			loc3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
		}
		RTHOOK(16);
		tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(16,1);
		ui4_1 = loc2;
		ui4_2 = loc3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1304, 51, "put", tr8))(tr8, ui4_1x, ui4_2x);
		RTHOOK(17);
		tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(17,1);
		ur1 = RTCCL(arg1);
		ui4_1 = loc2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1225, 52, "force", tr8))(tr8, ur1x, ui4_1x);
		RTHOOK(18);
		tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(18,1);
		up2 = arg2;
		ui4_1 = loc2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1602, 52, "force", tr8))(tr8, up2x, ui4_1x);
		RTHOOK(19);
		if ((EIF_BOOLEAN)(arg2 == loc1)) {
			RTHOOK(20);
			RTDBGAA(Current, dtype, 1704, 103, 0x04000000, 1); /* has_default */
			
			*(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
		RTHOOK(21);
		RTDBGAA(Current, dtype, 1704, 55, 0x10000000, 1); /* count */
		
		(*(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype)))++;
		RTHOOK(22);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		RTAR(Current, arg1);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
		RTHOOK(23);
		RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
		
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 136, dtype))(Current)).it_i4);
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_3;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(24);
		RTCT("conflict_or_inserted", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
		if (!tb3) {
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 66, dtype))(Current)).it_b);
			tb2 = tb3;
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(25);
		RTCT("insertion_done", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 66, dtype))(Current)).it_b);
		if (tb3) {
			up1 = arg2;
			tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb2 = RTCEQ(tr8, arg1);
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(26);
		RTCT("now_present", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 66, dtype))(Current)).it_b);
		if (tb3) {
			up1 = arg2;
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
			tb2 = tb3;
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(27);
		RTCT("one_more_if_inserted", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 66, dtype))(Current)).it_b);
		if (tb3) {
			ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
			RTCO(tr1);
			tb2 = (EIF_BOOLEAN)(ti4_3 == (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L)));
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(28);
		RTCT("unchanged_if_conflict", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
		if (tb3) {
			ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
			RTCO(tr2);
			tb2 = (EIF_BOOLEAN)(ti4_3 == ti4_2);
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(29);
		RTCT("same_item_if_conflict", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
		if (tb3) {
			up1 = arg2;
			tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTCO(tr4);
			tb2 = (RTCEQ(tr8, tr3));
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(30);
		RTCT("found_item_associated_with_key", EX_POST);
		tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		up2 = arg2;
		tr9 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		if (RTCEQ(tr8, tr9)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(31);
		RTCT("new_item_if_inserted", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 66, dtype))(Current)).it_b);
		if (tb3) {
			tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb2 = RTCEQ(tr8, arg1);
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(32);
		RTCT("old_item_if_conflict", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
		if (tb3) {
			tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTCO(tr6);
			tb2 = (RTCEQ(tr8, tr5));
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(33);
		RTCT("default_property", EX_POST);
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		tb3 = '\01';
		tb4 = '\0';
		tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 66, dtype))(Current)).it_b);
		if (tb5) {
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
			tb4 = (EIF_BOOLEAN)(arg2 == tp1);
		}
		if (!(tb4)) {
			tb4 = '\0';
			tb5 = '\01';
			tb6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
			if (!tb6) {
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
				tb5 = (EIF_BOOLEAN)(arg2 != tp1);
			}
			if (tb5) {
				RTCO(tr7);
				tb4 = tb1;
			}
			tb3 = tb4;
		}
		if ((EIF_BOOLEAN)(tb2 == tb3)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(34);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ub1
#undef arg2
#undef arg1
}

/* {HASH_TABLE}.force */
void F1705_9599 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "force";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_p
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_REFERENCE tr6 = NULL;
	EIF_REFERENCE tr7 = NULL;
	EIF_REFERENCE tr8 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	
	RTLI(12);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,tr4);
	RTLR(6,tr5);
	RTLR(7,tr6);
	RTLR(8,tr7);
	RTLR(9,loc2);
	RTLR(10,tr8);
	RTLR(11,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	
	RTEAA(l_feature_name, 1704, Current, 4, 2, 11412);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11412);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 149, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_key", EX_PRE);
		up1 = arg2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 74, dtype))(Current, up1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		up1 = arg2;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		tb1 = tb2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_1 = ti4_2;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		RTE_OT
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_2 = ti4_3;
		tr3 = NULL;
		RTE_O
		tr3 = RTLA;
		RTE_OE
		RTE_OT
		up1 = arg2;
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr4 = tr5;
		tr5 = NULL;
		RTE_O
		tr5 = RTLA;
		RTE_OE
		RTE_OT
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		tb2 = tb3;
		tr6 = NULL;
		RTE_O
		tr6 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(2);
	up1 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
	RTHOOK(3);
	tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
	if (tb3) {
		RTHOOK(4);
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 106, dtype))(Current)).it_b);
		if (tb3) {
			RTHOOK(5);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 146, dtype))(Current);
			RTHOOK(6);
			up1 = arg2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
		}
		RTHOOK(7);
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_3 != ti4_4)) {
			RTHOOK(8);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
			ui4_1 = ti4_3;
			loc3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 115, dtype))(Current, ui4_1x)).it_i4);
			RTHOOK(9);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			loc4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
			RTHOOK(10);
			tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(10,1);
			ub1 = (EIF_BOOLEAN) 0;
			ui4_1 = loc3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 52, "force", tr7))(tr7, ub1x, ui4_1x);
		} else {
			RTHOOK(11);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(11,1);
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr7))(tr7)).it_i4);
			loc3 = (EIF_INTEGER_32) ti4_3;
			RTHOOK(12);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			loc4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
		}
		RTHOOK(13);
		tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(13,1);
		ui4_1 = loc3;
		ui4_2 = loc4;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1304, 51, "put", tr7))(tr7, ui4_1x, ui4_2x);
		RTHOOK(14);
		tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(14,1);
		up2 = arg2;
		ui4_1 = loc3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1602, 52, "force", tr7))(tr7, up2x, ui4_1x);
		RTHOOK(15);
		if ((EIF_BOOLEAN)(arg2 == loc1)) {
			RTHOOK(16);
			RTDBGAA(Current, dtype, 1704, 103, 0x04000000, 1); /* has_default */
			
			*(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
		RTHOOK(17);
		RTDBGAA(Current, dtype, 1704, 55, 0x10000000, 1); /* count */
		
		(*(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype)))++;
		RTHOOK(18);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		RTAR(Current, loc2);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
	} else {
		RTHOOK(19);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 105, dtype))(Current)).it_i4);
		RTHOOK(20);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(20,1);
		ui4_1 = loc3;
		tr8 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr7))(tr7, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTAR(Current, tr8);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(tr8);
	}
	RTHOOK(21);
	tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(21,1);
	ur1 = RTCCL(arg1);
	ui4_1 = loc3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1225, 52, "force", tr7))(tr7, ur1x, ui4_1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(22);
		RTCT("inserted", EX_POST);
		up1 = arg2;
		tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr7, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(23);
		RTCT("insertion_done", EX_POST);
		up1 = arg2;
		tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr7, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(24);
		RTCT("now_present", EX_POST);
		up1 = arg2;
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(25);
		RTCT("found_or_not_found", EX_POST);
		tb3 = '\01';
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		if (!tb4) {
			tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
			tb3 = tb4;
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(26);
		RTCT("not_found_if_was_not_present", EX_POST);
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
		RTCO(tr1);
		if ((EIF_BOOLEAN)(tb3 == (EIF_BOOLEAN) !tb1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(27);
		RTCT("same_count_or_one_more", EX_POST);
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		RTCO(tr2);
		ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		RTCO(tr3);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(ti4_3 == ti4_1) || (EIF_BOOLEAN)(ti4_4 == (EIF_INTEGER_32) (ti4_2 + ((EIF_INTEGER_32) 1L))))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(28);
		RTCT("found_item_is_old_item", EX_POST);
		tb3 = '\01';
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		if (tb4) {
			tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTCO(tr5);
			tb3 = (RTCEQ(tr7, tr4));
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(29);
		RTCT("default_value_if_not_found", EX_POST);
		tb3 = '\01';
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
		if (tb4) {
			tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr8 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 126, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			tb3 = RTCEQ(tr7, tr8);
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(30);
		RTCT("default_property", EX_POST);
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		tb4 = '\01';
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
		if (!((EIF_BOOLEAN)(arg2 == tp1))) {
			tb5 = '\0';
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
			if ((EIF_BOOLEAN)(arg2 != tp1)) {
				RTCO(tr6);
				tb5 = tb2;
			}
			tb4 = tb5;
		}
		if ((EIF_BOOLEAN)(tb3 == tb4)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(31);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ub1
#undef arg2
#undef arg1
}

/* {HASH_TABLE}.extend */
void F1705_9600 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "extend";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_p
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	
	RTEAA(l_feature_name, 1704, Current, 3, 2, 11413);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11413);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 149, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_present", EX_PRE);
		up1 = arg2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		tb1 = tb2;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(2);
	up1 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 128, dtype))(Current, up1x);
	RTHOOK(3);
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 106, dtype))(Current)).it_b);
	if (tb2) {
		RTHOOK(4);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 146, dtype))(Current);
		RTHOOK(5);
		up1 = arg2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 128, dtype))(Current, up1x);
	}
	RTHOOK(6);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
	ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN)(ti4_2 != ti4_3)) {
		RTHOOK(7);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
		ui4_1 = ti4_2;
		loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 115, dtype))(Current, ui4_1x)).it_i4);
		RTHOOK(8);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
		RTHOOK(9);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(9,1);
		ub1 = (EIF_BOOLEAN) 0;
		ui4_1 = loc2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 52, "force", tr3))(tr3, ub1x, ui4_1x);
	} else {
		RTHOOK(10);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(10,1);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr3))(tr3)).it_i4);
		loc2 = (EIF_INTEGER_32) ti4_2;
		RTHOOK(11);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
	}
	RTHOOK(12);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(12,1);
	ui4_1 = loc2;
	ui4_2 = loc3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1304, 51, "put", tr3))(tr3, ui4_1x, ui4_2x);
	RTHOOK(13);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(13,1);
	ur1 = RTCCL(arg1);
	ui4_1 = loc2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1225, 52, "force", tr3))(tr3, ur1x, ui4_1x);
	RTHOOK(14);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(14,1);
	up2 = arg2;
	ui4_1 = loc2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1602, 52, "force", tr3))(tr3, up2x, ui4_1x);
	RTHOOK(15);
	if ((EIF_BOOLEAN)(arg2 == loc1)) {
		RTHOOK(16);
		RTDBGAA(Current, dtype, 1704, 103, 0x04000000, 1); /* has_default */
		
		*(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	}
	RTHOOK(17);
	RTDBGAA(Current, dtype, 1704, 55, 0x10000000, 1); /* count */
	
	(*(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype)))++;
	RTHOOK(18);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 136, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_2;
	if (RTAL & CK_ENSURE) {
		RTHOOK(19);
		RTCT("inserted", EX_POST);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 66, dtype))(Current)).it_b);
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(20);
		RTCT("insertion_done", EX_POST);
		up1 = arg2;
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr3, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(21);
		RTCT("one_more", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		RTCO(tr1);
		if ((EIF_BOOLEAN)(ti4_2 == (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L)))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(22);
		RTCT("default_property", EX_POST);
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		tb3 = '\01';
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
		if (!((EIF_BOOLEAN)(arg2 == tp1))) {
			RTCO(tr2);
			tb3 = tb1;
		}
		if ((EIF_BOOLEAN)(tb2 == tb3)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(23);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ub1
#undef arg2
#undef arg1
}

/* {HASH_TABLE}.replace */
void F1705_9601 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "replace";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_REFERENCE tr6 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	
	RTLI(10);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,tr4);
	RTLR(6,tr5);
	RTLR(7,tr6);
	RTLR(8,ur1);
	RTLR(9,loc1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1704, Current, 1, 2, 11414);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11414);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 149, Current));
	RTIV(Current, RTAL);
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		up1 = arg2;
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr1 = tr2;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		RTE_OT
		up1 = arg2;
		tr4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr3 = tr4;
		tr4 = NULL;
		RTE_O
		tr4 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(1);
	up1 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(3);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 105, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		tr6 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr5))(tr5, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTAR(Current, tr6);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(tr6);
		RTHOOK(4);
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ur1 = RTCCL(arg1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 105, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1225, 51, "put", tr5))(tr5, ur1x, ui4_1x);
		RTHOOK(5);
		RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 143, dtype))(Current)).it_i4);
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
	} else {
		RTHOOK(6);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		RTAR(Current, loc1);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("replaced_or_not_found", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 67, dtype))(Current)).it_b);
		if (!tb2) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("insertion_done", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 67, dtype))(Current)).it_b);
		if (tb2) {
			up1 = arg2;
			tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = RTCEQ(tr5, arg1);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("no_change_if_not_found", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
		if (tb2) {
			up1 = arg2;
			tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTCO(tr2);
			tb1 = RTCEQ(tr5, tr1);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("found_item_is_old_item", EX_POST);
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTCO(tr4);
		if (RTCEQ(tr5, tr3)) {
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
	RTLO(5);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {HASH_TABLE}.replace_key */
void F1705_9602 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "replace_key";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_REFERENCE tr6 = NULL;
	EIF_REFERENCE tr7 = NULL;
	EIF_REFERENCE tr8 = NULL;
	EIF_REFERENCE tr9 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(12);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,tr4);
	RTLR(5,tr5);
	RTLR(6,tr6);
	RTLR(7,tr7);
	RTLR(8,loc1);
	RTLR(9,tr8);
	RTLR(10,tr9);
	RTLR(11,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1704, Current, 1, 2, 11415);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11415);
	RTIV(Current, RTAL);
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		up1 = arg2;
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr2 = tr3;
		tr3 = NULL;
		RTE_O
		tr3 = RTLA;
		RTE_OE
		RTE_OT
		up1 = arg2;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		tb1 = (EIF_BOOLEAN) !tb2;
		tr4 = NULL;
		RTE_O
		tr4 = RTLA;
		RTE_OE
		RTE_OT
		up1 = arg1;
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		tb2 = tb3;
		tr5 = NULL;
		RTE_O
		tr5 = RTLA;
		RTE_OE
		RTE_OT
		up1 = arg1;
		tr7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr6 = tr7;
		tr7 = NULL;
		RTE_O
		tr7 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(1);
	up1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
	RTHOOK(2);
	tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb3) {
		RTHOOK(3);
		up1 = arg2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
		RTHOOK(4);
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		if (tb3) {
			RTHOOK(5);
			RTDBGAL(Current, 1, 0xF8000000, 0, 0); /* loc1 */
			
			tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 105, dtype))(Current)).it_i4);
			ui4_1 = ti4_2;
			tr9 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr8))(tr8, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			loc1 = (EIF_REFERENCE) RTCCL(tr9);
			RTHOOK(6);
			up1 = arg2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 89, dtype))(Current, up1x);
			RTHOOK(7);
			ur1 = RTCCL(loc1);
			up1 = arg1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1704, 83, dtype))(Current, ur1x, up1x);
			RTHOOK(8);
			RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
			
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 143, dtype))(Current)).it_i4);
			*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_2;
		}
	} else {
		RTHOOK(9);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 133, dtype))(Current);
		RTHOOK(10);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(10,1);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 105, dtype))(Current)).it_i4);
		ui4_1 = ti4_2;
		tr9 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr8))(tr8, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTAR(Current, tr9);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(tr9);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(11);
		RTCT("same_count", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		RTCO(tr1);
		if ((EIF_BOOLEAN)(ti4_2 == ti4_1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(12);
		RTCT("replaced_or_conflict_or_not_found", EX_POST);
		tb3 = '\01';
		tb4 = '\01';
		tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 67, dtype))(Current)).it_b);
		if (!tb5) {
			tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
			tb4 = tb5;
		}
		if (!tb4) {
			tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
			tb3 = tb4;
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(13);
		RTCT("old_absent", EX_POST);
		tb3 = '\01';
		tb4 = '\0';
		tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 67, dtype))(Current)).it_b);
		if (tb5) {
			up1 = arg1;
			up2 = arg2;
			tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1704, 60, dtype))(Current, up1x, up2x)).it_b);
			tb4 = (EIF_BOOLEAN) !tb5;
		}
		if (tb4) {
			up1 = arg2;
			tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
			tb3 = (EIF_BOOLEAN) !tb4;
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(14);
		RTCT("new_present", EX_POST);
		tb3 = '\01';
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 67, dtype))(Current)).it_b);
		if (!tb4) {
			tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
			tb3 = tb4;
		}
		up1 = arg1;
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		if ((EIF_BOOLEAN)(tb3 == tb4)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(15);
		RTCT("new_item", EX_POST);
		tb3 = '\01';
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 67, dtype))(Current)).it_b);
		if (tb4) {
			up1 = arg1;
			tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTCO(tr3);
			tb3 = (RTCEQ(tr8, tr2));
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(16);
		RTCT("not_found_implies_no_old_key", EX_POST);
		tb3 = '\01';
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
		if (tb4) {
			RTCO(tr4);
			tb3 = tb1;
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(17);
		RTCT("conflict_iff_already_present", EX_POST);
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
		RTCO(tr5);
		if ((EIF_BOOLEAN)(tb3 == tb2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(18);
		RTCT("not_inserted_if_conflict", EX_POST);
		tb3 = '\01';
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
		if (tb4) {
			up1 = arg1;
			tr8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 44, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTCO(tr7);
			tb3 = (RTCEQ(tr8, tr6));
		}
		if (tb3) {
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
	RTLO(5);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {HASH_TABLE}.merge */
void F1705_9603 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "merge";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(8);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,Current);
	RTLR(4,tr2);
	RTLR(5,tr3);
	RTLR(6,tr4);
	RTLR(7,tr5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11416);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11416);
	if (arg1) {
		{
			EIF_TYPE_INDEX typarr0[] = {1704,1704,0,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[2] = RTWCT(1704, 149, Current);
			typarr0[3] = RTWCT(1704, 151, Current);
			
			typres0 = eif_compound_id(dftype, 1704, typarr0);
			RTCC(arg1, 1704, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1704, 76, "start", arg1))(arg1);
	for (;;) {
		RTHOOK(3);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 71, "after", arg1))(arg1)).it_b);
		if (tb1) break;
		RTHOOK(4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 50, "item_for_iteration", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 51, "key_for_iteration", arg1))(arg1)).it_p);
		up1 = tp1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1704, 84, dtype))(Current, ur1x, up1x);
		RTHOOK(5);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1704, 77, "forth", arg1))(arg1);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("inserted", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 49, "current_keys", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1608, 102, "linear_representation", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,2);
		{
			EIF_TYPE_INDEX typarr0[] = {1704,0xFFF9,1,734,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[4] = dftype;
			
			typres0 = eif_compound_id(dftype, 734, typarr0);
			tr1 = RTLNTS(typres0, 2, 0);
		}
		((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
		RTAR(tr1,Current);
		ui4_1 = ((EIF_INTEGER_32) 1L);
		{
			static EIF_TYPE_INDEX typarr0[] = {1704,1304,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1304, typarr0)));
			tr4 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_INTEGER_32), EIF_TRUE);
			RT_SPECIAL_COUNT(tr4) = 1L;
			memset(tr4, 0, RT_SPECIAL_VISIBLE_SIZE(tr4));
		}
		*((EIF_INTEGER_32 *)tr4+0) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
		tr3 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1304, 42, Dtype(tr4)))(tr4).it_r;
		
		{
			EIF_TYPE_INDEX typarr0[] = {1704,1256,0,0xFFF9,1,734,778,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[2] = dftype;
			
			typres0 = eif_compound_id(dftype, 1256, typarr0);
			tr5 = RTLNRW(typres0, 0, (EIF_POINTER) _A1705_46_2, (EIF_POINTER)(0),1704, 46, tr3, 0, 0, 1, 0, tr1, 1);
		}
		ur1 = RTCCL(tr5);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1610, 51, "for_all", tr2))(tr2, ur1x)).it_b);
		if (tb2) {
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
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.remove */
void F1705_9604 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "remove";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_POINTER loc6 = (EIF_POINTER) 0;
#define arg1 arg1x.it_p
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
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE tr4 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(8);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,tr4);
	RTLR(5,loc2);
	RTLR(6,loc5);
	RTLR(7,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_POINTER, &loc6);
	
	RTEAA(l_feature_name, 1704, Current, 6, 1, 11417);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11417);
	RTIV(Current, RTAL);
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		RTE_OT
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		tb1 = tb2;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(1);
	up1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 127, dtype))(Current, up1x);
	RTHOOK(2);
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
	if (tb2) {
		RTHOOK(3);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 105, dtype))(Current)).it_i4);
		RTHOOK(4);
		if ((EIF_BOOLEAN)(arg1 == loc1)) {
			RTHOOK(5);
			RTDBGAA(Current, dtype, 1704, 103, 0x04000000, 1); /* has_default */
			
			*(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
		}
		RTHOOK(6);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		ub1 = (EIF_BOOLEAN) 1;
		ui4_1 = loc3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 51, "put", tr3))(tr3, ub1x, ui4_1x);
		RTHOOK(7);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(7,1);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 111, dtype))(Current)).it_i4);
		ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) -loc3 + ti4_2);
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
		ui4_2 = ti4_3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1304, 51, "put", tr3))(tr3, ui4_1x, ui4_2x);
		RTHOOK(8);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
		if ((EIF_BOOLEAN)(ti4_2 == loc3)) {
			RTHOOK(9);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 77, dtype))(Current);
		}
		RTHOOK(10);
		RTDBGAA(Current, dtype, 1704, 55, 0x10000000, 1); /* count */
		
		(*(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype)))--;
		RTHOOK(11);
		RTDBGAA(Current, dtype, 1704, 112, 0x10000000, 1); /* ht_lowest_deleted_position */
		
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 112, dtype));
		ui4_1 = ti4_2;
		ti4_2 = eif_min_int32 (loc3,ui4_1);
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 112, dtype)) = (EIF_INTEGER_32) ti4_2;
		RTHOOK(12);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 112, dtype));
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
			RTHOOK(13);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(13,1);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1225, 46, "count", tr3))(tr3)).it_i4);
			loc4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 112, dtype));
			loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_2 - loc4);
			RTHOOK(14);
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(14,1);
			ui4_1 = loc4;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 65, "remove_tail", tr3))(tr3, ui4_1x);
			RTHOOK(15);
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(15,1);
			ui4_1 = loc4;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 65, "remove_tail", tr3))(tr3, ui4_1x);
			RTHOOK(16);
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(16,1);
			ub1 = (EIF_BOOLEAN) 0;
			ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 112, dtype));
			ui4_1 = ti4_2;
			tr4 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			RTNHOOK(16,2);
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", tr4))(tr4)).it_i4);
			ui4_2 = (EIF_INTEGER_32) (ti4_3 - ((EIF_INTEGER_32) 1L));
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 55, "fill_with", tr3))(tr3, ub1x, ui4_1x, ui4_2x);
			RTHOOK(17);
			RTDBGAA(Current, dtype, 1704, 113, 0xF8000000, 0); /* ht_deleted_item */
			
			RTAR(Current, loc2);
			*(EIF_REFERENCE *)(Current + RTWA(1704, 113, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
			RTHOOK(18);
			RTDBGAA(Current, dtype, 1704, 114, 0x40000000, 0); /* ht_deleted_key */
			
			*(EIF_POINTER *)(Current + RTWA(1704, 114, dtype)) = (EIF_POINTER) loc1;
			RTHOOK(19);
			RTDBGAA(Current, dtype, 1704, 112, 0x10000000, 1); /* ht_lowest_deleted_position */
			
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 109, dtype))(Current)).it_i4);
			*(EIF_INTEGER_32 *)(Current + RTWA(1704, 112, dtype)) = (EIF_INTEGER_32) ti4_2;
		} else {
			RTHOOK(20);
			tb2 = '\0';
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc5 = RTCCL(tr3);
			if (EIF_TEST(loc5)) {
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 114, dtype))(Current)).it_p);
				loc6 = tp1;
				tb2 = (EIF_TRUE);
			}
			if (tb2) {
				RTHOOK(21);
				tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(21,1);
				ur1 = RTCCL(loc5);
				ui4_1 = loc3;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1225, 51, "put", tr3))(tr3, ur1x, ui4_1x);
				RTHOOK(22);
				tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(22,1);
				up2 = loc6;
				ui4_1 = loc3;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1602, 51, "put", tr3))(tr3, up2x, ui4_1x);
			} else {
				RTHOOK(23);
				RTDBGAA(Current, dtype, 1704, 113, 0xF8000000, 0); /* ht_deleted_item */
				
				tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(23,1);
				ui4_1 = loc3;
				tr4 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr3))(tr3, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				RTAR(Current, tr4);
				*(EIF_REFERENCE *)(Current + RTWA(1704, 113, dtype)) = (EIF_REFERENCE) RTCCL(tr4);
				RTHOOK(24);
				RTDBGAA(Current, dtype, 1704, 114, 0x40000000, 0); /* ht_deleted_key */
				
				tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(24,1);
				ui4_1 = loc3;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", tr3))(tr3, ui4_1x)).it_p);
				*(EIF_POINTER *)(Current + RTWA(1704, 114, dtype)) = (EIF_POINTER) tp1;
			}
		}
		RTHOOK(25);
		RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
		
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 141, dtype))(Current)).it_i4);
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_2;
		RTHOOK(26);
		RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
		
		RTAR(Current, loc2);
		*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(27);
		RTCT("removed_or_not_found", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 68, dtype))(Current)).it_b);
		if (!tb3) {
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
			tb2 = tb3;
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(28);
		RTCT("not_present", EX_POST);
		up1 = arg1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		if ((EIF_BOOLEAN) !tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(29);
		RTCT("one_less", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		if (tb3) {
			ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
			RTCO(tr1);
			tb2 = (EIF_BOOLEAN)(ti4_2 == (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L)));
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(30);
		RTCT("default_case", EX_POST);
		tb2 = '\01';
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(arg1 == tp1)) {
			tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
			tb2 = (EIF_BOOLEAN) !tb3;
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(31);
		RTCT("non_default_case", EX_POST);
		tb2 = '\01';
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(arg1 != tp1)) {
			tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
			RTCO(tr2);
			tb2 = (EIF_BOOLEAN)(tb3 == tb1);
		}
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(32);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ub1
#undef arg1
}

/* {HASH_TABLE}.prune */
void F1705_9605 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "prune";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11418);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11418);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 149, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("prunable", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 64, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 31, dtype));
	if (tb1) {
		for (;;) {
			RTHOOK(3);
			tb1 = '\01';
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 71, dtype))(Current)).it_b);
			if (!tb2) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 50, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				tb1 = RTEQ(tr1, arg1);
			}
			if (tb1) break;
			RTHOOK(4);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 77, dtype))(Current);
		}
	} else {
		for (;;) {
			RTHOOK(5);
			tb2 = '\01';
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 71, dtype))(Current)).it_b);
			if (!tb3) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 50, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				tb2 = RTCEQ(tr1, arg1);
			}
			if (tb2) break;
			RTHOOK(6);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 77, dtype))(Current);
		}
	}
	RTHOOK(7);
	tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 71, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb3) {
		RTHOOK(8);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 51, dtype))(Current)).it_p);
		up1 = tp1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 89, dtype))(Current, up1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {HASH_TABLE}.wipe_out */
void F1705_9606 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "wipe_out";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,loc1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1704, Current, 1, 0, 11419);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11419);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("prunable", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 64, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1225, 71, "wipe_out", tr1))(tr1);
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1602, 71, "wipe_out", tr1))(tr1);
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	ub1 = (EIF_BOOLEAN) 0;
	ui4_1 = ((EIF_INTEGER_32) 0L);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(4,2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 45, "upper", tr2))(tr2)).it_i4);
	ui4_2 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 55, "fill_with", tr1))(tr1, ub1x, ui4_1x, ui4_2x);
	RTHOOK(5);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(5,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ui4_2 = ((EIF_INTEGER_32) 0L);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
	ui4_3 = ti4_2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1304, 55, "fill_with", tr1))(tr1, ui4_1x, ui4_2x, ui4_3x);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 1704, 43, 0xF8000000, 0); /* found_item */
	
	RTAR(Current, loc1);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 43, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
	RTHOOK(7);
	RTDBGAA(Current, dtype, 1704, 55, 0x10000000, 1); /* count */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(8);
	RTDBGAA(Current, dtype, 1704, 102, 0x10000000, 1); /* item_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(9);
	RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(9,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(10);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(11);
	RTDBGAA(Current, dtype, 1704, 103, 0x04000000, 1); /* has_default */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(12);
		RTCT("wiped_out", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 35, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(13);
		RTCT("position_equal_to_zero", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(14);
		RTCT("count_equal_to_zero", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(15);
		RTCT("has_default_set", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(16);
		RTCT("no_status", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 145, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ub1
}

/* {HASH_TABLE}.clear_all */
void F1705_9607 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "clear_all";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11420);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1704, Current, 11420);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 91, Dtype(Current)))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {HASH_TABLE}.linear_representation */
EIF_TYPED_VALUE F1705_9608 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "linear_representation";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 1704, Current, 1, 0, 11421);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11421);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF80004DA, 0,0); /* Result */
	
	{
		EIF_TYPE_INDEX typarr0[] = {1704,1242,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = RTWCT(1704, 149, Current);
		
		typres0 = eif_compound_id(Dftype(Current), 1242, typarr0);
		tr1 = RTLN(typres0);
	}
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1242, 76, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 76, dtype))(Current);
	for (;;) {
		RTHOOK(4);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 72, dtype))(Current)).it_b);
		if (tb1) break;
		RTHOOK(5);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 50, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
		RTHOOK(6);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1704, 77, dtype))(Current);
	}
	RTHOOK(7);
	RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) loc1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("result_exists", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("good_count", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 97, "count", Result))(Result)).it_i4);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(10);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
}

/* {HASH_TABLE}.copy */
void F1705_9609 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "copy";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,tr2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11422);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11422);
	RTCC(arg1, 1704, l_feature_name, 1, Dftype(Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("other_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("type_identity", EX_PRE);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 4, dtype))(Current, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	if (!RTCEQ(arg1, Current)) {
		RTHOOK(4);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 11, dtype))(Current, ur1x);
		RTHOOK(5);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 98, "content", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1225, 11, "twin", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = tr2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 119, dtype))(Current, ur1x);
		RTHOOK(6);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 99, "keys", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 11, "twin", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = tr2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 121, dtype))(Current, ur1x);
		RTHOOK(7);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 101, "deleted_marks", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(7,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 11, "twin", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = tr2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 122, dtype))(Current, ur1x);
		RTHOOK(8);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 100, "indexes_map", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(8,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1304, 11, "twin", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = tr2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 123, dtype))(Current, ur1x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(9);
		RTCT("is_equal", EX_POST);
		if (RTEQ(Current, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(10);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
#undef arg1
}

/* {HASH_TABLE}.empty_duplicate */
EIF_TYPED_VALUE F1705_9610 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "empty_duplicate";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11423);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11423);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("n_non_negative", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF80006A8, 0,0); /* Result */
	
	tr1 = RTLNSMART(Dftype(Current));
	ui4_1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1704, 41, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("empty_duplicate_attached", EX_POST);
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
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.correct_mismatch */
void F1705_9611 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "correct_mismatch";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_POINTER loc7 = (EIF_POINTER) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc11 = (EIF_INTEGER_32) 0;
	EIF_POINTER loc12 = (EIF_POINTER) 0;
	EIF_BOOLEAN loc13 = (EIF_BOOLEAN) 0;
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
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(11);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLR(4,loc8);
	RTLR(5,loc9);
	RTLR(6,loc10);
	RTLR(7,loc1);
	RTLR(8,tr3);
	RTLR(9,loc5);
	RTLR(10,loc6);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_POINTER, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_INT32, &loc11);
	RTLU(SK_POINTER, &loc12);
	RTLU(SK_BOOL, &loc13);
	
	RTEAA(l_feature_name, 1704, Current, 13, 0, 11424);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11424);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tr2 = RTMS_EX_H("hash_table_version_64",21,855604276);
	ur1 = tr2;
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(519, 44, "has", tr1))(tr1, ur1x)).it_b);
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		tr2 = RTMS_EX_H("content",7,460700276);
		ur1 = tr2;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(519, 42, "item", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		loc8 = RTCCL(tr2);
		{
			EIF_TYPE_INDEX typarr0[] = {1704,1232,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[2] = RTWCT(1704, 149, Current);
			
			typres0 = eif_compound_id(dftype, 1232, typarr0);
			loc8 = RTRV(eif_non_attached_type(typres0),loc8);
		}
		if (EIF_TEST(loc8)) {
			RTHOOK(3);
			RTDBGAA(Current, dtype, 1704, 98, 0xF80004C9, 0); /* content */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1232, 45, "area", loc8))(loc8)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTAR(Current, tr1);
			*(EIF_REFERENCE *)(Current + RTWA(1704, 98, dtype)) = (EIF_REFERENCE) tr1;
		}
		RTHOOK(4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		tr2 = RTMS_EX_H("keys",4,1801812339);
		ur1 = tr2;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(519, 42, "item", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		loc9 = RTCCL(tr2);
		{
			EIF_TYPE_INDEX typarr0[] = {1704,1608,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[2] = RTWCT(1704, 151, Current);
			
			typres0 = eif_compound_id(dftype, 1608, typarr0);
			loc9 = RTRV(eif_non_attached_type(typres0),loc9);
		}
		if (EIF_TEST(loc9)) {
			RTHOOK(5);
			RTDBGAA(Current, dtype, 1704, 99, 0xF8000642, 0); /* keys */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1608, 45, "area", loc9))(loc9)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTAR(Current, tr1);
			*(EIF_REFERENCE *)(Current + RTWA(1704, 99, dtype)) = (EIF_REFERENCE) tr1;
		}
		RTHOOK(6);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		tr2 = RTMS_EX_H("deleted_marks",13,2142169971);
		ur1 = tr2;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(519, 42, "item", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		loc10 = RTCCL(tr2);
		{
			static EIF_TYPE_INDEX typarr0[] = {1704,1491,769,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1491, typarr0)));
			loc10 = RTRV(eif_non_attached_type(typres0),loc10);
		}
		if (EIF_TEST(loc10)) {
			RTHOOK(7);
			RTDBGAA(Current, dtype, 1704, 101, 0xF80005D0, 0); /* deleted_marks */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1491, 45, "area", loc10))(loc10)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTAR(Current, tr1);
			*(EIF_REFERENCE *)(Current + RTWA(1704, 101, dtype)) = (EIF_REFERENCE) tr1;
		}
		RTHOOK(8);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 != NULL)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		if (tb1) {
			RTHOOK(9);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(9,1);
			tr2 = RTMS_EX_H("hash_table_version_57",21,855604023);
			ur1 = tr2;
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(519, 44, "has", tr1))(tr1, ur1x)).it_b);
			if ((EIF_BOOLEAN) !tb1) {
				RTHOOK(10);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(10,1);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", tr1))(tr1)).it_i4);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(10,2);
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
				if ((EIF_BOOLEAN)(ti4_1 != ti4_2)) {
					RTHOOK(11);
					RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
					
					loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTHOOK(12);
					RTDBGAA(Current, dtype, 1704, 101, 0xF80005D0, 0); /* deleted_marks */
					
					tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(12,1);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr2))(tr2)).it_i4);
					ui4_1 = ti4_1;
					if (ui4_1< 0) {
						eraise ("non_negative_argument", EN_RT_CHECK);
					}
					tr1 = RTLNSP2(eif_non_attached_type(RTWCT(1704, 101, Current)),0,ui4_1,sizeof(EIF_BOOLEAN), EIF_TRUE);
					RT_SPECIAL_COUNT(tr1) = 0;
					RTAR(Current, tr1);
					*(EIF_REFERENCE *)(Current + RTWA(1704, 101, dtype)) = (EIF_REFERENCE) tr1;
					RTHOOK(13);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(13,1);
					ur1 = loc1;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ui4_3 = ((EIF_INTEGER_32) 0L);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc1))(loc1)).it_i4);
					ui4_4 = ti4_2;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 58, "copy_data", tr1))(tr1, ur1x, ui4_2x, ui4_3x, ui4_4x);
				}
			}
		}
		RTHOOK(14);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(14,1);
		tr3 = RTMS_EX_H("count",5,1870727284);
		ur1 = tr3;
		tr3 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(519, 42, "item", tr2))(tr2, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		tr1 = RTCCL(tr3);
		RTOB(*(EIF_INTEGER_32 *), 739, tr1, loc11, tb1);
		if (tb1) {
			RTHOOK(15);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			loc4 = (EIF_INTEGER_32) loc11;
		}
		RTHOOK(16);
		tb1 = '\01';
		tb2 = '\01';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (!(EIF_BOOLEAN)(tr1 == NULL)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb2 = (EIF_BOOLEAN)(tr1 == NULL);
		}
		if (!tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 == NULL);
		}
		if (tb1) {
			RTHOOK(17);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(514, 32, 514))(Current);
		} else {
			RTHOOK(18);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(18,1);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
			loc3 = (EIF_INTEGER_32) ti4_2;
			RTHOOK(19);
			RTDBGAL(Current, 5, 0xF80006A8, 0, 0); /* loc5 */
			
			ui4_2 = loc4;
			loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 95, dtype))(Current, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			for (;;) {
				RTHOOK(20);
				if ((EIF_BOOLEAN)(loc2 == loc3)) break;
				RTHOOK(21);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(21,1);
				ui4_2 = loc2;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", tr1))(tr1, ui4_2x)).it_p);
				loc12 = tp1;
				if ((EIF_TRUE)) {
					RTHOOK(22);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(22,1);
					ui4_2 = loc2;
					tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
					ur1 = RTCCL(tr2);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(22,2);
					ui4_2 = loc2;
					tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", tr1))(tr1, ui4_2x)).it_p);
					up1 = tp1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1704, 83, "put", loc5))(loc5, ur1x, up1x);
				}
				RTHOOK(23);
				RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
				
				loc2++;
			}
			RTHOOK(24);
			tb1 = '\0';
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(24,1);
			tr3 = RTMS_EX_H("has_default",11,1777575796);
			ur1 = tr3;
			tr3 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(519, 42, "item", tr2))(tr2, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			tr1 = RTCCL(tr3);
			RTOB(*(EIF_BOOLEAN *), 769, tr1, loc13, tb2);
			if (tb2) {
				tb1 = loc13;
			}
			if (tb1) {
				RTHOOK(25);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(25,1);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				RTNHOOK(25,2);
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1225, 47, "capacity", tr2))(tr2)).it_i4);
				ui4_2 = (EIF_INTEGER_32) (ti4_2 - ((EIF_INTEGER_32) 1L));
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				ur1 = RTCCL(tr2);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(25,3);
				ui4_2 = (EIF_INTEGER_32) (loc3 - ((EIF_INTEGER_32) 1L));
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", tr1))(tr1, ui4_2x)).it_p);
				up1 = tp1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1704, 83, "put", loc5))(loc5, ur1x, up1x);
			}
			RTHOOK(26);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 98, "content", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 119, dtype))(Current, ur1x);
			RTHOOK(27);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 99, "keys", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 121, dtype))(Current, ur1x);
			RTHOOK(28);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 101, "deleted_marks", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 122, dtype))(Current, ur1x);
			RTHOOK(29);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1704, 100, "indexes_map", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 123, dtype))(Current, ur1x);
			RTHOOK(30);
			RTDBGAA(Current, dtype, 1704, 56, 0x10000000, 1); /* capacity */
			
			ti4_2 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1704, 56, "capacity", loc5));
			*(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype)) = (EIF_INTEGER_32) ti4_2;
			RTHOOK(31);
			RTDBGAA(Current, dtype, 1704, 104, 0x10000000, 1); /* iteration_position */
			
			ti4_2 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1704, 104, "iteration_position", loc5));
			*(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype)) = (EIF_INTEGER_32) ti4_2;
			RTHOOK(32);
			RTDBGAA(Current, dtype, 1704, 108, 0x10000000, 1); /* deleted_item_position */
			
			ti4_2 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1704, 108, "deleted_item_position", loc5));
			*(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype)) = (EIF_INTEGER_32) ti4_2;
			RTHOOK(33);
			RTDBGAA(Current, dtype, 1704, 102, 0x10000000, 1); /* item_position */
			
			ti4_2 = *(EIF_INTEGER_32 *)(loc5 + RTVA(1704, 102, "item_position", loc5));
			*(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype)) = (EIF_INTEGER_32) ti4_2;
			RTHOOK(34);
			RTDBGAA(Current, dtype, 1704, 112, 0x10000000, 1); /* ht_lowest_deleted_position */
			
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 109, dtype))(Current)).it_i4);
			*(EIF_INTEGER_32 *)(Current + RTWA(1704, 112, dtype)) = (EIF_INTEGER_32) ti4_2;
			RTHOOK(35);
			RTDBGAA(Current, dtype, 1704, 113, 0xF8000000, 0); /* ht_deleted_item */
			
			RTAR(Current, loc6);
			*(EIF_REFERENCE *)(Current + RTWA(1704, 113, dtype)) = (EIF_REFERENCE) RTCCL(loc6);
			RTHOOK(36);
			RTDBGAA(Current, dtype, 1704, 114, 0x40000000, 0); /* ht_deleted_key */
			
			*(EIF_POINTER *)(Current + RTWA(1704, 114, dtype)) = (EIF_POINTER) loc7;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(37);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
}

/* {HASH_TABLE}.hash_table_version_64 */
EIF_TYPED_VALUE F1705_9612 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1704,97, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.content */
EIF_TYPED_VALUE F1705_9613 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1704,98, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.keys */
EIF_TYPED_VALUE F1705_9614 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1704,99, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.indexes_map */
EIF_TYPED_VALUE F1705_9615 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1704,100, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.deleted_marks */
EIF_TYPED_VALUE F1705_9616 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1704,101, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.item_position */
EIF_TYPED_VALUE F1705_9617 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704,102, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.has_default */
EIF_TYPED_VALUE F1705_9618 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1704,103, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.iteration_position */
EIF_TYPED_VALUE F1705_9619 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704,104, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.position */
EIF_TYPED_VALUE F1705_9620 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "position";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11324);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11324);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
	ui4_1 = ti4_1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr1))(tr1, ui4_1x)).it_i4);
	Result = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
}

/* {HASH_TABLE}.soon_full */
EIF_TYPED_VALUE F1705_9621 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "soon_full";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11325);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11325);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,2);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 47, "capacity", tr1))(tr1)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT(NULL, EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,2);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 47, "capacity", tr1))(tr1)).it_i4);
		if ((EIF_BOOLEAN)(Result == (EIF_BOOLEAN)(ti4_1 == ti4_2))) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
}

/* {HASH_TABLE}.control */
EIF_TYPED_VALUE F1705_9622 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704,107, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.deleted_item_position */
EIF_TYPED_VALUE F1705_9623 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704,108, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.ht_max_position */
EIF_TYPED_VALUE F1705_9624 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2147483645L);
	return r;
}

/* {HASH_TABLE}.ht_impossible_position */
EIF_TYPED_VALUE F1705_9625 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
	return r;
}

/* {HASH_TABLE}.ht_deleted_position */
EIF_TYPED_VALUE F1705_9626 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) -2L);
	return r;
}

/* {HASH_TABLE}.ht_lowest_deleted_position */
EIF_TYPED_VALUE F1705_9627 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1704,112, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.ht_deleted_item */
EIF_TYPED_VALUE F1705_9628 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1704,113, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.ht_deleted_key */
EIF_TYPED_VALUE F1705_9629 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1704,114, Dtype(Current)));
	return r;
}


/* {HASH_TABLE}.deleted_position */
EIF_TYPED_VALUE F1705_9630 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "deleted_position";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11334);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11334);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("deleted", EX_PRE);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 120, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ui4_1 = arg1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr1))(tr1, ui4_1x)).it_i4);
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 111, dtype))(Current)).it_i4);
	Result = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) -ti4_1 + Result);
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_min_int32 (Result,ui4_1);
	Result = (EIF_INTEGER_32) ti4_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("deleted_position_non_negative", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("deleted_position_valid", EX_POST);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
		if ((EIF_BOOLEAN) (Result <= ti4_1)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,2);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1225, 46, "count", tr1))(tr1)).it_i4);
			tb1 = (EIF_BOOLEAN) (Result <= ti4_1);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.occupied */
EIF_TYPED_VALUE F1705_9631 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "occupied";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11335);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11335);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("in_bounds", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(1,1);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 50, "valid_index", tr1))(tr1, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
	if (tb1) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		ui4_1 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr1))(tr1, ui4_1x)).it_i4);
		if ((EIF_BOOLEAN)(arg1 != ti4_1)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(3,2);
			ui4_1 = arg1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", tr1))(tr1, ui4_1x)).it_b);
			tb1 = (EIF_BOOLEAN) !tb2;
		}
		Result = (EIF_BOOLEAN) tb1;
	} else {
		RTHOOK(4);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", tr1))(tr1, ui4_1x)).it_b);
		Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !tb1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.truly_occupied */
EIF_TYPED_VALUE F1705_9632 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "truly_occupied";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11336);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11336);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = '\0';
	if ((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L))) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(1,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
		tb1 = (EIF_BOOLEAN) (arg1 < ti4_1);
	}
	if (tb1) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tb1 = '\01';
		tb2 = '\0';
		tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		if (tb3) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(2,1);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
			ui4_1 = ti4_1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr1))(tr1, ui4_1x)).it_i4);
			tb2 = (EIF_BOOLEAN)(arg1 == ti4_1);
		}
		if (!(tb2)) {
			ui4_1 = arg1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 116, dtype))(Current, ui4_1x)).it_b);
			tb1 = tb2;
		}
		Result = (EIF_BOOLEAN) tb1;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("normal_key", EX_POST);
		tb1 = '\01';
		tb2 = '\0';
		tb3 = '\0';
		if ((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L))) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(3,1);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
			tb3 = (EIF_BOOLEAN) (arg1 < ti4_1);
		}
		if (tb3) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(3,2);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
			ui4_1 = ti4_1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr1))(tr1, ui4_1x)).it_i4);
			tb2 = (EIF_BOOLEAN)(arg1 != ti4_1);
		}
		if (tb2) {
			tb2 = '\01';
			ui4_1 = arg1;
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 116, dtype))(Current, ui4_1x)).it_b);
			if (tb3) {
				tb2 = Result;
			}
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("default_key", EX_POST);
		tb1 = '\01';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		ui4_1 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr1))(tr1, ui4_1x)).it_i4);
		if ((EIF_BOOLEAN)(arg1 == ti4_1)) {
			tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
			tb1 = (EIF_BOOLEAN)(Result == tb2);
		}
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
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.is_off_position */
EIF_TYPED_VALUE F1705_9633 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_off_position";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11337);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1704, Current, 11337);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	if (!(EIF_BOOLEAN) (arg1 < ((EIF_INTEGER_32) 0L))) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(1,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
		tb1 = (EIF_BOOLEAN) (arg1 >= ti4_1);
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
#undef up1
#undef arg1
}

/* {HASH_TABLE}.set_content */
void F1705_9634 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_content";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11338);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11338);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 98, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("c_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1704, 98, 0xF80004C9, 0); /* content */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 98, dtype)) = (EIF_REFERENCE) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("content_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 == arg1)) {
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
#undef up1
#undef arg1
}

/* {HASH_TABLE}.deleted */
EIF_TYPED_VALUE F1705_9635 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "deleted";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11339);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11339);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("in_bounds", EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		RTTE((EIF_BOOLEAN) ((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)) && (EIF_BOOLEAN) (arg1 <= ti4_1)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ui4_1 = arg1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr1))(tr1, ui4_1x)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 111, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (ti4_1 <= ti4_2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.set_keys */
void F1705_9636 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_keys";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11340);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11340);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 99, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("c_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1704, 99, 0xF8000642, 0); /* keys */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 99, dtype)) = (EIF_REFERENCE) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("keys_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 == arg1)) {
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
#undef up1
#undef arg1
}

/* {HASH_TABLE}.set_deleted_marks */
void F1705_9637 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_deleted_marks";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11341);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11341);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 101, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("d_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1704, 101, 0xF80005D0, 0); /* deleted_marks */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 101, dtype)) = (EIF_REFERENCE) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("deleted_marks_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 == arg1)) {
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
#undef up1
#undef arg1
}

/* {HASH_TABLE}.set_indexes_map */
void F1705_9638 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_indexes_map";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11342);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11342);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 100, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1704, 100, 0xF8000518, 0); /* indexes_map */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1704, 100, dtype)) = (EIF_REFERENCE) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("indexes_map_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 == arg1)) {
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
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {HASH_TABLE}.default_key_value */
EIF_TYPED_VALUE F1705_9639 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "default_key_value";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11343);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11343);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("has_default", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000000, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
	ui4_1 = ti4_1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", tr2))(tr2, ui4_1x)).it_i4);
	ui4_1 = ti4_1;
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", tr1))(tr1, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr2);
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
#undef up2
#undef ui4_1
}

/* {HASH_TABLE}.computed_default_key */
EIF_TYPED_VALUE F1705_9640 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "computed_default_key";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11344);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1704, Current, 11344);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
}

/* {HASH_TABLE}.computed_default_value */
EIF_TYPED_VALUE F1705_9641 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "computed_default_value";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11345);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1704, Current, 11345);
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

/* {HASH_TABLE}.internal_search */
void F1705_9642 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "internal_search";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc8 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_POINTER loc12 = (EIF_POINTER) 0;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,loc9);
	RTLR(2,loc10);
	RTLR(3,loc11);
	RTLR(4,tr1);
	RTLR(5,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_INT32, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_POINTER, &loc12);
	
	RTEAA(l_feature_name, 1704, Current, 12, 1, 11346);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11346);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
	
	loc7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
	loc7 = (EIF_INTEGER_32) loc7;
	RTHOOK(2);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 == loc1) || EIF_FALSE)) {
		RTHOOK(3);
		RTDBGAA(Current, dtype, 1704, 102, 0x10000000, 1); /* item_position */
		
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype)) = (EIF_INTEGER_32) ti4_1;
		RTHOOK(4);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
		if (tb1) {
			RTHOOK(5);
			RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 134, dtype))(Current)).it_i4);
			*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
		} else {
			RTHOOK(6);
			RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 138, dtype))(Current)).it_i4);
			*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
		}
	} else {
		RTHOOK(7);
		RTDBGAL(Current, 9, 0xF8000642, 0, 0); /* loc9 */
		
		loc9 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(8);
		RTDBGAL(Current, 10, 0xF8000518, 0, 0); /* loc10 */
		
		loc10 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(9);
		RTDBGAL(Current, 11, 0xF80005D0, 0, 0); /* loc11 */
		
		loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(10);
		RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
		
		loc6 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		RTHOOK(11);
		RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
		
		loc8 = (EIF_INTEGER_32) loc6;
		RTHOOK(12);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (EIF_INTEGER_32) (0x7FFFFFFF & (EIF_INTEGER_32) ((rt_int_ptr) (arg1)));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(13);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (((EIF_INTEGER_32) 1L) + (EIF_INTEGER_32) (loc2 % (EIF_INTEGER_32) (loc6 - ((EIF_INTEGER_32) 1L))));
		RTHOOK(14);
		RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
		
		loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc2 % loc6) - loc3);
		RTHOOK(15);
		RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 138, dtype))(Current)).it_i4);
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
		for (;;) {
			RTHOOK(16);
			if ((EIF_BOOLEAN)(loc8 == ((EIF_INTEGER_32) 0L))) break;
			RTHOOK(17);
			RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
			
			loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc5 + loc3) % loc6);
			RTHOOK(18);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			ui4_1 = loc5;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", loc10))(loc10, ui4_1x)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(19);
			if ((EIF_BOOLEAN) (loc4 >= ((EIF_INTEGER_32) 0L))) {
				RTHOOK(20);
				RTDBGAL(Current, 12, 0x40000000, 0, 0); /* loc12 */
				
				ui4_1 = loc4;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", loc9))(loc9, ui4_1x)).it_p);
				loc12 = (EIF_POINTER) tp1;
				if (
					WDBG(1704,"detect_hash_table_catcall")
				) {
					if (RTAL & CK_CHECK) {
						RTHOOK(21);
						RTCT("catcall_detected", EX_CHECK);
						tb1 = '\0';
						if (EIF_TRUE) {
							ur1 = RTLN(778);
							*(EIF_POINTER *)ur1 = arg1;
							tr1 = RTLN(778);
							*(EIF_POINTER *)tr1 = loc12;
							
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(779, 4, "same_type", tr1))(tr1, ur1x)).it_b);
							tb1 = tb2;
						}
						if (tb1) {
							RTCK;
						} else {
							RTCF;
						}
					}
				}
				RTHOOK(22);
				up1 = loc12;
				up2 = arg1;
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1704, 60, dtype))(Current, up1x, up2x)).it_b);
				if (tb1) {
					RTHOOK(23);
					RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					RTHOOK(24);
					RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 134, dtype))(Current)).it_i4);
					*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
				}
			} else {
				RTHOOK(25);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(loc4 == ti4_1)) {
					RTHOOK(26);
					RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
				} else {
					RTHOOK(27);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(loc7 == ti4_1)) {
						RTHOOK(28);
						RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
						
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 111, dtype))(Current)).it_i4);
						loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) -loc4 + ti4_1);
						if (RTAL & CK_CHECK) {
							RTHOOK(29);
							RTCT("l_pos_valid", EX_CHECK);
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc11))(loc11)).it_i4);
							if ((EIF_BOOLEAN) (loc4 < ti4_1)) {
								RTCK;
							} else {
								RTCF;
							}
						}
						RTHOOK(30);
						ui4_1 = loc4;
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", loc11))(loc11, ui4_1x)).it_b);
						if ((EIF_BOOLEAN) !tb1) {
							RTHOOK(31);
							RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
							
							loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
						} else {
							RTHOOK(32);
							RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
							
							loc7 = (EIF_INTEGER_32) loc5;
						}
					}
				}
			}
			RTHOOK(33);
			RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
			
			loc8--;
		}
		RTHOOK(34);
		RTDBGAA(Current, dtype, 1704, 102, 0x10000000, 1); /* item_position */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype)) = (EIF_INTEGER_32) loc5;
	}
	RTHOOK(35);
	RTDBGAA(Current, dtype, 1704, 108, 0x10000000, 1); /* deleted_item_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype)) = (EIF_INTEGER_32) loc7;
	if (RTAL & CK_ENSURE) {
		RTHOOK(36);
		RTCT("found_or_not_found", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		if (!tb2) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(37);
		RTCT("deleted_item_at_deleted_position", EX_POST);
		tb1 = '\01';
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 != ti4_2)) {
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
			ui4_1 = ti4_1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 120, dtype))(Current, ui4_1x)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(38);
		RTCT("default_iff_at_capacity", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)((EIF_BOOLEAN)(ti4_1 == ti4_2) == (EIF_BOOLEAN)(arg1 == tp1))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(39);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.search_for_insertion */
void F1705_9643 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "search_for_insertion";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc8 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,loc9);
	RTLR(2,loc10);
	RTLR(3,loc11);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_INT32, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	
	RTEAA(l_feature_name, 1704, Current, 11, 1, 11347);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11347);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_present", EX_PRE);
		up1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 46, dtype))(Current, up1x)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
	
	loc7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
	loc7 = (EIF_INTEGER_32) loc7;
	RTHOOK(3);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 == loc1) || EIF_FALSE)) {
		if (RTAL & CK_CHECK) {
			RTHOOK(4);
			RTCT(NULL, EX_CHECK);
			tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1704, 103, dtype));
			if ((EIF_BOOLEAN) !tb1) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(5);
		RTDBGAA(Current, dtype, 1704, 102, 0x10000000, 1); /* item_position */
		
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype)) = (EIF_INTEGER_32) ti4_1;
	} else {
		RTHOOK(6);
		RTDBGAL(Current, 9, 0xF8000642, 0, 0); /* loc9 */
		
		loc9 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(7);
		RTDBGAL(Current, 10, 0xF8000518, 0, 0); /* loc10 */
		
		loc10 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 100, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(8);
		RTDBGAL(Current, 11, 0xF80005D0, 0, 0); /* loc11 */
		
		loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 101, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(9);
		RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
		
		loc6 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		RTHOOK(10);
		RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
		
		loc8 = (EIF_INTEGER_32) loc6;
		RTHOOK(11);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = (EIF_INTEGER_32) (0x7FFFFFFF & (EIF_INTEGER_32) ((rt_int_ptr) (arg1)));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(12);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (((EIF_INTEGER_32) 1L) + (EIF_INTEGER_32) (loc2 % (EIF_INTEGER_32) (loc6 - ((EIF_INTEGER_32) 1L))));
		RTHOOK(13);
		RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
		
		loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc2 % loc6) - loc3);
		for (;;) {
			RTHOOK(14);
			if ((EIF_BOOLEAN)(loc8 == ((EIF_INTEGER_32) 0L))) break;
			RTHOOK(15);
			RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
			
			loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc5 + loc3) % loc6);
			RTHOOK(16);
			RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
			
			ui4_1 = loc5;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1304, 36, "item", loc10))(loc10, ui4_1x)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(17);
			if ((EIF_BOOLEAN) (loc4 >= ((EIF_INTEGER_32) 0L))) {
			} else {
				RTHOOK(18);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(loc4 == ti4_1)) {
					RTHOOK(19);
					RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
					
					loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
				} else {
					RTHOOK(20);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(loc7 == ti4_1)) {
						RTHOOK(21);
						RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
						
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 111, dtype))(Current)).it_i4);
						loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) -loc4 + ti4_1);
						if (RTAL & CK_CHECK) {
							RTHOOK(22);
							RTCT("l_pos_valid", EX_CHECK);
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc11))(loc11)).it_i4);
							if ((EIF_BOOLEAN) (loc4 < ti4_1)) {
								RTCK;
							} else {
								RTCF;
							}
						}
						RTHOOK(23);
						ui4_1 = loc4;
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", loc11))(loc11, ui4_1x)).it_b);
						if ((EIF_BOOLEAN) !tb1) {
							RTHOOK(24);
							RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
							
							loc8 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
						} else {
							RTHOOK(25);
							RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
							
							loc7 = (EIF_INTEGER_32) loc5;
						}
					}
				}
			}
			RTHOOK(26);
			RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
			
			loc8--;
		}
		RTHOOK(27);
		RTDBGAA(Current, dtype, 1704, 102, 0x10000000, 1); /* item_position */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype)) = (EIF_INTEGER_32) loc5;
	}
	RTHOOK(28);
	RTDBGAA(Current, dtype, 1704, 108, 0x10000000, 1); /* deleted_item_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype)) = (EIF_INTEGER_32) loc7;
	if (RTAL & CK_ENSURE) {
		RTHOOK(29);
		RTCT("deleted_item_at_deleted_position", EX_POST);
		tb1 = '\01';
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 110, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 != ti4_2)) {
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 108, dtype));
			ui4_1 = ti4_1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 120, dtype))(Current, ui4_1x)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(30);
		RTCT("default_iff_at_capacity", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 102, dtype));
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 125, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)((EIF_BOOLEAN)(ti4_1 == ti4_2) == (EIF_BOOLEAN)(arg1 == tp1))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(31);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(14);
	RTEE;
#undef up1
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.key_at */
EIF_TYPED_VALUE F1705_9644 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "key_at";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11348);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11348);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	ui4_1 = arg1;
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 50, "valid_index", tr1))(tr1, ui4_1x)).it_b);
	if (tb1) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x40000000, 0,0); /* Result */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		ui4_1 = arg1;
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", tr1))(tr1, ui4_1x)).it_p);
		Result = (EIF_POINTER) tp1;
	}
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
#undef ui4_1
#undef arg1
}

/* {HASH_TABLE}.initial_position */
EIF_TYPED_VALUE F1705_9645 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "initial_position";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11349);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1704, Current, 11349);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, Dtype(Current)));
	Result = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg1 % Result);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

/* {HASH_TABLE}.position_increment */
EIF_TYPED_VALUE F1705_9646 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "position_increment";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11350);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1704, Current, 11350);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, Dtype(Current)));
	Result = (EIF_INTEGER_32) (EIF_INTEGER_32) (((EIF_INTEGER_32) 1L) + (EIF_INTEGER_32) (arg1 % (EIF_INTEGER_32) (Result - ((EIF_INTEGER_32) 1L))));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

/* {HASH_TABLE}.conflict_constant */
EIF_TYPED_VALUE F1705_9647 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	return r;
}

/* {HASH_TABLE}.set_conflict */
void F1705_9648 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_conflict";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11352);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11352);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 132, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("conflict", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
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

/* {HASH_TABLE}.found_constant */
EIF_TYPED_VALUE F1705_9649 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	return r;
}

/* {HASH_TABLE}.set_found */
void F1705_9650 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_found";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11354);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11354);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 134, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("found", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
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

/* {HASH_TABLE}.inserted_constant */
EIF_TYPED_VALUE F1705_9651 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
	return r;
}

/* {HASH_TABLE}.set_inserted */
void F1705_9652 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_inserted";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11356);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11356);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 136, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("inserted", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 66, dtype))(Current)).it_b);
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

/* {HASH_TABLE}.not_found_constant */
EIF_TYPED_VALUE F1705_9653 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 8L);
	return r;
}

/* {HASH_TABLE}.set_not_found */
void F1705_9654 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_not_found";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11358);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11358);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 138, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_found", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
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

/* {HASH_TABLE}.set_no_status */
void F1705_9655 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_no_status";
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
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11359);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11359);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("default_status", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 145, dtype))(Current)).it_b);
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

/* {HASH_TABLE}.removed_constant */
EIF_TYPED_VALUE F1705_9656 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 16L);
	return r;
}

/* {HASH_TABLE}.set_removed */
void F1705_9657 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_removed";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11361);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11361);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 141, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("removed", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 68, dtype))(Current)).it_b);
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

/* {HASH_TABLE}.replaced_constant */
EIF_TYPED_VALUE F1705_9658 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 32L);
	return r;
}

/* {HASH_TABLE}.set_replaced */
void F1705_9659 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_replaced";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11363);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11363);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1704, 107, 0x10000000, 1); /* control */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 143, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype)) = (EIF_INTEGER_32) ti4_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("replaced", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 67, dtype))(Current)).it_b);
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

/* {HASH_TABLE}.special_status */
EIF_TYPED_VALUE F1705_9660 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "special_status";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11364);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11364);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L));
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT(NULL, EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype));
		if ((EIF_BOOLEAN)(Result == (EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L)))) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {HASH_TABLE}.add_space */
void F1705_9661 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "add_space";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1704, Current, 0, 0, 11365);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11365);
	RTIV(Current, RTAL);
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(1);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
	ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
	ui4_1 = (EIF_INTEGER_32) (ti4_2 + (EIF_INTEGER_32) (ti4_3 / ((EIF_INTEGER_32) 2L)));
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 42, dtype))(Current, ui4_1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("count_not_changed", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		RTCO(tr1);
		if ((EIF_BOOLEAN)(ti4_2 == ti4_1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(3);
		RTCT("breathing_space", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
		ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
		if ((EIF_BOOLEAN) (ti4_2 < ti4_3)) {
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
	RTLO(2);
	RTEE;
#undef ui4_1
}

/* {HASH_TABLE}.minimum_capacity */
EIF_TYPED_VALUE F1705_9662 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	return r;
}

/* {HASH_TABLE}.collection_extend */
void F1705_9663 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "collection_extend";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_BOOLEAN tb1;
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
	
	RTEAA(l_feature_name, 1704, Current, 0, 1, 11367);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1704, Current, 11367);
	RTCC(arg1, 1704, l_feature_name, 1, RTWCT(1704, 149, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("extendible", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 63, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("item_inserted", EX_POST);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 36, dtype))(Current, ur1x)).it_b);
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
	RTLO(3);
	RTEE;
#undef ur1
#undef arg1
}

/* {HASH_TABLE}._invariant */
void F1705_23744 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	EIF_BOOLEAN tb6;
	EIF_BOOLEAN tb7;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 1704, Current, 0, 23743);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("keys_not_void", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("content_not_void", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("keys_enough_capacity", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 99, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", tr1))(tr1)).it_i4);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
	if ((EIF_BOOLEAN) (ti4_1 <= (EIF_INTEGER_32) (ti4_2 + ((EIF_INTEGER_32) 1L)))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("content_enough_capacity", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 98, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1225, 46, "count", tr1))(tr1)).it_i4);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
	if ((EIF_BOOLEAN) (ti4_1 <= (EIF_INTEGER_32) (ti4_2 + ((EIF_INTEGER_32) 1L)))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("valid_iteration_position", Current);
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 72, dtype))(Current)).it_b);
	if (!tb2) {
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 104, dtype));
		ui4_1 = ti4_1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1704, 117, dtype))(Current, ui4_1x)).it_b);
		tb1 = tb2;
	}
	if (tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("control_non_negative", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 107, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("special_status", Current);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 145, dtype))(Current)).it_b);
	tb2 = '\01';
	tb3 = '\01';
	tb4 = '\01';
	tb5 = '\01';
	tb6 = '\01';
	tb7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 65, dtype))(Current)).it_b);
	if (!tb7) {
		tb7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 66, dtype))(Current)).it_b);
		tb6 = tb7;
	}
	if (!tb6) {
		tb6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 67, dtype))(Current)).it_b);
		tb5 = tb6;
	}
	if (!tb5) {
		tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 68, dtype))(Current)).it_b);
		tb4 = tb5;
	}
	if (!tb4) {
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 69, dtype))(Current)).it_b);
		tb3 = tb4;
	}
	if (!tb3) {
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1704, 70, dtype))(Current)).it_b);
		tb2 = tb3;
	}
	if ((EIF_BOOLEAN)(tb1 == tb2)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("count_big_enough", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
	if ((EIF_BOOLEAN) (((EIF_INTEGER_32) 0L) <= ti4_1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("count_small_enough", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 56, dtype));
	if ((EIF_BOOLEAN) (ti4_1 <= ti4_2)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("slot_count_big_enough", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1704, 55, dtype));
	if ((EIF_BOOLEAN) (((EIF_INTEGER_32) 0L) <= ti4_1)) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
#undef up1
#undef ui4_1
}

void EIF_Minit1705 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
