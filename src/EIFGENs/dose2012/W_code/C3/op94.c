/*
 * Code for class OPERATING_ENVIRONMENT
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F94_3029(EIF_REFERENCE);
extern EIF_TYPED_VALUE F94_3030(EIF_REFERENCE);
extern EIF_TYPED_VALUE F94_3031(EIF_REFERENCE);
extern EIF_TYPED_VALUE F94_3032(EIF_REFERENCE);
extern EIF_TYPED_VALUE F94_3033(EIF_REFERENCE);
extern EIF_TYPED_VALUE F94_3034(EIF_REFERENCE);
extern EIF_TYPED_VALUE F94_3035(EIF_REFERENCE);
extern void EIF_Minit94(void);

#ifdef __cplusplus
}
#endif

#include "eif_path_name.h"
#include "eif_dir.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {OPERATING_ENVIRONMENT}.directory_separator */
RTOID (F94_3029)
EIF_TYPED_VALUE F94_3029 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "directory_separator";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRB(EIF_CHARACTER_8)
	RTOTDB(EIF_CHARACTER_8, F94_3029);

	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_CHAR8, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 93, Current, 0, 0, 2900);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(93, Current, 2900);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x08000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(93, 37, Dtype(Current)))(Current)).it_c1);
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_CHAR8; r.it_c1 = Result; return r; }
#undef Result
}

/* {OPERATING_ENVIRONMENT}.current_directory_name_representation */
RTOID (F94_3030)
EIF_TYPED_VALUE F94_3030 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "current_directory_name_representation";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F94_3030);

	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 93, Current, 0, 0, 2901);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(93, Current, 2901);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(93, 38, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef Result
}

/* {OPERATING_ENVIRONMENT}.home_directory_supported */
EIF_TYPED_VALUE F94_3031 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "home_directory_supported";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 93, Current, 0, 0, 2902);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(93, Current, 2902);
	RTIV(Current, RTAL);Result = (EIF_BOOLEAN) EIF_TEST(eif_home_dir_supported());
	
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

/* {OPERATING_ENVIRONMENT}.root_directory_supported */
EIF_TYPED_VALUE F94_3032 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "root_directory_supported";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 93, Current, 0, 0, 2903);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(93, Current, 2903);
	RTIV(Current, RTAL);Result = (EIF_BOOLEAN) EIF_TEST(eif_root_dir_supported());
	
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

/* {OPERATING_ENVIRONMENT}.case_sensitive_path_names */
EIF_TYPED_VALUE F94_3033 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "case_sensitive_path_names";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 93, Current, 0, 0, 2904);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(93, Current, 2904);
	RTIV(Current, RTAL);Result = (EIF_BOOLEAN) EIF_TEST(eif_case_sensitive_path_names());
	
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

/* {OPERATING_ENVIRONMENT}.c_dir_separator */
EIF_TYPED_VALUE F94_3034 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "c_dir_separator";
	RTEX;
	EIF_CHARACTER_8 Result = ((EIF_CHARACTER_8) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_CHAR8, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 93, Current, 0, 0, 2905);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(93, Current, 2905);
	RTIV(Current, RTAL);Result = (EIF_CHARACTER_8) eif_dir_separator();
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_CHAR8; r.it_c1 = Result; return r; }
}

/* {OPERATING_ENVIRONMENT}.eif_current_dir_representation */
EIF_TYPED_VALUE F94_3035 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "eif_current_dir_representation";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 93, Current, 0, 0, 2906);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(93, Current, 2906);
	RTIV(Current, RTAL);Result = (EIF_REFERENCE) eif_current_dir_representation();
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

void EIF_Minit94 (void)
{
	GTCX
	RTOTS (3029,F94_3029)
	RTOTS (3030,F94_3030)
}


#ifdef __cplusplus
}
#endif
