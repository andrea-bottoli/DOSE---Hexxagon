/*
 * Code for class EV_TEXT_COMPONENT_ACTION_SEQUENCES_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F266_5555(EIF_REFERENCE);
extern void EIF_Minit266(void);

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

/* {EV_TEXT_COMPONENT_ACTION_SEQUENCES_IMP}.create_change_actions */
EIF_TYPED_VALUE F266_5555 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "create_change_actions";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,tr1);
	RTLR(1,Result);
	RTLR(2,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 265, Current, 0, 0, 5345);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(265, Current, 5345);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800021A, 0,0); /* Result */
	
	tr1 = RTLN(538);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(538, 142, Dtype(tr1)))(tr1);
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
}

void EIF_Minit266 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
