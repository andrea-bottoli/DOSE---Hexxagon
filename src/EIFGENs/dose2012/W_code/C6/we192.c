/*
 * Code for class WEL_TPM_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F192_4611(EIF_REFERENCE);
extern EIF_TYPED_VALUE F192_4612(EIF_REFERENCE);
extern EIF_TYPED_VALUE F192_4613(EIF_REFERENCE);
extern EIF_TYPED_VALUE F192_4614(EIF_REFERENCE);
extern EIF_TYPED_VALUE F192_4615(EIF_REFERENCE);
extern EIF_TYPED_VALUE F192_4616(EIF_REFERENCE);
extern EIF_TYPED_VALUE F192_4617(EIF_REFERENCE);
extern EIF_TYPED_VALUE F192_4618(EIF_REFERENCE);
extern EIF_TYPED_VALUE F192_4619(EIF_REFERENCE);
extern void EIF_Minit192(void);

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

/* {WEL_TPM_CONSTANTS}.tpm_leftbutton */
EIF_TYPED_VALUE F192_4611 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tpm_leftbutton";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 191, Current, 0, 0, 4448);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(191, Current, 4448);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TPM_LEFTBUTTON;
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

/* {WEL_TPM_CONSTANTS}.tpm_rightbutton */
EIF_TYPED_VALUE F192_4612 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tpm_rightbutton";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 191, Current, 0, 0, 4449);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(191, Current, 4449);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TPM_RIGHTBUTTON;
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

/* {WEL_TPM_CONSTANTS}.tpm_leftalign */
EIF_TYPED_VALUE F192_4613 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tpm_leftalign";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 191, Current, 0, 0, 4450);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(191, Current, 4450);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TPM_LEFTALIGN;
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

/* {WEL_TPM_CONSTANTS}.tpm_centeralign */
EIF_TYPED_VALUE F192_4614 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tpm_centeralign";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 191, Current, 0, 0, 4451);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(191, Current, 4451);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TPM_CENTERALIGN;
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

/* {WEL_TPM_CONSTANTS}.tpm_rightalign */
EIF_TYPED_VALUE F192_4615 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tpm_rightalign";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 191, Current, 0, 0, 4452);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(191, Current, 4452);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TPM_RIGHTALIGN;
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

/* {WEL_TPM_CONSTANTS}.tpm_bottomalign */
EIF_TYPED_VALUE F192_4616 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tpm_bottomalign";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 191, Current, 0, 0, 4453);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(191, Current, 4453);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TPM_BOTTOMALIGN;
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

/* {WEL_TPM_CONSTANTS}.tpm_topalign */
EIF_TYPED_VALUE F192_4617 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tpm_topalign";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 191, Current, 0, 0, 4454);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(191, Current, 4454);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TPM_TOPALIGN;
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

/* {WEL_TPM_CONSTANTS}.tpm_vcenteralign */
EIF_TYPED_VALUE F192_4618 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tpm_vcenteralign";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 191, Current, 0, 0, 4455);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(191, Current, 4455);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TPM_VCENTERALIGN;
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

/* {WEL_TPM_CONSTANTS}.tpm_returncmd */
EIF_TYPED_VALUE F192_4619 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tpm_returncmd";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 191, Current, 0, 0, 4447);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(191, Current, 4447);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) TPM_RETURNCMD;
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

void EIF_Minit192 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
