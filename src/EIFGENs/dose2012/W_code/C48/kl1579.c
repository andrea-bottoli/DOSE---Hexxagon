/*
 * Code for class KL_CELL [CHARACTER_8]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1579_3541(EIF_REFERENCE);
extern void F1579_3542(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1579_3543(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit1579(void);

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

/* {KL_CELL}.item */
EIF_TYPED_VALUE F1579_3541 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_CHAR8;
	r.it_c1 = *(EIF_CHARACTER_8 *)(Current + RTWA(1578,32, Dtype(Current)));
	return r;
}


/* {KL_CELL}.put */
void F1579_3542 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put";
	RTEX;
#define arg1 arg1x.it_c1
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_c1 = * (EIF_CHARACTER_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_CHAR8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1578, Current, 0, 1, 3372);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1578, Current, 3372);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1578, 32, 0x08000000, 0); /* item */
	
	*(EIF_CHARACTER_8 *)(Current + RTWA(1578, 32, dtype)) = (EIF_CHARACTER_8) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("inserted", EX_POST);
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1578, 32, dtype))(Current)).it_c1);
		if ((EIF_BOOLEAN)(tc1 == arg1)) {
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

/* {KL_CELL}.make */
void F1579_3543 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
#define arg1 arg1x.it_c1
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_c1 = * (EIF_CHARACTER_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_CHAR8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1578, Current, 0, 1, 3373);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1578, Current, 3373);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1578, 32, 0x08000000, 0); /* item */
	
	*(EIF_CHARACTER_8 *)(Current + RTWA(1578, 32, dtype)) = (EIF_CHARACTER_8) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("inserted", EX_POST);
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1578, 32, dtype))(Current)).it_c1);
		if ((EIF_BOOLEAN)(tc1 == arg1)) {
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

void EIF_Minit1579 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
