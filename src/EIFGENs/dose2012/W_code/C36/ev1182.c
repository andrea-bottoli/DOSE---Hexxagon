/*
 * Code for class EV_UNTITLED_DIALOG_IMP_MODAL
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPED_VALUE F1182_22367_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1182_22367(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1182_22368(EIF_REFERENCE);
static EIF_TYPED_VALUE F1182_22369_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1182_22369(EIF_REFERENCE);
extern void EIF_Minit1182(void);

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

/* {EV_UNTITLED_DIALOG_IMP_MODAL}.other_imp */
static EIF_TYPED_VALUE F1182_22367_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 1181, Current, 0, 0, 26291);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1181, Current, 26291);
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

EIF_TYPED_VALUE F1182_22367 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1181,1959, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(1181, 1959, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1182_22367_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(1181,1959, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


/* {EV_UNTITLED_DIALOG_IMP_MODAL}.common_dialog_imp */
EIF_TYPED_VALUE F1182_22368 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "common_dialog_imp";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1181, Current, 0, 0, 26292);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1181, Current, 26292);
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

/* {EV_UNTITLED_DIALOG_IMP_MODAL}.interface */
static EIF_TYPED_VALUE F1182_22369_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 1181, Current, 0, 0, 26293);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1181, Current, 26293);
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

EIF_TYPED_VALUE F1182_22369 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1181,1961, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(1181, 1961, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1182_22369_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(1181,1961, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit1182 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
