/*
 * Code for class WEL_HS_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F170_4205(EIF_REFERENCE);
extern EIF_TYPED_VALUE F170_4206(EIF_REFERENCE);
extern EIF_TYPED_VALUE F170_4207(EIF_REFERENCE);
extern EIF_TYPED_VALUE F170_4208(EIF_REFERENCE);
extern EIF_TYPED_VALUE F170_4209(EIF_REFERENCE);
extern EIF_TYPED_VALUE F170_4210(EIF_REFERENCE);
extern void EIF_Minit170(void);

#ifdef __cplusplus
}
#endif

#include "wel.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_HS_CONSTANTS}.hs_horizontal */
EIF_TYPED_VALUE F170_4205 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hs_horizontal";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 169, Current, 0, 0, 4041);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(169, Current, 4041);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HS_HORIZONTAL;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_HS_CONSTANTS}.hs_vertical */
EIF_TYPED_VALUE F170_4206 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hs_vertical";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 169, Current, 0, 0, 4042);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(169, Current, 4042);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HS_VERTICAL;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_HS_CONSTANTS}.hs_fdiagonal */
EIF_TYPED_VALUE F170_4207 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hs_fdiagonal";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 169, Current, 0, 0, 4043);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(169, Current, 4043);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HS_FDIAGONAL;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_HS_CONSTANTS}.hs_bdiagonal */
EIF_TYPED_VALUE F170_4208 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hs_bdiagonal";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 169, Current, 0, 0, 4044);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(169, Current, 4044);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HS_BDIAGONAL;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_HS_CONSTANTS}.hs_cross */
EIF_TYPED_VALUE F170_4209 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hs_cross";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 169, Current, 0, 0, 4045);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(169, Current, 4045);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HS_CROSS;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_HS_CONSTANTS}.hs_diagcross */
EIF_TYPED_VALUE F170_4210 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hs_diagcross";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 169, Current, 0, 0, 4046);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(169, Current, 4046);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HS_DIAGCROSS;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

void EIF_Minit170 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
