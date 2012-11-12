/*
 * Code for class EV_CHARACTER_FORMAT_EFFECTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F71_2703(EIF_REFERENCE);
extern EIF_TYPED_VALUE F71_2704(EIF_REFERENCE);
extern EIF_TYPED_VALUE F71_2705(EIF_REFERENCE);
extern EIF_TYPED_VALUE F71_2706(EIF_REFERENCE);
extern void F71_2707(EIF_REFERENCE);
extern void F71_2708(EIF_REFERENCE);
extern void F71_2709(EIF_REFERENCE);
extern void F71_2710(EIF_REFERENCE);
extern void F71_2711(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit71(void);

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

/* {EV_CHARACTER_FORMAT_EFFECTS}.is_striked_out */
EIF_TYPED_VALUE F71_2703 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(70,32, Dtype(Current)));
	return r;
}


/* {EV_CHARACTER_FORMAT_EFFECTS}.is_underlined */
EIF_TYPED_VALUE F71_2704 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(70,33, Dtype(Current)));
	return r;
}


/* {EV_CHARACTER_FORMAT_EFFECTS}.vertical_offset */
EIF_TYPED_VALUE F71_2705 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(70,34, Dtype(Current)));
	return r;
}


/* {EV_CHARACTER_FORMAT_EFFECTS}.is_in_default_state */
EIF_TYPED_VALUE F71_2706 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_in_default_state";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 70, Current, 0, 0, 2568);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(70, Current, 2568);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = *(EIF_BOOLEAN *)(Current + RTWA(70, 32, dtype));
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(70, 33, dtype));
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(70, 34, dtype));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) !Result && (EIF_BOOLEAN) !tb1) && (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L)));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {EV_CHARACTER_FORMAT_EFFECTS}.enable_striked_out */
void F71_2707 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "enable_striked_out";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 70, Current, 0, 0, 2569);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(70, Current, 2569);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 70, 32, 0x04000000, 1); /* is_striked_out */
	
	*(EIF_BOOLEAN *)(Current + RTWA(70, 32, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("is_striked_out", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(70, 32, dtype));
		if (tb1) {
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
	RTLO(2);
	RTEE;
}

/* {EV_CHARACTER_FORMAT_EFFECTS}.disable_striked_out */
void F71_2708 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disable_striked_out";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 70, Current, 0, 0, 2570);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(70, Current, 2570);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 70, 32, 0x04000000, 1); /* is_striked_out */
	
	*(EIF_BOOLEAN *)(Current + RTWA(70, 32, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_striked_out", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(70, 32, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
	RTLO(2);
	RTEE;
}

/* {EV_CHARACTER_FORMAT_EFFECTS}.enable_underlined */
void F71_2709 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "enable_underlined";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 70, Current, 0, 0, 2571);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(70, Current, 2571);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 70, 33, 0x04000000, 1); /* is_underlined */
	
	*(EIF_BOOLEAN *)(Current + RTWA(70, 33, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("is_underlined", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(70, 33, dtype));
		if (tb1) {
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
	RTLO(2);
	RTEE;
}

/* {EV_CHARACTER_FORMAT_EFFECTS}.disable_underlined */
void F71_2710 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disable_underlined";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 70, Current, 0, 0, 2572);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(70, Current, 2572);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 70, 33, 0x04000000, 1); /* is_underlined */
	
	*(EIF_BOOLEAN *)(Current + RTWA(70, 33, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_underlined", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(70, 33, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
	RTLO(2);
	RTEE;
}

/* {EV_CHARACTER_FORMAT_EFFECTS}.set_vertical_offset */
void F71_2711 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_vertical_offset";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 70, Current, 0, 1, 2573);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(70, Current, 2573);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 70, 34, 0x10000000, 1); /* vertical_offset */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(70, 34, dtype)) = (EIF_INTEGER_32) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("vertical_offset_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(70, 34, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
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

void EIF_Minit71 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
