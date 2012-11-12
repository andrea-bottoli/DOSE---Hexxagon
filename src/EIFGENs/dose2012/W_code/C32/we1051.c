/*
 * Code for class WEL_MESSAGE_INFORMATION
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1051_19101(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1051_19102(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1051_19103(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1051_19104(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1051_19105(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1051_19106(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1051_19107(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit1051(void);

#ifdef __cplusplus
}
#endif

#include <windows.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F1051_19106
static EIF_INTEGER_32 inline_F1051_19106 (EIF_POINTER arg1)
{
	return (EIF_INTEGER_32) (((int)(short)LOWORD(arg1)))
	;
}
#define INLINE_F1051_19106
#endif
#ifndef INLINE_F1051_19107
static EIF_INTEGER_32 inline_F1051_19107 (EIF_POINTER arg1)
{
	return (EIF_INTEGER_32) (((int)(short)HIWORD(arg1)))
	;
}
#define INLINE_F1051_19107
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_MESSAGE_INFORMATION}.make */
void F1051_19101 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_p
#define arg4 arg4x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_POINTER *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1050, Current, 0, 4, 23170);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1050, Current, 23170);
	if (arg1) {
		RTCC(arg1, 1050, l_feature_name, 1, 1106);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1050, 39, 0xF8000452, 0); /* window */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1050, 39, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1050, 40, 0x10000000, 1); /* message */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1050, 40, dtype)) = (EIF_INTEGER_32) arg2;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1050, 41, 0x40000000, 1); /* w_param */
	
	*(EIF_POINTER *)(Current + RTWA(1050, 41, dtype)) = (EIF_POINTER) arg3;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1050, 42, 0x40000000, 1); /* l_param */
	
	*(EIF_POINTER *)(Current + RTWA(1050, 42, dtype)) = (EIF_POINTER) arg4;
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("window_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1050, 39, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(6);
		RTCT("message_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1050, 40, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(7);
		RTCT("w_param_set", EX_POST);
		tp1 = *(EIF_POINTER *)(Current + RTWA(1050, 41, dtype));
		if ((EIF_BOOLEAN)(tp1 == arg3)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("l_param_set", EX_POST);
		tp1 = *(EIF_POINTER *)(Current + RTWA(1050, 42, dtype));
		if ((EIF_BOOLEAN)(tp1 == arg4)) {
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
	RTLO(6);
	RTEE;
#undef up1
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_MESSAGE_INFORMATION}.window */
EIF_TYPED_VALUE F1051_19102 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1050,39, Dtype(Current)));
	return r;
}


/* {WEL_MESSAGE_INFORMATION}.message */
EIF_TYPED_VALUE F1051_19103 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1050,40, Dtype(Current)));
	return r;
}


/* {WEL_MESSAGE_INFORMATION}.w_param */
EIF_TYPED_VALUE F1051_19104 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1050,41, Dtype(Current)));
	return r;
}


/* {WEL_MESSAGE_INFORMATION}.l_param */
EIF_TYPED_VALUE F1051_19105 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1050,42, Dtype(Current)));
	return r;
}


/* {WEL_MESSAGE_INFORMATION}.x_position_from_lparam */
EIF_TYPED_VALUE F1051_19106 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "x_position_from_lparam";
	RTEX;
#define arg1 arg1x.it_p
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1050, Current, 0, 1, 23175);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1050, Current, 23175);
	RTIV(Current, RTAL);
	Result = inline_F1051_19106 ((EIF_POINTER) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

/* {WEL_MESSAGE_INFORMATION}.y_position_from_lparam */
EIF_TYPED_VALUE F1051_19107 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "y_position_from_lparam";
	RTEX;
#define arg1 arg1x.it_p
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1050, Current, 0, 1, 23176);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1050, Current, 23176);
	RTIV(Current, RTAL);
	Result = inline_F1051_19107 ((EIF_POINTER) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

void EIF_Minit1051 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
