/*
 * Code for class EV_GDI_BRUSH
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F776_14944(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F776_14945(EIF_REFERENCE);
extern EIF_TYPED_VALUE F776_14946(EIF_REFERENCE);
extern EIF_TYPED_VALUE F776_14947(EIF_REFERENCE);
extern EIF_TYPED_VALUE F776_14948(EIF_REFERENCE);
extern EIF_TYPED_VALUE F776_14949(EIF_REFERENCE);
extern EIF_TYPED_VALUE F776_14950(EIF_REFERENCE);
extern EIF_TYPED_VALUE F776_14951(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F776_14952(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit776(void);

#ifdef __cplusplus
}
#endif

#include "eif_misc.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {EV_GDI_BRUSH}.make_with_values */
void F776_14944 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "make_with_values";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,ur1);
	RTLR(3,ur2);
	RTLR(4,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 775, Current, 0, 2, 18942);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(775, Current, 18942);
	if (arg1) {
		RTCC(arg1, 775, l_feature_name, 1, 604);
	}
	if (arg2) {
		RTCC(arg2, 775, l_feature_name, 2, 1020);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(775, 48, Dtype(Current)))(Current, ur1x, ur2x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ur1
#undef ur2
#undef arg2
#undef arg1
}

/* {EV_GDI_BRUSH}.hash_code */
EIF_TYPED_VALUE F776_14945 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hash_code";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 775, Current, 1, 0, 18943);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(775, Current, 18943);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(775, 43, dtype));
	ui4_1 = ((EIF_INTEGER_32) 16L);
	ti4_2 = eif_bit_shift_left(ti4_1,ui4_1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(775, 45, dtype));
	ui4_1 = ((EIF_INTEGER_32) 8L);
	ti4_3 = eif_bit_shift_left(ti4_1,ui4_1);
	ui4_1 = ti4_3;
	ti4_1 = eif_bit_or((ti4_2),ui4_1);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(775, 44, dtype));
	ui4_1 = ti4_2;
	ti4_2 = eif_bit_or(ti4_1,ui4_1);
	Result = (EIF_INTEGER_32) ti4_2;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(775, 42, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	if (EIF_TEST(loc1)) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		tp1 = *(EIF_POINTER *)(loc1 + RTVA(604, 33, "item", loc1));
		RTNHOOK(3,1);
		ti4_1 = (EIF_INTEGER_32) (0x7FFFFFFF & (EIF_INTEGER_32) ((rt_int_ptr) (tp1)));
		ui4_1 = ti4_1;
		ti4_1 = eif_bit_or(Result,ui4_1);
		Result = (EIF_INTEGER_32) ti4_1;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("good_hash_value", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) 0L))) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
}

/* {EV_GDI_BRUSH}.pattern */
EIF_TYPED_VALUE F776_14946 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(775,42, Dtype(Current)));
	return r;
}


/* {EV_GDI_BRUSH}.color_red */
EIF_TYPED_VALUE F776_14947 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(775,43, Dtype(Current)));
	return r;
}


/* {EV_GDI_BRUSH}.color_blue */
EIF_TYPED_VALUE F776_14948 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(775,44, Dtype(Current)));
	return r;
}


/* {EV_GDI_BRUSH}.color_green */
EIF_TYPED_VALUE F776_14949 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(775,45, Dtype(Current)));
	return r;
}


/* {EV_GDI_BRUSH}.item */
EIF_TYPED_VALUE F776_14950 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(775,46, Dtype(Current)));
	return r;
}


/* {EV_GDI_BRUSH}.is_equal */
EIF_TYPED_VALUE F776_14951 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_equal";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc2 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc3);
	RTLR(3,tr1);
	RTLR(4,loc4);
	RTLR(5,ur1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	RTLU(SK_BOOL, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 775, Current, 4, 1, 18949);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(775, Current, 18949);
	RTCC(arg1, 775, l_feature_name, 1, 775);
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
	RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
	
	tb1 = '\0';
	tb2 = '\0';
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(775, 43, "color_red", arg1));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(775, 43, dtype));
	if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
		ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(775, 44, "color_blue", arg1));
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(775, 44, dtype));
		tb2 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
	}
	if (tb2) {
		ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(775, 45, "color_green", arg1));
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(775, 45, dtype));
		tb1 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
	}
	loc1 = (EIF_BOOLEAN) tb1;
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(775, 42, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = RTCCL(tr1);
	if (EIF_TEST(loc3)) {
		RTHOOK(4);
		RTDBGAL(Current, 2, 0x04000000, 1, 0); /* loc2 */
		
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(775, 42, "pattern", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc4 = RTCCL(tr1);
		if (EIF_TEST(loc4)) {
			tp1 = *(EIF_POINTER *)(loc3 + RTVA(604, 33, "item", loc3));
			RTNHOOK(4,1);
			ti4_1 = (EIF_INTEGER_32) (0x7FFFFFFF & (EIF_INTEGER_32) ((rt_int_ptr) (tp1)));
			tp1 = *(EIF_POINTER *)(loc4 + RTVA(604, 33, "item", loc4));
			RTNHOOK(4,2);
			ti4_2 = (EIF_INTEGER_32) (0x7FFFFFFF & (EIF_INTEGER_32) ((rt_int_ptr) (tp1)));
			tb1 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
		}
		loc2 = (EIF_BOOLEAN) tb1;
	} else {
		RTHOOK(5);
		RTDBGAL(Current, 2, 0x04000000, 1, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(775, 42, "pattern", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = (EIF_BOOLEAN) (EIF_BOOLEAN)(tr1 == NULL);
	}
	RTHOOK(6);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (loc1 && loc2);
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("symmetric", EX_POST);
		if ((!(Result) || (RTEQ(arg1, Current)))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("consistent", EX_POST);
		tb1 = '\01';
		ur1 = RTCCL(arg1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(775, 5, dtype))(Current, ur1x)).it_b);
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
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef arg1
}

/* {EV_GDI_BRUSH}.set_values */
void F776_14952 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "set_values";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 775, Current, 0, 2, 18950);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(775, Current, 18950);
	if (arg1) {
		RTCC(arg1, 775, l_feature_name, 1, 604);
	}
	if (arg2) {
		RTCC(arg2, 775, l_feature_name, 2, 1020);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 775, 42, 0xF800025C, 0); /* pattern */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(775, 42, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(arg2 != NULL)) {
		RTHOOK(3);
		RTDBGAA(Current, dtype, 775, 43, 0x10000000, 1); /* color_red */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 75, "red", arg2))(arg2)).it_i4);
		*(EIF_INTEGER_32 *)(Current + RTWA(775, 43, dtype)) = (EIF_INTEGER_32) ti4_1;
		RTHOOK(4);
		RTDBGAA(Current, dtype, 775, 44, 0x10000000, 1); /* color_blue */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 77, "blue", arg2))(arg2)).it_i4);
		*(EIF_INTEGER_32 *)(Current + RTWA(775, 44, dtype)) = (EIF_INTEGER_32) ti4_1;
		RTHOOK(5);
		RTDBGAA(Current, dtype, 775, 45, 0x10000000, 1); /* color_green */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1020, 76, "green", arg2))(arg2)).it_i4);
		*(EIF_INTEGER_32 *)(Current + RTWA(775, 45, dtype)) = (EIF_INTEGER_32) ti4_1;
	} else {
		RTHOOK(6);
		RTDBGAA(Current, dtype, 775, 43, 0x10000000, 1); /* color_red */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(775, 43, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
		RTHOOK(7);
		RTDBGAA(Current, dtype, 775, 44, 0x10000000, 1); /* color_blue */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(775, 44, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
		RTHOOK(8);
		RTDBGAA(Current, dtype, 775, 45, 0x10000000, 1); /* color_green */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(775, 45, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef arg2
#undef arg1
}

void EIF_Minit776 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
