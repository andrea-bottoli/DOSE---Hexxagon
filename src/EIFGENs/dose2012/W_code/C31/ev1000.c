/*
 * Code for class EV_DRAWING_AREA_I
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1000_17986(EIF_REFERENCE);
extern void F1000_17987(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1000_17988(EIF_REFERENCE);
static EIF_TYPED_VALUE F1000_17989_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1000_17989(EIF_REFERENCE);
extern void EIF_Minit1000(void);

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

/* {EV_DRAWING_AREA_I}.enable_focus_on_press */
void F1000_17986 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "enable_focus_on_press";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 999, Current, 0, 0, 21423);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(999, Current, 21423);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 999, 247, 0x04000000, 1); /* focus_on_press_disabled */
	
	*(EIF_BOOLEAN *)(Current + RTWA(999, 247, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_DRAWING_AREA_I}.disable_focus_on_press */
void F1000_17987 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disable_focus_on_press";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 999, Current, 0, 0, 21424);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(999, Current, 21424);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 999, 247, 0x04000000, 1); /* focus_on_press_disabled */
	
	*(EIF_BOOLEAN *)(Current + RTWA(999, 247, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_DRAWING_AREA_I}.focus_on_press_disabled */
EIF_TYPED_VALUE F1000_17988 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(999,247, Dtype(Current)));
	return r;
}


/* {EV_DRAWING_AREA_I}.interface */
static EIF_TYPED_VALUE F1000_17989_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 999, Current, 0, 0, 21426);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(999, Current, 21426);
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

EIF_TYPED_VALUE F1000_17989 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(999,248, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(999, 248, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1000_17989_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(999,248, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit1000 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
