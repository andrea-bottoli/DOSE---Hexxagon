/*
 * Code for class EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1160_21578(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1160_21579(EIF_REFERENCE);
extern void F1160_21580(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1160_21581(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1160_21582(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1160_21583(EIF_REFERENCE);
extern void F1160_21584(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1160_21585(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1160_21586(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1160_21587(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1160_21588(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1160_21589(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1160_21590(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
static EIF_TYPED_VALUE F1160_21599_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1160_21599(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1160_21600(EIF_REFERENCE);
extern void F1160_21601(EIF_REFERENCE);
extern void F1160_21602(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1160_21603(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1160_21604(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1160_21605(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1160_21606(EIF_REFERENCE);
extern void F1160_21607(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1160_21608(EIF_REFERENCE);
extern void F1160_21609(EIF_REFERENCE);
extern void F1160_21610(EIF_REFERENCE);
extern void F1160_21611(EIF_REFERENCE);
extern void EIF_Minit1160(void);

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

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.pnd_press */
void F1160_21578 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x)
{
	GTCX
	char *l_feature_name = "pnd_press";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur8_1x = {0, SK_REAL64};
#define ur8_1 ur8_1x.it_r8
	EIF_TYPED_VALUE ur8_2x = {0, SK_REAL64};
#define ur8_2 ur8_2x.it_r8
	EIF_TYPED_VALUE ur8_3x = {0, SK_REAL64};
#define ur8_3 ur8_3x.it_r8
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
	EIF_TYPED_VALUE ub2x = {0, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REAL_64 tr8_1;
	EIF_REAL_64 tr8_2;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_i4 = * (EIF_INTEGER_32 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
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
	RTLU(SK_INT32,&arg4);
	RTLU(SK_INT32,&arg5);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 5, 25587);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1159, Current, 25587);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tu1_1 = *(EIF_NATURAL_8 *)(Current + RTWA(1159, 262, dtype));
	switch (tu1_1) {
		case 1U:
			RTHOOK(2);
			ui4_1 = arg1;
			ui4_2 = arg2;
			ui4_3 = arg3;
			ub1 = (EIF_BOOLEAN) 1;
			tr8_1 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
			ur8_1 = tr8_1;
			tr8_2 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
			ur8_2 = tr8_2;
			ur8_3 = (EIF_REAL_64) 0.5;
			ui4_4 = arg4;
			ui4_5 = arg5;
			ub2 = (EIF_BOOLEAN) 0;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 253, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x, ur8_1x, ur8_2x, ur8_3x, ui4_4x, ui4_5x, ub2x);
			RTHOOK(3);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(3,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 670, "pick_and_drop_source", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			if ((EIF_BOOLEAN)(tr2 != NULL)) {
				RTHOOK(4);
				tb1 = '\01';
				tb2 = '\0';
				if ((EIF_BOOLEAN)(arg3 == ((EIF_INTEGER_32) 1L))) {
					tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 108, dtype))(Current)).it_b);
					tb2 = tb3;
				}
				if (!(tb2)) {
					tb2 = '\0';
					tb3 = '\0';
					if ((EIF_BOOLEAN)(arg3 == ((EIF_INTEGER_32) 3L))) {
						tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 107, dtype))(Current)).it_b);
						tb3 = tb4;
					}
					if (tb3) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(4,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 670, "pick_and_drop_source", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						tb2 = (EIF_BOOLEAN)(tr2 != NULL);
					}
					tb1 = tb2;
				}
				if (tb1) {
					RTHOOK(5);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1159, 306, dtype))(Current);
				}
			}
			break;
		case 2U:
			RTHOOK(6);
			ui4_1 = arg1;
			ui4_2 = arg2;
			ui4_3 = arg3;
			tr8_1 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
			ur8_1 = tr8_1;
			tr8_2 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
			ur8_2 = tr8_2;
			ur8_3 = (EIF_REAL_64) 0.5;
			ui4_4 = arg4;
			ui4_5 = arg5;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 255, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ur8_1x, ur8_2x, ur8_3x, ui4_4x, ui4_5x);
			RTHOOK(7);
			if ((EIF_BOOLEAN)(arg3 == ((EIF_INTEGER_32) 1L))) {
				RTHOOK(8);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1159, 299, dtype))(Current);
			}
			RTHOOK(9);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1159, 307, dtype))(Current);
			break;
		default:
			if (RTAL & CK_CHECK) {
				RTHOOK(10);
				RTCT("disabled", EX_CHECK);
				tu1_1 = *(EIF_NATURAL_8 *)(Current + RTWA(1159, 262, dtype));
				tu1_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 265, dtype))(Current)).it_n1);
				if ((EIF_BOOLEAN)(tu1_1 == tu1_2)) {
					RTCK;
				} else {
					RTCF;
				}
			}
			break;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef up2
#undef ur8_1
#undef ur8_2
#undef ur8_3
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ub1
#undef ub2
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.escape_pnd */
void F1160_21579 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "escape_pnd";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur8_1x = {0, SK_REAL64};
#define ur8_1 ur8_1x.it_r8
	EIF_TYPED_VALUE ur8_2x = {0, SK_REAL64};
#define ur8_2 ur8_2x.it_r8
	EIF_TYPED_VALUE ur8_3x = {0, SK_REAL64};
#define ur8_3 ur8_3x.it_r8
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REAL_64 tr8_1;
	EIF_REAL_64 tr8_2;
	EIF_REAL_64 tr8_3;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLR(3,tr2);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1159, Current, 1, 0, 25588);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1159, Current, 25588);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1159, 303, 0x04000000, 1); /* item_is_pnd_source */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 303, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1159, 301, 0x04000000, 1); /* parent_is_pnd_source */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 301, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1159, 302, 0xF800047B, 0); /* pnd_item_source */
	
	*(EIF_REFERENCE *)(Current + RTWA(1159, 302, dtype)) = (EIF_REFERENCE) NULL;
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1104, 684, "clear_transport_just_ended", tr1))(tr1);
	RTHOOK(5);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(5,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 670, "pick_and_drop_source", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc1 = RTCCL(tr2);
	if (EIF_TEST(loc1)) {
		RTHOOK(6);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ui4_2 = ((EIF_INTEGER_32) 0L);
		ui4_3 = ((EIF_INTEGER_32) 2L);
		tr8_1 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
		ur8_1 = tr8_1;
		tr8_2 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
		ur8_2 = tr8_2;
		tr8_3 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
		ur8_3 = tr8_3;
		ui4_4 = ((EIF_INTEGER_32) 0L);
		ui4_5 = ((EIF_INTEGER_32) 0L);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1146, 258, "end_transport", loc1))(loc1, ui4_1x, ui4_2x, ui4_3x, ur8_1x, ur8_2x, ur8_3x, ui4_4x, ui4_5x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("not_in_transport", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 248, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
#undef ur8_1
#undef ur8_2
#undef ur8_3
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.on_middle_button_down */
void F1160_21580 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "on_middle_button_down";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(7);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLR(6,loc2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1159, Current, 2, 3, 25589);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1159, Current, 25589);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ui4_3 = arg3;
	ui4_4 = ((EIF_INTEGER_32) 2L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 290, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	ui4_1 = arg2;
	ui4_2 = arg3;
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 289, dtype))(Current, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 75, "pointer_button_press_actions_internal", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	if ((EIF_BOOLEAN)(tr2 != NULL)) {
		RTHOOK(4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 74, "pointer_button_press_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTNHOOK(4,2);
		{
			static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,4,734,829,739,739,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
			tr1 = RTLNTS(typres0, 5, 0);
		}
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		((EIF_TYPED_VALUE *)tr1+1)->it_r = tr3;
		RTAR(tr1,tr3);
		((EIF_TYPED_VALUE *)tr1+2)->it_i4 = ((EIF_INTEGER_32) 2L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+4)->it_i4 = ti4_1;
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1294, 181, "call", tr2))(tr2, ur1x);
	}
	RTHOOK(5);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 317, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = RTCCL(tr1);
	if (EIF_TEST(loc2)) {
		RTHOOK(6);
		{
			static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,8,734,739,739,739,763,763,763,739,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
			tr1 = RTLNTS(typres0, 9, 1);
		}
		((EIF_TYPED_VALUE *)tr1+1)->it_i4 = arg2;
		((EIF_TYPED_VALUE *)tr1+2)->it_i4 = arg3;
		((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ((EIF_INTEGER_32) 3L);
		((EIF_TYPED_VALUE *)tr1+4)->it_r8 = (EIF_REAL_64) 0.0;
		((EIF_TYPED_VALUE *)tr1+5)->it_r8 = (EIF_REAL_64) 0.0;
		((EIF_TYPED_VALUE *)tr1+6)->it_r8 = (EIF_REAL_64) 0.0;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+7)->it_i4 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+8)->it_i4 = ti4_1;
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(537, 180, "call", loc2))(loc2, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
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
#undef ui4_3
#undef ui4_4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.press_actions_called */
EIF_TYPED_VALUE F1160_21581 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1159,279, Dtype(Current)));
	return r;
}


/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.item_is_pnd_source_at_entry */
EIF_TYPED_VALUE F1160_21582 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1159,280, Dtype(Current)));
	return r;
}


/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.item_is_in_pnd */
EIF_TYPED_VALUE F1160_21583 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "item_is_in_pnd";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1159, Current, 1, 0, 25592);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25592);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 302, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	if (EIF_TEST(loc1)) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		tb1 = '\01';
		tb2 = *(EIF_BOOLEAN *)(loc1 + RTVA(1147, 260, "is_pnd_in_transport", loc1));
		if (!tb2) {
			tb2 = *(EIF_BOOLEAN *)(loc1 + RTVA(1147, 261, "is_dnd_in_transport", loc1));
			tb1 = tb2;
		}
		Result = (EIF_BOOLEAN) tb1;
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
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.on_right_button_down */
void F1160_21584 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "on_right_button_down";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(8);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,loc2);
	RTLR(4,tr2);
	RTLR(5,tr3);
	RTLR(6,ur1);
	RTLR(7,loc3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1159, Current, 3, 3, 25567);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1159, Current, 25567);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1159, 280, 0x04000000, 1); /* item_is_pnd_source_at_entry */
	
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 303, dtype));
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 280, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	tr1 = RTLN(1099);
	ui4_1 = arg2;
	ui4_2 = arg3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1099, 158, Dtype(tr1)))(tr1, ui4_1x, ui4_2x);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	ui4_1 = arg2;
	ui4_2 = arg3;
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 289, dtype))(Current, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(4);
	tb1 = '\01';
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 303, dtype));
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 260, dtype));
	tb4 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 261, dtype));
	if (!((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) !tb2 && (EIF_BOOLEAN) !tb3) && (EIF_BOOLEAN) !tb4))) {
		tb2 = '\0';
		tb3 = '\0';
		tb4 = '\0';
		tb5 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 303, dtype));
		if (tb5) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 302, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc2 = RTCCL(tr1);
			tb4 = EIF_TEST(loc2);
		}
		if (tb4) {
			tb4 = *(EIF_BOOLEAN *)(loc2 + RTVA(1147, 260, "is_pnd_in_transport", loc2));
			tb3 = (EIF_BOOLEAN) !tb4;
		}
		if (tb3) {
			tb3 = *(EIF_BOOLEAN *)(loc2 + RTVA(1147, 261, "is_dnd_in_transport", loc2));
			tb2 = (EIF_BOOLEAN) !tb3;
		}
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(5);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 75, "pointer_button_press_actions_internal", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		if ((EIF_BOOLEAN)(tr2 != NULL)) {
			RTHOOK(6);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(6,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 74, "pointer_button_press_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			RTNHOOK(6,2);
			{
				static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,4,734,829,739,739,739,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
				tr1 = RTLNTS(typres0, 5, 0);
			}
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			((EIF_TYPED_VALUE *)tr1+1)->it_r = tr3;
			RTAR(tr1,tr3);
			((EIF_TYPED_VALUE *)tr1+2)->it_i4 = ((EIF_INTEGER_32) 3L);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
			((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ti4_1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
			((EIF_TYPED_VALUE *)tr1+4)->it_i4 = ti4_1;
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1294, 181, "call", tr2))(tr2, ur1x);
		}
		RTHOOK(7);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 317, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = RTCCL(tr1);
		if (EIF_TEST(loc3)) {
			RTHOOK(8);
			{
				static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,8,734,739,739,739,763,763,763,739,739,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
				tr1 = RTLNTS(typres0, 9, 1);
			}
			((EIF_TYPED_VALUE *)tr1+1)->it_i4 = arg2;
			((EIF_TYPED_VALUE *)tr1+2)->it_i4 = arg3;
			((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ((EIF_INTEGER_32) 3L);
			((EIF_TYPED_VALUE *)tr1+4)->it_r8 = (EIF_REAL_64) 0.0;
			((EIF_TYPED_VALUE *)tr1+5)->it_r8 = (EIF_REAL_64) 0.0;
			((EIF_TYPED_VALUE *)tr1+6)->it_r8 = (EIF_REAL_64) 0.0;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
			((EIF_TYPED_VALUE *)tr1+7)->it_i4 = ti4_1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
			((EIF_TYPED_VALUE *)tr1+8)->it_i4 = ti4_1;
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(537, 180, "call", loc3))(loc3, ur1x);
		}
		RTHOOK(9);
		RTDBGAA(Current, dtype, 1159, 279, 0x04000000, 1); /* press_actions_called */
		
		*(EIF_BOOLEAN *)(Current + RTWA(1159, 279, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	}
	RTHOOK(10);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ui4_3 = arg3;
	ui4_4 = ((EIF_INTEGER_32) 3L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 290, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTHOOK(11);
	RTDBGAA(Current, dtype, 1159, 279, 0x04000000, 1); /* press_actions_called */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 279, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(12);
	RTDBGAA(Current, dtype, 1159, 280, 0x04000000, 1); /* item_is_pnd_source_at_entry */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 280, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(13);
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
#undef ui4_3
#undef ui4_4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.on_left_button_down */
void F1160_21585 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "on_left_button_down";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(8);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLR(3,loc2);
	RTLR(4,tr2);
	RTLR(5,tr3);
	RTLR(6,ur1);
	RTLR(7,loc3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1159, Current, 3, 3, 25568);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1159, Current, 25568);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = '\01';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 302, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (!(EIF_BOOLEAN)(tr1 != NULL)) {
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 301, dtype));
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(2);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1159, 310, dtype))(Current);
	}
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	tr1 = RTLN(1099);
	ui4_1 = arg2;
	ui4_2 = arg3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1099, 158, Dtype(tr1)))(tr1, ui4_1x, ui4_2x);
	RTNHOOK(3,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	ui4_1 = arg2;
	ui4_2 = arg3;
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 289, dtype))(Current, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	tb1 = '\01';
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 303, dtype));
	tb3 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 260, dtype));
	tb4 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 261, dtype));
	if (!((EIF_BOOLEAN) !(EIF_BOOLEAN) ((EIF_BOOLEAN) (tb2 && (EIF_BOOLEAN) !tb3) && (EIF_BOOLEAN) !tb4))) {
		tb2 = '\0';
		tb3 = '\0';
		tb4 = '\0';
		tb5 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 303, dtype));
		if (tb5) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 302, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc2 = RTCCL(tr1);
			tb4 = EIF_TEST(loc2);
		}
		if (tb4) {
			tb4 = *(EIF_BOOLEAN *)(loc2 + RTVA(1147, 260, "is_pnd_in_transport", loc2));
			tb3 = (EIF_BOOLEAN) !tb4;
		}
		if (tb3) {
			tb3 = *(EIF_BOOLEAN *)(loc2 + RTVA(1147, 261, "is_dnd_in_transport", loc2));
			tb2 = (EIF_BOOLEAN) !tb3;
		}
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(6);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 75, "pointer_button_press_actions_internal", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		if ((EIF_BOOLEAN)(tr2 != NULL)) {
			RTHOOK(7);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(7,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 74, "pointer_button_press_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			RTNHOOK(7,2);
			{
				static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,4,734,829,739,739,739,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
				tr1 = RTLNTS(typres0, 5, 0);
			}
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			((EIF_TYPED_VALUE *)tr1+1)->it_r = tr3;
			RTAR(tr1,tr3);
			((EIF_TYPED_VALUE *)tr1+2)->it_i4 = ((EIF_INTEGER_32) 1L);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
			((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ti4_1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
			((EIF_TYPED_VALUE *)tr1+4)->it_i4 = ti4_1;
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1294, 181, "call", tr2))(tr2, ur1x);
		}
		RTHOOK(8);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 317, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = RTCCL(tr1);
		if (EIF_TEST(loc3)) {
			RTHOOK(9);
			{
				static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,8,734,739,739,739,763,763,763,739,739,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
				tr1 = RTLNTS(typres0, 9, 1);
			}
			((EIF_TYPED_VALUE *)tr1+1)->it_i4 = arg2;
			((EIF_TYPED_VALUE *)tr1+2)->it_i4 = arg3;
			((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ((EIF_INTEGER_32) 1L);
			((EIF_TYPED_VALUE *)tr1+4)->it_r8 = (EIF_REAL_64) 0.0;
			((EIF_TYPED_VALUE *)tr1+5)->it_r8 = (EIF_REAL_64) 0.0;
			((EIF_TYPED_VALUE *)tr1+6)->it_r8 = (EIF_REAL_64) 0.0;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
			((EIF_TYPED_VALUE *)tr1+7)->it_i4 = ti4_1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
			((EIF_TYPED_VALUE *)tr1+8)->it_i4 = ti4_1;
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(537, 180, "call", loc3))(loc3, ur1x);
		}
		RTHOOK(10);
		RTDBGAA(Current, dtype, 1159, 279, 0x04000000, 1); /* press_actions_called */
		
		*(EIF_BOOLEAN *)(Current + RTWA(1159, 279, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	}
	RTHOOK(11);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(11,1);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 102, "is_dockable", tr1))(tr1)).it_b);
	if (tb1) {
		RTHOOK(12);
		RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
		
		ui4_1 = arg2;
		ui4_2 = arg3;
		loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 289, dtype))(Current, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(13);
		ui4_1 = arg2;
		ui4_2 = arg3;
		ui4_3 = ((EIF_INTEGER_32) 1L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
		ui4_4 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
		ui4_5 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 295, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ui4_5x);
	}
	RTHOOK(14);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ui4_3 = arg3;
	ui4_4 = ((EIF_INTEGER_32) 1L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 290, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTHOOK(15);
	RTDBGAA(Current, dtype, 1159, 279, 0x04000000, 1); /* press_actions_called */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 279, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(16);
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
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.on_left_button_up */
void F1160_21586 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "on_left_button_up";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur8_1x = {0, SK_REAL64};
#define ur8_1 ur8_1x.it_r8
	EIF_TYPED_VALUE ur8_2x = {0, SK_REAL64};
#define ur8_2 ur8_2x.it_r8
	EIF_TYPED_VALUE ur8_3x = {0, SK_REAL64};
#define ur8_3 ur8_3x.it_r8
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REAL_64 tr8_1;
	EIF_REAL_64 tr8_2;
	EIF_REAL_64 tr8_3;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(9);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,loc2);
	RTLR(4,loc3);
	RTLR(5,tr2);
	RTLR(6,tr3);
	RTLR(7,ur1);
	RTLR(8,loc4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 1159, Current, 4, 3, 25569);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1159, Current, 25569);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	tr1 = RTLN(1099);
	ui4_1 = arg2;
	ui4_2 = arg3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1099, 158, Dtype(tr1)))(tr1, ui4_1x, ui4_2x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	ui4_1 = arg2;
	ui4_2 = arg3;
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 289, dtype))(Current, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 304, dtype));
	if (tb1) {
		RTHOOK(4);
		RTDBGAL(Current, 2, 0xF80004A6, 0, 0); /* loc2 */
		
		loc2 = RTCCL(Current);
		loc2 = RTRV(eif_non_attached_type(1190), loc2);
		RTHOOK(5);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTHOOK(6);
			ui4_1 = arg2;
			ui4_2 = arg3;
			ui4_3 = ((EIF_INTEGER_32) 1L);
			tr8_1 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
			ur8_1 = tr8_1;
			tr8_2 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
			ur8_2 = tr8_2;
			tr8_3 = (EIF_REAL_64) (((EIF_INTEGER_32) 0L));
			ur8_3 = tr8_3;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
			ui4_4 = ti4_1;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
			ui4_5 = ti4_2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1190, 485, "end_dragable", loc2))(loc2, ui4_1x, ui4_2x, ui4_3x, ur8_1x, ur8_2x, ur8_3x, ui4_4x, ui4_5x);
		}
	} else {
		RTHOOK(7);
		tb1 = '\0';
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 303, dtype));
		if (tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 302, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc3 = RTCCL(tr1);
			tb1 = EIF_TEST(loc3);
		}
		if (tb1) {
			RTHOOK(8);
			ui4_1 = arg2;
			ui4_2 = arg3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1147, 284, "check_drag_and_drop_release", loc3))(loc3, ui4_1x, ui4_2x);
		} else {
			RTHOOK(9);
			tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1159, 301, dtype));
			if (tb1) {
				RTHOOK(10);
				ui4_1 = arg2;
				ui4_2 = arg3;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 251, dtype))(Current, ui4_1x, ui4_2x);
				RTHOOK(11);
				RTDBGAA(Current, dtype, 1159, 301, 0x04000000, 1); /* parent_is_pnd_source */
				
				*(EIF_BOOLEAN *)(Current + RTWA(1159, 301, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			} else {
				RTHOOK(12);
				ui4_1 = arg2;
				ui4_2 = arg3;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 296, dtype))(Current, ui4_1x, ui4_2x);
			}
		}
	}
	RTHOOK(13);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(13,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 79, "pointer_button_release_actions_internal", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	if ((EIF_BOOLEAN)(tr2 != NULL)) {
		RTHOOK(14);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(14,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 78, "pointer_button_release_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTNHOOK(14,2);
		{
			static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,4,734,829,739,739,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
			tr1 = RTLNTS(typres0, 5, 0);
		}
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		((EIF_TYPED_VALUE *)tr1+1)->it_r = tr3;
		RTAR(tr1,tr3);
		((EIF_TYPED_VALUE *)tr1+2)->it_i4 = ((EIF_INTEGER_32) 1L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+4)->it_i4 = ti4_1;
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1294, 181, "call", tr2))(tr2, ur1x);
	}
	RTHOOK(15);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 318, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc4 = RTCCL(tr1);
	if (EIF_TEST(loc4)) {
		RTHOOK(16);
		{
			static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,8,734,739,739,739,763,763,763,739,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
			tr1 = RTLNTS(typres0, 9, 1);
		}
		((EIF_TYPED_VALUE *)tr1+1)->it_i4 = arg2;
		((EIF_TYPED_VALUE *)tr1+2)->it_i4 = arg3;
		((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ((EIF_INTEGER_32) 1L);
		((EIF_TYPED_VALUE *)tr1+4)->it_r8 = (EIF_REAL_64) 0.0;
		((EIF_TYPED_VALUE *)tr1+5)->it_r8 = (EIF_REAL_64) 0.0;
		((EIF_TYPED_VALUE *)tr1+6)->it_r8 = (EIF_REAL_64) 0.0;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+7)->it_i4 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+8)->it_i4 = ti4_1;
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(537, 180, "call", loc4))(loc4, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ur8_1
#undef ur8_2
#undef ur8_3
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.on_left_button_double_click */
void F1160_21587 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "on_left_button_double_click";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 3, 25570);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25570);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ui4_3 = arg3;
	ui4_4 = ((EIF_INTEGER_32) 1L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 288, Dtype(Current)))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.on_middle_button_double_click */
void F1160_21588 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "on_middle_button_double_click";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 3, 25571);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25571);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ui4_3 = arg3;
	ui4_4 = ((EIF_INTEGER_32) 2L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 288, Dtype(Current)))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.on_right_button_double_click */
void F1160_21589 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "on_right_button_double_click";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 3, 25572);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25572);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ui4_3 = arg3;
	ui4_4 = ((EIF_INTEGER_32) 3L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 288, Dtype(Current)))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.button_double_click_received */
void F1160_21590 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "button_double_click_received";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(7);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLR(6,loc2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1159, Current, 2, 4, 25573);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1159, Current, 25573);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	tr1 = RTLN(1099);
	ui4_1 = arg2;
	ui4_2 = arg3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1099, 158, Dtype(tr1)))(tr1, ui4_1x, ui4_2x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	ui4_1 = arg2;
	ui4_2 = arg3;
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 289, dtype))(Current, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ui4_3 = arg3;
	ui4_4 = arg4;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1159, 291, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 77, "pointer_double_press_actions_internal", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	if ((EIF_BOOLEAN)(tr2 != NULL)) {
		RTHOOK(5);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 275, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 76, "pointer_double_press_actions", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTNHOOK(5,2);
		{
			static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,4,734,829,739,739,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
			tr1 = RTLNTS(typres0, 5, 0);
		}
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		((EIF_TYPED_VALUE *)tr1+1)->it_r = tr3;
		RTAR(tr1,tr3);
		((EIF_TYPED_VALUE *)tr1+2)->it_i4 = arg4;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+3)->it_i4 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+4)->it_i4 = ti4_1;
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1294, 181, "call", tr2))(tr2, ur1x);
	}
	RTHOOK(6);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1159, 319, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = RTCCL(tr1);
	if (EIF_TEST(loc2)) {
		RTHOOK(7);
		{
			static EIF_TYPE_INDEX typarr0[] = {1159,0xFFF9,8,734,739,739,739,763,763,763,739,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
			tr1 = RTLNTS(typres0, 9, 1);
		}
		((EIF_TYPED_VALUE *)tr1+1)->it_i4 = arg2;
		((EIF_TYPED_VALUE *)tr1+2)->it_i4 = arg3;
		((EIF_TYPED_VALUE *)tr1+3)->it_i4 = arg4;
		((EIF_TYPED_VALUE *)tr1+4)->it_r8 = (EIF_REAL_64) 0.0;
		((EIF_TYPED_VALUE *)tr1+5)->it_r8 = (EIF_REAL_64) 0.0;
		((EIF_TYPED_VALUE *)tr1+6)->it_r8 = (EIF_REAL_64) 0.0;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 160, "x", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+7)->it_i4 = ti4_1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 161, "y", loc1))(loc1)).it_i4);
		((EIF_TYPED_VALUE *)tr1+8)->it_i4 = ti4_1;
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(537, 180, "call", loc2))(loc2, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
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
#undef ui4_3
#undef ui4_4
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.interface */
static EIF_TYPED_VALUE F1160_21599_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 1159, Current, 0, 0, 25574);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25574);
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

EIF_TYPED_VALUE F1160_21599 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1159,297, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(1159, 297, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1160_21599_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(1159,297, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.call_press_event */
EIF_TYPED_VALUE F1160_21600 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1159,298, Dtype(Current)));
	return r;
}


/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.discard_press_event */
void F1160_21601 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "discard_press_event";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 0, 25576);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25576);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 1159, 298, 0x04000000, 1); /* call_press_event */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 298, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.keep_press_event */
void F1160_21602 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "keep_press_event";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 0, 25577);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25577);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 1159, 298, 0x04000000, 1); /* call_press_event */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 298, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.parent_is_pnd_source */
EIF_TYPED_VALUE F1160_21603 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1159,301, Dtype(Current)));
	return r;
}


/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.pnd_item_source */
EIF_TYPED_VALUE F1160_21604 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1159,302, Dtype(Current)));
	return r;
}


/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.item_is_pnd_source */
EIF_TYPED_VALUE F1160_21605 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1159,303, Dtype(Current)));
	return r;
}


/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.item_is_dockable_source */
EIF_TYPED_VALUE F1160_21606 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1159,304, Dtype(Current)));
	return r;
}


/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.set_item_source */
void F1160_21607 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_item_source";
	RTEX;
#define arg1 arg1x.it_r
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(2);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 1, 25582);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25582);
	if (arg1) {
		RTCC(arg1, 1159, l_feature_name, 1, 1147);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 1159, 302, 0xF800047B, 0); /* pnd_item_source */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1159, 302, Dtype(Current))) = (EIF_REFERENCE) RTCCL(arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.set_parent_source_true */
void F1160_21608 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_parent_source_true";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 0, 25583);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25583);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 1159, 301, 0x04000000, 1); /* parent_is_pnd_source */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 301, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.set_parent_source_false */
void F1160_21609 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_parent_source_false";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 0, 25584);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25584);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 1159, 301, 0x04000000, 1); /* parent_is_pnd_source */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 301, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.set_item_source_true */
void F1160_21610 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_item_source_true";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 0, 25585);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25585);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 1159, 303, 0x04000000, 1); /* item_is_pnd_source */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 303, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_PICK_AND_DROPABLE_ITEM_HOLDER_IMP}.set_item_source_false */
void F1160_21611 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_item_source_false";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1159, Current, 0, 0, 25586);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1159, Current, 25586);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 1159, 303, 0x04000000, 1); /* item_is_pnd_source */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1159, 303, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

void EIF_Minit1160 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
