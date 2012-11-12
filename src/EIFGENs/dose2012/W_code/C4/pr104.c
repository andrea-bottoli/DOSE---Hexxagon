/*
 * Code for class PROCESS_TIMER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F104_3208(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F104_3209(EIF_REFERENCE);
extern EIF_TYPED_VALUE F104_3210(EIF_REFERENCE);
extern EIF_TYPED_VALUE F104_3212(EIF_REFERENCE);
extern EIF_TYPED_VALUE F104_3213(EIF_REFERENCE);
extern EIF_TYPED_VALUE F104_3214(EIF_REFERENCE);
extern void F104_23689(EIF_REFERENCE, int);
extern void EIF_Minit104(void);

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

/* {PROCESS_TIMER}.set_process_launcher */
void F104_3208 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_process_launcher";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 103, Current, 0, 1, 3074);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(103, Current, 3074);
	if (arg1) {
		RTCC(arg1, 103, l_feature_name, 1, 118);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("prc_launcher_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("timer_destroyed", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(103, 38, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 103, 40, 0xF8000076, 0); /* process_launcher */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(103, 40, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("process_launcher_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(103, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
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
#undef arg1
}

/* {PROCESS_TIMER}.has_started */
EIF_TYPED_VALUE F104_3209 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(103,36, Dtype(Current)));
	return r;
}


/* {PROCESS_TIMER}.destroyed */
EIF_TYPED_VALUE F104_3210 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "destroyed";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 103, Current, 0, 0, 3076);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(103, Current, 3076);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(103, 38, Dtype(Current)))(Current)).it_b);
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

/* {PROCESS_TIMER}.sleep_time */
EIF_TYPED_VALUE F104_3212 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(103,39, Dtype(Current)));
	return r;
}


/* {PROCESS_TIMER}.process_launcher */
EIF_TYPED_VALUE F104_3213 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(103,40, Dtype(Current)));
	return r;
}


/* {PROCESS_TIMER}.one_millisecond_in_nanoseconds */
EIF_TYPED_VALUE F104_3214 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1000000L);
	return r;
}

/* {PROCESS_TIMER}._invariant */
void F104_23689 (EIF_REFERENCE Current, int where)
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
	RTEAINV(l_feature_name, 103, Current, 0, 23688);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("sleep_time_positive", Current);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(103, 39, dtype));
	if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
}

void EIF_Minit104 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
