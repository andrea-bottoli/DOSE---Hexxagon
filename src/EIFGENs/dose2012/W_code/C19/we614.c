/*
 * Code for class WEL_GDIP_PEN
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F614_11265(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F614_11266(EIF_REFERENCE);
extern EIF_TYPED_VALUE F614_11267(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F614_11268(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit614(void);

#ifdef __cplusplus
}
#endif

#include "wel_gdi_plus.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F614_11267
static EIF_POINTER inline_F614_11267 (EIF_POINTER arg1, EIF_INTEGER_64 arg2, EIF_REAL_32 arg3, EIF_INTEGER_32 arg4, EIF_INTEGER_32* arg5)
{
	{
	static FARPROC GdipCreatePen1 = NULL;
	GpPen *l_result = NULL;
	*(EIF_INTEGER *) arg5 = 1;
	
	if (!GdipCreatePen1) {
		GdipCreatePen1 = GetProcAddress ((HMODULE) arg1, "GdipCreatePen1");				
	}									
	
	if (GdipCreatePen1) {			
		*(EIF_INTEGER *) arg5 = (FUNCTION_CAST_TYPE (GpStatus, WINGDIPAPI, (ARGB, REAL, GpUnit, GpPen **)) GdipCreatePen1)
					((ARGB) arg2,
					(REAL) arg3,
					(GpUnit) arg4,
					(GpPen **) &l_result);
	}				
	
	return (EIF_POINTER) l_result;
}
	;
}
#define INLINE_F614_11267
#endif
#ifndef INLINE_F614_11268
static void inline_F614_11268 (EIF_POINTER arg1, EIF_POINTER arg2, EIF_INTEGER_32* arg3)
{
	{
	static FARPROC GdipDeletePen = NULL;
	*(EIF_INTEGER *) arg3 = 1;
	
	if (!GdipDeletePen) {
		GdipDeletePen = GetProcAddress ((HMODULE) arg1, "GdipDeletePen");				
	}							
	if (GdipDeletePen) {			
		*(EIF_INTEGER *) arg3 = (FUNCTION_CAST_TYPE (GpStatus, WINGDIPAPI, (GpPen *)) GdipDeletePen)
					((GpPen *) arg2);
	}				
}
	;
}
#define INLINE_F614_11268
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_GDIP_PEN}.make */
void F614_11265 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui8_1x = {0, SK_INT64};
#define ui8_1 ui8_1x.it_i8
	EIF_TYPED_VALUE ur4_1x = {0, SK_REAL32};
#define ur4_1 ur4_1x.it_r4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_INTEGER_64 ti8_1;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_r4 = * (EIF_REAL_32 *) arg2x.it_r;
	
	RTLI(2);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REAL32,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 613, Current, 1, 2, 13987);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(613, Current, 13987);
	if (arg1) {
		RTCC(arg1, 613, l_feature_name, 1, 75);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_color_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(613, 42, dtype))(Current);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 613, 33, 0x40000000, 1); /* item */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(613, 44, dtype));
	up1 = tp1;
	ti8_1 = *(EIF_INTEGER_64 *)(arg1 + RTVA(75, 35, "item", arg1));
	ui8_1 = ti8_1;
	ur4_1 = arg2;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(51, 34, 51))(Current)).it_i4);
	ui4_1 = ti4_1;
	up2 = (EIF_INTEGER_32 *) &(loc1);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(613, 50, dtype))(Current, up1x, ui8_1x, ur4_1x, ui4_1x, up2x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(613, 33, dtype)) = (EIF_POINTER) tp1;
	if (RTAL & CK_CHECK) {
		RTHOOK(4);
		RTCT("ok", EX_CHECK);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(53, 32, 53))(Current)).it_i4);
		if ((EIF_BOOLEAN)(loc1 == ti4_1)) {
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
	RTLO(5);
	RTEE;
#undef up1
#undef up2
#undef ui8_1
#undef ur4_1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {WEL_GDIP_PEN}.destroy_item */
void F614_11266 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "destroy_item";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
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
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 613, Current, 1, 0, 13988);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(613, Current, 13988);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(613, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tp1 = *(EIF_POINTER *)(Current + RTWA(613, 33, dtype));
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(613, 29, dtype))(Current)).it_p);
	if ((EIF_BOOLEAN)(tp1 != tp2)) {
		RTHOOK(3);
		tp1 = *(EIF_POINTER *)(Current + RTWA(613, 44, dtype));
		up1 = tp1;
		tp2 = *(EIF_POINTER *)(Current + RTWA(613, 33, dtype));
		up2 = tp2;
		up3 = (EIF_INTEGER_32 *) &(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(613, 51, dtype))(Current, up1x, up2x, up3x);
		if (RTAL & CK_CHECK) {
			RTHOOK(4);
			RTCT("ok", EX_CHECK);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(53, 32, 53))(Current)).it_i4);
			if ((EIF_BOOLEAN)(loc1 == ti4_1)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(5);
		RTDBGAA(Current, dtype, 613, 33, 0x40000000, 1); /* item */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(613, 29, dtype))(Current)).it_p);
		*(EIF_POINTER *)(Current + RTWA(613, 33, dtype)) = (EIF_POINTER) tp1;
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
#undef up2
#undef up3
}

/* {WEL_GDIP_PEN}.c_gdip_create_pen_l */
EIF_TYPED_VALUE F614_11267 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x)
{
	GTCX
	char *l_feature_name = "c_gdip_create_pen_l";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i8
#define arg3 arg3x.it_r4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REAL_32 tr4_1;
	EIF_BOOLEAN tb1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_p = * (EIF_INTEGER_32* *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_r4 = * (EIF_REAL_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i8 = * (EIF_INTEGER_64 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT64,&arg2);
	RTLU(SK_REAL32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_POINTER,&arg5);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 613, Current, 0, 5, 13989);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(613, Current, 13989);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdiplus_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(613, 29, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_width_valid", EX_PRE);
		tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
		RTTE((EIF_BOOLEAN) (arg3 > tr4_1), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_unit_valid", EX_PRE);
		tr1 = RTLN(51);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(51, 26, Dtype(tr1)))(tr1);
		RTNHOOK(3,1);
		ui4_1 = arg4;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(51, 39, "is_valid", tr1))(tr1, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F614_11267 ((EIF_POINTER) arg1, (EIF_INTEGER_64) arg2, (EIF_REAL_32) arg3, (EIF_INTEGER_32) arg4, (EIF_INTEGER_32*) arg5);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef ui4_1
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_GDIP_PEN}.c_gdip_delete_pen */
void F614_11268 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "c_gdip_delete_pen";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_p
	EIF_POINTER tp1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_INTEGER_32* *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 613, Current, 0, 3, 13990);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(613, Current, 13990);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdiplus_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(613, 29, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_pen_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(613, 29, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg2 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	inline_F614_11268 ((EIF_POINTER) arg1, (EIF_POINTER) arg2, (EIF_INTEGER_32*) arg3);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(5);
	RTEE;
#undef arg3
#undef arg2
#undef arg1
}

void EIF_Minit614 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
