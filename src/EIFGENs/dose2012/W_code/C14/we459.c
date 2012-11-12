/*
 * Code for class WEL_TVI_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F459_7927(EIF_REFERENCE);
extern EIF_TYPED_VALUE F459_7928(EIF_REFERENCE);
extern EIF_TYPED_VALUE F459_7929(EIF_REFERENCE);
extern EIF_TYPED_VALUE F459_7930(EIF_REFERENCE);
extern void EIF_Minit459(void);

#ifdef __cplusplus
}
#endif

#include "cctrl.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_TVI_CONSTANTS}.tvi_root */
EIF_TYPED_VALUE F459_7927 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tvi_root";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 458, Current, 0, 0, 7603);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(458, Current, 7603);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) TVI_ROOT;
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

/* {WEL_TVI_CONSTANTS}.tvi_first */
EIF_TYPED_VALUE F459_7928 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tvi_first";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 458, Current, 0, 0, 7604);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(458, Current, 7604);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) TVI_FIRST;
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

/* {WEL_TVI_CONSTANTS}.tvi_last */
EIF_TYPED_VALUE F459_7929 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tvi_last";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 458, Current, 0, 0, 7605);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(458, Current, 7605);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) TVI_LAST;
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

/* {WEL_TVI_CONSTANTS}.tvi_sort */
EIF_TYPED_VALUE F459_7930 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tvi_sort";
	RTEX;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 458, Current, 0, 0, 7606);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(458, Current, 7606);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) TVI_SORT;
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

void EIF_Minit459 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
