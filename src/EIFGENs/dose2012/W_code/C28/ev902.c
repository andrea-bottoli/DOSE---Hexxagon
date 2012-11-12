/*
 * Code for class EV_CHARACTER_FORMAT_I
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F902_16769(EIF_REFERENCE);
static EIF_TYPED_VALUE F902_16788_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F902_16788(EIF_REFERENCE);
extern void EIF_Minit902(void);

#ifdef __cplusplus
}
#endif

#include "eif_plug.h"
#include "eif_misc.h"
#include "eif_out.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {EV_CHARACTER_FORMAT_I}.out */
EIF_TYPED_VALUE F902_16769 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "out";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_8 ti1_1;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 901, Current, 2, 0, 20695);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(901, Current, 20695);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 64, dtype))(Current)).it_i4);
	RTNHOOK(1,1);
	tr1 = c_outi(ti4_1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 63, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(786, 62, "as_string_8", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(3);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 65, dtype))(Current)).it_i4);
	RTNHOOK(3,1);
	tr1 = c_outi(ti4_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(4);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 67, dtype))(Current)).it_i4);
	RTNHOOK(4,1);
	tr1 = c_outi(ti4_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(5);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 69, dtype))(Current)).it_i4);
	RTNHOOK(5,1);
	tr1 = c_outi(ti4_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(6);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 74, dtype))(Current)).it_i4);
	RTHOOK(7);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	ui4_1 = ((EIF_INTEGER_32) 16L);
	ti4_1 = eif_bit_shift_right(loc2,ui4_1);
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(8);
	ti1_1 = (EIF_INTEGER_8) loc1;
	RTNHOOK(8,1);
	tr1 = c_outi(ti1_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(9);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	ui4_1 = ((EIF_INTEGER_32) 8L);
	ti4_1 = eif_bit_shift_right(loc2,ui4_1);
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(10);
	ti1_1 = (EIF_INTEGER_8) loc1;
	RTNHOOK(10,1);
	tr1 = c_outi(ti1_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(11);
	ti1_1 = (EIF_INTEGER_8) loc2;
	RTNHOOK(11,1);
	tr1 = c_outi(ti1_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(12);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	loc2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 75, dtype))(Current)).it_i4);
	RTHOOK(13);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	ui4_1 = ((EIF_INTEGER_32) 16L);
	ti4_1 = eif_bit_shift_right(loc2,ui4_1);
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(14);
	ti1_1 = (EIF_INTEGER_8) loc1;
	RTNHOOK(14,1);
	tr1 = c_outi(ti1_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(15);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	ui4_1 = ((EIF_INTEGER_32) 8L);
	ti4_1 = eif_bit_shift_right(loc2,ui4_1);
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(16);
	ti1_1 = (EIF_INTEGER_8) loc1;
	RTNHOOK(16,1);
	tr1 = c_outi(ti1_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(17);
	ti1_1 = (EIF_INTEGER_8) loc2;
	RTNHOOK(17,1);
	tr1 = c_outi(ti1_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(18);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 71, dtype))(Current)).it_b);
	RTNHOOK(18,1);
	tr1 = (tb1 ? makestr ("True", 4) : makestr ("False", 5));
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(19);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 72, dtype))(Current)).it_b);
	RTNHOOK(19,1);
	tr1 = (tb1 ? makestr ("True", 4) : makestr ("False", 5));
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	RTHOOK(20);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(901, 73, dtype))(Current)).it_i4);
	RTNHOOK(20,1);
	tr1 = c_outi(ti4_1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", Result))(Result, ur1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(21);
		RTCT("out_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(22);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ui4_1
}

/* {EV_CHARACTER_FORMAT_I}.interface */
static EIF_TYPED_VALUE F902_16788_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 901, Current, 0, 0, 20694);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(901, Current, 20694);
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

EIF_TYPED_VALUE F902_16788 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(901,77, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(901, 77, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F902_16788_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(901,77, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit902 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
