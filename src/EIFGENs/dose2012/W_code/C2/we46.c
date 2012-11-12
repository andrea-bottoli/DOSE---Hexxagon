/*
 * Code for class WEL_GDIP_STARTER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F46_2114(EIF_REFERENCE);
extern void F46_2115(EIF_REFERENCE);
extern EIF_TYPED_VALUE F46_2116(EIF_REFERENCE);
extern EIF_TYPED_VALUE F46_2117(EIF_REFERENCE);
extern EIF_TYPED_VALUE F46_2118(EIF_REFERENCE);
extern EIF_TYPED_VALUE F46_2119(EIF_REFERENCE);
extern EIF_TYPED_VALUE F46_2120(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F46_2121(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit46(void);

#ifdef __cplusplus
}
#endif

#include "wel_gdi_plus.h"
#include <windows.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F46_2119
static EIF_POINTER inline_F46_2119 (void)
{
	return (EIF_POINTER) LoadLibrary (L"gdiplus.dll");
	;
}
#define INLINE_F46_2119
#endif
#ifndef INLINE_F46_2120
static EIF_POINTER inline_F46_2120 (EIF_POINTER arg1)
{
	{
				GdiplusStartupInput gdiplusStartupInput = {1, NULL, FALSE, FALSE};
		   		ULONG_PTR gdiplusToken;
			  	FARPROC GdiplusStartup = NULL;
				HMODULE user32_module = (HMODULE) arg1;
				
				GdiplusStartup = GetProcAddress (user32_module, "GdiplusStartup");
				if (GdiplusStartup) {
					(FUNCTION_CAST_TYPE(GpStatus, WINAPI, (ULONG_PTR *, const GdiplusStartupInput *,  GdiplusStartupOutput *)) GdiplusStartup)					
								(&gdiplusToken, &gdiplusStartupInput, NULL);
				}
				return (EIF_POINTER) gdiplusToken;
   			}
	;
}
#define INLINE_F46_2120
#endif
#ifndef INLINE_F46_2121
static void inline_F46_2121 (EIF_POINTER arg1, EIF_POINTER arg2)
{
	{
  	FARPROC GdiplusShutdown = NULL;
	HMODULE user32_module = (HMODULE) arg1;
	GdiplusShutdown = GetProcAddress (user32_module, "GdiplusShutdown");
	if (GdiplusShutdown) {
		(FUNCTION_CAST_TYPE(void, WINAPI, (ULONG_PTR)) GdiplusShutdown) ((ULONG_PTR) arg2);
	}
}
	;
}
#define INLINE_F46_2121
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_GDIP_STARTER}.gdi_plus_init */
RTOID (F46_2114)
void F46_2114 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "gdi_plus_init";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_BOOLEAN tb1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
	RTOTDV(F46_2114);
	dtype = Dtype(Current);

	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	
	RTEAA(l_feature_name, 45, Current, 1, 0, 1990);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(45, Current, 1990);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 36, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0x40000000, 1, 0); /* loc1 */
		
		loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 35, dtype))(Current)).it_p);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef Result
}

/* {WEL_GDIP_STARTER}.gdi_plus_shutdown */
RTOID (F46_2115)
void F46_2115 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "gdi_plus_shutdown";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_BOOLEAN tb1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
	RTOTDV(F46_2115);
	dtype = Dtype(Current);

	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 45, Current, 0, 0, 1991);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(45, Current, 1991);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 36, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(2);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 34, dtype))(Current)).it_p);
		up1 = tp1;
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 35, dtype))(Current)).it_p);
		up2 = tp2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(45, 39, dtype))(Current, up1x, up2x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef up2
#undef Result
}

/* {WEL_GDIP_STARTER}.gdi_plus_handle */
RTOID (F46_2116)
EIF_TYPED_VALUE F46_2116 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "gdi_plus_handle";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRB(EIF_POINTER)
	RTOTDB(EIF_POINTER, F46_2116);

	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 45, Current, 0, 0, 1992);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(45, Current, 1992);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 37, Dtype(Current)))(Current)).it_p);
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef Result
}

/* {WEL_GDIP_STARTER}.gdi_plus_token */
RTOID (F46_2117)
EIF_TYPED_VALUE F46_2117 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "gdi_plus_token";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_BOOLEAN tb1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRB(EIF_POINTER)
	RTOTDB(EIF_POINTER, F46_2117);
	dtype = Dtype(Current);

	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 45, Current, 0, 0, 1993);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(45, Current, 1993);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 36, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(2);
		RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 34, dtype))(Current)).it_p);
		up1 = tp1;
		Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(45, 38, dtype))(Current, up1x)).it_p);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef up1
#undef Result
}

/* {WEL_GDIP_STARTER}.is_gdi_plus_installed */
EIF_TYPED_VALUE F46_2118 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_gdi_plus_installed";
	RTEX;
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 45, Current, 0, 0, 1994);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(45, Current, 1994);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 34, dtype))(Current)).it_p);
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 30, dtype))(Current)).it_p);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(tp1 != tp2);
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

/* {WEL_GDIP_STARTER}.c_load_gdip_dll */
EIF_TYPED_VALUE F46_2119 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "c_load_gdip_dll";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 45, Current, 0, 0, 1995);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(45, Current, 1995);
	RTIV(Current, RTAL);
	Result = inline_F46_2119 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
}

/* {WEL_GDIP_STARTER}.c_gdi_plus_startup */
EIF_TYPED_VALUE F46_2120 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_gdi_plus_startup";
	RTEX;
#define arg1 arg1x.it_p
	EIF_POINTER tp1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 45, Current, 0, 1, 1996);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(45, Current, 1996);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdiplus_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F46_2120 ((EIF_POINTER) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef arg1
}

/* {WEL_GDIP_STARTER}.c_gdi_plus_shutdown */
void F46_2121 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_gdi_plus_shutdown";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_POINTER tp1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 45, Current, 0, 2, 1997);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(45, Current, 1997);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdiplus_handle_not_null", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(45, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	inline_F46_2121 ((EIF_POINTER) arg1, (EIF_POINTER) arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
#undef arg2
#undef arg1
}

void EIF_Minit46 (void)
{
	GTCX
	RTOTS (2114,F46_2114)
	RTOTS (2115,F46_2115)
	RTOTS (2116,F46_2116)
	RTOTS (2117,F46_2117)
}


#ifdef __cplusplus
}
#endif
