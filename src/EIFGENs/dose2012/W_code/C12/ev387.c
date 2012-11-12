/*
 * Code for class EV_SHARED_GDI_OBJECTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F387_7255(EIF_REFERENCE);
extern EIF_TYPED_VALUE F387_7256(EIF_REFERENCE);
extern void EIF_Minit387(void);

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

/* {EV_SHARED_GDI_OBJECTS}.allocated_pens */
RTOID (F387_7255)
EIF_TYPED_VALUE F387_7255 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "allocated_pens";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F387_7255);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 386, Current, 0, 0, 6940);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(386, Current, 6940);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80001F0, 0,0); /* Result */
	
	tr1 = RTLN(496);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(496, 31, Dtype(tr1)))(tr1);
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
#undef Result
}

/* {EV_SHARED_GDI_OBJECTS}.allocated_brushes */
RTOID (F387_7256)
EIF_TYPED_VALUE F387_7256 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "allocated_brushes";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F387_7256);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 386, Current, 0, 0, 6941);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(386, Current, 6941);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80001EF, 0,0); /* Result */
	
	tr1 = RTLN(495);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(495, 31, Dtype(tr1)))(tr1);
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
#undef Result
}

void EIF_Minit387 (void)
{
	GTCX
	RTOTS (7255,F387_7255)
	RTOTS (7256,F387_7256)
}


#ifdef __cplusplus
}
#endif
