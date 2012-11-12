/*
 * Code for class EV_TOOL_BAR_ITEM_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1154_21494(EIF_REFERENCE);
static EIF_TYPED_VALUE F1154_21502_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1154_21502(EIF_REFERENCE);
extern void EIF_Minit1154(void);

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

/* {EV_TOOL_BAR_ITEM_IMP}.image_index */
EIF_TYPED_VALUE F1154_21494 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1153,314, Dtype(Current)));
	return r;
}


/* {EV_TOOL_BAR_ITEM_IMP}.interface */
static EIF_TYPED_VALUE F1154_21502_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 1153, Current, 0, 0, 25490);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1153, Current, 25490);
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

EIF_TYPED_VALUE F1154_21502 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1153,322, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(1153, 322, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1154_21502_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(1153,322, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit1154 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
