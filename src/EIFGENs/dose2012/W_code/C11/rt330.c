/*
 * Code for class RTF_FORMAT_I
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F330_6487(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6488(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6489(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6490(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6491(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6492(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6493(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6494(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6495(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6496(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6497(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6498(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6499(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F330_6500(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6501(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6502(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6503(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6504(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6505(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6506(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6507(EIF_REFERENCE);
extern void F330_6508(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6509(EIF_REFERENCE);
extern void F330_6510(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6511(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6512(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6513(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6514(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6515(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6516(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6517(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6518(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6519(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6520(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6521(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6522(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F330_6523(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F330_6524(EIF_REFERENCE);
extern EIF_TYPED_VALUE F330_6525(EIF_REFERENCE);
extern void F330_6526(EIF_REFERENCE);
extern void F330_23697(EIF_REFERENCE, int);
extern void EIF_Minit330(void);

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

/* {RTF_FORMAT_I}.default_create */
void F330_6487 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "default_create";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 0, 6215);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6215);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 329, 58, 0x10000000, 1); /* alignment */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(329, 31, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 58, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {RTF_FORMAT_I}.highlight_color */
EIF_TYPED_VALUE F330_6488 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,43, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.highlight_set */
EIF_TYPED_VALUE F330_6489 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(329,44, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.text_color */
EIF_TYPED_VALUE F330_6490 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,45, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.color_set */
EIF_TYPED_VALUE F330_6491 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(329,46, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.is_bold */
EIF_TYPED_VALUE F330_6492 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(329,47, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.is_italic */
EIF_TYPED_VALUE F330_6493 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(329,48, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.is_striked_out */
EIF_TYPED_VALUE F330_6494 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(329,49, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.is_underlined */
EIF_TYPED_VALUE F330_6495 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(329,50, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.vertical_offset */
EIF_TYPED_VALUE F330_6496 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,51, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.font_height */
EIF_TYPED_VALUE F330_6497 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,52, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.character_format */
EIF_TYPED_VALUE F330_6498 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,53, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.boolean_out */
EIF_TYPED_VALUE F330_6499 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "boolean_out";
	RTEX;
#define arg1 arg1x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6227);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6227);
	RTIV(Current, RTAL);
	RTHOOK(1);
	if (arg1) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
		
		Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(329, 55, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
		
		Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(329, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
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
#undef up1
#undef arg1
}

/* {RTF_FORMAT_I}.true_constant */
RTOID (F330_6500)


EIF_TYPED_VALUE F330_6500 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F330_6500,6229,RTMS_EX_H("T",1,84));
}

/* {RTF_FORMAT_I}.false_constant */
RTOID (F330_6501)


EIF_TYPED_VALUE F330_6501 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F330_6501,6230,RTMS_EX_H("F",1,70));
}

/* {RTF_FORMAT_I}.character_format_out */
EIF_TYPED_VALUE F330_6502 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "character_format_out";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,Result);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 329, Current, 1, 0, 6230);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6230);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(329, 79, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	if (EIF_TEST(loc1)) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
		
		Result = (EIF_REFERENCE) RTCCL(loc1);
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
		
		tr1 = RTLN(787);
		ui4_1 = ((EIF_INTEGER_32) 30L);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(787, 91, Dtype(tr1)))(tr1, ui4_1x);
		RTNHOOK(3,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(4);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 43, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(5);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 47, dtype));
		ub1 = tb1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(329, 54, dtype))(Current, ub1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
		RTHOOK(6);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 53, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(7);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 48, dtype));
		ub1 = tb1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(329, 54, dtype))(Current, ub1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
		RTHOOK(8);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 52, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(9);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 49, dtype));
		ub1 = tb1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(329, 54, dtype))(Current, ub1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
		RTHOOK(10);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 45, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(11);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 50, dtype));
		ub1 = tb1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(329, 54, dtype))(Current, ub1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
		RTHOOK(12);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 51, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(13);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 44, dtype));
		ub1 = tb1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(329, 54, dtype))(Current, ub1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
		RTHOOK(14);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 46, dtype));
		ub1 = tb1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(329, 54, dtype))(Current, ub1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
		RTHOOK(15);
		RTDBGAA(Current, dtype, 329, 79, 0xF8000313, 0); /* internal_character_format_out */
		
		RTAR(Current, Result);
		*(EIF_REFERENCE *)(Current + RTWA(329, 79, dtype)) = (EIF_REFERENCE) RTCCL(Result);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(16);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef ub1
}

/* {RTF_FORMAT_I}.alignment */
EIF_TYPED_VALUE F330_6503 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,58, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.bottom_spacing */
EIF_TYPED_VALUE F330_6504 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,59, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.top_spacing */
EIF_TYPED_VALUE F330_6505 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,60, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.right_margin */
EIF_TYPED_VALUE F330_6506 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,61, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.left_margin */
EIF_TYPED_VALUE F330_6507 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(329,62, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.reset_paragraph */
void F330_6508 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reset_paragraph";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 0, 6236);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6236);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 329, 58, 0x10000000, 1); /* alignment */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(329, 31, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 58, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 62, 0x10000000, 1); /* left_margin */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 62, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 329, 61, 0x10000000, 1); /* right_margin */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 61, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 329, 60, 0x10000000, 1); /* top_spacing */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 60, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 329, 59, 0x10000000, 1); /* bottom_spacing */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 59, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(6);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT(NULL, EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 58, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(329, 31, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT(NULL, EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 62, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT(NULL, EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 61, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT(NULL, EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 60, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(11);
		RTCT(NULL, EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 59, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
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
	RTLO(2);
	RTEE;
}

/* {RTF_FORMAT_I}.paragraph_format_out */
EIF_TYPED_VALUE F330_6509 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "paragraph_format_out";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 329, Current, 1, 0, 6237);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6237);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(329, 80, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	if (EIF_TEST(loc1)) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
		
		Result = (EIF_REFERENCE) RTCCL(loc1);
	} else {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
		
		tr1 = RTLN(787);
		ui4_1 = ((EIF_INTEGER_32) 16L);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(787, 91, Dtype(tr1)))(tr1, ui4_1x);
		RTNHOOK(3,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(4);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 58, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(5);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 59, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(6);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 60, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(7);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 61, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(8);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 62, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		RTHOOK(9);
		RTDBGAA(Current, dtype, 329, 80, 0xF8000313, 0); /* internal_paragraph_format_out */
		
		RTAR(Current, Result);
		*(EIF_REFERENCE *)(Current + RTWA(329, 80, dtype)) = (EIF_REFERENCE) RTCCL(Result);
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
#undef ui4_1
}

/* {RTF_FORMAT_I}.set_bottom_spacing */
void F330_6510 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_bottom_spacing";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6238);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6238);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_bottom_spacing_non_negative", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 59, 0x10000000, 1); /* bottom_spacing */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 59, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("bottom_spacing_assigned", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 59, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_top_spacing */
void F330_6511 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_top_spacing";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6239);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6239);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_top_spacing_non_negative", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 60, 0x10000000, 1); /* top_spacing */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 60, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("top_spacing_assigned", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 60, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_right_margin */
void F330_6512 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_right_margin";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6240);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6240);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_right_margin_non_negative", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 61, 0x10000000, 1); /* right_margin */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 61, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("right_margin_assigned", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 61, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_left_margin */
void F330_6513 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_left_margin";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6241);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6241);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_left_margin_non_negative", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 62, 0x10000000, 1); /* left_margin */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 62, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("left_margin_assigned", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 62, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_highlight_color */
void F330_6514 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_highlight_color";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6242);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6242);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_highlight_color_non_negative", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 43, 0x10000000, 1); /* highlight_color */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 43, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 329, 44, 0x04000000, 1); /* highlight_set */
	
	*(EIF_BOOLEAN *)(Current + RTWA(329, 44, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("highlight_color_assigned", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 43, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_text_color */
void F330_6515 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_text_color";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6243);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6243);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_text_color_non_negative", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 45, 0x10000000, 1); /* text_color */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 45, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 329, 46, 0x04000000, 1); /* color_set */
	
	*(EIF_BOOLEAN *)(Current + RTWA(329, 46, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("text_color_assigned", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 45, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_bold */
void F330_6516 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_bold";
	RTEX;
#define arg1 arg1x.it_b
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6244);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6244);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 329, 47, 0x04000000, 1); /* is_bold */
	
	*(EIF_BOOLEAN *)(Current + RTWA(329, 47, dtype)) = (EIF_BOOLEAN) arg1;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("is_bold_assigned", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 47, dtype));
		if ((EIF_BOOLEAN)(tb1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_italic */
void F330_6517 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_italic";
	RTEX;
#define arg1 arg1x.it_b
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6245);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6245);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 329, 48, 0x04000000, 1); /* is_italic */
	
	*(EIF_BOOLEAN *)(Current + RTWA(329, 48, dtype)) = (EIF_BOOLEAN) arg1;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("is_italic_assigned", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 48, dtype));
		if ((EIF_BOOLEAN)(tb1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_striked_out */
void F330_6518 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_striked_out";
	RTEX;
#define arg1 arg1x.it_b
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6246);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6246);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 329, 49, 0x04000000, 1); /* is_striked_out */
	
	*(EIF_BOOLEAN *)(Current + RTWA(329, 49, dtype)) = (EIF_BOOLEAN) arg1;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("is_striked_out_assigned", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 49, dtype));
		if ((EIF_BOOLEAN)(tb1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_underlined */
void F330_6519 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_underlined";
	RTEX;
#define arg1 arg1x.it_b
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6247);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6247);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 329, 50, 0x04000000, 1); /* is_underlined */
	
	*(EIF_BOOLEAN *)(Current + RTWA(329, 50, dtype)) = (EIF_BOOLEAN) arg1;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("is_underlined", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(329, 50, dtype));
		if ((EIF_BOOLEAN)(tb1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_vertical_offset */
void F330_6520 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_vertical_offset";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6248);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6248);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 329, 51, 0x10000000, 1); /* vertical_offset */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 51, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("offset_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 51, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_font_height */
void F330_6521 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_font_height";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6249);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6249);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_font_height_positive", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 > ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 52, 0x10000000, 1); /* font_height */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 52, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("font_height_assigned", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 52, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_character_format */
void F330_6522 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_character_format";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6250);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6250);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_character_format_non_negative", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 53, 0x10000000, 1); /* character_format */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 53, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("character_format_assigned", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 53, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef arg1
}

/* {RTF_FORMAT_I}.set_alignment */
void F330_6523 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_alignment";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 1, 6251);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6251);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_alignment", EX_PRE);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(329, 35, dtype))(Current, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 58, 0x10000000, 1); /* alignment */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(329, 58, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(329, 81, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("alignment_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 58, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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
#undef ui4_1
#undef arg1
}

/* {RTF_FORMAT_I}.internal_character_format_out */
EIF_TYPED_VALUE F330_6524 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(329,79, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.internal_paragraph_format_out */
EIF_TYPED_VALUE F330_6525 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(329,80, Dtype(Current)));
	return r;
}


/* {RTF_FORMAT_I}.reset_internals */
void F330_6526 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reset_internals";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 329, Current, 0, 0, 6254);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(329, Current, 6254);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 329, 79, 0xF8000313, 0); /* internal_character_format_out */
	
	*(EIF_REFERENCE *)(Current + RTWA(329, 79, dtype)) = (EIF_REFERENCE) NULL;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 329, 80, 0xF8000313, 0); /* internal_paragraph_format_out */
	
	*(EIF_REFERENCE *)(Current + RTWA(329, 80, dtype)) = (EIF_REFERENCE) NULL;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("internal_character_format_out_reset", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(329, 79, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 == NULL)) {
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
#undef up1
}

/* {RTF_FORMAT_I}._invariant */
void F330_23697 (EIF_REFERENCE Current, int where)
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
	RTEAINV(l_feature_name, 329, Current, 0, 23696);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("character_format_non_negative", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 53, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("font_height_non_negative", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 52, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("text_color_non_negative", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 45, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("highlight_color_non_negative", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 43, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("left_margin_non_negative", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 62, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("right_margin_non_negative", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 61, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("top_spacing_non_negative", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 60, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("bottom_spacing_non_negative", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(329, 59, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
}

void EIF_Minit330 (void)
{
	GTCX
	RTOTS (6500,F330_6500)
	RTOTS (6501,F330_6501)
}


#ifdef __cplusplus
}
#endif
