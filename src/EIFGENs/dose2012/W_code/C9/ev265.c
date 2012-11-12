/*
 * Code for class EV_TEXT_COMPONENT_ACTION_SEQUENCES_I
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F265_5552(EIF_REFERENCE);
static EIF_TYPED_VALUE F265_5554_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F265_5554(EIF_REFERENCE);
extern void EIF_Minit265(void);

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

/* {EV_TEXT_COMPONENT_ACTION_SEQUENCES_I}.change_actions */
EIF_TYPED_VALUE F265_5552 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "change_actions";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 264, Current, 1, 0, 5343);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(264, Current, 5343);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF800021A, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(264, 34, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0xF800021A, 0,0); /* Result */
		
		Result = (EIF_REFERENCE) RTCCL(loc1);
	} else {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF800021A, 0, 0); /* loc1 */
		
		loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(264, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(5);
		RTDBGAA(Current, dtype, 264, 34, 0xF800021A, 0); /* change_actions_internal */
		
		RTAR(Current, loc1);
		*(EIF_REFERENCE *)(Current + RTWA(264, 34, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
		RTHOOK(6);
		RTDBGAL(Current, 0, 0xF800021A, 0,0); /* Result */
		
		Result = (EIF_REFERENCE) RTCCL(loc1);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
}

/* {EV_TEXT_COMPONENT_ACTION_SEQUENCES_I}.change_actions_internal */
static EIF_TYPED_VALUE F265_5554_body (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "change_actions_internal";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 264, Current, 0, 0, 5344);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(264, Current, 5344);
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

EIF_TYPED_VALUE F265_5554 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(264,34, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(264, 34, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F265_5554_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(264,34, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit265 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
