/*
 * Code for class DISPOSABLE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F568_10090(EIF_REFERENCE);
extern void EIF_Minit568(void);

#ifdef __cplusplus
}
#endif

#include "eif_memory.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F568_10090
static int inline_F568_10090 (void)
{
	return eif_is_in_final_collect;
	;
}
#define INLINE_F568_10090
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {DISPOSABLE}.is_in_final_collect */
EIF_TYPED_VALUE F568_10090 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_in_final_collect";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 567, Current, 0, 0, 12914);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(567, Current, 12914);
	RTIV(Current, RTAL);
	Result = EIF_TEST(inline_F568_10090 ());
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

void EIF_Minit568 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
