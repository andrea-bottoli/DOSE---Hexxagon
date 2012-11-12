/*
 * Code for class EV_ITEM_ACTION_SEQUENCES_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F314_6301(EIF_REFERENCE);
extern EIF_TYPED_VALUE F314_6302(EIF_REFERENCE);
extern EIF_TYPED_VALUE F314_6303(EIF_REFERENCE);
extern void EIF_Minit314(void);

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

/* {EV_ITEM_ACTION_SEQUENCES_IMP}.create_pointer_motion_actions */
EIF_TYPED_VALUE F314_6301 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "create_pointer_motion_actions";
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
	
	RTEAA(l_feature_name, 313, Current, 0, 0, 6046);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(313, Current, 6046);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000214, 0,0); /* Result */
	
	tr1 = RTLN(532);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(532, 142, Dtype(tr1)))(tr1);
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

/* {EV_ITEM_ACTION_SEQUENCES_IMP}.create_pointer_button_press_actions */
EIF_TYPED_VALUE F314_6302 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "create_pointer_button_press_actions";
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
	
	RTEAA(l_feature_name, 313, Current, 0, 0, 6047);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(313, Current, 6047);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000219, 0,0); /* Result */
	
	tr1 = RTLN(537);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(537, 142, Dtype(tr1)))(tr1);
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

/* {EV_ITEM_ACTION_SEQUENCES_IMP}.create_pointer_double_press_actions */
EIF_TYPED_VALUE F314_6303 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "create_pointer_double_press_actions";
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
	
	RTEAA(l_feature_name, 313, Current, 0, 0, 6048);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(313, Current, 6048);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000219, 0,0); /* Result */
	
	tr1 = RTLN(537);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(537, 142, Dtype(tr1)))(tr1);
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

void EIF_Minit314 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
