/*
 * Code for class EV_ITEM_PIXMAP_SCALER_I
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F930_17335(EIF_REFERENCE);
extern EIF_TYPED_VALUE F930_17336(EIF_REFERENCE);
extern void F930_17337(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F930_17339(EIF_REFERENCE);
extern EIF_TYPED_VALUE F930_17340(EIF_REFERENCE);
extern EIF_TYPED_VALUE F930_17341(EIF_REFERENCE);
static EIF_TYPED_VALUE F930_17342_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F930_17342(EIF_REFERENCE);
extern void EIF_Minit930(void);

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

/* {EV_ITEM_PIXMAP_SCALER_I}.pixmaps_width */
EIF_TYPED_VALUE F930_17335 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(929,55, Dtype(Current)));
	return r;
}


/* {EV_ITEM_PIXMAP_SCALER_I}.pixmaps_height */
EIF_TYPED_VALUE F930_17336 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(929,56, Dtype(Current)));
	return r;
}


/* {EV_ITEM_PIXMAP_SCALER_I}.set_pixmaps_size */
void F930_17337 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "set_pixmaps_size";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 929, Current, 0, 2, 21115);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(929, Current, 21115);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(929, 55, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(929, 56, dtype));
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(ti4_1 != arg1) || (EIF_BOOLEAN)(ti4_2 != arg2))) {
		RTHOOK(2);
		RTDBGAA(Current, dtype, 929, 55, 0x10000000, 1); /* pixmaps_width */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(929, 55, dtype)) = (EIF_INTEGER_32) arg1;
		RTHOOK(3);
		RTDBGAA(Current, dtype, 929, 56, 0x10000000, 1); /* pixmaps_height */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(929, 56, dtype)) = (EIF_INTEGER_32) arg2;
		RTHOOK(4);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(929, 58, dtype))(Current);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("width_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(929, 55, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(6);
		RTCT("height_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(929, 56, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg2)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef arg2
#undef arg1
}

/* {EV_ITEM_PIXMAP_SCALER_I}.initialize_pixmaps */
void F930_17339 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "initialize_pixmaps";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 929, Current, 0, 0, 21116);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(929, Current, 21116);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 929, 55, 0x10000000, 1); /* pixmaps_width */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(929, 60, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(929, 55, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 929, 56, 0x10000000, 1); /* pixmaps_height */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(929, 61, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(929, 56, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_ITEM_PIXMAP_SCALER_I}.default_pixmaps_width */
EIF_TYPED_VALUE F930_17340 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 16L);
	return r;
}

/* {EV_ITEM_PIXMAP_SCALER_I}.default_pixmaps_height */
EIF_TYPED_VALUE F930_17341 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 16L);
	return r;
}

/* {EV_ITEM_PIXMAP_SCALER_I}.interface */
static EIF_TYPED_VALUE F930_17342_body (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "interface";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 929, Current, 0, 0, 21119);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(929, Current, 21119);
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

EIF_TYPED_VALUE F930_17342 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(929,62, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(929, 62, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F930_17342_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(929,62, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit930 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
