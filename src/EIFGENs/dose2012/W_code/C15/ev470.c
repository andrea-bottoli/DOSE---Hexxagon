/*
 * Code for class EV_PIXEL_BUFFER_ITERATOR
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F470_8532(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F470_8533(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8534(EIF_REFERENCE);
extern void F470_8535(EIF_REFERENCE);
extern void F470_8536(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8537(EIF_REFERENCE);
extern void F470_8538(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8539(EIF_REFERENCE);
extern void F470_8540(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F470_8541(EIF_REFERENCE);
extern void F470_8542(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F470_8543(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8544(EIF_REFERENCE);
extern void F470_8545(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F470_8546(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8547(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8548(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8549(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8550(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8551(EIF_REFERENCE);
extern EIF_TYPED_VALUE F470_8552(EIF_REFERENCE);
extern void EIF_Minit470(void);

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

/* {EV_PIXEL_BUFFER_ITERATOR}.make_for_pixel_buffer */
void F470_8532 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make_for_pixel_buffer";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 1, 8404);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8404);
	if (arg1) {
		RTCC(arg1, 469, l_feature_name, 1, 800);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 469, 68, 0xF8000388, 0); /* pixel_buffer */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(800, 63, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(469, 68, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 469, 67, 0xF800002E, 0); /* internal_item */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(469, 67, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(46, 31, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(469, 67, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 67, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 68, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(46, 43, "set_pixel_buffer", tr1))(tr1, ur1x);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 469, 66, 0x38000000, 1); /* max_row_value */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(800, 59, "height", arg1))(arg1)).it_i4);
	RTNHOOK(4,1);
	tu4_1 = (EIF_NATURAL_32) ti4_1;
	tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 66, dtype)) = (EIF_NATURAL_32) (EIF_NATURAL_32) (tu4_1 - tu4_2);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 469, 65, 0x38000000, 1); /* max_column_value */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(800, 58, "width", arg1))(arg1)).it_i4);
	RTNHOOK(5,1);
	tu4_1 = (EIF_NATURAL_32) ti4_1;
	tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 65, dtype)) = (EIF_NATURAL_32) (EIF_NATURAL_32) (tu4_1 - tu4_2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef arg1
}

/* {EV_PIXEL_BUFFER_ITERATOR}.start */
void F470_8533 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "start";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8405);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8405);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 469, 66, 0x38000000, 1); /* max_row_value */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 68, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(904, 72, "height", tr1))(tr1)).it_i4);
	RTNHOOK(1,2);
	tu4_1 = (EIF_NATURAL_32) ti4_1;
	tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 66, dtype)) = (EIF_NATURAL_32) (EIF_NATURAL_32) (tu4_1 - tu4_2);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 469, 65, 0x38000000, 1); /* max_column_value */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 68, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(904, 71, "width", tr1))(tr1)).it_i4);
	RTNHOOK(2,2);
	tu4_1 = (EIF_NATURAL_32) ti4_1;
	tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 65, dtype)) = (EIF_NATURAL_32) (EIF_NATURAL_32) (tu4_1 - tu4_2);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 469, 69, 0x38000000, 1); /* column_value */
	
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L);
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype)) = (EIF_NATURAL_32) tu4_1;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 469, 70, 0x38000000, 1); /* row_value */
	
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L);
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 70, dtype)) = (EIF_NATURAL_32) tu4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
}

/* {EV_PIXEL_BUFFER_ITERATOR}.after */
EIF_TYPED_VALUE F470_8534 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "after";
	RTEX;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8406);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8406);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 70, dtype));
	tu4_2 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 66, dtype));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (tu4_1 > tu4_2);
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

/* {EV_PIXEL_BUFFER_ITERATOR}.finish */
void F470_8535 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "finish";
	RTEX;
	EIF_NATURAL_32 tu4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8407);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8407);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 469, 70, 0x38000000, 1); /* row_value */
	
	tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 66, dtype));
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 70, dtype)) = (EIF_NATURAL_32) tu4_1;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 469, 69, 0x38000000, 1); /* column_value */
	
	tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 65, dtype));
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype)) = (EIF_NATURAL_32) tu4_1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_PIXEL_BUFFER_ITERATOR}.forth */
void F470_8536 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "forth";
	RTEX;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8408);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8408);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_after", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 52, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype));
	tu4_2 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 65, dtype));
	if ((EIF_BOOLEAN)(tu4_1 == tu4_2)) {
		RTHOOK(3);
		RTDBGAA(Current, dtype, 469, 69, 0x38000000, 1); /* column_value */
		
		tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L);
		*(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype)) = (EIF_NATURAL_32) tu4_1;
		RTHOOK(4);
		RTDBGAA(Current, dtype, 469, 70, 0x38000000, 1); /* row_value */
		
		tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
		(*(EIF_NATURAL_32 *)(Current + RTWA(469, 70, dtype))) += tu4_2;
	} else {
		RTHOOK(5);
		RTDBGAA(Current, dtype, 469, 69, 0x38000000, 1); /* column_value */
		
		tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
		(*(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype))) += tu4_2;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_PIXEL_BUFFER_ITERATOR}.before */
EIF_TYPED_VALUE F470_8537 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "before";
	RTEX;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8409);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(469, Current, 8409);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 70, Dtype(Current)));
	tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) (tu4_1 < tu4_2);
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

/* {EV_PIXEL_BUFFER_ITERATOR}.back */
void F470_8538 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "back";
	RTEX;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8410);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8410);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_before", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 55, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype));
	tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L);
	if ((EIF_BOOLEAN)(tu4_1 == tu4_2)) {
		RTHOOK(3);
		RTDBGAA(Current, dtype, 469, 69, 0x38000000, 1); /* column_value */
		
		tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 65, dtype));
		*(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype)) = (EIF_NATURAL_32) tu4_1;
		RTHOOK(4);
		RTDBGAA(Current, dtype, 469, 70, 0x38000000, 1); /* row_value */
		
		tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
		(*(EIF_NATURAL_32 *)(Current + RTWA(469, 70, dtype))) -= tu4_2;
	} else {
		RTHOOK(5);
		RTDBGAA(Current, dtype, 469, 69, 0x38000000, 1); /* column_value */
		
		tu4_2 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
		(*(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype))) -= tu4_2;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_PIXEL_BUFFER_ITERATOR}.is_empty */
EIF_TYPED_VALUE F470_8539 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_empty";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8411);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(469, Current, 8411);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {EV_PIXEL_BUFFER_ITERATOR}.set_column */
void F470_8540 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_column";
	RTEX;
#define arg1 arg1x.it_n4
	EIF_NATURAL_32 tu4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n4 = * (EIF_NATURAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 1, 8412);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8412);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_column_valid", EX_PRE);
		tb1 = '\0';
		tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
		if ((EIF_BOOLEAN) (arg1 >= tu4_1)) {
			tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 65, dtype));
			tb1 = (EIF_BOOLEAN) (arg1 <= tu4_1);
		}
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 469, 69, 0x38000000, 1); /* column_value */
	
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype)) = (EIF_NATURAL_32) (EIF_NATURAL_32) (arg1 - tu4_1);
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

/* {EV_PIXEL_BUFFER_ITERATOR}.column */
EIF_TYPED_VALUE F470_8541 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "column";
	RTEX;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8413);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(469, Current, 8413);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x38000000, 1,0); /* Result */
	
	Result = *(EIF_NATURAL_32 *)(Current + RTWA(469, 69, Dtype(Current)));
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
	Result = (EIF_NATURAL_32) (EIF_NATURAL_32) (Result + tu4_1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
}

/* {EV_PIXEL_BUFFER_ITERATOR}.set_row */
void F470_8542 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_row";
	RTEX;
#define arg1 arg1x.it_n4
	EIF_NATURAL_32 tu4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n4 = * (EIF_NATURAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 1, 8414);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8414);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_row_valid", EX_PRE);
		tb1 = '\0';
		tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
		if ((EIF_BOOLEAN) (arg1 >= tu4_1)) {
			tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 66, dtype));
			tb1 = (EIF_BOOLEAN) (arg1 <= tu4_1);
		}
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 469, 70, 0x38000000, 1); /* row_value */
	
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
	*(EIF_NATURAL_32 *)(Current + RTWA(469, 70, dtype)) = (EIF_NATURAL_32) (EIF_NATURAL_32) (arg1 - tu4_1);
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

/* {EV_PIXEL_BUFFER_ITERATOR}.row */
EIF_TYPED_VALUE F470_8543 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "row";
	RTEX;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 Result = ((EIF_NATURAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8415);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(469, Current, 8415);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x38000000, 1,0); /* Result */
	
	Result = *(EIF_NATURAL_32 *)(Current + RTWA(469, 70, Dtype(Current)));
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
	Result = (EIF_NATURAL_32) (EIF_NATURAL_32) (Result + tu4_1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT32; r.it_n4 = Result; return r; }
}

/* {EV_PIXEL_BUFFER_ITERATOR}.item */
EIF_TYPED_VALUE F470_8544 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "item";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu4_2x = {0, SK_UINT32};
#define uu4_2 uu4_2x.it_n4
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8416);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8416);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_off", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 48, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 68, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	tb1 = *(EIF_BOOLEAN *)(tr1 + RTVA(904, 69, "is_locked", tr1));
	if (tb1) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0xF800002E, 0,0); /* Result */
		
		Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 67, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(4);
		tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype));
		uu4_1 = tu4_1;
		tu4_2 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 70, dtype));
		uu4_2 = tu4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(46, 44, "sync_with_pixel_buffer_value", Result))(Result, uu4_1x, uu4_2x);
	} else {
		RTHOOK(5);
		RTDBGAL(Current, 0, 0xF800002E, 0,0); /* Result */
		
		tr1 = RTLN(46);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(46, 31, Dtype(tr1)))(tr1);
		RTNHOOK(5,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef uu4_1
#undef uu4_2
}

/* {EV_PIXEL_BUFFER_ITERATOR}.update_pixel */
void F470_8545 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "update_pixel";
	RTEX;
#define arg1 arg1x.it_n4
#define arg2 arg2x.it_n4
#define arg3 arg3x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu4_2x = {0, SK_UINT32};
#define uu4_2 uu4_2x.it_n4
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_n4 = * (EIF_NATURAL_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n4 = * (EIF_NATURAL_32 *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,arg3);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT32,&arg1);
	RTLU(SK_UINT32,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 3, 8417);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8417);
	if (arg3) {
		RTCC(arg3, 469, l_feature_name, 3, 46);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_column_valid", EX_PRE);
		tb1 = '\0';
		tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
		if ((EIF_BOOLEAN) (arg1 >= tu4_1)) {
			tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 65, dtype));
			tb1 = (EIF_BOOLEAN) (arg1 <= tu4_1);
		}
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_row_valid", EX_PRE);
		tb1 = '\0';
		tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1L);
		if ((EIF_BOOLEAN) (arg2 >= tu4_1)) {
			tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 66, dtype));
			tb1 = (EIF_BOOLEAN) (arg2 <= tu4_1);
		}
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 68, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	tb1 = *(EIF_BOOLEAN *)(tr1 + RTVA(904, 69, "is_locked", tr1));
	if (tb1) {
		RTHOOK(4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(469, 68, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(46, 43, "set_pixel_buffer", arg3))(arg3, ur1x);
		RTHOOK(5);
		uu4_1 = arg1;
		uu4_2 = arg2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(46, 44, "sync_with_pixel_buffer_value", arg3))(arg3, uu4_1x, uu4_2x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef ur1
#undef uu4_1
#undef uu4_2
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_PIXEL_BUFFER_ITERATOR}.index */
EIF_TYPED_VALUE F470_8546 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "index";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_32 tu4_2;
	EIF_NATURAL_32 tu4_3;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 469, Current, 0, 0, 8418);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(469, Current, 8418);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	tu4_1 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 70, dtype));
	tu4_2 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 65, dtype));
	tu4_3 = *(EIF_NATURAL_32 *)(Current + RTWA(469, 69, dtype));
	ti4_1 = (EIF_INTEGER_32) (EIF_NATURAL_32) ((EIF_NATURAL_32) (tu4_1 * tu4_2) + tu4_3);
	Result = (EIF_INTEGER_32) ti4_1;
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

/* {EV_PIXEL_BUFFER_ITERATOR}.max_column_value */
EIF_TYPED_VALUE F470_8547 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_UINT32;
	r.it_n4 = *(EIF_NATURAL_32 *)(Current + RTWA(469,65, Dtype(Current)));
	return r;
}


/* {EV_PIXEL_BUFFER_ITERATOR}.max_row_value */
EIF_TYPED_VALUE F470_8548 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_UINT32;
	r.it_n4 = *(EIF_NATURAL_32 *)(Current + RTWA(469,66, Dtype(Current)));
	return r;
}


/* {EV_PIXEL_BUFFER_ITERATOR}.internal_item */
EIF_TYPED_VALUE F470_8549 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(469,67, Dtype(Current)));
	return r;
}


/* {EV_PIXEL_BUFFER_ITERATOR}.pixel_buffer */
EIF_TYPED_VALUE F470_8550 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(469,68, Dtype(Current)));
	return r;
}


/* {EV_PIXEL_BUFFER_ITERATOR}.column_value */
EIF_TYPED_VALUE F470_8551 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_UINT32;
	r.it_n4 = *(EIF_NATURAL_32 *)(Current + RTWA(469,69, Dtype(Current)));
	return r;
}


/* {EV_PIXEL_BUFFER_ITERATOR}.row_value */
EIF_TYPED_VALUE F470_8552 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_UINT32;
	r.it_n4 = *(EIF_NATURAL_32 *)(Current + RTWA(469,70, Dtype(Current)));
	return r;
}


void EIF_Minit470 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
