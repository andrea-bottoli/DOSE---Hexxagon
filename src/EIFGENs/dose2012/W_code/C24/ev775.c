/*
 * Code for class EV_GDI_OBJECT
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F775_14935(EIF_REFERENCE);
extern EIF_TYPED_VALUE F775_14936(EIF_REFERENCE);
extern EIF_TYPED_VALUE F775_14937(EIF_REFERENCE);
extern EIF_TYPED_VALUE F775_14938(EIF_REFERENCE);
extern EIF_TYPED_VALUE F775_14939(EIF_REFERENCE);
extern void F775_14940(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F775_14941(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F775_14942(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F775_14943(EIF_REFERENCE);
extern void EIF_Minit775(void);

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

/* {EV_GDI_OBJECT}.computed_hash_code */
EIF_TYPED_VALUE F775_14935 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(774,33, Dtype(Current)));
	return r;
}


/* {EV_GDI_OBJECT}.weight */
EIF_TYPED_VALUE F775_14936 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(774,34, Dtype(Current)));
	return r;
}


/* {EV_GDI_OBJECT}.age */
EIF_TYPED_VALUE F775_14937 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(774,35, Dtype(Current)));
	return r;
}


/* {EV_GDI_OBJECT}.item */
EIF_TYPED_VALUE F775_14938 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(774,36, Dtype(Current)));
	return r;
}


/* {EV_GDI_OBJECT}.value */
EIF_TYPED_VALUE F775_14939 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "value";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 774, Current, 0, 0, 18939);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(774, Current, 18939);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(774, 34, dtype));
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(774, 35, dtype));
	Result = (EIF_INTEGER_32) (EIF_INTEGER_32) (Result * ti4_1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {EV_GDI_OBJECT}.set_weight */
void F775_14940 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_weight";
	RTEX;
#define arg1 arg1x.it_i4
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 774, Current, 0, 1, 18940);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(774, Current, 18940);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 774, 34, 0x10000000, 1); /* weight */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(774, 34, Dtype(Current))) = (EIF_INTEGER_32) arg1;
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

/* {EV_GDI_OBJECT}.update */
void F775_14941 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "update";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 774, Current, 0, 1, 18941);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(774, Current, 18941);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(774, 34, dtype));
	if ((EIF_BOOLEAN) (ti4_1 < ((EIF_INTEGER_32) 2147483646L))) {
		RTHOOK(2);
		RTDBGAA(Current, dtype, 774, 34, 0x10000000, 1); /* weight */
		
		(*(EIF_INTEGER_32 *)(Current + RTWA(774, 34, dtype)))++;
	}
	RTHOOK(3);
	RTDBGAA(Current, dtype, 774, 35, 0x10000000, 1); /* age */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(774, 35, dtype)) = (EIF_INTEGER_32) arg1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {EV_GDI_OBJECT}.set_item */
void F775_14942 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_item";
	RTEX;
#define arg1 arg1x.it_r
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(2);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 774, Current, 0, 1, 18933);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(774, Current, 18933);
	RTCC(arg1, 774, l_feature_name, 1, RTWCT(774, 36, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 774, 36, 0xF800025A, 0); /* item */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(774, 36, Dtype(Current))) = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(602, 50, "increment_reference", arg1))(arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {EV_GDI_OBJECT}.delete */
void F775_14943 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "delete";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 774, Current, 1, 0, 18934);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(774, Current, 18934);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(774, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	if (EIF_TEST(loc1)) {
		RTHOOK(2);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(602, 49, "decrement_reference", loc1))(loc1);
	}
	RTHOOK(3);
	RTDBGAA(Current, dtype, 774, 36, 0xF800025A, 0); /* item */
	
	*(EIF_REFERENCE *)(Current + RTWA(774, 36, dtype)) = (EIF_REFERENCE) NULL;
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

void EIF_Minit775 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
