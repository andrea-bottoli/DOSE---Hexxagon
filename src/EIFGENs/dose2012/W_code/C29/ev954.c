/*
 * Code for class EV_POPUP_WINDOW_I
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPED_VALUE F954_17581_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F954_17581(EIF_REFERENCE);
extern EIF_TYPED_VALUE F954_17582(EIF_REFERENCE);
extern EIF_TYPED_VALUE F954_17583(EIF_REFERENCE);
extern void F954_17584(EIF_REFERENCE);
extern void F954_17585(EIF_REFERENCE);
extern void EIF_Minit954(void);

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

/* {EV_POPUP_WINDOW_I}.interface */
static EIF_TYPED_VALUE F954_17581_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 953, Current, 0, 0, 21266);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(953, Current, 21266);
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

EIF_TYPED_VALUE F954_17581 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(953,265, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(953, 265, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F954_17581_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(953,265, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


/* {EV_POPUP_WINDOW_I}.is_disconnected_from_window_manager */
EIF_TYPED_VALUE F954_17582 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(953,266, Dtype(Current)));
	return r;
}


/* {EV_POPUP_WINDOW_I}.has_shadow */
EIF_TYPED_VALUE F954_17583 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(953,267, Dtype(Current)));
	return r;
}


/* {EV_POPUP_WINDOW_I}.disconnect_from_window_manager */
void F954_17584 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disconnect_from_window_manager";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 953, Current, 0, 0, 21269);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(953, Current, 21269);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, Dtype(Current), 953, 266, 0x04000000, 1); /* is_disconnected_from_window_manager */
	
	*(EIF_BOOLEAN *)(Current + RTWA(953, 266, Dtype(Current))) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_POPUP_WINDOW_I}.initialize_with_shadow */
void F954_17585 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "initialize_with_shadow";
	RTEX;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 953, Current, 0, 0, 21270);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(953, Current, 21270);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 953, 267, 0x04000000, 1); /* has_shadow */
	
	*(EIF_BOOLEAN *)(Current + RTWA(953, 267, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(953, 323, dtype))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

void EIF_Minit954 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
