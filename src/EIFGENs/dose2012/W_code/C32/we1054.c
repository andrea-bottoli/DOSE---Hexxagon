/*
 * Code for class WEL_WINDOW_POSITION_MESSAGE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1054_19112(EIF_REFERENCE);
extern void EIF_Minit1054(void);

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

/* {WEL_WINDOW_POSITION_MESSAGE}.position */
EIF_TYPED_VALUE F1054_19112 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "position";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1053, Current, 0, 0, 23181);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1053, Current, 23181);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800044C, 0,0); /* Result */
	
	tr1 = RTLN(1100);
	tp1 = *(EIF_POINTER *)(Current + RTWA(1053, 42, Dtype(Current)));
	up1 = tp1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1100, 31, Dtype(tr1)))(tr1, up1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
}

void EIF_Minit1054 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
