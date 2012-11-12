/*
 * Code for class WEL_RETURN_VALUE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F194_4636(EIF_REFERENCE);
extern EIF_TYPED_VALUE F194_4637(EIF_REFERENCE);
extern EIF_TYPED_VALUE F194_4638(EIF_REFERENCE);
extern void F194_4639(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F194_4640(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F194_4641(EIF_REFERENCE);
extern void F194_4642(EIF_REFERENCE);
extern EIF_TYPED_VALUE F194_4643(EIF_REFERENCE);
extern EIF_TYPED_VALUE F194_4644(EIF_REFERENCE);
extern EIF_TYPED_VALUE F194_4645(EIF_REFERENCE);
extern EIF_TYPED_VALUE F194_4646(EIF_REFERENCE);
extern EIF_TYPED_VALUE F194_4647(EIF_REFERENCE);
extern EIF_TYPED_VALUE F194_4648(EIF_REFERENCE);
extern void EIF_Minit194(void);

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

/* {WEL_RETURN_VALUE}.has_return_value */
EIF_TYPED_VALUE F194_4636 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "has_return_value";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 193, Current, 1, 0, 4472);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(193, Current, 4472);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc1 == NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	} else {
		RTHOOK(4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc1))(loc1)).it_i4);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		if ((EIF_BOOLEAN) (ti4_1 >= ti4_2)) {
			if (RTAL & CK_CHECK) {
				RTHOOK(5);
				RTCT("valid_level_count", EX_CHECK);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
				if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
					RTCK;
				} else {
					RTCF;
				}
			}
			RTHOOK(6);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
			ui4_1 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", loc1))(loc1, ui4_1x)).it_b);
			Result = (EIF_BOOLEAN) tb1;
		} else {
			RTHOOK(7);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
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
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ui4_1
}

/* {WEL_RETURN_VALUE}.message_return_value */
EIF_TYPED_VALUE F194_4637 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "message_return_value";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 193, Current, 1, 0, 4473);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(193, Current, 4473);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("has_return_value", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 32, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF8000642, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 41, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT("not_void", EX_CHECK);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("good_area", EX_CHECK);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1602, 46, "count", loc1))(loc1)).it_i4);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		if ((EIF_BOOLEAN) (ti4_1 >= ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	if (RTAL & CK_CHECK) {
		RTHOOK(5);
		RTCT("valid_level_count", EX_CHECK);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(6);
	RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
	ui4_1 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1602, 36, "item", loc1))(loc1, ui4_1x)).it_p);
	Result = (EIF_POINTER) tp1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef up1
#undef ui4_1
}

/* {WEL_RETURN_VALUE}.default_processing */
EIF_TYPED_VALUE F194_4638 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "default_processing";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 193, Current, 1, 0, 4474);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(193, Current, 4474);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 42, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc1 == NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	} else {
		RTHOOK(4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc1))(loc1)).it_i4);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		if ((EIF_BOOLEAN) (ti4_1 >= ti4_2)) {
			if (RTAL & CK_CHECK) {
				RTHOOK(5);
				RTCT("valid_level_count", EX_CHECK);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
				if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
					RTCK;
				} else {
					RTCF;
				}
			}
			RTHOOK(6);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
			ui4_1 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1488, 36, "item", loc1))(loc1, ui4_1x)).it_b);
			Result = (EIF_BOOLEAN) tb1;
		} else {
			RTHOOK(7);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
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
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ui4_1
}

/* {WEL_RETURN_VALUE}.set_message_return_value */
void F194_4639 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_message_return_value";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,loc2);
	RTLR(3,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 193, Current, 2, 1, 4475);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(193, Current, 4475);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF8000642, 0, 0); /* loc2 */
	
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 41, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	if ((EIF_BOOLEAN)(loc1 == NULL)) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
		
		ub1 = (EIF_BOOLEAN) 0;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 43, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		if (ui4_1< 0) {
			eraise ("non_negative_argument", EN_RT_CHECK);
		}
		tr1 = RTLNSP2(eif_non_attached_type(RTWCT(193, 40, Current)),0,ui4_1,sizeof(EIF_BOOLEAN), EIF_TRUE);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1488, 34, Dtype(tr1)))(tr1, ub1x, ui4_1x);
		RTNHOOK(4,1);
		loc1 = (EIF_REFERENCE) tr1;
		RTHOOK(5);
		RTDBGAL(Current, 2, 0xF8000642, 0, 0); /* loc2 */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 30, dtype))(Current)).it_p);
		up1 = tp1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 43, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		if (ui4_1< 0) {
			eraise ("non_negative_argument", EN_RT_CHECK);
		}
		tr1 = RTLNSP2(eif_non_attached_type(RTWCT(193, 41, Current)),0,ui4_1,sizeof(EIF_POINTER), EIF_TRUE);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1602, 34, Dtype(tr1)))(tr1, up1x, ui4_1x);
		RTNHOOK(5,1);
		loc2 = (EIF_REFERENCE) tr1;
		RTHOOK(6);
		RTDBGAA(Current, dtype, 193, 40, 0xF80005D0, 0); /* has_return_value_area */
		
		RTAR(Current, loc1);
		*(EIF_REFERENCE *)(Current + RTWA(193, 40, dtype)) = (EIF_REFERENCE) loc1;
		RTHOOK(7);
		RTDBGAA(Current, dtype, 193, 41, 0xF8000642, 0); /* message_return_value_area */
		
		RTAR(Current, loc2);
		*(EIF_REFERENCE *)(Current + RTWA(193, 41, dtype)) = (EIF_REFERENCE) loc2;
	}
	if (RTAL & CK_CHECK) {
		RTHOOK(8);
		RTCT("message_return_value_area_not_void", EX_CHECK);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(9);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc1))(loc1)).it_i4);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
	if ((EIF_BOOLEAN) (ti4_1 < ti4_2)) {
		RTHOOK(10);
		RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
		
		ub1 = (EIF_BOOLEAN) 0;
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 44, dtype))(Current)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (ti4_1 + ti4_2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 69, "aliased_resized_area_with_default", loc1))(loc1, ub1x, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) tr1;
		RTHOOK(11);
		RTDBGAL(Current, 2, 0xF8000642, 0, 0); /* loc2 */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 30, dtype))(Current)).it_p);
		up1 = tp1;
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 44, dtype))(Current)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (ti4_1 + ti4_2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1602, 69, "aliased_resized_area_with_default", loc2))(loc2, up1x, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = (EIF_REFERENCE) tr1;
		RTHOOK(12);
		RTDBGAA(Current, dtype, 193, 40, 0xF80005D0, 0); /* has_return_value_area */
		
		RTAR(Current, loc1);
		*(EIF_REFERENCE *)(Current + RTWA(193, 40, dtype)) = (EIF_REFERENCE) loc1;
		RTHOOK(13);
		RTDBGAA(Current, dtype, 193, 41, 0xF8000642, 0); /* message_return_value_area */
		
		RTAR(Current, loc2);
		*(EIF_REFERENCE *)(Current + RTWA(193, 41, dtype)) = (EIF_REFERENCE) loc2;
	}
	if (RTAL & CK_CHECK) {
		RTHOOK(14);
		RTCT("valid_level_count", EX_CHECK);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(15);
	up1 = arg1;
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
	ui4_1 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1602, 51, "put", loc2))(loc2, up1x, ui4_1x);
	RTHOOK(16);
	ub1 = (EIF_BOOLEAN) 1;
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
	ui4_1 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 51, "put", loc1))(loc1, ub1x, ui4_1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(17);
		RTCT("has_return_value", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 32, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(18);
		RTCT("value_set", EX_POST);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 33, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(tp1 == arg1)) {
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
#undef ui4_1
#undef ub1
#undef arg1
}

/* {WEL_RETURN_VALUE}.set_default_processing */
void F194_4640 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_default_processing";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
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
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 193, Current, 1, 1, 4476);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(193, Current, 4476);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 42, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc1 == NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
		
		ub1 = (EIF_BOOLEAN) 0;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 43, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		if (ui4_1< 0) {
			eraise ("non_negative_argument", EN_RT_CHECK);
		}
		tr1 = RTLNSP2(eif_non_attached_type(RTWCT(193, 42, Current)),0,ui4_1,sizeof(EIF_BOOLEAN), EIF_TRUE);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1488, 34, Dtype(tr1)))(tr1, ub1x, ui4_1x);
		RTNHOOK(3,1);
		loc1 = (EIF_REFERENCE) tr1;
		RTHOOK(4);
		RTDBGAA(Current, dtype, 193, 42, 0xF80005D0, 0); /* default_processing_area */
		
		RTAR(Current, loc1);
		*(EIF_REFERENCE *)(Current + RTWA(193, 42, dtype)) = (EIF_REFERENCE) loc1;
	}
	RTHOOK(5);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1488, 46, "count", loc1))(loc1)).it_i4);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
	if ((EIF_BOOLEAN) (ti4_1 < ti4_2)) {
		RTHOOK(6);
		RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
		
		ub1 = (EIF_BOOLEAN) 0;
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 44, dtype))(Current)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (ti4_1 + ti4_2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 69, "aliased_resized_area_with_default", loc1))(loc1, ub1x, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) tr1;
		RTHOOK(7);
		RTDBGAA(Current, dtype, 193, 42, 0xF80005D0, 0); /* default_processing_area */
		
		RTAR(Current, loc1);
		*(EIF_REFERENCE *)(Current + RTWA(193, 42, dtype)) = (EIF_REFERENCE) loc1;
	}
	if (RTAL & CK_CHECK) {
		RTHOOK(8);
		RTCT("valid_level_count", EX_CHECK);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(9);
	ub1 = arg1;
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
	ui4_1 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 51, "put", loc1))(loc1, ub1x, ui4_1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(10);
		RTCT("value_set", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 34, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN)(tb1 == arg1)) {
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
	RTLO(4);
	RTEE;
#undef up1
#undef ui4_1
#undef ub1
#undef arg1
}

/* {WEL_RETURN_VALUE}.increment_level */
void F194_4641 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "increment_level";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
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
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 193, Current, 1, 0, 4477);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(193, Current, 4477);
	RTIV(Current, RTAL);
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(1);
	RTDBGAA(Current, dtype, 193, 39, 0x10000000, 1); /* level_count */
	
	(*(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype)))++;
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 32, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF80005D0, 0, 0); /* loc1 */
		
		loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTAL & CK_CHECK) {
			RTHOOK(4);
			RTCT("l_has_return_value_area_attached", EX_CHECK);
			if ((EIF_BOOLEAN)(loc1 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(5);
		ub1 = (EIF_BOOLEAN) 0;
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		ui4_1 = (EIF_INTEGER_32) (ti4_2 - ((EIF_INTEGER_32) 1L));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1488, 51, "put", loc1))(loc1, ub1x, ui4_1x);
	}
	RTHOOK(6);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 34, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(7);
		ub1 = (EIF_BOOLEAN) 1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(193, 36, dtype))(Current, ub1x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("level_count_increased", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		RTCO(tr1);
		if ((EIF_BOOLEAN)(ti4_2 == (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L)))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("default_processing_true", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 34, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) 1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("has_return_value_false", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(193, 32, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN)(tb1 == (EIF_BOOLEAN) 0)) {
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
	RTLO(3);
	RTEE;
#undef up1
#undef ui4_1
#undef ub1
}

/* {WEL_RETURN_VALUE}.decrement_level */
void F194_4642 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "decrement_level";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 193, Current, 0, 0, 4478);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(193, Current, 4478);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("level_count_greater_than_one", EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		RTTE((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 1L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		ti4_1 = ti4_2;
		tr1 = NULL;
		RTE_O
		tr1 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(2);
	RTDBGAA(Current, dtype, 193, 39, 0x10000000, 1); /* level_count */
	
	(*(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype)))--;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("level_count_equal_or_greater_than_zero", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		if ((EIF_BOOLEAN) (ti4_2 >= ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("level_count_decreased", EX_POST);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(193, 39, dtype));
		RTCO(tr1);
		if ((EIF_BOOLEAN)(ti4_2 == (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L)))) {
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
	RTLO(2);
	RTEE;
}

/* {WEL_RETURN_VALUE}.level_count */
EIF_TYPED_VALUE F194_4643 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(193,39, Dtype(Current)));
	return r;
}


/* {WEL_RETURN_VALUE}.has_return_value_area */
EIF_TYPED_VALUE F194_4644 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(193,40, Dtype(Current)));
	return r;
}


/* {WEL_RETURN_VALUE}.message_return_value_area */
EIF_TYPED_VALUE F194_4645 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(193,41, Dtype(Current)));
	return r;
}


/* {WEL_RETURN_VALUE}.default_processing_area */
EIF_TYPED_VALUE F194_4646 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(193,42, Dtype(Current)));
	return r;
}


/* {WEL_RETURN_VALUE}.initial_area_size */
EIF_TYPED_VALUE F194_4647 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	return r;
}

/* {WEL_RETURN_VALUE}.area_resize_increment */
EIF_TYPED_VALUE F194_4648 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	return r;
}

void EIF_Minit194 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
