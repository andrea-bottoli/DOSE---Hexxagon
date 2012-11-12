/*
 * Code for class INET_PROPERTIES
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F365_6996(EIF_REFERENCE);extern EIF_BOOLEAN en_ipv6_available();

extern EIF_TYPED_VALUE F365_6997(EIF_REFERENCE);extern EIF_BOOLEAN en_get_prefer_ipv4();

extern void F365_6998(EIF_REFERENCE, EIF_TYPED_VALUE);extern void en_set_prefer_ipv4(EIF_BOOLEAN);

extern void F365_23703(EIF_REFERENCE, int);
extern void EIF_Minit365(void);

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

/* {INET_PROPERTIES}.is_ipv6_available */
EIF_TYPED_VALUE F365_6996 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_ipv6_available";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 364, Current, 0, 0, 6683);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(364, Current, 6683);
	RTIV(Current, RTAL);Result = (EIF_BOOLEAN) EIF_TEST(en_ipv6_available());
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {INET_PROPERTIES}.is_ipv4_stack_preferred */
EIF_TYPED_VALUE F365_6997 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_ipv4_stack_preferred";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 364, Current, 0, 0, 6684);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(364, Current, 6684);
	RTIV(Current, RTAL);Result = (EIF_BOOLEAN) EIF_TEST(en_get_prefer_ipv4());
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {INET_PROPERTIES}.set_ipv4_stack_preferred */
void F365_6998 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_ipv4_stack_preferred";
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
	
	RTEAA(l_feature_name, 364, Current, 0, 1, 6685);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(364, Current, 6685);
	RTIV(Current, RTAL);en_set_prefer_ipv4(arg1);
	
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

/* {INET_PROPERTIES}._invariant */
void F365_23703 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 364, Current, 0, 23702);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("exclusive", Current);
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(364, 33, dtype))(Current)).it_b);
	if (tb2) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(364, 32, dtype))(Current)).it_b);
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
}

void EIF_Minit365 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
