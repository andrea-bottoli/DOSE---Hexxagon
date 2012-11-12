/*
 * Code for class CELL [POINTER]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1706_7043(EIF_REFERENCE);
extern void F1706_7044(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1706_7045(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit1706(void);

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

/* {CELL}.item */
EIF_TYPED_VALUE F1706_7043 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_POINTER;
	r.it_p = *(EIF_POINTER *)(Current + RTWA(1705,32, Dtype(Current)));
	return r;
}


/* {CELL}.put */
void F1706_7044 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put";
	RTEX;
#define arg1 arg1x.it_p
	EIF_POINTER tp1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1705, Current, 0, 1, 6737);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1705, Current, 6737);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1705, 32, 0x40000000, 0); /* item */
	
	*(EIF_POINTER *)(Current + RTWA(1705, 32, dtype)) = (EIF_POINTER) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("item_inserted", EX_POST);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1705, 32, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(tp1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {CELL}.replace */
void F1706_7045 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "replace";
	RTEX;
#define arg1 arg1x.it_p
	EIF_POINTER tp1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1705, Current, 0, 1, 6738);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1705, Current, 6738);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1705, 32, 0x40000000, 0); /* item */
	
	*(EIF_POINTER *)(Current + RTWA(1705, 32, dtype)) = (EIF_POINTER) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("item_inserted", EX_POST);
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1705, 32, dtype))(Current)).it_p);
		if ((EIF_BOOLEAN)(tp1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

void EIF_Minit1706 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
