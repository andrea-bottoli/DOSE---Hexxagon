/*
 * Code for class THREAD_ENVIRONMENT
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F319_6345(EIF_REFERENCE);
extern EIF_TYPED_VALUE F319_6346(EIF_REFERENCE);
extern void EIF_Minit319(void);

#ifdef __cplusplus
}
#endif

#include <eif_threads.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F319_6345
static EIF_POINTER inline_F319_6345 (void)
{
	return eif_thr_thread_id();
	;
}
#define INLINE_F319_6345
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {THREAD_ENVIRONMENT}.current_thread_id */
EIF_TYPED_VALUE F319_6345 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "current_thread_id";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 318, Current, 0, 0, 6086);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(318, Current, 6086);
	RTIV(Current, RTAL);
	Result = inline_F319_6345 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
}

/* {THREAD_ENVIRONMENT}.get_current_id */
EIF_TYPED_VALUE F319_6346 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "get_current_id";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 318, Current, 0, 0, 6087);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(318, Current, 6087);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(318, 32, Dtype(Current)))(Current)).it_p);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
}

void EIF_Minit319 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
