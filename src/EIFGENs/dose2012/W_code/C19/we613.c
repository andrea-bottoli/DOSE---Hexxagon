/*
 * Code for class WEL_GDIP_GRAPHICS_PATH
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F613_11258(EIF_REFERENCE);
extern void F613_11259(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F613_11260(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F613_11261(EIF_REFERENCE);
extern EIF_TYPED_VALUE F613_11262(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F613_11263(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F613_11264(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit613(void);

#ifdef __cplusplus
}
#endif

#include "wel_gdi_plus.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F613_11262
static EIF_POINTER inline_F613_11262 (EIF_POINTER arg1, EIF_INTEGER_32 arg2, EIF_INTEGER_32* arg3)
{
	{
	static FARPROC GdipCreatePath = NULL;
	GpPath *l_result = NULL;
	*(EIF_INTEGER *) arg3 = 1;
	
	if (!GdipCreatePath) {
		GdipCreatePath = GetProcAddress ((HMODULE) arg1, "GdipCreatePath");
	}
	if (GdipCreatePath) {
		*(EIF_INTEGER *) arg3 = (FUNCTION_CAST_TYPE (GpStatus, WINGDIPAPI, (GpFillMode, GpPath **)) GdipCreatePath)
					((GpFillMode) arg2,
					(GpPath **) &l_result);
	}
	return (EIF_POINTER) l_result;
}
	;
}
#define INLINE_F613_11262
#endif
#ifndef INLINE_F613_11263
static EIF_POINTER inline_F613_11263 (EIF_POINTER arg1, EIF_POINTER arg2, EIF_POINTER arg3, EIF_INTEGER_32 arg4, EIF_INTEGER_32 arg5, EIF_INTEGER_32* arg6)
{
	{
				static FARPROC GdipCreatePath2I = NULL;							
				GpPath *l_result = NULL;
				*(EIF_INTEGER *) arg6 = 1;

				if (!GdipCreatePath2I) {
					GdipCreatePath2I = GetProcAddress ((HMODULE) arg1, "GdipCreatePath2I");
				}				
				
				if (GdipCreatePath2I) {
					*(EIF_INTEGER *) arg6 = (FUNCTION_CAST_TYPE (GpStatus, WINGDIPAPI, (GpPoint *, BYTE *, INT, GpFillMode, GpPath **)) GdipCreatePath2I)
								((GpPoint *) arg2,
								(BYTE *) arg3,
								(INT) arg4,
								(GpFillMode) arg5,
								(GpPath **) &l_result);
				}
				return (EIF_POINTER) l_result;
			}
	;
}
#define INLINE_F613_11263
#endif
#ifndef INLINE_F613_11264
static void inline_F613_11264 (EIF_POINTER arg1, EIF_POINTER arg2, EIF_INTEGER_32* arg3)
{
	{
	static FARPROC GdipDeletePath = NULL;
	*(EIF_INTEGER *) arg3 = 1;
	
	if (!GdipDeletePath) {
		GdipDeletePath = GetProcAddress ((HMODULE) arg1, "GdipDeletePath");
	}
	
	if (GdipDeletePath) {			
		*(EIF_INTEGER *) arg3 = (FUNCTION_CAST_TYPE (GpStatus, WINGDIPAPI, (GpPath *)) GdipDeletePath)
					((GpPath *) arg2);
	}					
}
	;
}
#define INLINE_F613_11264
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_GDIP_GRAPHICS_PATH}.make */
void F613_11258 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 612, Current, 0, 0, 13980);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(612, Current, 13980);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(23, 32, 23))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(612, 49, dtype))(Current, ui4_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef ui4_1
}

/* {WEL_GDIP_GRAPHICS_PATH}.make_with_fill_mode */
void F613_11259 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make_with_fill_mode";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 612, Current, 1, 1, 13981);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(612, Current, 13981);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid", EX_PRE);
		tr1 = RTLN(23);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(23, 26, Dtype(tr1)))(tr1);
		RTNHOOK(1,1);
		ui4_1 = arg1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(23, 34, "is_valid", tr1))(tr1, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(612, 42, dtype))(Current);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 612, 33, 0x40000000, 1); /* item */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(612, 44, dtype));
	up1 = tp1;
	ui4_1 = arg1;
	up2 = (EIF_INTEGER_32 *) &(loc1);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(612, 52, dtype))(Current, up1x, ui4_1x, up2x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(612, 33, dtype)) = (EIF_POINTER) tp1;
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
	RTLO(4);
	RTEE;
#undef up1
#undef up2
#undef ui4_1
#undef arg1
}

/* {WEL_GDIP_GRAPHICS_PATH}.make_with_points_bytes_fill_mode */
void F613_11260 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "make_with_points_bytes_fill_mode";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
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
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_POINTER tp3;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	
	RTLI(8);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,loc4);
	RTLR(5,loc2);
	RTLR(6,loc3);
	RTLR(7,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_INT32, &loc5);
	
	RTEAA(l_feature_name, 612, Current, 5, 3, 13982);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(612, Current, 13982);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {612,1242,22,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1242, typarr0)));
			RTCC(arg1, 612, l_feature_name, 1, typres0);
		}
	}
	if (arg2) {
		{
			static EIF_TYPE_INDEX typarr0[] = {612,1308,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1308, typarr0)));
			RTCC(arg2, 612, l_feature_name, 2, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_void", EX_PRE);
		RTTE((EIF_BOOLEAN) ((EIF_BOOLEAN)(arg1 != NULL) && (EIF_BOOLEAN)(arg2 != NULL)), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("count_equal", EX_PRE);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 97, "count", arg1))(arg1)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1308, 97, "count", arg2))(arg2)).it_i4);
		RTTE((EIF_BOOLEAN)(ti4_1 == ti4_2), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("type_valid", EX_PRE);
		tr1 = RTLN(21);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(21, 26, Dtype(tr1)))(tr1);
		RTNHOOK(3,1);
		ur1 = RTCCL(arg2);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(21, 41, "is_valid_array", tr1))(tr1, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	RTDBGAL(Current, 4, 0xF8000016, 0, 0); /* loc4 */
	
	tr1 = RTLN(22);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(22, 32, Dtype(tr1)))(tr1);
	RTNHOOK(4,1);
	loc4 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(22, 36, "structure_size", loc4))(loc4)).it_i4);
	loc5 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(6);
	RTDBGAL(Current, 2, 0xF800023B, 0, 0); /* loc2 */
	
	tr1 = RTLN(571);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 97, "count", arg1))(arg1)).it_i4);
	ui4_1 = (EIF_INTEGER_32) (ti4_1 * loc5);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(571, 81, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(6,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1242, 106, "start", arg1))(arg1);
	for (;;) {
		RTHOOK(8);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 66, "after", arg1))(arg1)).it_b);
		if (tb1) break;
		RTHOOK(9);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 80, "item", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(9,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(22, 37, "x", tr1))(tr1)).it_i4);
		ui4_1 = ti4_1;
		ti4_2 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1242, 85, "index", arg1));
		ui4_2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_2 - ((EIF_INTEGER_32) 1L)) * loc5);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(571, 114, "put_integer_32", loc2))(loc2, ui4_1x, ui4_2x);
		RTHOOK(10);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 80, "item", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(10,1);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(22, 38, "y", tr1))(tr1)).it_i4);
		ui4_1 = ti4_1;
		ti4_2 = *(EIF_INTEGER_32 *)(arg1 + RTVA(1242, 85, "index", arg1));
		ui4_2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_2 - ((EIF_INTEGER_32) 1L)) * loc5) + (EIF_INTEGER_32) (loc5 / ((EIF_INTEGER_32) 2L)));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(571, 114, "put_integer_32", loc2))(loc2, ui4_1x, ui4_2x);
		RTHOOK(11);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1242, 108, "forth", arg1))(arg1);
	}
	RTHOOK(12);
	RTDBGAL(Current, 3, 0xF800023B, 0, 0); /* loc3 */
	
	tr1 = RTLN(571);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1308, 97, "count", arg2))(arg2)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(571, 81, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(12,1);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(13);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1308, 106, "start", arg2))(arg2);
	for (;;) {
		RTHOOK(14);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1308, 66, "after", arg2))(arg2)).it_b);
		if (tb2) break;
		RTHOOK(15);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1308, 80, "item", arg2))(arg2)).it_i4);
		RTNHOOK(15,1);
		tu1_1 = (EIF_NATURAL_8) ti4_1;
		uu1_1 = tu1_1;
		ti4_1 = *(EIF_INTEGER_32 *)(arg2 + RTVA(1308, 85, "index", arg2));
		ui4_1 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(571, 108, "put_natural_8", loc3))(loc3, uu1_1x, ui4_1x);
		RTHOOK(16);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1308, 108, "forth", arg2))(arg2);
	}
	RTHOOK(17);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(612, 42, dtype))(Current);
	RTHOOK(18);
	RTDBGAA(Current, dtype, 612, 33, 0x40000000, 1); /* item */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(612, 44, dtype));
	up1 = tp1;
	tp2 = *(EIF_POINTER *)(loc2 + RTVA(571, 87, "item", loc2));
	up2 = tp2;
	tp3 = *(EIF_POINTER *)(loc3 + RTVA(571, 87, "item", loc3));
	up3 = tp3;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 97, "count", arg1))(arg1)).it_i4);
	ui4_1 = ti4_1;
	ui4_2 = arg3;
	up4 = (EIF_INTEGER_32 *) &(loc1);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(612, 53, dtype))(Current, up1x, up2x, up3x, ui4_1x, ui4_2x, up4x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(612, 33, dtype)) = (EIF_POINTER) tp1;
	if (RTAL & CK_CHECK) {
		RTHOOK(19);
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
	RTHOOK(20);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef up4
#undef ur1
#undef ui4_1
#undef ui4_2
#undef uu1_1
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_GDIP_GRAPHICS_PATH}.destroy_item */
void F613_11261 (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 612, Current, 1, 0, 13983);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(612, Current, 13983);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(612, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tp1 = *(EIF_POINTER *)(Current + RTWA(612, 33, dtype));
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(612, 29, dtype))(Current)).it_p);
	if ((EIF_BOOLEAN)(tp1 != tp2)) {
		RTHOOK(3);
		tp1 = *(EIF_POINTER *)(Current + RTWA(612, 44, dtype));
		up1 = tp1;
		tp2 = *(EIF_POINTER *)(Current + RTWA(612, 33, dtype));
		up2 = tp2;
		up3 = (EIF_INTEGER_32 *) &(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(612, 54, dtype))(Current, up1x, up2x, up3x);
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
		RTDBGAA(Current, dtype, 612, 33, 0x40000000, 1); /* item */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(612, 29, dtype))(Current)).it_p);
		*(EIF_POINTER *)(Current + RTWA(612, 33, dtype)) = (EIF_POINTER) tp1;
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

/* {WEL_GDIP_GRAPHICS_PATH}.c_gdip_create_path */
EIF_TYPED_VALUE F613_11262 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "c_gdip_create_path";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_INTEGER_32* *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 612, Current, 0, 3, 13984);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(612, Current, 13984);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdiplus_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(612, 29, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid", EX_PRE);
		tr1 = RTLN(23);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(23, 26, Dtype(tr1)))(tr1);
		RTNHOOK(2,1);
		ui4_1 = arg2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(23, 34, "is_valid", tr1))(tr1, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F613_11262 ((EIF_POINTER) arg1, (EIF_INTEGER_32) arg2, (EIF_INTEGER_32*) arg3);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef ui4_1
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_GDIP_GRAPHICS_PATH}.c_gdip_create_path_2_i */
EIF_TYPED_VALUE F613_11263 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x)
{
	GTCX
	char *l_feature_name = "c_gdip_create_path_2_i";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_p
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_i4
#define arg6 arg6x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_p = * (EIF_INTEGER_32* *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_i4 = * (EIF_INTEGER_32 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_INT32,&arg5);
	RTLU(SK_POINTER,&arg6);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 612, Current, 0, 6, 13985);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(612, Current, 13985);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdiplus_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(612, 29, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid", EX_PRE);
		tr1 = RTLN(23);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(23, 26, Dtype(tr1)))(tr1);
		RTNHOOK(2,1);
		ui4_1 = arg5;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(23, 34, "is_valid", tr1))(tr1, ui4_1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F613_11263 ((EIF_POINTER) arg1, (EIF_POINTER) arg2, (EIF_POINTER) arg3, (EIF_INTEGER_32) arg4, (EIF_INTEGER_32) arg5, (EIF_INTEGER_32*) arg6);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(8);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef ui4_1
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_GDIP_GRAPHICS_PATH}.c_gdip_delete_path */
void F613_11264 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "c_gdip_delete_path";
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
	
	RTEAA(l_feature_name, 612, Current, 0, 3, 13986);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(612, Current, 13986);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdiplus_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(612, 29, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_graphics_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(612, 29, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg2 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	inline_F613_11264 ((EIF_POINTER) arg1, (EIF_POINTER) arg2, (EIF_INTEGER_32*) arg3);
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

void EIF_Minit613 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
