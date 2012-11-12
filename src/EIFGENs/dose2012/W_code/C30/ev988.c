/*
 * Code for class EV_TREE_ITEM_I
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPED_VALUE F988_17904_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F988_17904(EIF_REFERENCE);
extern void EIF_Minit988(void);

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

/* {EV_TREE_ITEM_I}.interface */
static EIF_TYPED_VALUE F988_17904_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 987, Current, 0, 0, 21402);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(987, Current, 21402);
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

EIF_TYPED_VALUE F988_17904 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(987,183, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(987, 183, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F988_17904_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(987,183, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit988 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
