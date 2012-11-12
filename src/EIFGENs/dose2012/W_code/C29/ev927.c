/*
 * Code for class EV_SIZEABLE_CONTAINER_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F927_17305(EIF_REFERENCE);
extern EIF_TYPED_VALUE F927_17306(EIF_REFERENCE);
extern EIF_TYPED_VALUE F927_17307(EIF_REFERENCE);
extern EIF_TYPED_VALUE F927_17308(EIF_REFERENCE);
extern EIF_TYPED_VALUE F927_17309(EIF_REFERENCE);
extern EIF_TYPED_VALUE F927_17310(EIF_REFERENCE);
extern EIF_TYPED_VALUE F927_17311(EIF_REFERENCE);
extern void F927_17312(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F927_17313(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F927_17314(EIF_REFERENCE);
extern EIF_TYPED_VALUE F927_17315(EIF_REFERENCE);
extern void F927_17316(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F927_17317(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F927_17318(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F927_17319(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit927(void);

#ifdef __cplusplus
}
#endif

#include "eif_helpers.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {EV_SIZEABLE_CONTAINER_IMP}.initialize_sizeable */
void F927_17305 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "initialize_sizeable";
	RTEX;
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
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
	
	RTEAA(l_feature_name, 926, Current, 0, 0, 21091);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(926, Current, 21091);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 926, 69, 0xF800003D, 0); /* child_cell */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(926, 69, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(61, 26, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(926, 69, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	ub1 = (EIF_BOOLEAN) 1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 85, dtype))(Current, ub1x);
	RTHOOK(3);
	ub1 = (EIF_BOOLEAN) 1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 86, dtype))(Current, ub1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef ub1
}

/* {EV_SIZEABLE_CONTAINER_IMP}.is_minwidth_recomputation_needed */
EIF_TYPED_VALUE F927_17306 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(926,79, Dtype(Current)));
	return r;
}


/* {EV_SIZEABLE_CONTAINER_IMP}.is_minheight_recomputation_needed */
EIF_TYPED_VALUE F927_17307 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(926,80, Dtype(Current)));
	return r;
}


/* {EV_SIZEABLE_CONTAINER_IMP}.is_notify_originator */
EIF_TYPED_VALUE F927_17308 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(926,81, Dtype(Current)));
	return r;
}


/* {EV_SIZEABLE_CONTAINER_IMP}.is_in_min_height */
EIF_TYPED_VALUE F927_17309 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(926,82, Dtype(Current)));
	return r;
}


/* {EV_SIZEABLE_CONTAINER_IMP}.is_in_min_width */
EIF_TYPED_VALUE F927_17310 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(926,83, Dtype(Current)));
	return r;
}


/* {EV_SIZEABLE_CONTAINER_IMP}.is_in_notify */
RTOID (F927_17311)
EIF_TYPED_VALUE F927_17311 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_in_notify";
	RTEX;
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F927_17311);

	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 926, Current, 0, 0, 21097);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(926, Current, 21097);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80005CC, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {926,1484,769,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1484, typarr0)));
		tr1 = RTLN(typres0);
	}
	ub1 = (EIF_BOOLEAN) 0;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1484, 33, Dtype(tr1)))(tr1, ub1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ub1
#undef Result
}

/* {EV_SIZEABLE_CONTAINER_IMP}.set_minwidth_recomputation_needed */
void F927_17312 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_minwidth_recomputation_needed";
	RTEX;
#define arg1 arg1x.it_b
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 926, Current, 0, 1, 21098);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(926, Current, 21098);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 926, 79, 0x04000000, 1); /* is_minwidth_recomputation_needed */
	
	*(EIF_BOOLEAN *)(Current + RTWA(926, 79, Dtype(Current))) = (EIF_BOOLEAN) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {EV_SIZEABLE_CONTAINER_IMP}.set_minheight_recomputation_needed */
void F927_17313 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_minheight_recomputation_needed";
	RTEX;
#define arg1 arg1x.it_b
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 926, Current, 0, 1, 21099);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(926, Current, 21099);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 926, 80, 0x04000000, 1); /* is_minheight_recomputation_needed */
	
	*(EIF_BOOLEAN *)(Current + RTWA(926, 80, Dtype(Current))) = (EIF_BOOLEAN) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {EV_SIZEABLE_CONTAINER_IMP}.minimum_width */
EIF_TYPED_VALUE F927_17314 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "minimum_width";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 926, Current, 0, 0, 21100);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(926, Current, 21100);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(926, 79, dtype));
	if (tb1) {
		RTHOOK(2);
		ub1 = (EIF_BOOLEAN) 0;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 85, dtype))(Current, ub1x);
		RTHOOK(3);
		RTDBGAA(Current, dtype, 926, 83, 0x04000000, 1); /* is_in_min_width */
		
		*(EIF_BOOLEAN *)(Current + RTWA(926, 83, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		RTHOOK(4);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(926, 80, dtype));
		if (tb1) {
			RTHOOK(5);
			ub1 = (EIF_BOOLEAN) 0;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 86, dtype))(Current, ub1x);
			RTHOOK(6);
			RTDBGAA(Current, dtype, 926, 82, 0x04000000, 1); /* is_in_min_height */
			
			*(EIF_BOOLEAN *)(Current + RTWA(926, 82, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(7);
			ub1 = (EIF_BOOLEAN) 0;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 96, dtype))(Current, ub1x);
		} else {
			RTHOOK(8);
			ub1 = (EIF_BOOLEAN) 0;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 94, dtype))(Current, ub1x);
		}
		RTHOOK(9);
		RTDBGAA(Current, dtype, 926, 82, 0x04000000, 1); /* is_in_min_height */
		
		*(EIF_BOOLEAN *)(Current + RTWA(926, 82, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
		RTHOOK(10);
		RTDBGAA(Current, dtype, 926, 83, 0x04000000, 1); /* is_in_min_width */
		
		*(EIF_BOOLEAN *)(Current + RTWA(926, 83, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	}
	RTHOOK(11);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(11,1);
	ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 36, "minimum_width", tr1));
	Result = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ub1
}

/* {EV_SIZEABLE_CONTAINER_IMP}.minimum_height */
EIF_TYPED_VALUE F927_17315 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "minimum_height";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 926, Current, 0, 0, 21101);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(926, Current, 21101);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(926, 80, dtype));
	if (tb1) {
		RTHOOK(2);
		ub1 = (EIF_BOOLEAN) 0;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 86, dtype))(Current, ub1x);
		RTHOOK(3);
		RTDBGAA(Current, dtype, 926, 82, 0x04000000, 1); /* is_in_min_height */
		
		*(EIF_BOOLEAN *)(Current + RTWA(926, 82, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		RTHOOK(4);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(926, 79, dtype));
		if (tb1) {
			RTHOOK(5);
			ub1 = (EIF_BOOLEAN) 0;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 85, dtype))(Current, ub1x);
			RTHOOK(6);
			RTDBGAA(Current, dtype, 926, 83, 0x04000000, 1); /* is_in_min_width */
			
			*(EIF_BOOLEAN *)(Current + RTWA(926, 83, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(7);
			ub1 = (EIF_BOOLEAN) 0;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 96, dtype))(Current, ub1x);
		} else {
			RTHOOK(8);
			ub1 = (EIF_BOOLEAN) 0;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 95, dtype))(Current, ub1x);
		}
		RTHOOK(9);
		RTDBGAA(Current, dtype, 926, 82, 0x04000000, 1); /* is_in_min_height */
		
		*(EIF_BOOLEAN *)(Current + RTWA(926, 82, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
		RTHOOK(10);
		RTDBGAA(Current, dtype, 926, 83, 0x04000000, 1); /* is_in_min_width */
		
		*(EIF_BOOLEAN *)(Current + RTWA(926, 83, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	}
	RTHOOK(11);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(11,1);
	ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 37, "minimum_height", tr1));
	Result = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ub1
}

/* {EV_SIZEABLE_CONTAINER_IMP}.ev_set_minimum_width */
void F927_17316 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "ev_set_minimum_width";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc4 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_b = * (EIF_BOOLEAN *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc3);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLR(5,loc5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_BOOL,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_BOOL, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 926, Current, 5, 2, 21102);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(926, Current, 21102);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_is_destroyed", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 34, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 36, "minimum_width", tr1));
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	if ((EIF_BOOLEAN)(loc1 != arg1)) {
		RTHOOK(4);
		ui4_1 = arg1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 66, dtype))(Current, ui4_1x);
		RTHOOK(5);
		RTDBGAL(Current, 3, 0xF800039E, 0, 0); /* loc3 */
		
		loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 97, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(6);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(loc3 != NULL)) {
			tb2 = '\01';
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 84, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(6,1);
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1484, 32, "item", tr1))(tr1)).it_b);
			if (!(EIF_BOOLEAN) !tb3) {
				tb3 = *(EIF_BOOLEAN *)(Current + RTWA(926, 81, dtype));
				tb2 = tb3;
			}
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(7);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 75, dtype))(Current)).it_i4);
			ui4_1 = ti4_1;
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(7,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(793, 35, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ur1 = RTCCL(tr2);
			ub1 = arg2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(926, 92, "notify_change", loc3))(loc3, ui4_1x, ur1x, ub1x);
			RTHOOK(8);
			RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
			
			loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
	}
	RTHOOK(9);
	RTDBGAL(Current, 5, 0xF8000493, 0, 0); /* loc5 */
	
	loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 93, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(10);
	tb1 = '\0';
	if ((EIF_BOOLEAN) !loc4) {
		tb2 = '\01';
		if (!arg2) {
			tb3 = '\0';
			if ((EIF_BOOLEAN)(loc5 != NULL)) {
				tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1171, 274, "is_displayed", loc5))(loc5)).it_b);
				tb3 = tb4;
			}
			tb2 = tb3;
		}
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(11);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(11,1);
		ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 34, "width", tr1));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(12);
		if ((EIF_BOOLEAN) (arg1 > loc2)) {
			RTHOOK(13);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 100, dtype))(Current)).it_i4);
			ui4_1 = ti4_1;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 101, dtype))(Current)).it_i4);
			ui4_2 = ti4_2;
			ui4_3 = arg1;
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(13,1);
			ti4_3 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 35, "height", tr1));
			ui4_4 = ti4_3;
			ub1 = (EIF_BOOLEAN) 1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(926, 71, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ub1x);
		} else {
			RTHOOK(14);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 47, dtype))(Current)).it_b);
			if (tb1) {
				RTHOOK(15);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 100, dtype))(Current)).it_i4);
				ui4_1 = ti4_1;
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 101, dtype))(Current)).it_i4);
				ui4_2 = ti4_2;
				ui4_3 = arg1;
				ti4_3 = eif_max_int32 (loc2,ui4_3);
				ui4_3 = ti4_3;
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(15,1);
				ti4_4 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 35, "height", tr1));
				ui4_4 = ti4_4;
				ub1 = (EIF_BOOLEAN) 1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(926, 102, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ub1x);
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(16);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ub1
#undef arg2
#undef arg1
}

/* {EV_SIZEABLE_CONTAINER_IMP}.ev_set_minimum_height */
void F927_17317 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "ev_set_minimum_height";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc4 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_b = * (EIF_BOOLEAN *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc3);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLR(5,loc5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_BOOL,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_BOOL, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 926, Current, 5, 2, 21103);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(926, Current, 21103);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_is_destroyed", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 34, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 37, "minimum_height", tr1));
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	if ((EIF_BOOLEAN)(loc1 != arg1)) {
		RTHOOK(4);
		ui4_1 = arg1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 67, dtype))(Current, ui4_1x);
		RTHOOK(5);
		RTDBGAL(Current, 3, 0xF800039E, 0, 0); /* loc3 */
		
		loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 97, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(6);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(loc3 != NULL)) {
			tb2 = '\01';
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 84, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(6,1);
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1484, 32, "item", tr1))(tr1)).it_b);
			if (!(EIF_BOOLEAN) !tb3) {
				tb3 = *(EIF_BOOLEAN *)(Current + RTWA(926, 81, dtype));
				tb2 = tb3;
			}
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(7);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 76, dtype))(Current)).it_i4);
			ui4_1 = ti4_1;
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(7,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(793, 35, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ur1 = RTCCL(tr2);
			ub1 = arg2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(926, 92, "notify_change", loc3))(loc3, ui4_1x, ur1x, ub1x);
			RTHOOK(8);
			RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
			
			loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
	}
	RTHOOK(9);
	RTDBGAL(Current, 5, 0xF8000493, 0, 0); /* loc5 */
	
	loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 93, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(10);
	tb1 = '\0';
	if ((EIF_BOOLEAN) !loc4) {
		tb2 = '\01';
		if (!arg2) {
			tb3 = '\0';
			if ((EIF_BOOLEAN)(loc5 != NULL)) {
				tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1171, 274, "is_displayed", loc5))(loc5)).it_b);
				tb3 = tb4;
			}
			tb2 = tb3;
		}
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(11);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(11,1);
		ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 35, "height", tr1));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(12);
		if ((EIF_BOOLEAN) (arg1 > loc2)) {
			RTHOOK(13);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 100, dtype))(Current)).it_i4);
			ui4_1 = ti4_1;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 101, dtype))(Current)).it_i4);
			ui4_2 = ti4_2;
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(13,1);
			ti4_3 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 34, "width", tr1));
			ui4_3 = ti4_3;
			ui4_4 = arg1;
			ub1 = (EIF_BOOLEAN) 1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(926, 71, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ub1x);
		} else {
			RTHOOK(14);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 47, dtype))(Current)).it_b);
			if (tb1) {
				RTHOOK(15);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 100, dtype))(Current)).it_i4);
				ui4_1 = ti4_1;
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 101, dtype))(Current)).it_i4);
				ui4_2 = ti4_2;
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(15,1);
				ti4_3 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 34, "width", tr1));
				ui4_3 = ti4_3;
				ui4_4 = arg1;
				ti4_4 = eif_max_int32 (loc2,ui4_4);
				ui4_4 = ti4_4;
				ub1 = (EIF_BOOLEAN) 1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(926, 102, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ub1x);
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(16);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ub1
#undef arg2
#undef arg1
}

/* {EV_SIZEABLE_CONTAINER_IMP}.ev_set_minimum_size */
void F927_17318 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "ev_set_minimum_size";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc2 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc3 = (EIF_BOOLEAN) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_b = * (EIF_BOOLEAN *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc8);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLR(5,loc9);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_BOOL,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	RTLU(SK_BOOL, &loc2);
	RTLU(SK_BOOL, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	
	RTEAA(l_feature_name, 926, Current, 9, 3, 21104);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(926, Current, 21104);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_is_destroyed", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 34, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 36, "minimum_width", tr1));
	loc4 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 37, "minimum_height", tr1));
	loc5 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_BOOLEAN) (EIF_BOOLEAN)(loc4 != arg1);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0x04000000, 1, 0); /* loc2 */
	
	loc2 = (EIF_BOOLEAN) (EIF_BOOLEAN)(loc5 != arg2);
	RTHOOK(6);
	if ((EIF_BOOLEAN) (loc1 || loc2)) {
		RTHOOK(7);
		ui4_1 = arg1;
		ui4_2 = arg2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(926, 68, dtype))(Current, ui4_1x, ui4_2x);
		RTHOOK(8);
		RTDBGAL(Current, 8, 0xF800039E, 0, 0); /* loc8 */
		
		loc8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 97, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(9);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(loc8 != NULL)) {
			tb2 = '\01';
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 84, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(9,1);
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1484, 32, "item", tr1))(tr1)).it_b);
			if (!(EIF_BOOLEAN) !tb3) {
				tb3 = *(EIF_BOOLEAN *)(Current + RTWA(926, 81, dtype));
				tb2 = tb3;
			}
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(10);
			if (loc1) {
				RTHOOK(11);
				if (loc2) {
					RTHOOK(12);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 77, dtype))(Current)).it_i4);
					ui4_1 = ti4_1;
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(12,1);
					tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(793, 35, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
					ur1 = RTCCL(tr2);
					ub1 = arg3;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(926, 92, "notify_change", loc8))(loc8, ui4_1x, ur1x, ub1x);
				} else {
					RTHOOK(13);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 75, dtype))(Current)).it_i4);
					ui4_1 = ti4_1;
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(13,1);
					tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(793, 35, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
					ur1 = RTCCL(tr2);
					ub1 = arg3;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(926, 92, "notify_change", loc8))(loc8, ui4_1x, ur1x, ub1x);
				}
			} else {
				RTHOOK(14);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 76, dtype))(Current)).it_i4);
				ui4_1 = ti4_1;
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(14,1);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(793, 35, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				ur1 = RTCCL(tr2);
				ub1 = arg3;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(926, 92, "notify_change", loc8))(loc8, ui4_1x, ur1x, ub1x);
			}
			RTHOOK(15);
			RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
			
			loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
	}
	RTHOOK(16);
	RTDBGAL(Current, 9, 0xF8000493, 0, 0); /* loc9 */
	
	loc9 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 93, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(17);
	tb1 = '\0';
	if ((EIF_BOOLEAN) !loc3) {
		tb2 = '\01';
		if (!arg3) {
			tb3 = '\0';
			if ((EIF_BOOLEAN)(loc9 != NULL)) {
				tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1171, 274, "is_displayed", loc9))(loc9)).it_b);
				tb3 = tb4;
			}
			tb2 = tb3;
		}
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(18);
		RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(18,1);
		ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 34, "width", tr1));
		loc6 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(19);
		RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(19,1);
		ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(61, 35, "height", tr1));
		loc7 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(20);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (arg1 > loc6) || (EIF_BOOLEAN) (arg2 > loc7))) {
			RTHOOK(21);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 100, dtype))(Current)).it_i4);
			ui4_1 = ti4_1;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 101, dtype))(Current)).it_i4);
			ui4_2 = ti4_2;
			ui4_3 = loc6;
			ti4_3 = eif_max_int32 (arg1,ui4_3);
			ui4_3 = ti4_3;
			ui4_4 = loc7;
			ti4_4 = eif_max_int32 (arg2,ui4_4);
			ui4_4 = ti4_4;
			ub1 = (EIF_BOOLEAN) 1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(926, 71, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ub1x);
		} else {
			RTHOOK(22);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 47, dtype))(Current)).it_b);
			if (tb1) {
				RTHOOK(23);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 100, dtype))(Current)).it_i4);
				ui4_1 = ti4_1;
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 101, dtype))(Current)).it_i4);
				ui4_2 = ti4_2;
				ui4_3 = arg1;
				ti4_3 = eif_max_int32 (loc6,ui4_3);
				ui4_3 = ti4_3;
				ui4_4 = arg2;
				ti4_4 = eif_max_int32 (loc7,ui4_4);
				ui4_4 = ti4_4;
				ub1 = (EIF_BOOLEAN) 1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(926, 102, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ub1x);
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(24);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(14);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ub1
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_SIZEABLE_CONTAINER_IMP}.notify_change */
void F927_17319 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "notify_change";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_r
#define arg3 arg3x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_b = * (EIF_BOOLEAN *) arg3x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(8);
	RTLR(0,arg2);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,loc3);
	RTLR(4,loc2);
	RTLR(5,loc1);
	RTLR(6,tr2);
	RTLR(7,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_BOOL,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 926, Current, 3, 3, 21105);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(926, Current, 21105);
	if (arg2) {
		RTCC(arg2, 926, l_feature_name, 2, 894);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(926, 82, dtype));
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(926, 83, dtype));
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN) !tb1 && (EIF_BOOLEAN) !tb2)) {
		RTHOOK(2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 84, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1484, 32, "item", tr1))(tr1)).it_b);
		if (tb1) {
			RTHOOK(3);
			RTDBGAL(Current, 3, 0xF800039E, 0, 0); /* loc3 */
			
			loc3 = RTCCL(arg2);
			loc3 = RTRV(eif_non_attached_type(926), loc3);
			RTHOOK(4);
			tb1 = '\0';
			if ((EIF_BOOLEAN)(loc3 != NULL)) {
				tb2 = *(EIF_BOOLEAN *)(loc3 + RTVA(926, 81, "is_notify_originator", loc3));
				tb1 = tb2;
			}
			if (tb1) {
				RTHOOK(5);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 84, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(5,1);
				ub1 = (EIF_BOOLEAN) 0;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1484, 33, "put", tr1))(tr1, ub1x);
			}
		}
		RTHOOK(6);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 84, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1484, 32, "item", tr1))(tr1)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTHOOK(7);
			RTDBGAA(Current, dtype, 926, 81, 0x04000000, 1); /* is_notify_originator */
			
			*(EIF_BOOLEAN *)(Current + RTWA(926, 81, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(8);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 84, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(8,1);
			ub1 = (EIF_BOOLEAN) 1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1484, 33, "put", tr1))(tr1, ub1x);
			RTHOOK(9);
			RTDBGAL(Current, 2, 0xF8000493, 0, 0); /* loc2 */
			
			loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 93, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTHOOK(10);
			tb1 = '\01';
			if (!arg3) {
				tb2 = '\0';
				if ((EIF_BOOLEAN)(loc2 != NULL)) {
					tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1171, 274, "is_displayed", loc2))(loc2)).it_b);
					tb2 = tb3;
				}
				tb1 = tb2;
			}
			if (tb1) {
				RTHOOK(11);
				switch (arg1) {
					case 1L:
						RTHOOK(12);
						ub1 = (EIF_BOOLEAN) 0;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 85, dtype))(Current, ub1x);
						RTHOOK(13);
						ub1 = arg3;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 94, dtype))(Current, ub1x);
						break;
					case 2L:
						RTHOOK(14);
						ub1 = (EIF_BOOLEAN) 0;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 86, dtype))(Current, ub1x);
						RTHOOK(15);
						ub1 = arg3;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 95, dtype))(Current, ub1x);
						break;
					case 3L:
						RTHOOK(16);
						ub1 = (EIF_BOOLEAN) 0;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 85, dtype))(Current, ub1x);
						RTHOOK(17);
						ub1 = (EIF_BOOLEAN) 0;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 86, dtype))(Current, ub1x);
						RTHOOK(18);
						ub1 = arg3;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 96, dtype))(Current, ub1x);
						break;
					default:
						RTEC(EN_WHEN);
				}
			} else {
				RTHOOK(19);
				switch (arg1) {
					case 1L:
						RTHOOK(20);
						ub1 = (EIF_BOOLEAN) 1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 85, dtype))(Current, ub1x);
						break;
					case 2L:
						RTHOOK(21);
						ub1 = (EIF_BOOLEAN) 1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 86, dtype))(Current, ub1x);
						break;
					case 3L:
						RTHOOK(22);
						ub1 = (EIF_BOOLEAN) 1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 85, dtype))(Current, ub1x);
						RTHOOK(23);
						ub1 = (EIF_BOOLEAN) 1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(926, 86, dtype))(Current, ub1x);
						break;
					default:
						RTEC(EN_WHEN);
				}
				RTHOOK(24);
				tb1 = '\01';
				if (!(EIF_BOOLEAN)(loc2 == NULL)) {
					tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1171, 274, "is_displayed", loc2))(loc2)).it_b);
					tb1 = (EIF_BOOLEAN) !tb2;
				}
				if (tb1) {
					RTHOOK(25);
					RTDBGAL(Current, 1, 0xF800039E, 0, 0); /* loc1 */
					
					loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 97, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTHOOK(26);
					if ((EIF_BOOLEAN)(loc1 != NULL)) {
						RTHOOK(27);
						ui4_1 = arg1;
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(27,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(793, 35, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						ur1 = RTCCL(tr2);
						ub1 = arg3;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(926, 92, "notify_change", loc1))(loc1, ui4_1x, ur1x, ub1x);
					}
				}
			}
			RTHOOK(28);
			RTDBGAA(Current, dtype, 926, 81, 0x04000000, 1); /* is_notify_originator */
			
			*(EIF_BOOLEAN *)(Current + RTWA(926, 81, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			RTHOOK(29);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(926, 84, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(29,1);
			ub1 = (EIF_BOOLEAN) 0;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1484, 33, "put", tr1))(tr1, ub1x);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(30);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ub1
#undef arg3
#undef arg2
#undef arg1
}

void EIF_Minit927 (void)
{
	GTCX
	RTOTS (17311,F927_17311)
}


#ifdef __cplusplus
}
#endif
