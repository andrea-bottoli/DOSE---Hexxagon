/*
 * Code for class WEL_RICH_EDIT_BUFFER_LOADER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F699_12915(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F699_12916(EIF_REFERENCE);
extern EIF_TYPED_VALUE F699_12917(EIF_REFERENCE);
extern void F699_12918(EIF_REFERENCE);
extern void F699_23770(EIF_REFERENCE, int);
extern void EIF_Minit699(void);

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

/* {WEL_RICH_EDIT_BUFFER_LOADER}.make */
void F699_12915 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make";
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
	
	RTEAA(l_feature_name, 698, Current, 0, 1, 15646);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(698, Current, 15646);
	if (arg1) {
		RTCC(arg1, 698, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 698, 82, 0xF800030C, 0); /* string */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(698, 82, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 698, 81, 0x10000000, 1); /* last_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(698, 79, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("string_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 82, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
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
#undef up1
#undef arg1
}

/* {WEL_RICH_EDIT_BUFFER_LOADER}.last_position */
EIF_TYPED_VALUE F699_12916 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(698,81, Dtype(Current)));
	return r;
}


/* {WEL_RICH_EDIT_BUFFER_LOADER}.string */
EIF_TYPED_VALUE F699_12917 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(698,82, Dtype(Current)));
	return r;
}


/* {WEL_RICH_EDIT_BUFFER_LOADER}.read_buffer */
void F699_12918 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "read_buffer";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
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
	
	RTLI(9);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,loc4);
	RTLR(4,tr3);
	RTLR(5,loc1);
	RTLR(6,ur1);
	RTLR(7,loc2);
	RTLR(8,ur2);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 698, Current, 4, 0, 15649);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(698, Current, 15649);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_buffer_not_null", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 73, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTTE((EIF_BOOLEAN)(tr1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 73, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr1 = tr2;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(2);
	RTDBGAL(Current, 4, 0xF800023B, 0, 0); /* loc4 */
	
	loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 73, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT("l_buffer_attached", EX_CHECK);
		if ((EIF_BOOLEAN)(loc4 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(4);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype));
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 82, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 46, "count", tr3))(tr3)).it_i4);
	if ((EIF_BOOLEAN) (ti4_1 > ti4_2)) {
		RTHOOK(5);
		tp1 = *(EIF_POINTER *)(loc4 + RTVA(571, 87, "item", loc4));
		up1 = tp1;
		ui4_1 = ((EIF_INTEGER_32) 0L);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(571, 86, "set_from_pointer", loc4))(loc4, up1x, ui4_1x);
	} else {
		RTHOOK(6);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(698, 53, dtype));
		if (tb1) {
			RTHOOK(7);
			RTDBGAL(Current, 1, 0xF80001F7, 0, 0); /* loc1 */
			
			tr3 = RTLN(503);
			tp1 = *(EIF_POINTER *)(loc4 + RTVA(571, 87, "item", loc4));
			up1 = tp1;
			ti4_1 = *(EIF_INTEGER_32 *)(loc4 + RTVA(571, 88, "count", loc4));
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(503, 54, 503))(Current)).it_i4);
			ui4_1 = (EIF_INTEGER_32) (ti4_1 - ti4_2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(503, 37, Dtype(tr3)))(tr3, up1x, ui4_1x);
			RTNHOOK(7,1);
			loc1 = (EIF_REFERENCE) RTCCL(tr3);
			RTHOOK(8);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype));
			ti4_2 = *(EIF_INTEGER_32 *)(loc1 + RTVA(503, 52, "count", loc1));
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 82, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(8,1);
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 46, "count", tr3))(tr3)).it_i4);
			ui4_1 = ti4_3;
			ti4_3 = eif_min_int32 ((EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 + ti4_2) - ((EIF_INTEGER_32) 1L)),ui4_1);
			loc3 = (EIF_INTEGER_32) ti4_3;
			RTHOOK(9);
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 82, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr3);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype));
			ui4_1 = ti4_1;
			ui4_2 = loc3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(503, 59, "set_substring", loc1))(loc1, ur1x, ui4_1x, ui4_2x);
			RTHOOK(10);
			tp1 = *(EIF_POINTER *)(loc4 + RTVA(571, 87, "item", loc4));
			up1 = tp1;
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype));
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 54, "character_size", loc1))(loc1)).it_i4);
			ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) ((EIF_INTEGER_32) (loc3 - ti4_1) + ((EIF_INTEGER_32) 1L)) * ti4_2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(571, 86, "set_from_pointer", loc4))(loc4, up1x, ui4_1x);
			RTHOOK(11);
			RTDBGAA(Current, dtype, 698, 81, 0x10000000, 1); /* last_position */
			
			ti4_2 = *(EIF_INTEGER_32 *)(loc1 + RTVA(503, 52, "count", loc1));
			(*(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype))) += ti4_2;
		} else {
			RTHOOK(12);
			RTDBGAL(Current, 2, 0xF80001F8, 0, 0); /* loc2 */
			
			tr3 = RTLN(504);
			tp1 = *(EIF_POINTER *)(loc4 + RTVA(571, 87, "item", loc4));
			up1 = tp1;
			ti4_1 = *(EIF_INTEGER_32 *)(loc4 + RTVA(571, 88, "count", loc4));
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(504, 56, 504))(Current)).it_i4);
			ui4_1 = (EIF_INTEGER_32) (ti4_1 - ti4_2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(504, 37, Dtype(tr3)))(tr3, up1x, ui4_1x);
			RTNHOOK(12,1);
			loc2 = (EIF_REFERENCE) RTCCL(tr3);
			RTHOOK(13);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype));
			ti4_2 = *(EIF_INTEGER_32 *)(loc2 + RTVA(504, 55, "count", loc2));
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 82, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(13,1);
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 46, "count", tr3))(tr3)).it_i4);
			ui4_1 = ti4_3;
			ti4_3 = eif_min_int32 ((EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 + ti4_2) - ((EIF_INTEGER_32) 1L)),ui4_1);
			loc3 = (EIF_INTEGER_32) ti4_3;
			RTHOOK(14);
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 82, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr3);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype));
			ui4_1 = ti4_1;
			ui4_2 = loc3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(504, 58, "set_substring", loc2))(loc2, ur1x, ui4_1x, ui4_2x);
			RTHOOK(15);
			tp1 = *(EIF_POINTER *)(loc4 + RTVA(571, 87, "item", loc4));
			up1 = tp1;
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype));
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(504, 56, "character_size", loc2))(loc2)).it_i4);
			ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) ((EIF_INTEGER_32) (loc3 - ti4_1) + ((EIF_INTEGER_32) 1L)) * ti4_2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(571, 86, "set_from_pointer", loc4))(loc4, up1x, ui4_1x);
			RTHOOK(16);
			RTDBGAA(Current, dtype, 698, 81, 0x10000000, 1); /* last_position */
			
			ti4_2 = *(EIF_INTEGER_32 *)(loc2 + RTVA(504, 55, "count", loc2));
			(*(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype))) += ti4_2;
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(17);
		RTCT("buffer_not_void", EX_POST);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 73, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr3 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(18);
		RTCT("valid_buffer_length", EX_POST);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 73, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr3);
		RTCO(tr2);
		ur2 = RTCCL(tr1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(698, 75, dtype))(Current, ur1x, ur2x)).it_b);
		if (tb1) {
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
#undef ur2
#undef ui4_1
#undef ui4_2
}

/* {WEL_RICH_EDIT_BUFFER_LOADER}._invariant */
void F699_23770 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 698, Current, 0, 23769);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("string_not_void", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(698, 82, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("positive_last_position", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(698, 81, dtype));
	if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
#undef up1
}

void EIF_Minit699 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
