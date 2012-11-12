/*
 * Code for class INVARIANT_VIOLATION
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F452_7821(EIF_REFERENCE);
extern void F452_7822(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F452_7823(EIF_REFERENCE);
extern EIF_TYPED_VALUE F452_7824(EIF_REFERENCE);
extern void EIF_Minit452(void);

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

/* {INVARIANT_VIOLATION}.code */
EIF_TYPED_VALUE F452_7821 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "code";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 451, Current, 0, 0, 7497);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(451, Current, 7497);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(368, 37, 368))(Current)).it_i4);
	Result = (EIF_INTEGER_32) Result;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {INVARIANT_VIOLATION}.set_is_entry */
void F452_7822 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_is_entry";
	RTEX;
#define arg1 arg1x.it_b
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 451, Current, 0, 1, 7498);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(451, Current, 7498);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 451, 62, 0x04000000, 1); /* is_entry */
	
	*(EIF_BOOLEAN *)(Current + RTWA(451, 62, dtype)) = (EIF_BOOLEAN) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("is_entry_set", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(451, 62, dtype));
		if ((EIF_BOOLEAN)(tb1 == arg1)) {
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

/* {INVARIANT_VIOLATION}.internal_meaning */
RTOID (F452_7823)


EIF_TYPED_VALUE F452_7823 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F452_7823,7500,RTMS_EX_H("Class invariant violated.",25,551542062));
}

/* {INVARIANT_VIOLATION}.is_entry */
EIF_TYPED_VALUE F452_7824 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(451,62, Dtype(Current)));
	return r;
}


void EIF_Minit452 (void)
{
	GTCX
	RTOTS (7823,F452_7823)
}


#ifdef __cplusplus
}
#endif
