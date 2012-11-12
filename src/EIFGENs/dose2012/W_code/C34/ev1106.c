/*
 * Code for class EV_MENU_CONTAINER_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1106_20284(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1106_20286(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1106_20287(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1106_20288(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit1106(void);

#ifdef __cplusplus
}
#endif

#include <wel.h>

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {EV_MENU_CONTAINER_IMP}.process_menu_message */
EIF_TYPED_VALUE F1106_20284 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "process_menu_message";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_CHARACTER_8 loc4 = (EIF_CHARACTER_8) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_p
#define arg3 arg3x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_CHARACTER_8 tc1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,loc2);
	RTLR(5,loc3);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_CHAR8, &loc4);
	
	RTEAA(l_feature_name, 1105, Current, 4, 3, 24304);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1105, Current, 24304);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(58, 70, 58))(Current)).it_i4);
	if ((EIF_BOOLEAN)(arg1 == ti4_1)) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0xF8000449, 0, 0); /* loc1 */
		
		tr1 = RTLN(1097);
		up1 = arg3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1097, 159, Dtype(tr1)))(tr1, up1x);
		RTNHOOK(2,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(3);
		up1 = arg2;
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1105, 141, dtype))(Current, up1x, ur1x);
		RTHOOK(4);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	} else {
		RTHOOK(5);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(58, 71, 58))(Current)).it_i4);
		if ((EIF_BOOLEAN)(arg1 == ti4_1)) {
			RTHOOK(6);
			RTDBGAL(Current, 2, 0xF800028C, 0, 0); /* loc2 */
			
			tr1 = RTLN(652);
			up1 = arg3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(652, 31, Dtype(tr1)))(tr1, up1x);
			RTNHOOK(6,1);
			loc2 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(7);
			up1 = arg2;
			ur1 = RTCCL(loc2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1105, 140, dtype))(Current, up1x, ur1x);
			RTHOOK(8);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		} else {
			RTHOOK(9);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(58, 146, 58))(Current)).it_i4);
			if ((EIF_BOOLEAN)(arg1 == ti4_1)) {
				RTHOOK(10);
				up1 = arg2;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1105, 91, dtype))(Current, up1x)).it_i4);
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(307, 54, 307))(Current)).it_i4);
				if ((EIF_BOOLEAN)(ti4_1 != ti4_2)) {
					RTHOOK(11);
					RTDBGAL(Current, 4, 0x08000000, 1, 0); /* loc4 */
					
					up1 = arg2;
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1105, 90, dtype))(Current, up1x)).it_i4);
					tc1 = (EIF_CHARACTER_8) ti4_1;
					loc4 = (EIF_CHARACTER_8) tc1;
					RTHOOK(12);
					RTDBGAL(Current, 3, 0xF80002D2, 0, 0); /* loc3 */
					
					tr1 = RTLN(722);
					up1 = arg3;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(722, 33, Dtype(tr1)))(tr1, up1x);
					RTNHOOK(12,1);
					loc3 = (EIF_REFERENCE) RTCCL(tr1);
					RTHOOK(13);
					uc1 = loc4;
					ur1 = RTCCL(loc3);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1105, 139, dtype))(Current, uc1x, ur1x);
				}
				RTHOOK(14);
				RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
				
				Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(15);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef uc1
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_MENU_CONTAINER_IMP}.on_measure_item */
void F1106_20286 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "on_measure_item";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,arg2);
	RTLR(1,loc1);
	RTLR(2,ur1);
	RTLR(3,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 1105, Current, 2, 2, 24305);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1105, Current, 24305);
	if (arg2) {
		RTCC(arg2, 1105, l_feature_name, 2, 652);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("measure_item_valid", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(652, 53, "ctl_type", arg2))(arg2)).it_i4);
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(35, 32, 35))(Current)).it_i4);
	if ((EIF_BOOLEAN)(loc2 == ti4_1)) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF80004B9, 0, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(652, 58, "item_data", arg2))(arg2)).it_i4);
		RTNHOOK(4,1);
		ti4_2 = (EIF_INTEGER_32) ti4_1;
		ui4_1 = ti4_2;
		loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1105, 34, dtype))(Current, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = RTRV(eif_non_attached_type(1209), loc1);
		RTHOOK(5);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTHOOK(6);
			ur1 = RTCCL(arg2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1209, 649, "on_measure_item", loc1))(loc1, ur1x);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {EV_MENU_CONTAINER_IMP}.on_draw_item */
void F1106_20287 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "on_draw_item";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,arg2);
	RTLR(1,loc2);
	RTLR(2,ur1);
	RTLR(3,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1105, Current, 2, 2, 24306);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1105, Current, 24306);
	if (arg2) {
		RTCC(arg2, 1105, l_feature_name, 2, 1097);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("draw_item_valid", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1097, 160, "ctl_type", arg2))(arg2)).it_i4);
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(35, 32, 35))(Current)).it_i4);
	if ((EIF_BOOLEAN)(loc1 == ti4_1)) {
		RTHOOK(4);
		RTDBGAL(Current, 2, 0xF80004B9, 0, 0); /* loc2 */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1097, 169, "item_data", arg2))(arg2)).it_p);
		RTNHOOK(4,1);
		ti4_1 = (EIF_INTEGER_32) (rt_int_ptr) tp1;
		ui4_1 = ti4_1;
		loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1105, 34, dtype))(Current, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTRV(eif_non_attached_type(1209), loc2);
		RTHOOK(5);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTHOOK(6);
			ur1 = RTCCL(arg2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1209, 650, "on_draw_item", loc2))(loc2, ur1x);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {EV_MENU_CONTAINER_IMP}.integer_to_pointer */
EIF_TYPED_VALUE F1106_20288 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "integer_to_pointer";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1105, Current, 0, 1, 24307);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1105, Current, 24307);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) cwel_integer_to_pointer(((EIF_INTEGER) arg1));
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

void EIF_Minit1106 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
