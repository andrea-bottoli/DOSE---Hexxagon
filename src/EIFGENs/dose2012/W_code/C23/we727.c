/*
 * Code for class WEL_DEFAULT_PRINTER_DC
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F727_13737(EIF_REFERENCE);
extern void F727_13738(EIF_REFERENCE);
extern EIF_TYPED_VALUE F727_13739(EIF_REFERENCE);
extern EIF_TYPED_VALUE F727_13740(EIF_REFERENCE);
extern EIF_TYPED_VALUE F727_13741(EIF_REFERENCE);
extern EIF_TYPED_VALUE F727_13742(EIF_REFERENCE);
extern EIF_TYPED_VALUE F727_13743(EIF_REFERENCE);
extern EIF_TYPED_VALUE F727_13744(EIF_REFERENCE);
extern EIF_TYPED_VALUE F727_13745(EIF_REFERENCE);
extern EIF_TYPED_VALUE F727_13746(EIF_REFERENCE);
extern EIF_TYPED_VALUE F727_13747(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F727_23774(EIF_REFERENCE, int);
extern void EIF_Minit727(void);

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

/* {WEL_DEFAULT_PRINTER_DC}.make */
void F727_13737 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE up4x = {0, SK_POINTER};
#define up4 up4x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_POINTER tp3;
	EIF_POINTER tp4;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(7);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc2);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLR(5,loc1);
	RTLR(6,loc3);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 726, Current, 3, 0, 16474);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(726, Current, 16474);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 726, 495, 0xF8000312, 0); /* device */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(726, 495, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(786, 36, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(726, 495, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 726, 496, 0xF8000312, 0); /* driver */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(726, 496, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(786, 36, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(726, 496, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 726, 497, 0xF8000312, 0); /* output */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(726, 497, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(786, 36, Dtype(tr1)))(tr1);
	RTNHOOK(3,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(726, 497, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(726, 494, dtype))(Current);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0xF80001F7, 0, 0); /* loc2 */
	
	tr1 = RTLN(503);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 495, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(5,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAL(Current, 1, 0xF80001F7, 0, 0); /* loc1 */
	
	tr1 = RTLN(503);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 496, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(6,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	RTDBGAL(Current, 3, 0xF80001F7, 0, 0); /* loc3 */
	
	tr1 = RTLN(503);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 497, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(7,1);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(8);
	RTDBGAA(Current, dtype, 726, 34, 0x40000000, 1); /* item */
	
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc1))(loc1)).it_p);
	up1 = tp1;
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc2))(loc2)).it_p);
	up2 = tp2;
	tp3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc3))(loc3)).it_p);
	up3 = tp3;
	tp4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 30, dtype))(Current)).it_p);
	up4 = tp4;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(726, 438, dtype))(Current, up1x, up2x, up3x, up4x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(726, 34, dtype)) = (EIF_POINTER) tp1;
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
#undef up3
#undef up4
#undef ur1
}

/* {WEL_DEFAULT_PRINTER_DC}.retrieve_default_printer */
void F727_13738 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "retrieve_default_printer";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE up4x = {0, SK_POINTER};
#define up4 up4x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE uw1x = {0, SK_CHAR32};
#define uw1 uw1x.it_c4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_POINTER tp3;
	EIF_POINTER tp4;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_CHARACTER_32 tw1;
	EIF_BOOLEAN tb1;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(9);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLR(5,loc2);
	RTLR(6,loc4);
	RTLR(7,loc5);
	RTLR(8,loc3);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	
	RTEAA(l_feature_name, 726, Current, 7, 0, 16475);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(726, Current, 16475);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80001F7, 0, 0); /* loc1 */
	
	tr1 = RTLN(503);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 498, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF80001F7, 0, 0); /* loc2 */
	
	tr1 = RTLN(503);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 499, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 4, 0xF80001F7, 0, 0); /* loc4 */
	
	tr1 = RTLN(503);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 501, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(3,1);
	loc4 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAL(Current, 5, 0xF8000312, 0, 0); /* loc5 */
	
	tr1 = RTLN(786);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 502, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(786, 91, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(4,1);
	loc5 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(786, 171, "fill_blank", loc5))(loc5);
	RTHOOK(6);
	RTDBGAL(Current, 3, 0xF80001F7, 0, 0); /* loc3 */
	
	tr1 = RTLN(503);
	ur1 = RTCCL(loc5);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(6,1);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
	
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc1))(loc1)).it_p);
	up1 = tp1;
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc2))(loc2)).it_p);
	up2 = tp2;
	tp3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc4))(loc4)).it_p);
	up3 = tp3;
	tp4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc3))(loc3)).it_p);
	up4 = tp4;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 502, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	loc7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(726, 503, dtype))(Current, up1x, up2x, up3x, up4x, ui4_1x)).it_i4);
	RTHOOK(8);
	RTDBGAL(Current, 5, 0xF8000312, 0, 0); /* loc5 */
	
	ui4_1 = ((EIF_INTEGER_32) 1L);
	ui4_2 = loc7;
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(503, 38, "substring", loc3))(loc3, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc5 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(9);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 501, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 63, "as_string_32", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(786, 110, "is_equal", loc5))(loc5, ur1x)).it_b);
	if (tb1) {
	} else {
		RTHOOK(10);
		RTDBGAA(Current, dtype, 726, 495, 0xF8000312, 0); /* device */
		
		ui4_1 = ((EIF_INTEGER_32) 1L);
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 500, dtype))(Current)).it_c1);
		tw1 = (EIF_CHARACTER_32) tc1;
		uw1 = tw1;
		ui4_2 = ((EIF_INTEGER_32) 1L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(786, 99, "index_of", loc5))(loc5, uw1x, ui4_2x)).it_i4);
		ui4_2 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(786, 239, "substring", loc5))(loc5, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTAR(Current, tr1);
		*(EIF_REFERENCE *)(Current + RTWA(726, 495, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(11);
		RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 495, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(11,1);
		ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(786, 107, "count", tr1));
		loc6 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(12);
		RTDBGAA(Current, dtype, 726, 496, 0xF8000312, 0); /* driver */
		
		ui4_1 = (EIF_INTEGER_32) (loc6 + ((EIF_INTEGER_32) 2L));
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 500, dtype))(Current)).it_c1);
		tw1 = (EIF_CHARACTER_32) tc1;
		uw1 = tw1;
		ui4_2 = (EIF_INTEGER_32) (loc6 + ((EIF_INTEGER_32) 2L));
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(786, 99, "index_of", loc5))(loc5, uw1x, ui4_2x)).it_i4);
		ui4_2 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(786, 239, "substring", loc5))(loc5, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTAR(Current, tr1);
		*(EIF_REFERENCE *)(Current + RTWA(726, 496, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(13);
		RTDBGAA(Current, dtype, 726, 497, 0xF8000312, 0); /* output */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 496, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(13,1);
		ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(786, 107, "count", tr1));
		ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc6 + ti4_1) + ((EIF_INTEGER_32) 3L));
		ti4_2 = *(EIF_INTEGER_32 *)(loc5 + RTVA(786, 107, "count", loc5));
		ui4_2 = ti4_2;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(786, 239, "substring", loc5))(loc5, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTAR(Current, tr1);
		*(EIF_REFERENCE *)(Current + RTWA(726, 497, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef up4
#undef ur1
#undef ui4_1
#undef ui4_2
#undef uw1
}

/* {WEL_DEFAULT_PRINTER_DC}.device */
EIF_TYPED_VALUE F727_13739 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(726,495, Dtype(Current)));
	return r;
}


/* {WEL_DEFAULT_PRINTER_DC}.driver */
EIF_TYPED_VALUE F727_13740 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(726,496, Dtype(Current)));
	return r;
}


/* {WEL_DEFAULT_PRINTER_DC}.output */
EIF_TYPED_VALUE F727_13741 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(726,497, Dtype(Current)));
	return r;
}


/* {WEL_DEFAULT_PRINTER_DC}.windows_const */
RTOID (F727_13742)


EIF_TYPED_VALUE F727_13742 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F727_13742,16480,RTMS_EX_H("windows",7,1657536371));
}

/* {WEL_DEFAULT_PRINTER_DC}.device_const */
RTOID (F727_13743)


EIF_TYPED_VALUE F727_13743 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F727_13743,16481,RTMS_EX_H("device",6,36522085));
}

/* {WEL_DEFAULT_PRINTER_DC}.comma_const */
EIF_TYPED_VALUE F727_13744 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_CHAR8;
	r.it_c1 = (EIF_CHARACTER_8) (EIF_CHARACTER_8) ',';
	return r;
}

/* {WEL_DEFAULT_PRINTER_DC}.options_const */
RTOID (F727_13745)


EIF_TYPED_VALUE F727_13745 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F727_13745,16483,RTMS_EX_H(",,,",3,2894892));
}

/* {WEL_DEFAULT_PRINTER_DC}.max_printer_name */
EIF_TYPED_VALUE F727_13746 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 255L);
	return r;
}

/* {WEL_DEFAULT_PRINTER_DC}.cwin_get_profile_string */
EIF_TYPED_VALUE F727_13747 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x)
{
	GTCX
	char *l_feature_name = "cwin_get_profile_string";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_p
#define arg4 arg4x.it_p
#define arg5 arg5x.it_i4
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_i4 = * (EIF_INTEGER_32 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_POINTER *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU(SK_INT32,&arg5);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 726, Current, 0, 5, 16484);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(726, Current, 16484);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) GetProfileString(((LPCTSTR) arg1), ((LPCTSTR) arg2), ((LPCTSTR) arg3), ((LPTSTR) arg4), ((int) arg5));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_DEFAULT_PRINTER_DC}._invariant */
void F727_23774 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 726, Current, 0, 23773);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("device_not_void", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 495, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("driver_not_void", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 496, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("output_not_void", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(726, 497, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
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

void EIF_Minit727 (void)
{
	GTCX
	RTOTS (13742,F727_13742)
	RTOTS (13743,F727_13743)
	RTOTS (13745,F727_13745)
}


#ifdef __cplusplus
}
#endif
