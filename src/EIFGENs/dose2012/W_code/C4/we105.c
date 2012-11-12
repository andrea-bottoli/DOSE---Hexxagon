/*
 * Code for class WEL_HDF_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F105_3215(EIF_REFERENCE);
extern EIF_TYPED_VALUE F105_3216(EIF_REFERENCE);
extern EIF_TYPED_VALUE F105_3217(EIF_REFERENCE);
extern EIF_TYPED_VALUE F105_3218(EIF_REFERENCE);
extern EIF_TYPED_VALUE F105_3219(EIF_REFERENCE);
extern EIF_TYPED_VALUE F105_3220(EIF_REFERENCE);
extern EIF_TYPED_VALUE F105_3221(EIF_REFERENCE);
extern EIF_TYPED_VALUE F105_3222(EIF_REFERENCE);
extern EIF_TYPED_VALUE F105_3223(EIF_REFERENCE);
extern void EIF_Minit105(void);

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

/* {WEL_HDF_CONSTANTS}.hdf_center */
EIF_TYPED_VALUE F105_3215 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hdf_center";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 104, Current, 0, 0, 3080);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(104, Current, 3080);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HDF_CENTER;
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

/* {WEL_HDF_CONSTANTS}.hdf_left */
EIF_TYPED_VALUE F105_3216 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hdf_left";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 104, Current, 0, 0, 3081);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(104, Current, 3081);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HDF_LEFT;
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

/* {WEL_HDF_CONSTANTS}.hdf_right */
EIF_TYPED_VALUE F105_3217 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hdf_right";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 104, Current, 0, 0, 3082);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(104, Current, 3082);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HDF_RIGHT;
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

/* {WEL_HDF_CONSTANTS}.hdf_justify_mask */
EIF_TYPED_VALUE F105_3218 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hdf_justify_mask";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 104, Current, 0, 0, 3083);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(104, Current, 3083);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HDF_JUSTIFYMASK;
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

/* {WEL_HDF_CONSTANTS}.hdf_owner_draw */
EIF_TYPED_VALUE F105_3219 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hdf_owner_draw";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 104, Current, 0, 0, 3084);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(104, Current, 3084);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HDF_OWNERDRAW;
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

/* {WEL_HDF_CONSTANTS}.hdf_bitmap */
EIF_TYPED_VALUE F105_3220 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hdf_bitmap";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 104, Current, 0, 0, 3085);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(104, Current, 3085);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HDF_BITMAP;
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

/* {WEL_HDF_CONSTANTS}.hdf_string */
EIF_TYPED_VALUE F105_3221 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hdf_string";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 104, Current, 0, 0, 3086);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(104, Current, 3086);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HDF_STRING;
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

/* {WEL_HDF_CONSTANTS}.hdf_image */
EIF_TYPED_VALUE F105_3222 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hdf_image";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 104, Current, 0, 0, 3087);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(104, Current, 3087);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HDF_IMAGE;
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

/* {WEL_HDF_CONSTANTS}.hdf_rtl_reading */
EIF_TYPED_VALUE F105_3223 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "hdf_rtl_reading";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 104, Current, 0, 0, 3088);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(104, Current, 3088);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) HDF_RTLREADING;
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

void EIF_Minit105 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
