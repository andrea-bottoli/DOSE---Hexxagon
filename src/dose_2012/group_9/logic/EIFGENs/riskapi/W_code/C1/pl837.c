/*
 * Code for class PLAYER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F837_6523(EIF_REFERENCE);
extern EIF_TYPED_VALUE F837_6524(EIF_REFERENCE);
extern EIF_TYPED_VALUE F837_6525(EIF_REFERENCE);
extern EIF_TYPED_VALUE F837_6526(EIF_REFERENCE);
extern void F837_6527(EIF_REFERENCE);
extern void EIF_Minit837(void);

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

/* {PLAYER}.id */
EIF_TYPED_VALUE F837_6523 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(836,32, Dtype(Current)));
	return r;
}


/* {PLAYER}.name */
EIF_TYPED_VALUE F837_6524 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(836,33, Dtype(Current)));
	return r;
}


/* {PLAYER}.color */
EIF_TYPED_VALUE F837_6525 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(836,34, Dtype(Current)));
	return r;
}


/* {PLAYER}.turn_token */
EIF_TYPED_VALUE F837_6526 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(836,35, Dtype(Current)));
	return r;
}


/* {PLAYER}.make */
void F837_6527 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 836, Current, 0, 0, 11757);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(836, Current, 11757);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

void EIF_Minit837 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
