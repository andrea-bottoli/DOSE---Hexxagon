/*
 * Code for class WEL_GDIP_STRING_FORMAT
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F615_11269(EIF_REFERENCE);
extern void F615_11270(EIF_REFERENCE);
extern EIF_TYPED_VALUE F615_11271(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F615_11272(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit615(void);

#ifdef __cplusplus
}
#endif

#include "wel_gdi_plus.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F615_11271
static EIF_POINTER inline_F615_11271 (EIF_POINTER arg1, EIF_INTEGER_32* arg2)
{
	{
	static FARPROC GdipStringFormatGetGenericDefault = NULL;
	GpStringFormat *l_result = NULL;
	*(EIF_INTEGER *) arg2 = 1;
	
	if (!GdipStringFormatGetGenericDefault) {
		GdipStringFormatGetGenericDefault = GetProcAddress ((HMODULE) arg1, "GdipStringFormatGetGenericDefault");
	}
	if (GdipStringFormatGetGenericDefault) {
		*(EIF_INTEGER *) arg2 = (FUNCTION_CAST_TYPE (GpStatus, WINGDIPAPI, (GpStringFormat  **)) GdipStringFormatGetGenericDefault)
					((GpStringFormat  **) &l_result);
	}
	return (EIF_POINTER) l_result;
}
	;
}
#define INLINE_F615_11271
#endif
#ifndef INLINE_F615_11272
static EIF_INTEGER_32 inline_F615_11272 (EIF_POINTER arg1, EIF_POINTER arg2)
{
	{
	static FARPROC GdipDeleteStringFormat = NULL;
	EIF_INTEGER Result = 1;
	
	if (!GdipDeleteStringFormat) {
		GdipDeleteStringFormat = GetProcAddress ((HMODULE) arg1, "GdipDeleteStringFormat");
	}
	if (GdipDeleteStringFormat) {
		Result = (EIF_INTEGER) (FUNCTION_CAST_TYPE (GpStatus, WINGDIPAPI, (GpStringFormat  *)) GdipDeleteStringFormat)
					((GpStringFormat  *) arg2);
	}
	return Result;
}
	;
}
#define INLINE_F615_11272
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_GDIP_STRING_FORMAT}.make */
void F615_11269 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_POINTER tp1;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 614, Current, 1, 0, 13991);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(614, Current, 13991);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(614, 42, dtype))(Current);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 614, 33, 0x40000000, 1); /* item */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(614, 44, dtype));
	up1 = tp1;
	up2 = (EIF_INTEGER_32 *) &(loc1);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(614, 50, dtype))(Current, up1x, up2x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(614, 33, dtype)) = (EIF_POINTER) tp1;
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
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
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
}

/* {WEL_GDIP_STRING_FORMAT}.destroy_item */
void F615_11270 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "destroy_item";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
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
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 614, Current, 2, 0, 13992);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(614, Current, 13992);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(614, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_CHECK) {
		RTHOOK(2);
		RTCT("item_valid", EX_CHECK);
		tp1 = *(EIF_POINTER *)(Current + RTWA(614, 33, dtype));
		tp2 = *(EIF_POINTER *)(Current + RTWA(614, 44, dtype));
		if ((!((EIF_BOOLEAN)(tp1 != loc1)) || ((EIF_BOOLEAN)(tp2 != loc1)))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(3);
	tp1 = *(EIF_POINTER *)(Current + RTWA(614, 44, dtype));
	if ((EIF_BOOLEAN)(tp1 != loc1)) {
		RTHOOK(4);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		tp1 = *(EIF_POINTER *)(Current + RTWA(614, 44, dtype));
		up1 = tp1;
		tp2 = *(EIF_POINTER *)(Current + RTWA(614, 33, dtype));
		up2 = tp2;
		loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(614, 51, dtype))(Current, up1x, up2x)).it_i4);
		if (RTAL & CK_CHECK) {
			RTHOOK(5);
			RTCT("ok", EX_CHECK);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(53, 32, 53))(Current)).it_i4);
			if ((EIF_BOOLEAN)(loc2 == ti4_1)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(6);
		RTDBGAA(Current, dtype, 614, 33, 0x40000000, 1); /* item */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(614, 29, dtype))(Current)).it_p);
		*(EIF_POINTER *)(Current + RTWA(614, 33, dtype)) = (EIF_POINTER) tp1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef up2
}

/* {WEL_GDIP_STRING_FORMAT}.c_gdip_string_format_get_generic_default */
EIF_TYPED_VALUE F615_11271 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_gdip_string_format_get_generic_default";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_POINTER tp1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_INTEGER_32* *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 614, Current, 0, 2, 13993);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(614, Current, 13993);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdiplus_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(614, 29, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F615_11271 ((EIF_POINTER) arg1, (EIF_INTEGER_32*) arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef arg2
#undef arg1
}

/* {WEL_GDIP_STRING_FORMAT}.c_gdip_delete_string_format */
EIF_TYPED_VALUE F615_11272 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_gdip_delete_string_format";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_POINTER tp1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 614, Current, 0, 2, 13994);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(614, Current, 13994);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdiplus_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(614, 29, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F615_11272 ((EIF_POINTER) arg1, (EIF_POINTER) arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg2
#undef arg1
}

void EIF_Minit615 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
