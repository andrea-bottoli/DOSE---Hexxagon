/*
 * Code for class OPERATING_SYSTEM_SIGNAL_FAILURE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F422_7744(EIF_REFERENCE);
extern EIF_TYPED_VALUE F422_7745(EIF_REFERENCE);
extern void F422_7746(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F422_7747(EIF_REFERENCE);
extern void EIF_Minit422(void);

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

/* {OPERATING_SYSTEM_SIGNAL_FAILURE}.code */
EIF_TYPED_VALUE F422_7744 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "code";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 421, Current, 0, 0, 7420);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(421, Current, 7420);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 43, 368))(Current)).it_i4);
	Result = (EIF_INTEGER_32) Result;
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

/* {OPERATING_SYSTEM_SIGNAL_FAILURE}.signal_code */
EIF_TYPED_VALUE F422_7745 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(421,60, Dtype(Current)));
	return r;
}


/* {OPERATING_SYSTEM_SIGNAL_FAILURE}.set_signal_code */
void F422_7746 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_signal_code";
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
	
	RTEAA(l_feature_name, 421, Current, 0, 1, 7422);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(421, Current, 7422);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 421, 60, 0x10000000, 1); /* signal_code */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(421, 60, Dtype(Current))) = (EIF_INTEGER_32) arg1;
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

/* {OPERATING_SYSTEM_SIGNAL_FAILURE}.internal_meaning */
RTOID (F422_7747)


EIF_TYPED_VALUE F422_7747 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F422_7747,7424,RTMS_EX_H("Operating system signal.",24,1715740462));
}

void EIF_Minit422 (void)
{
	GTCX
	RTOTS (7747,F422_7747)
}


#ifdef __cplusplus
}
#endif
