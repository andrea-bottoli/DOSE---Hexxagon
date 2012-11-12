/*
 * Code for class LINEAR [NATURAL_8]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1366_8510(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1366_8511(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1366_8512(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1366_8514(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1366_8515(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1366_8516(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1366_8518(EIF_REFERENCE);
extern void F1366_8521(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1366_8522(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1366_8523(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1366_8524(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1366_8525(EIF_REFERENCE);
extern void F1366_23717(EIF_REFERENCE, int);
extern void EIF_Minit1366(void);

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

/* {LINEAR}.has */
EIF_TYPED_VALUE F1366_8510 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "has";
	RTEX;
#define arg1 arg1x.it_n1
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n1 = * (EIF_NATURAL_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_UINT8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1365, Current, 0, 1, 8285);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8285);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 54, dtype))(Current);
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 45, dtype))(Current)).it_b);
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(3);
		uu1_1 = arg1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1365, 39, dtype))(Current, uu1_1x);
	}
	RTHOOK(4);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 43, dtype))(Current)).it_b);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !Result;
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("not_found_in_empty", EX_POST);
		tb1 = '\01';
		if (Result) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 55, dtype))(Current)).it_b);
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
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef uu1_1
#undef arg1
}

/* {LINEAR}.index_of */
EIF_TYPED_VALUE F1366_8511 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "index_of";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_n1
#define arg2 arg2x.it_i4
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n1 = * (EIF_NATURAL_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_UINT8,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 1365, Current, 2, 2, 8286);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8286);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("positive_occurrences", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 > ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1365, 33, dtype));
	if ((EIF_BOOLEAN) (tb1 && EIF_TRUE)) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 54, dtype))(Current);
		RTHOOK(4);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
		for (;;) {
			RTHOOK(5);
			tb1 = '\01';
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 43, dtype))(Current)).it_b);
			if (!tb2) {
				tb1 = (EIF_BOOLEAN)(loc1 == arg2);
			}
			if (tb1) break;
			RTHOOK(6);
			tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
			if ((tu1_1 == arg1)) {
				RTHOOK(7);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				
				loc1++;
			}
			RTHOOK(8);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 47, dtype))(Current);
			RTHOOK(9);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			loc2++;
		}
	} else {
		RTHOOK(10);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 54, dtype))(Current);
		RTHOOK(11);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
		for (;;) {
			RTHOOK(12);
			tb2 = '\01';
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 43, dtype))(Current)).it_b);
			if (!tb3) {
				tb2 = (EIF_BOOLEAN)(loc1 == arg2);
			}
			if (tb2) break;
			RTHOOK(13);
			tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
			if ((EIF_BOOLEAN)(tu1_1 == arg1)) {
				RTHOOK(14);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				
				loc1++;
			}
			RTHOOK(15);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 47, dtype))(Current);
			RTHOOK(16);
			RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
			
			loc2++;
		}
	}
	RTHOOK(17);
	if ((EIF_BOOLEAN)(loc1 == arg2)) {
		RTHOOK(18);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc2 - ((EIF_INTEGER_32) 1L));
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(19);
		RTCT("non_negative_result", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(20);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg2
#undef arg1
}

/* {LINEAR}.search */
void F1366_8512 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "search";
	RTEX;
#define arg1 arg1x.it_n1
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n1 = * (EIF_NATURAL_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1365, Current, 0, 1, 8287);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8287);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1365, 33, dtype));
	if (tb1) {
		for (;;) {
			RTHOOK(2);
			tb1 = '\01';
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 43, dtype))(Current)).it_b);
			if (!tb2) {
				tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
				tb1 = (arg1 == tu1_1);
			}
			if (tb1) break;
			RTHOOK(3);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 47, dtype))(Current);
		}
	} else {
		for (;;) {
			RTHOOK(4);
			tb2 = '\01';
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 43, dtype))(Current)).it_b);
			if (!tb3) {
				tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
				tb2 = (EIF_BOOLEAN)(arg1 == tu1_1);
			}
			if (tb2) break;
			RTHOOK(5);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 47, dtype))(Current);
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(6);
		RTCT("object_found", EX_POST);
		tb3 = '\01';
		tb4 = '\0';
		tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 43, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb5) {
			tb5 = *(EIF_BOOLEAN *)(Current + RTWA(1365, 33, dtype));
			tb4 = tb5;
		}
		if (tb4) {
			tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
			tb3 = (arg1 == tu1_1);
		}
		if (tb3) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(7);
		RTCT("item_found", EX_POST);
		tb3 = '\01';
		tb4 = '\0';
		tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 43, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb5) {
			tb5 = *(EIF_BOOLEAN *)(Current + RTWA(1365, 33, dtype));
			tb4 = (EIF_BOOLEAN) !tb5;
		}
		if (tb4) {
			tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
			tb3 = (EIF_BOOLEAN)(arg1 == tu1_1);
		}
		if (tb3) {
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
#undef arg1
}

/* {LINEAR}.occurrences */
EIF_TYPED_VALUE F1366_8514 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "occurrences";
	RTEX;
#define arg1 arg1x.it_n1
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n1 = * (EIF_NATURAL_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_UINT8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1365, Current, 0, 1, 8288);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8288);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 54, dtype))(Current);
	RTHOOK(2);
	uu1_1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1365, 39, dtype))(Current, uu1_1x);
	for (;;) {
		RTHOOK(3);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 43, dtype))(Current)).it_b);
		if (tb1) break;
		RTHOOK(4);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result++;
		RTHOOK(5);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 47, dtype))(Current);
		RTHOOK(6);
		uu1_1 = arg1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1365, 39, dtype))(Current, uu1_1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef uu1_1
#undef arg1
}

/* {LINEAR}.item_for_iteration */
EIF_TYPED_VALUE F1366_8515 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "item_for_iteration";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_NATURAL_8 Result = ((EIF_NATURAL_8) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT8, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1365, Current, 0, 0, 8289);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8289);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_off", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 45, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x30000000, 0,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT8; r.it_n1 = Result; return r; }
}

/* {LINEAR}.exhausted */
EIF_TYPED_VALUE F1366_8516 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "exhausted";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1365, Current, 0, 0, 8290);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8290);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 45, dtype))(Current)).it_b);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("exhausted_when_off", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 45, dtype))(Current)).it_b);
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
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {LINEAR}.off */
EIF_TYPED_VALUE F1366_8518 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "off";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1365, Current, 0, 0, 8291);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8291);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 55, dtype))(Current)).it_b);
	if (!tb2) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 44, dtype))(Current)).it_b);
		tb1 = tb2;
	}
	Result = (EIF_BOOLEAN) tb1;
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

/* {LINEAR}.do_all */
void F1366_8521 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "do_all";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,loc3);
	RTLR(2,Current);
	RTLR(3,loc2);
	RTLR(4,loc1);
	RTLR(5,tr1);
	RTLR(6,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1365, Current, 3, 1, 8292);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8292);
	if (arg1) {
		{
			EIF_TYPE_INDEX typarr0[] = {1365,1219,0,0xFFF9,1,734,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[6] = RTWCT(1365, 56, Current);
			
			typres0 = eif_compound_id(dftype, 1219, typarr0);
			RTCC(arg1, 1365, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("action_exists", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	loc3 = RTCCL(Current);
	{
		EIF_TYPE_INDEX typarr0[] = {1365,1367,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = RTWCT(1365, 56, Current);
		
		typres0 = eif_compound_id(dftype, 1367, typarr0);
		loc3 = RTRV(eif_non_attached_type(typres0),loc3);
	}
	if (EIF_TEST(loc3)) {
		RTHOOK(3);
		RTDBGAL(Current, 2, 0xF8000557, 0, 0); /* loc2 */
		
		loc2 = (EIF_REFERENCE) RTCCL(loc3);
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF80001D8, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1367, 41, "cursor", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(5);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 54, dtype))(Current);
	for (;;) {
		RTHOOK(6);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 44, dtype))(Current)).it_b);
		if (tb1) break;
		RTHOOK(7);
		{
			EIF_TYPE_INDEX typarr0[] = {1365,0xFFF9,1,734,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[4] = RTWCT(1365, 56, Current);
			
			typres0 = eif_compound_id(dftype, 734, typarr0);
			tr1 = RTLNTS(typres0, 2, 0);
		}
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
		((EIF_TYPED_VALUE *)tr1+1)->it_n1 = tu1_1;
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1219, 69, "call", arg1))(arg1, ur1x);
		RTHOOK(8);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 47, dtype))(Current);
	}
	RTHOOK(9);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc2 != NULL) && (EIF_BOOLEAN)(loc1 != NULL))) {
		RTHOOK(10);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1367, 43, "go_to", loc2))(loc2, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef ur1
#undef arg1
}

/* {LINEAR}.do_if */
void F1366_8522 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "do_if";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(8);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc3);
	RTLR(3,Current);
	RTLR(4,loc2);
	RTLR(5,loc1);
	RTLR(6,tr1);
	RTLR(7,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1365, Current, 3, 2, 8293);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8293);
	if (arg1) {
		{
			EIF_TYPE_INDEX typarr0[] = {1365,1219,0,0xFFF9,1,734,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[6] = RTWCT(1365, 56, Current);
			
			typres0 = eif_compound_id(dftype, 1219, typarr0);
			RTCC(arg1, 1365, l_feature_name, 1, typres0);
		}
	}
	if (arg2) {
		{
			EIF_TYPE_INDEX typarr0[] = {1365,1226,0,0xFFF9,1,734,0,769,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[6] = RTWCT(1365, 56, Current);
			
			typres0 = eif_compound_id(dftype, 1226, typarr0);
			RTCC(arg2, 1365, l_feature_name, 2, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("action_exists", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("test_exists", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	loc3 = RTCCL(Current);
	{
		EIF_TYPE_INDEX typarr0[] = {1365,1367,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = RTWCT(1365, 56, Current);
		
		typres0 = eif_compound_id(dftype, 1367, typarr0);
		loc3 = RTRV(eif_non_attached_type(typres0),loc3);
	}
	if (EIF_TEST(loc3)) {
		RTHOOK(4);
		RTDBGAL(Current, 2, 0xF8000557, 0, 0); /* loc2 */
		
		loc2 = (EIF_REFERENCE) RTCCL(loc3);
		RTHOOK(5);
		RTDBGAL(Current, 1, 0xF80001D8, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1367, 41, "cursor", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(6);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 54, dtype))(Current);
	for (;;) {
		RTHOOK(7);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 44, dtype))(Current)).it_b);
		if (tb1) break;
		RTHOOK(8);
		{
			EIF_TYPE_INDEX typarr0[] = {1365,0xFFF9,1,734,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[4] = RTWCT(1365, 56, Current);
			
			typres0 = eif_compound_id(dftype, 734, typarr0);
			tr1 = RTLNTS(typres0, 2, 0);
		}
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
		((EIF_TYPED_VALUE *)tr1+1)->it_n1 = tu1_1;
		ur1 = RTCCL(tr1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1226, 68, "item", arg2))(arg2, ur1x)).it_b);
		if (tb2) {
			RTHOOK(9);
			{
				EIF_TYPE_INDEX typarr0[] = {1365,0xFFF9,1,734,0,0xFFFF};
				EIF_TYPE_INDEX typres0;
				typarr0[4] = RTWCT(1365, 56, Current);
				
				typres0 = eif_compound_id(dftype, 734, typarr0);
				tr1 = RTLNTS(typres0, 2, 0);
			}
			tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
			((EIF_TYPED_VALUE *)tr1+1)->it_n1 = tu1_1;
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1219, 69, "call", arg1))(arg1, ur1x);
		}
		RTHOOK(10);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 47, dtype))(Current);
	}
	RTHOOK(11);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc2 != NULL) && (EIF_BOOLEAN)(loc1 != NULL))) {
		RTHOOK(12);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1367, 43, "go_to", loc2))(loc2, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(13);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef arg2
#undef arg1
}

/* {LINEAR}.there_exists */
EIF_TYPED_VALUE F1366_8523 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "there_exists";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,loc3);
	RTLR(2,Current);
	RTLR(3,loc2);
	RTLR(4,loc1);
	RTLR(5,tr1);
	RTLR(6,ur1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1365, Current, 3, 1, 8294);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8294);
	if (arg1) {
		{
			EIF_TYPE_INDEX typarr0[] = {1365,1226,0,0xFFF9,1,734,0,769,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[6] = RTWCT(1365, 56, Current);
			
			typres0 = eif_compound_id(dftype, 1226, typarr0);
			RTCC(arg1, 1365, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("test_exists", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	loc3 = RTCCL(Current);
	{
		EIF_TYPE_INDEX typarr0[] = {1365,1367,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = RTWCT(1365, 56, Current);
		
		typres0 = eif_compound_id(dftype, 1367, typarr0);
		loc3 = RTRV(eif_non_attached_type(typres0),loc3);
	}
	if (EIF_TEST(loc3)) {
		RTHOOK(3);
		RTDBGAL(Current, 2, 0xF8000557, 0, 0); /* loc2 */
		
		loc2 = (EIF_REFERENCE) RTCCL(loc3);
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF80001D8, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1367, 41, "cursor", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(5);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 54, dtype))(Current);
	for (;;) {
		RTHOOK(6);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 44, dtype))(Current)).it_b);
		if (!tb2) {
			tb1 = Result;
		}
		if (tb1) break;
		RTHOOK(7);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		{
			EIF_TYPE_INDEX typarr0[] = {1365,0xFFF9,1,734,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[4] = RTWCT(1365, 56, Current);
			
			typres0 = eif_compound_id(dftype, 734, typarr0);
			tr1 = RTLNTS(typres0, 2, 0);
		}
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
		((EIF_TYPED_VALUE *)tr1+1)->it_n1 = tu1_1;
		ur1 = RTCCL(tr1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1226, 68, "item", arg1))(arg1, ur1x)).it_b);
		Result = (EIF_BOOLEAN) tb2;
		RTHOOK(8);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 47, dtype))(Current);
	}
	RTHOOK(9);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc2 != NULL) && (EIF_BOOLEAN)(loc1 != NULL))) {
		RTHOOK(10);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1367, 43, "go_to", loc2))(loc2, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef arg1
}

/* {LINEAR}.for_all */
EIF_TYPED_VALUE F1366_8524 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "for_all";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,loc3);
	RTLR(2,Current);
	RTLR(3,loc2);
	RTLR(4,loc1);
	RTLR(5,tr1);
	RTLR(6,ur1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1365, Current, 3, 1, 8295);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1365, Current, 8295);
	if (arg1) {
		{
			EIF_TYPE_INDEX typarr0[] = {1365,1226,0,0xFFF9,1,734,0,769,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[6] = RTWCT(1365, 56, Current);
			
			typres0 = eif_compound_id(dftype, 1226, typarr0);
			RTCC(arg1, 1365, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("test_exists", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	loc3 = RTCCL(Current);
	{
		EIF_TYPE_INDEX typarr0[] = {1365,1367,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = RTWCT(1365, 56, Current);
		
		typres0 = eif_compound_id(dftype, 1367, typarr0);
		loc3 = RTRV(eif_non_attached_type(typres0),loc3);
	}
	if (EIF_TEST(loc3)) {
		RTHOOK(3);
		RTDBGAL(Current, 2, 0xF8000557, 0, 0); /* loc2 */
		
		loc2 = (EIF_REFERENCE) RTCCL(loc3);
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF80001D8, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1367, 41, "cursor", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(5);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 54, dtype))(Current);
	RTHOOK(6);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	for (;;) {
		RTHOOK(7);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 44, dtype))(Current)).it_b);
		if (!tb2) {
			tb1 = (EIF_BOOLEAN) !Result;
		}
		if (tb1) break;
		RTHOOK(8);
		RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
		
		{
			EIF_TYPE_INDEX typarr0[] = {1365,0xFFF9,1,734,0,0xFFFF};
			EIF_TYPE_INDEX typres0;
			typarr0[4] = RTWCT(1365, 56, Current);
			
			typres0 = eif_compound_id(dftype, 734, typarr0);
			tr1 = RTLNTS(typres0, 2, 0);
		}
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 53, dtype))(Current)).it_n1);
		((EIF_TYPED_VALUE *)tr1+1)->it_n1 = tu1_1;
		ur1 = RTCCL(tr1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1226, 68, "item", arg1))(arg1, ur1x)).it_b);
		Result = (EIF_BOOLEAN) tb2;
		RTHOOK(9);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1365, 47, dtype))(Current);
	}
	RTHOOK(10);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc2 != NULL) && (EIF_BOOLEAN)(loc1 != NULL))) {
		RTHOOK(11);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1367, 43, "go_to", loc2))(loc2, ur1x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(12);
		RTCT("empty", EX_POST);
		tb2 = '\01';
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 55, dtype))(Current)).it_b);
		if (tb3) {
			tb2 = Result;
		}
		if (tb2) {
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
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef arg1
}

/* {LINEAR}.linear_representation */
EIF_TYPED_VALUE F1366_8525 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "linear_representation";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1365, Current, 0, 0, 8283);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1365, Current, 8283);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000555, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(Current);
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

/* {LINEAR}._invariant */
void F1366_23717 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 1365, Current, 0, 23716);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("after_constraint", Current);
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 44, dtype))(Current)).it_b);
	if (tb2) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1365, 45, dtype))(Current)).it_b);
		tb1 = tb2;
	}
	if (tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
}

void EIF_Minit1366 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
