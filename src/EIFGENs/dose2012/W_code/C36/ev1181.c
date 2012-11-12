/*
 * Code for class EV_UNTITLED_DIALOG_IMP_MODELESS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPED_VALUE F1181_22365_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1181_22365(EIF_REFERENCE);
static EIF_TYPED_VALUE F1181_22366_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1181_22366(EIF_REFERENCE);
extern void EIF_Minit1181(void);

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

/* {EV_UNTITLED_DIALOG_IMP_MODELESS}.other_imp */
static EIF_TYPED_VALUE F1181_22365_body (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "other_imp";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1180, Current, 0, 0, 26289);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1180, Current, 26289);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

EIF_TYPED_VALUE F1181_22365 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1180,1958, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(1180, 1958, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1181_22365_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(1180,1958, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


/* {EV_UNTITLED_DIALOG_IMP_MODELESS}.interface */
static EIF_TYPED_VALUE F1181_22366_body (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "interface";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1180, Current, 0, 0, 26290);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1180, Current, 26290);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

EIF_TYPED_VALUE F1181_22366 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1180,1959, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(1180, 1959, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1181_22366_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(1180,1959, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit1181 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
