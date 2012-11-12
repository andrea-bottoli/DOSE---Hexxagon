/*
 * Code for class WEL_INTEGER_ARRAY
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F677_12395(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F677_12396(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F677_12397(EIF_REFERENCE);
extern EIF_TYPED_VALUE F677_12398(EIF_REFERENCE);
extern EIF_TYPED_VALUE F677_12399(EIF_REFERENCE);
extern void F677_23764(EIF_REFERENCE, int);
extern void EIF_Minit677(void);

#ifdef __cplusplus
}
#endif

#include <string.h>
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

/* {WEL_INTEGER_ARRAY}.make */
void F677_12395 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
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
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	
	RTEAA(l_feature_name, 676, Current, 4, 1, 15123);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(676, Current, 15123);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {676,1307,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1307, typarr0)));
			RTCC(arg1, 676, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("an_array_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 676, 55, 0x10000000, 1); /* count */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1307, 61, "count", arg1))(arg1)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(676, 55, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(676, 52, dtype))(Current);
	RTHOOK(4);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1307, 59, "lower", arg1));
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(5);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1307, 60, "upper", arg1));
	loc3 = (EIF_INTEGER_32) ti4_1;
	for (;;) {
		RTHOOK(6);
		if ((EIF_BOOLEAN) (loc1 > loc3)) break;
		RTHOOK(7);
		RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
		
		ui4_1 = loc1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1307, 55, "item", arg1))(arg1, ui4_1x)).it_i4);
		loc4 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(8);
		tp1 = *(EIF_POINTER *)(Current + RTWA(676, 32, dtype));
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(676, 57, dtype))(Current)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (loc2 * ti4_1);
		tp2 = RTPOF(tp1,ui4_1);
		up1 = (EIF_INTEGER_32 *) &(loc4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(676, 57, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		memcpy((void *)tp2, (const void *) up1, (size_t) ui4_1);
		RTHOOK(9);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
		RTHOOK(10);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2++;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(11);
		RTCT("set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1307, 59, "lower", arg1));
		ui4_1 = ti4_1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(676, 54, dtype))(Current, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(11,1);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1307, 65, "is_equal", tr1))(tr1, ur1x)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {WEL_INTEGER_ARRAY}.to_array */
EIF_TYPED_VALUE F677_12396 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "to_array";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
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
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	
	RTEAA(l_feature_name, 676, Current, 4, 1, 15124);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(676, Current, 15124);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_INTEGER_32) arg1;
	RTHOOK(2);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	loc3 = *(EIF_INTEGER_32 *)(Current + RTWA(676, 55, dtype));
	loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (arg1 + loc3) - ((EIF_INTEGER_32) 1L));
	RTHOOK(3);
	RTDBGAL(Current, 0, 0xF800051B, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {676,1307,739,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1307, typarr0)));
		tr1 = RTLN(typres0);
	}
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = arg1;
	ui4_3 = loc3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1307, 50, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x);
	RTNHOOK(3,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	for (;;) {
		RTHOOK(4);
		if ((EIF_BOOLEAN) (loc1 > loc3)) break;
		RTHOOK(5);
		tp1 = *(EIF_POINTER *)(Current + RTWA(676, 32, dtype));
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(676, 57, dtype))(Current)).it_i4);
		ui4_1 = (EIF_INTEGER_32) (loc2 * ti4_1);
		tp2 = RTPOF(tp1,ui4_1);
		up1 = tp2;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(676, 57, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		memcpy((void *)(EIF_INTEGER_32 *) &(loc4), (const void *) up1, (size_t) ui4_1);
		RTHOOK(6);
		ui4_1 = loc4;
		ui4_2 = loc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1307, 75, "put", Result))(Result, ui4_1x, ui4_2x);
		RTHOOK(7);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
		RTHOOK(8);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2++;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(9);
		RTCT("array_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("lower_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Result + RTVA(1307, 59, "lower", Result));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(11);
		RTCT("count_set", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1307, 61, "count", Result))(Result)).it_i4);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(676, 55, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef arg1
}

/* {WEL_INTEGER_ARRAY}.count */
EIF_TYPED_VALUE F677_12397 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(676,55, Dtype(Current)));
	return r;
}


/* {WEL_INTEGER_ARRAY}.structure_size */
EIF_TYPED_VALUE F677_12398 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "structure_size";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 676, Current, 0, 0, 15126);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(676, Current, 15126);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(676, 57, dtype))(Current)).it_i4);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(676, 55, dtype));
	ui4_1 = ((EIF_INTEGER_32) 1L);
	ti4_3 = eif_max_int32 ((EIF_INTEGER_32) (ti4_1 * ti4_2),ui4_1);
	Result = (EIF_INTEGER_32) ti4_3;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("positive_result", EX_POST);
		if ((EIF_BOOLEAN) (Result > ((EIF_INTEGER_32) 0L))) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef ui4_1
}

/* {WEL_INTEGER_ARRAY}.integer_size */
EIF_TYPED_VALUE F677_12399 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
	return r;
}

/* {WEL_INTEGER_ARRAY}._invariant */
void F677_23764 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 676, Current, 0, 23763);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("positive_count", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(676, 55, dtype));
	if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
}

void EIF_Minit677 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
