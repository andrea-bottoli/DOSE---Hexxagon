/*
 * Code for class WEL_GDIP_IMAGE_ENCODER_PARAMETER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F10_1725(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F10_1726(EIF_REFERENCE);
extern void F10_1727(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F10_1728(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F10_1729(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F10_1730(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F10_1731(EIF_REFERENCE);
extern EIF_TYPED_VALUE F10_1732(EIF_REFERENCE);
extern EIF_TYPED_VALUE F10_1733(EIF_REFERENCE);
extern EIF_TYPED_VALUE F10_1734(EIF_REFERENCE);
extern EIF_TYPED_VALUE F10_1735(EIF_REFERENCE);
extern EIF_TYPED_VALUE F10_1736(EIF_REFERENCE);
extern EIF_TYPED_VALUE F10_1737(EIF_REFERENCE);
extern EIF_TYPED_VALUE F10_1738(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F10_1739(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F10_1740(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F10_1741(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F10_1742(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F10_1743(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F10_1744(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F10_1745(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit10(void);

#ifdef __cplusplus
}
#endif

#include <wel_gdi_plus.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F10_1735
static EIF_INTEGER_32 inline_F10_1735 (void)
{
	return (EIF_INTEGER_32) (sizeof (ImageEncoderParameter))
	;
}
#define INLINE_F10_1735
#endif
#ifndef INLINE_F10_1738
static EIF_POINTER inline_F10_1738 (EIF_POINTER arg1)
{
	return (EIF_POINTER) &(((ImageEncoderParameter *)arg1)->Guid);
	;
}
#define INLINE_F10_1738
#endif
#ifndef INLINE_F10_1739
static void inline_F10_1739 (EIF_POINTER arg1, EIF_POINTER arg2)
{
	((ImageEncoderParameter *)arg1)->Guid = * ((GUID *)arg2);
	;
}
#define INLINE_F10_1739
#endif
#ifndef INLINE_F10_1740
static EIF_NATURAL_64 inline_F10_1740 (EIF_POINTER arg1)
{
	return (EIF_NATURAL_64) ((ImageEncoderParameter *)arg1)->NumberOfValues;
	;
}
#define INLINE_F10_1740
#endif
#ifndef INLINE_F10_1741
static void inline_F10_1741 (EIF_POINTER arg1, EIF_NATURAL_64 arg2)
{
	((ImageEncoderParameter *)arg1)->NumberOfValues = (ULONG)arg2;
	;
}
#define INLINE_F10_1741
#endif
#ifndef INLINE_F10_1742
static EIF_NATURAL_64 inline_F10_1742 (EIF_POINTER arg1)
{
	return (EIF_NATURAL_64) ((ImageEncoderParameter *)arg1)->Type;
	;
}
#define INLINE_F10_1742
#endif
#ifndef INLINE_F10_1743
static void inline_F10_1743 (EIF_POINTER arg1, EIF_NATURAL_64 arg2)
{
	((ImageEncoderParameter *)arg1)->Type = (ULONG)arg2;
	;
}
#define INLINE_F10_1743
#endif
#ifndef INLINE_F10_1744
static EIF_POINTER inline_F10_1744 (EIF_POINTER arg1)
{
	return (EIF_POINTER) ((ImageEncoderParameter *)arg1)->Value;
	;
}
#define INLINE_F10_1744
#endif
#ifndef INLINE_F10_1745
static void inline_F10_1745 (EIF_POINTER arg1, EIF_POINTER arg2)
{
	((ImageEncoderParameter *)arg1)->Value = arg2;
	;
}
#define INLINE_F10_1745
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.make */
void F10_1725 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_n8
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_NATURAL_64 tu8_1;
	EIF_NATURAL_64 tu8_2;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_n8 = * (EIF_NATURAL_64 *) arg2x.it_r;
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,tr2);
	RTLR(4,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_UINT64,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 2, 1613);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(9, Current, 1613);
	if (arg1) {
		RTCC(arg1, 9, l_feature_name, 1, 39);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_guid_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid", EX_PRE);
		tr1 = RTLN(17);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(2,1);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(17, 50, "is_valid", tr1))(tr1, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("valid_for_quality", EX_PRE);
		tb1 = '\01';
		tr1 = RTLN(17);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(3,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(17, 45, "quality", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr2);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		if (tb2) {
			tb2 = '\0';
			tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 0L);
			if ((EIF_BOOLEAN) (tu8_1 <= arg2)) {
				tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 100L);
				tb2 = (EIF_BOOLEAN) (arg2 <= tu8_1);
			}
			tb1 = tb2;
		}
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 9, 33, 0xF800023B, 0); /* item */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(9, 33, Current)));
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 42, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(571, 81, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(4,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(9, 33, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(9, 34, dtype))(Current, ur1x);
	RTHOOK(6);
	tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 4L);
	uu8_1 = tu8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(9, 35, dtype))(Current, uu8_1x);
	RTHOOK(7);
	tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 1L);
	uu8_1 = tu8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(9, 36, dtype))(Current, uu8_1x);
	RTHOOK(8);
	uu8_1 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(9, 37, dtype))(Current, uu8_1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(9);
		RTCT("set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 38, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(9,1);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", tr1))(tr1, ur1x)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("set", EX_POST);
		tu8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 39, dtype))(Current)).it_n8);
		if ((EIF_BOOLEAN)(tu8_1 == arg2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(11);
		RTCT("set", EX_POST);
		tu8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 40, dtype))(Current)).it_n8);
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 4L);
		if ((EIF_BOOLEAN)(tu8_1 == tu8_2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(12);
		RTCT("set", EX_POST);
		tu8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 41, dtype))(Current)).it_n8);
		tu8_2 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 1L);
		if ((EIF_BOOLEAN)(tu8_1 == tu8_2)) {
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
	RTLO(4);
	RTEE;
#undef up1
#undef ur1
#undef uu8_1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.item */
EIF_TYPED_VALUE F10_1726 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(9,33, Dtype(Current)));
	return r;
}


/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.set_guid */
void F10_1727 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_guid";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
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
	
	RTEAA(l_feature_name, 9, Current, 0, 1, 1615);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(9, Current, 1615);
	if (arg1) {
		RTCC(arg1, 9, l_feature_name, 1, 39);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_guid_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	tp1 = *(EIF_POINTER *)(tr1 + RTVA(571, 87, "item", tr1));
	up1 = tp1;
	tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(39, 42, "item", arg1))(arg1)).it_p);
	up2 = tp2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(9, 46, dtype))(Current, up1x, up2x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 38, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ur1 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", tr1))(tr1, ur1x)).it_b);
		if (tb1) {
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
#undef ur1
#undef arg1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.set_value_type */
void F10_1728 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_value_type";
	RTEX;
#define arg1 arg1x.it_n8
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_64 tu8_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n8 = * (EIF_NATURAL_64 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT64,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 1, 1616);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(9, Current, 1616);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tp1 = *(EIF_POINTER *)(tr1 + RTVA(571, 87, "item", tr1));
	up1 = tp1;
	uu8_1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(9, 50, dtype))(Current, up1x, uu8_1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("set", EX_POST);
		tu8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 40, dtype))(Current)).it_n8);
		if ((EIF_BOOLEAN)(tu8_1 == arg1)) {
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
	RTLO(3);
	RTEE;
#undef up1
#undef uu8_1
#undef arg1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.set_number_of_values */
void F10_1729 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_number_of_values";
	RTEX;
#define arg1 arg1x.it_n8
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_64 tu8_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n8 = * (EIF_NATURAL_64 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT64,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 1, 1617);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(9, Current, 1617);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tp1 = *(EIF_POINTER *)(tr1 + RTVA(571, 87, "item", tr1));
	up1 = tp1;
	uu8_1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(9, 48, dtype))(Current, up1x, uu8_1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("set", EX_POST);
		tu8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 41, dtype))(Current)).it_n8);
		if ((EIF_BOOLEAN)(tu8_1 == arg1)) {
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
	RTLO(3);
	RTEE;
#undef up1
#undef uu8_1
#undef arg1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.set_value */
void F10_1730 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_value";
	RTEX;
#define arg1 arg1x.it_n8
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_64 tu8_1;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n8 = * (EIF_NATURAL_64 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT64,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 1, 1618);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(9, Current, 1618);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 9, 43, 0xF800023B, 0); /* value_cache */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(9, 43, Current)));
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 44, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(571, 81, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(1,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(9, 43, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	uu8_1 = arg1;
	ui4_1 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(571, 111, "put_natural_64", tr1))(tr1, uu8_1x, ui4_1x);
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	tp1 = *(EIF_POINTER *)(tr1 + RTVA(571, 87, "item", tr1));
	up1 = tp1;
	tr1 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 43, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(3,2);
	tp2 = *(EIF_POINTER *)(tr1 + RTVA(571, 87, "item", tr1));
	up2 = tp2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(9, 52, dtype))(Current, up1x, up2x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("set", EX_POST);
		tu8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 39, dtype))(Current)).it_n8);
		if ((EIF_BOOLEAN)(tu8_1 == arg1)) {
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
#undef up1
#undef up2
#undef uu8_1
#undef ui4_1
#undef arg1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.guid */
EIF_TYPED_VALUE F10_1731 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "guid";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 0, 1619);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(9, Current, 1619);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tp1 = *(EIF_POINTER *)(tr2 + RTVA(571, 87, "item", tr2));
	up1 = tp1;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(9, 45, dtype))(Current, up1x)).it_p);
	up1 = tp1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(39, 32, Dtype(tr1)))(tr1, up1x);
	RTNHOOK(1,2);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.value */
EIF_TYPED_VALUE F10_1732 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "value";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_NATURAL_64 tu8_1;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_64 Result = ((EIF_NATURAL_64) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,loc2);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLR(3,Current);
	RTLR(4,tr2);
	RTLU (SK_UINT64, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 9, Current, 2, 0, 1620);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(9, Current, 1620);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF80001C8, 0, 0); /* loc2 */
	
	tr1 = RTLN(456);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(456, 26, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF800023B, 0, 0); /* loc1 */
	
	tr1 = RTLN(571);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	tp1 = *(EIF_POINTER *)(tr2 + RTVA(571, 87, "item", tr2));
	up1 = tp1;
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(9, 51, dtype))(Current, up1x)).it_p);
	up1 = tp1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 44, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(571, 83, Dtype(tr1)))(tr1, up1x, ui4_1x);
	RTNHOOK(2,2);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 0, 0x3C000000, 1,0); /* Result */
	
	ui4_1 = ((EIF_INTEGER_32) 0L);
	tu8_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(571, 95, "read_natural_64", loc1))(loc1, ui4_1x)).it_n8);
	Result = (EIF_NATURAL_64) tu8_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT64; r.it_n8 = Result; return r; }
#undef up1
#undef ui4_1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.value_type */
EIF_TYPED_VALUE F10_1733 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "value_type";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_64 Result = ((EIF_NATURAL_64) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_UINT64, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 0, 1621);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(9, Current, 1621);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x3C000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tp1 = *(EIF_POINTER *)(tr1 + RTVA(571, 87, "item", tr1));
	up1 = tp1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(9, 49, dtype))(Current, up1x)).it_n8);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT64; r.it_n8 = Result; return r; }
#undef up1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.number_of_values */
EIF_TYPED_VALUE F10_1734 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "number_of_values";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_64 Result = ((EIF_NATURAL_64) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_UINT64, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 0, 1622);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(9, Current, 1622);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x3C000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tp1 = *(EIF_POINTER *)(tr1 + RTVA(571, 87, "item", tr1));
	up1 = tp1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(9, 47, dtype))(Current, up1x)).it_n8);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT64; r.it_n8 = Result; return r; }
#undef up1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.size */
EIF_TYPED_VALUE F10_1735 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "size";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 0, 1623);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(9, Current, 1623);
	RTIV(Current, RTAL);
	Result = inline_F10_1735 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.value_cache */
EIF_TYPED_VALUE F10_1736 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(9,43, Dtype(Current)));
	return r;
}


/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.natural_64_byte */
EIF_TYPED_VALUE F10_1737 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 8L);
	return r;
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.c_guid */
EIF_TYPED_VALUE F10_1738 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_guid";
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
	
	RTEAA(l_feature_name, 9, Current, 0, 1, 1605);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(9, Current, 1605);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F10_1738 ((EIF_POINTER) arg1);
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

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.c_set_guid */
void F10_1739 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_set_guid";
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
	
	RTEAA(l_feature_name, 9, Current, 0, 2, 1606);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(9, Current, 1606);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	inline_F10_1739 ((EIF_POINTER) arg1, (EIF_POINTER) arg2);
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

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.c_number_of_values */
EIF_TYPED_VALUE F10_1740 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_number_of_values";
	RTEX;
#define arg1 arg1x.it_p
	EIF_POINTER tp1;
	EIF_NATURAL_64 Result = ((EIF_NATURAL_64) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT64, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 1, 1607);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(9, Current, 1607);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F10_1740 ((EIF_POINTER) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT64; r.it_n8 = Result; return r; }
#undef arg1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.c_set_number_of_values */
void F10_1741 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_set_number_of_values";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_n8
	EIF_POINTER tp1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_n8 = * (EIF_NATURAL_64 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_UINT64,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 2, 1608);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(9, Current, 1608);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	inline_F10_1741 ((EIF_POINTER) arg1, (EIF_NATURAL_64) arg2);
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

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.c_type */
EIF_TYPED_VALUE F10_1742 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_type";
	RTEX;
#define arg1 arg1x.it_p
	EIF_POINTER tp1;
	EIF_NATURAL_64 Result = ((EIF_NATURAL_64) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT64, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 1, 1609);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(9, Current, 1609);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F10_1742 ((EIF_POINTER) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT64; r.it_n8 = Result; return r; }
#undef arg1
}

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.c_set_type */
void F10_1743 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_set_type";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_n8
	EIF_POINTER tp1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_n8 = * (EIF_NATURAL_64 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_UINT64,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 9, Current, 0, 2, 1610);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(9, Current, 1610);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	inline_F10_1743 ((EIF_POINTER) arg1, (EIF_NATURAL_64) arg2);
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

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.c_value */
EIF_TYPED_VALUE F10_1744 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_value";
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
	
	RTEAA(l_feature_name, 9, Current, 0, 1, 1611);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(9, Current, 1611);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	Result = inline_F10_1744 ((EIF_POINTER) arg1);
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

/* {WEL_GDIP_IMAGE_ENCODER_PARAMETER}.c_set_value */
void F10_1745 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_set_value";
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
	
	RTEAA(l_feature_name, 9, Current, 0, 2, 1612);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 1);
	RTDBGEAA(9, Current, 1612);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(9, 30, dtype))(Current)).it_p);
		RTTE((EIF_BOOLEAN)(arg1 != tp1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	inline_F10_1745 ((EIF_POINTER) arg1, (EIF_POINTER) arg2);
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

void EIF_Minit10 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
