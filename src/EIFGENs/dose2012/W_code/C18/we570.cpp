/*
 * Code for class WEL_COM_ISTREAM
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F570_10106(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F570_10107(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10108(EIF_REFERENCE);
extern EIF_TYPED_VALUE F570_10109(EIF_REFERENCE);
extern void F570_10110(EIF_REFERENCE);
extern void F570_10111(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10112(EIF_REFERENCE);
extern void F570_10113(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F570_10114(EIF_REFERENCE);
extern EIF_TYPED_VALUE F570_10115(EIF_REFERENCE);
extern EIF_TYPED_VALUE F570_10116(EIF_REFERENCE);
extern EIF_TYPED_VALUE F570_10117(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10118(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F570_10119(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10120(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10121(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10122(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10123(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10124(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10125(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F570_10126(EIF_REFERENCE);
extern EIF_TYPED_VALUE F570_10127(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F570_10128(EIF_REFERENCE);
extern EIF_TYPED_VALUE F570_10129(EIF_REFERENCE);
extern EIF_TYPED_VALUE F570_10130(EIF_REFERENCE);
extern void EIF_Minit570(void);

#ifdef __cplusplus
}
#endif

#include <Objidl.h>
#include <Shlwapi.h>
#include <windows.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F570_10117
static EIF_NATURAL_32 inline_F570_10117 (EIF_POINTER arg1, EIF_POINTER* arg2)
{
	{
	IStream **l_stream = (IStream **) arg2;
	return SHCreateStreamOnFileW ((const WCHAR *)arg1, STGM_READWRITE, l_stream);
}
	;
}
#define INLINE_F570_10117
#endif
#ifndef INLINE_F570_10118
static EIF_POINTER inline_F570_10118 (EIF_POINTER arg1, EIF_POINTER arg2, EIF_NATURAL_32 arg3)
{
	{
				typedef IStream* (__stdcall *tSHCreateMemStream)(const BYTE *, UINT);
				static tSHCreateMemStream pSHCreateMemStream = NULL;
				HMODULE hShlWapi = (HMODULE)arg1;
				IStream *Result = NULL;

				if ((!pSHCreateMemStream) && hShlWapi) {
					pSHCreateMemStream = (tSHCreateMemStream) GetProcAddress(hShlWapi, "SHCreateMemStream");
					if (!pSHCreateMemStream) {
						pSHCreateMemStream = (tSHCreateMemStream) GetProcAddress(hShlWapi, (LPCSTR) 12);
					}
				}
				if (pSHCreateMemStream) {
					return pSHCreateMemStream ((const BYTE *)arg2, (UINT)arg3);
				} else {
					return NULL;
				}
			}
	;
}
#define INLINE_F570_10118
#endif
#ifndef INLINE_F570_10119
static void inline_F570_10119 (EIF_POINTER arg1)
{
	{
	IStream *l_item = (IStream *)arg1;
	l_item->Release();
}
	;
}
#define INLINE_F570_10119
#endif
#ifndef INLINE_F570_10120
static EIF_NATURAL_32 inline_F570_10120 (EIF_POINTER arg1)
{
	{
	IStream *l_item = (IStream *)arg1;
	return l_item->Commit(STGC_DEFAULT);
}
	;
}
#define INLINE_F570_10120
#endif
#ifndef INLINE_F570_10121
static EIF_NATURAL_32 inline_F570_10121 (EIF_POINTER arg1, EIF_POINTER* arg2)
{
	{
	IStream *l_item = (IStream *)arg1;
	return l_item->Clone((IStream **)arg2);
}
	;
}
#define INLINE_F570_10121
#endif
#ifndef INLINE_F570_10122
static EIF_NATURAL_32 inline_F570_10122 (EIF_POINTER arg1, EIF_POINTER arg2, EIF_NATURAL_64 arg3, EIF_NATURAL_64* arg4, EIF_NATURAL_64* arg5)
{
	{
	HRESULT l_result;
	IStream *l_item = (IStream *)arg2;
	ULARGE_INTEGER l_cb;
	l_cb.QuadPart = (ULONGLONG) arg3;
	ULARGE_INTEGER l_pcbRead; 
	ULARGE_INTEGER l_pcbWritten;
	
	l_result = l_item->CopyTo((IStream *)l_item, l_cb, &l_pcbRead, &l_pcbWritten);
	
	*((ULONGLONG *)arg4) = l_pcbRead.QuadPart;
	*((ULONGLONG *)arg5) = l_pcbWritten.QuadPart;
	
	return l_result;
}
	;
}
#define INLINE_F570_10122
#endif
#ifndef INLINE_F570_10123
static EIF_NATURAL_32 inline_F570_10123 (EIF_POINTER arg1, EIF_NATURAL_64 arg2)
{
	{
	IStream *l_item = (IStream *)arg1;
	ULARGE_INTEGER libNewSize;
	libNewSize.QuadPart = (ULONGLONG) arg2;
	
	return l_item->SetSize(libNewSize);
}
	;
}
#define INLINE_F570_10123
#endif
#ifndef INLINE_F570_10124
static EIF_NATURAL_32 inline_F570_10124 (EIF_POINTER arg1, EIF_POINTER arg2)
{
	{
				IStream *l_item = (IStream *)arg1;
				STATSTG *l_pstatstg = (STATSTG *)arg2;

				return l_item->Stat(l_pstatstg, STATFLAG_DEFAULT);
			}
	;
}
#define INLINE_F570_10124
#endif
#ifndef INLINE_F570_10125
static EIF_NATURAL_32 inline_F570_10125 (EIF_POINTER arg1, EIF_POINTER arg2, EIF_NATURAL_32 arg3, EIF_NATURAL_32* arg4)
{
	{
				IStream *l_item = (IStream *)arg1;
				VOID *l_pointer_to_write = (VOID *)arg2;
				ULONG l_cb = (ULONG)arg3;
				ULONG l_pcbRead;
				HRESULT l_result;

				l_result = l_item->Read (l_pointer_to_write, l_cb, &l_pcbRead);
				*((EIF_NATURAL_32 *)arg4) = (EIF_NATURAL_32)l_pcbRead;

				return l_result;
			}
	;
}
#define INLINE_F570_10125
#endif
#ifndef INLINE_F570_10127
static EIF_NATURAL_32 inline_F570_10127 (EIF_POINTER arg1, EIF_INTEGER_64 arg2, EIF_NATURAL_32 arg3, EIF_NATURAL_64* arg4)
{
	{
	IStream *l_item = (IStream *)arg1;
	DWORD l_dwOrigin = (DWORD)arg3;
	LARGE_INTEGER l_dlibMove;
	HRESULT l_result;
	ULARGE_INTEGER l_plibNewPosition;
	
	l_dlibMove.QuadPart = (LONGLONG)arg2;
	
	l_result = l_item->Seek (l_dlibMove, l_dwOrigin, &l_plibNewPosition);
	
	*((ULONGLONG *)(arg4)) = l_plibNewPosition.QuadPart;
	
	return l_result;
}
	;
}
#define INLINE_F570_10127
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_COM_ISTREAM}.create_istream_from_file */
void F570_10106 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "create_istream_from_file";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_POINTER loc2 = (EIF_POINTER) 0;
	EIF_NATURAL_32 loc3 = (EIF_NATURAL_32) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_32 tu4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_POINTER, &loc2);
	RTLU(SK_UINT32, &loc3);
	
	RTEAA(l_feature_name, 569, Current, 3, 1, 12930);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(569, Current, 12930);
	if (arg1) {
		RTCC(arg1, 569, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF80001F7, 0, 0); /* loc1 */
	
	tr1 = RTLN(503);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 3, 0x38000000, 1, 0); /* loc3 */
	
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc1))(loc1)).it_p);
	up1 = tp1;
	up2 = (EIF_POINTER *) &(loc2);
	loc3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(569, 44, dtype))(Current, up1x, up2x)).it_n4);
	if (RTAL & CK_CHECK) {
		RTHOOK(4);
		RTCT(NULL, EX_CHECK);
		tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8, 32, 8))(Current)).it_n4);
		if ((EIF_BOOLEAN)(loc3 == tu4_1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(5);
	RTDBGAA(Current, dtype, 569, 35, 0x40000000, 1); /* item */
	
	*(EIF_POINTER *)(Current + RTWA(569, 35, dtype)) = (EIF_POINTER) loc2;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef arg1
}

/* {WEL_COM_ISTREAM}.create_istream_from_memory */
void F570_10107 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "create_istream_from_memory";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_n4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_n4 = * (EIF_NATURAL_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_UINT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 2, 12931);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(569, Current, 12931);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 569, 35, 0x40000000, 1); /* item */
	
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 42, dtype))(Current)).it_p);
	up1 = tp1;
	up2 = arg1;
	uu4_1 = arg2;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(569, 45, dtype))(Current, up1x, up2x, uu4_1x)).it_p);
	*(EIF_POINTER *)(Current + RTWA(569, 35, dtype)) = (EIF_POINTER) tp1;
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT("success", EX_CHECK);
		tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 30, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(tp1 != tp2)) {
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
	RTLO(4);
	RTEE;
#undef up1
#undef up2
#undef uu4_1
#undef arg2
#undef arg1
}

/* {WEL_COM_ISTREAM}.item */
EIF_TYPED_VALUE F570_10108 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(569,35, Dtype(Current)));
	return r;
}


/* {WEL_COM_ISTREAM}.stat */
EIF_TYPED_VALUE F570_10109 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "stat";
	RTEX;
	EIF_NATURAL_32 loc1 = (EIF_NATURAL_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT32, &loc1);
	
	RTEAA(l_feature_name, 569, Current, 1, 0, 12933);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(569, Current, 12933);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid", EX_PRE);
		tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(tp1 != tp2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000007, 0,0); /* Result */
	
	tr1 = RTLN(7);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(7, 32, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 1, 0x38000000, 1, 0); /* loc1 */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
	up1 = tp1;
	tr1 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(7, 35, "item", Result))(Result)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(3,1);
	tp2 = *(EIF_POINTER *)(tr1 + RTVA(571, 87, "item", tr1));
	up2 = tp2;
	loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(569, 51, dtype))(Current, up1x, up2x)).it_n4);
	if (RTAL & CK_CHECK) {
		RTHOOK(4);
		RTCT(NULL, EX_CHECK);
		tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8, 32, 8))(Current)).it_n4);
		if ((EIF_BOOLEAN)(loc1 == tu4_1)) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
}

/* {WEL_COM_ISTREAM}.commit */
void F570_10110 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "commit";
	RTEX;
	EIF_NATURAL_32 loc1 = (EIF_NATURAL_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_NATURAL_32 tu4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT32, &loc1);
	
	RTEAA(l_feature_name, 569, Current, 1, 0, 12934);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(569, Current, 12934);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 30, dtype))(Current)).it_p);
	if ((EIF_BOOLEAN)(tp1 != tp2)) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0x38000000, 1, 0); /* loc1 */
		
		tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
		up1 = tp1;
		loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(569, 47, dtype))(Current, up1x)).it_n4);
		if (RTAL & CK_CHECK) {
			RTHOOK(3);
			RTCT(NULL, EX_CHECK);
			tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8, 32, 8))(Current)).it_n4);
			if ((EIF_BOOLEAN)(loc1 == tu4_1)) {
				RTCK;
			} else {
				RTCF;
			}
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
}

/* {WEL_COM_ISTREAM}.set_size */
void F570_10111 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_size";
	RTEX;
	EIF_NATURAL_32 loc1 = (EIF_NATURAL_32) 0;
#define arg1 arg1x.it_n8
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_NATURAL_32 tu4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n8 = * (EIF_NATURAL_64 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT64,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT32, &loc1);
	
	RTEAA(l_feature_name, 569, Current, 1, 1, 12935);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(569, Current, 12935);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 30, dtype))(Current)).it_p);
	if ((EIF_BOOLEAN)(tp1 != tp2)) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0x38000000, 1, 0); /* loc1 */
		
		tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
		up1 = tp1;
		uu8_1 = arg1;
		loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(569, 50, dtype))(Current, up1x, uu8_1x)).it_n4);
		if (RTAL & CK_CHECK) {
			RTHOOK(3);
			RTCT(NULL, EX_CHECK);
			tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8, 32, 8))(Current)).it_n4);
			if ((EIF_BOOLEAN)(loc1 == tu4_1)) {
				RTCK;
			} else {
				RTCF;
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef uu8_1
#undef arg1
}

/* {WEL_COM_ISTREAM}.read_all */
EIF_TYPED_VALUE F570_10112 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "read_all";
	RTEX;
	EIF_NATURAL_64 loc1 = (EIF_NATURAL_64) 0;
	EIF_NATURAL_32 loc2 = (EIF_NATURAL_32) 0;
	EIF_NATURAL_32 loc3 = (EIF_NATURAL_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE ui8_1x = {0, SK_INT64};
#define ui8_1 ui8_1x.it_i8
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_64 ti8_1;
	EIF_NATURAL_64 tu8_1;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_32 tu4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT64, &loc1);
	RTLU(SK_UINT32, &loc2);
	RTLU(SK_UINT32, &loc3);
	
	RTEAA(l_feature_name, 569, Current, 3, 0, 12936);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(569, Current, 12936);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0x3C000000, 1, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tu8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(7, 34, "cb_size", tr1))(tr1)).it_n8);
	loc1 = (EIF_NATURAL_64) tu8_1;
	if (RTAL & CK_CHECK) {
		RTHOOK(2);
		RTCT("not_too_big", EX_CHECK);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(739, 43, 739))(Current)).it_i4);
		tu8_1 = (EIF_NATURAL_64) ti4_1;
		if ((EIF_BOOLEAN) (loc1 <= tu8_1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(3);
	RTDBGAL(Current, 0, 0xF800023B, 0,0); /* Result */
	
	tr1 = RTLN(571);
	ti4_1 = (EIF_INTEGER_32) loc1;
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(571, 81, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(3,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
	ui8_1 = ti8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(569, 40, dtype))(Current, ui8_1x);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0x38000000, 1, 0); /* loc2 */
	
	tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
	up1 = tp1;
	tp2 = *(EIF_POINTER *)(Result + RTVA(571, 87, "item", Result));
	up2 = tp2;
	tu4_1 = (EIF_NATURAL_32) loc1;
	uu4_1 = tu4_1;
	up3 = (EIF_NATURAL_32 *) &(loc3);
	loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(569, 52, dtype))(Current, up1x, up2x, uu4_1x, up3x)).it_n4);
	if (RTAL & CK_CHECK) {
		RTHOOK(6);
		RTCT(NULL, EX_CHECK);
		tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8, 32, 8))(Current)).it_n4);
		if ((EIF_BOOLEAN)(loc2 == tu4_1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	if (RTAL & CK_CHECK) {
		RTHOOK(7);
		RTCT(NULL, EX_CHECK);
		tu4_1 = (EIF_NATURAL_32) loc1;
		if ((EIF_BOOLEAN)(loc3 == tu4_1)) {
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
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef up3
#undef ui8_1
#undef ui4_1
#undef uu4_1
}

/* {WEL_COM_ISTREAM}.seek_from_beginning */
void F570_10113 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "seek_from_beginning";
	RTEX;
	EIF_NATURAL_64 loc1 = (EIF_NATURAL_64) 0;
	EIF_NATURAL_32 loc2 = (EIF_NATURAL_32) 0;
#define arg1 arg1x.it_i8
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui8_1x = {0, SK_INT64};
#define ui8_1 ui8_1x.it_i8
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_NATURAL_32 tu4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i8 = * (EIF_INTEGER_64 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT64,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT64, &loc1);
	RTLU(SK_UINT32, &loc2);
	
	RTEAA(l_feature_name, 569, Current, 2, 1, 12937);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(569, Current, 12937);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 30, dtype))(Current)).it_p);
	if ((EIF_BOOLEAN)(tp1 != tp2)) {
		RTHOOK(2);
		RTDBGAL(Current, 2, 0x38000000, 1, 0); /* loc2 */
		
		tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
		up1 = tp1;
		ui8_1 = arg1;
		tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 55, dtype))(Current)).it_n4);
		uu4_1 = tu4_1;
		up2 = (EIF_NATURAL_64 *) &(loc1);
		loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(569, 54, dtype))(Current, up1x, ui8_1x, uu4_1x, up2x)).it_n4);
		if (RTAL & CK_CHECK) {
			RTHOOK(3);
			RTCT(NULL, EX_CHECK);
			tu4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(8, 32, 8))(Current)).it_n4);
			if ((EIF_BOOLEAN)(loc2 == tu4_1)) {
				RTCK;
			} else {
				RTCF;
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef up2
#undef ui8_1
#undef uu4_1
#undef arg1
}

/* {WEL_COM_ISTREAM}.dispose */
void F570_10114 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "dispose";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 0, 12938);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(569, Current, 12938);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 30, dtype))(Current)).it_p);
	if ((EIF_BOOLEAN)(tp1 != tp2)) {
		RTHOOK(2);
		tp1 = *(EIF_POINTER *)(Current + RTWA(569, 35, dtype));
		up1 = tp1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(569, 46, dtype))(Current, up1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
}

/* {WEL_COM_ISTREAM}.shlwapi_handle */
EIF_TYPED_VALUE F570_10115 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "shlwapi_handle";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 569, Current, 1, 0, 12939);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(569, Current, 12939);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000255, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(569, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc1 == NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF8000255, 0, 0); /* loc1 */
		
		tr1 = RTLN(597);
		tr2 = RTMS_EX_H("shlwapi.dll",11,1718638956);
		ur1 = tr2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(597, 43, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(3,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(4);
		RTDBGAA(Current, dtype, 569, 43, 0xF8000255, 0); /* shlwapi_dll */
		
		RTAR(Current, loc1);
		*(EIF_REFERENCE *)(Current + RTWA(569, 43, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
	}
	RTHOOK(5);
	RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
	
	tp1 = *(EIF_POINTER *)(loc1 + RTVA(597, 34, "item", loc1));
	Result = (EIF_POINTER) tp1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef up1
#undef ur1
}

/* {WEL_COM_ISTREAM}.shlwapi_dll */
EIF_TYPED_VALUE F570_10116 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(569,43, Dtype(Current)));
	return r;
}


/* {WEL_COM_ISTREAM}.c_sh_create_stream_on_file */
EIF_TYPED_VALUE F570_10117 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_sh_create_stream_on_file";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER* *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 2, 12941);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12941);
	RTIV(Current, RTAL);
	Result = inline_F570_10117 ((EIF_POINTER) arg1, (EIF_POINTER*) arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
#undef arg2
#undef arg1
}

/* {WEL_COM_ISTREAM}.c_sh_create_mem_stream */
EIF_TYPED_VALUE F570_10118 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "c_sh_create_mem_stream";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_n4
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_n4 = * (EIF_NATURAL_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_UINT32,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 3, 12942);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12942);
	RTIV(Current, RTAL);
	Result = inline_F570_10118 ((EIF_POINTER) arg1, (EIF_POINTER) arg2, (EIF_NATURAL_32) arg3);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_COM_ISTREAM}.c_release */
void F570_10119 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_release";
	RTEX;
#define arg1 arg1x.it_p
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 1, 12943);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12943);
	RTIV(Current, RTAL);
	inline_F570_10119 ((EIF_POINTER) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {WEL_COM_ISTREAM}.c_commit */
EIF_TYPED_VALUE F570_10120 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_commit";
	RTEX;
#define arg1 arg1x.it_p
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 1, 12944);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12944);
	RTIV(Current, RTAL);
	Result = inline_F570_10120 ((EIF_POINTER) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
#undef arg1
}

/* {WEL_COM_ISTREAM}.c_clone */
EIF_TYPED_VALUE F570_10121 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_clone";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER* *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 2, 12945);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12945);
	RTIV(Current, RTAL);
	Result = inline_F570_10121 ((EIF_POINTER) arg1, (EIF_POINTER*) arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
#undef arg2
#undef arg1
}

/* {WEL_COM_ISTREAM}.c_copy_to */
EIF_TYPED_VALUE F570_10122 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x)
{
	GTCX
	char *l_feature_name = "c_copy_to";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_n8
#define arg4 arg4x.it_p
#define arg5 arg5x.it_p
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_p = * (EIF_NATURAL_64* *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_NATURAL_64* *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_n8 = * (EIF_NATURAL_64 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_UINT64,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU(SK_POINTER,&arg5);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 5, 12946);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12946);
	RTIV(Current, RTAL);
	Result = inline_F570_10122 ((EIF_POINTER) arg1, (EIF_POINTER) arg2, (EIF_NATURAL_64) arg3, (EIF_NATURAL_64*) arg4, (EIF_NATURAL_64*) arg5);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_COM_ISTREAM}.c_set_size */
EIF_TYPED_VALUE F570_10123 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_set_size";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_n8
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_n8 = * (EIF_NATURAL_64 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_UINT64,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 2, 12947);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12947);
	RTIV(Current, RTAL);
	Result = inline_F570_10123 ((EIF_POINTER) arg1, (EIF_NATURAL_64) arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
#undef arg2
#undef arg1
}

/* {WEL_COM_ISTREAM}.c_stat */
EIF_TYPED_VALUE F570_10124 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_stat";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 2, 12948);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12948);
	RTIV(Current, RTAL);
	Result = inline_F570_10124 ((EIF_POINTER) arg1, (EIF_POINTER) arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
#undef arg2
#undef arg1
}

/* {WEL_COM_ISTREAM}.c_read */
EIF_TYPED_VALUE F570_10125 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "c_read";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_n4
#define arg4 arg4x.it_p
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_NATURAL_32* *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_n4 = * (EIF_NATURAL_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_UINT32,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 4, 12949);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12949);
	RTIV(Current, RTAL);
	Result = inline_F570_10125 ((EIF_POINTER) arg1, (EIF_POINTER) arg2, (EIF_NATURAL_32) arg3, (EIF_NATURAL_32*) arg4);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_COM_ISTREAM}.c_istream_write */
void F570_10126 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "c_istream_write";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 0, 12950);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(569, Current, 12950);
	RTIV(Current, RTAL);
	if (RTAL & CK_CHECK) {
		RTHOOK(1);
		RTCT("not_implemented", EX_CHECK);
			RTCF;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {WEL_COM_ISTREAM}.c_seek */
EIF_TYPED_VALUE F570_10127 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "c_seek";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i8
#define arg3 arg3x.it_n4
#define arg4 arg4x.it_p
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_NATURAL_64* *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_n4 = * (EIF_NATURAL_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i8 = * (EIF_INTEGER_64 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT64,&arg2);
	RTLU(SK_UINT32,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 569, Current, 0, 4, 12951);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(569, Current, 12951);
	RTIV(Current, RTAL);
	Result = inline_F570_10127 ((EIF_POINTER) arg1, (EIF_INTEGER_64) arg2, (EIF_NATURAL_32) arg3, (EIF_NATURAL_64*) arg4);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_COM_ISTREAM}.stream_seek_set */
EIF_TYPED_VALUE F570_10128 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_UINT32;
	r.it_n4 = (EIF_NATURAL_32) ((EIF_NATURAL_32) 0U);
	return r;
}

/* {WEL_COM_ISTREAM}.stream_seek_cur */
EIF_TYPED_VALUE F570_10129 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_UINT32;
	r.it_n4 = (EIF_NATURAL_32) ((EIF_NATURAL_32) 1U);
	return r;
}

/* {WEL_COM_ISTREAM}.stream_seek_end */
EIF_TYPED_VALUE F570_10130 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_UINT32;
	r.it_n4 = (EIF_NATURAL_32) ((EIF_NATURAL_32) 2U);
	return r;
}

void EIF_Minit570 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
