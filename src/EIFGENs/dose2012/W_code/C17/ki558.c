/*
 * Code for class KI_CHARACTER_OUTPUT_STREAM
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F558_9950(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F558_9951(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9952(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9953(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9954(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9955(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9956(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9957(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9958(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9959(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9960(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F558_9961(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F558_9963(EIF_REFERENCE);
extern EIF_TYPED_VALUE F558_9964(EIF_REFERENCE);
extern void EIF_Minit558(void);

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

/* {KI_CHARACTER_OUTPUT_STREAM}.put_substring */
void F558_9950 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "put_substring";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 557, Current, 0, 3, 12353);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12353);
	if (arg1) {
		RTCC(arg1, 557, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("s_large_enough", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 >= ((EIF_INTEGER_32) 1L)), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("e_small_enough", EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(787, 107, "count", arg1));
		RTTE((EIF_BOOLEAN) (arg3 <= ti4_1), label_1);
		RTCK;
		RTHOOK(5);
		RTCT("valid_interval", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 <= (EIF_INTEGER_32) (arg3 + ((EIF_INTEGER_32) 1L))), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(6);
	if ((EIF_BOOLEAN) (arg2 <= arg3)) {
		RTHOOK(7);
		ui4_1 = arg2;
		ui4_2 = arg3;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(787, 239, "substring", arg1))(arg1, ui4_1x, ui4_2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 35, dtype))(Current, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg3
#undef arg2
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_integer */
void F558_9951 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_integer";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui8_1x = {0, SK_INT64};
#define ui8_1 ui8_1x.it_i8
	EIF_INTEGER_64 ti8_1;
	EIF_BOOLEAN tb1;
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
	
	RTEAA(l_feature_name, 557, Current, 0, 1, 12340);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12340);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ti8_1 = (EIF_INTEGER_64) arg1;
	ui8_1 = ti8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef ui8_1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_integer_8 */
void F558_9952 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_integer_8";
	RTEX;
#define arg1 arg1x.it_i1
	EIF_TYPED_VALUE ui8_1x = {0, SK_INT64};
#define ui8_1 ui8_1x.it_i8
	EIF_INTEGER_64 ti8_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i1 = * (EIF_INTEGER_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 557, Current, 0, 1, 12341);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12341);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ti8_1 = (EIF_INTEGER_64) arg1;
	ui8_1 = ti8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef ui8_1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_integer_16 */
void F558_9953 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_integer_16";
	RTEX;
#define arg1 arg1x.it_i2
	EIF_TYPED_VALUE ui8_1x = {0, SK_INT64};
#define ui8_1 ui8_1x.it_i8
	EIF_INTEGER_64 ti8_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i2 = * (EIF_INTEGER_16 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT16,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 557, Current, 0, 1, 12342);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12342);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ti8_1 = (EIF_INTEGER_64) arg1;
	ui8_1 = ti8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef ui8_1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_integer_32 */
void F558_9954 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_integer_32";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE ui8_1x = {0, SK_INT64};
#define ui8_1 ui8_1x.it_i8
	EIF_INTEGER_64 ti8_1;
	EIF_BOOLEAN tb1;
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
	
	RTEAA(l_feature_name, 557, Current, 0, 1, 12343);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12343);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ti8_1 = (EIF_INTEGER_64) arg1;
	ui8_1 = ti8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef ui8_1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_integer_64 */
void F558_9955 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_integer_64";
	RTEX;
	EIF_INTEGER_64 loc1 = (EIF_INTEGER_64) 0;
	EIF_INTEGER_64 loc2 = (EIF_INTEGER_64) 0;
#define arg1 arg1x.it_i8
	EIF_TYPED_VALUE ui8_1x = {0, SK_INT64};
#define ui8_1 ui8_1x.it_i8
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_INTEGER_64 ti8_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i8 = * (EIF_INTEGER_64 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT64,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT64, &loc1);
	RTLU(SK_INT64, &loc2);
	
	RTEAA(l_feature_name, 557, Current, 2, 1, 12344);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12344);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
	if ((EIF_BOOLEAN)(arg1 == ti8_1)) {
		RTHOOK(3);
		uc1 = (EIF_CHARACTER_8) '0';
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
	} else {
		RTHOOK(4);
		ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
		if ((EIF_BOOLEAN) (arg1 < ti8_1)) {
			RTHOOK(5);
			uc1 = (EIF_CHARACTER_8) '-';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
			RTHOOK(6);
			RTDBGAL(Current, 1, 0x24000000, 1, 0); /* loc1 */
			
			ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 1L);
			loc1 = (EIF_INTEGER_64) (EIF_INTEGER_64) -(EIF_INTEGER_64) (arg1 + ti8_1);
			RTHOOK(7);
			RTDBGAL(Current, 2, 0x24000000, 1, 0); /* loc2 */
			
			ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 10L);
			loc2 = (EIF_INTEGER_64) (EIF_INTEGER_64) (loc1 / ti8_1);
			RTHOOK(8);
			ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 10L);
			switch ((EIF_INTEGER_64) (loc1 % ti8_1)) {
				case RTI64C(0):
					RTHOOK(9);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
					if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
						RTHOOK(10);
						ui8_1 = loc2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					}
					RTHOOK(11);
					uc1 = (EIF_CHARACTER_8) '1';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(1):
					RTHOOK(12);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
					if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
						RTHOOK(13);
						ui8_1 = loc2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					}
					RTHOOK(14);
					uc1 = (EIF_CHARACTER_8) '2';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(2):
					RTHOOK(15);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
					if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
						RTHOOK(16);
						ui8_1 = loc2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					}
					RTHOOK(17);
					uc1 = (EIF_CHARACTER_8) '3';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(3):
					RTHOOK(18);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
					if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
						RTHOOK(19);
						ui8_1 = loc2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					}
					RTHOOK(20);
					uc1 = (EIF_CHARACTER_8) '4';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(4):
					RTHOOK(21);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
					if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
						RTHOOK(22);
						ui8_1 = loc2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					}
					RTHOOK(23);
					uc1 = (EIF_CHARACTER_8) '5';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(5):
					RTHOOK(24);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
					if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
						RTHOOK(25);
						ui8_1 = loc2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					}
					RTHOOK(26);
					uc1 = (EIF_CHARACTER_8) '6';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(6):
					RTHOOK(27);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
					if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
						RTHOOK(28);
						ui8_1 = loc2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					}
					RTHOOK(29);
					uc1 = (EIF_CHARACTER_8) '7';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(7):
					RTHOOK(30);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
					if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
						RTHOOK(31);
						ui8_1 = loc2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					}
					RTHOOK(32);
					uc1 = (EIF_CHARACTER_8) '8';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(8):
					RTHOOK(33);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
					if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
						RTHOOK(34);
						ui8_1 = loc2;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					}
					RTHOOK(35);
					uc1 = (EIF_CHARACTER_8) '9';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(9):
					RTHOOK(36);
					ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 1L);
					ui8_1 = (EIF_INTEGER_64) (loc2 + ti8_1);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
					RTHOOK(37);
					uc1 = (EIF_CHARACTER_8) '0';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				default:
					RTEC(EN_WHEN);
			}
		} else {
			RTHOOK(38);
			RTDBGAL(Current, 1, 0x24000000, 1, 0); /* loc1 */
			
			loc1 = (EIF_INTEGER_64) arg1;
			RTHOOK(39);
			RTDBGAL(Current, 2, 0x24000000, 1, 0); /* loc2 */
			
			ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 10L);
			loc2 = (EIF_INTEGER_64) (EIF_INTEGER_64) (loc1 / ti8_1);
			RTHOOK(40);
			ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 0L);
			if ((EIF_BOOLEAN)(loc2 != ti8_1)) {
				RTHOOK(41);
				ui8_1 = loc2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 41, dtype))(Current, ui8_1x);
			}
			RTHOOK(42);
			ti8_1 = (EIF_INTEGER_64) ((EIF_INTEGER_32) 10L);
			switch ((EIF_INTEGER_64) (loc1 % ti8_1)) {
				case RTI64C(0):
					RTHOOK(43);
					uc1 = (EIF_CHARACTER_8) '0';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(1):
					RTHOOK(44);
					uc1 = (EIF_CHARACTER_8) '1';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(2):
					RTHOOK(45);
					uc1 = (EIF_CHARACTER_8) '2';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(3):
					RTHOOK(46);
					uc1 = (EIF_CHARACTER_8) '3';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(4):
					RTHOOK(47);
					uc1 = (EIF_CHARACTER_8) '4';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(5):
					RTHOOK(48);
					uc1 = (EIF_CHARACTER_8) '5';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(6):
					RTHOOK(49);
					uc1 = (EIF_CHARACTER_8) '6';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(7):
					RTHOOK(50);
					uc1 = (EIF_CHARACTER_8) '7';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(8):
					RTHOOK(51);
					uc1 = (EIF_CHARACTER_8) '8';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				case RTI64C(9):
					RTHOOK(52);
					uc1 = (EIF_CHARACTER_8) '9';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
					break;
				default:
					RTEC(EN_WHEN);
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(53);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef ui8_1
#undef uc1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_natural_8 */
void F558_9956 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_natural_8";
	RTEX;
#define arg1 arg1x.it_n1
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_NATURAL_64 tu8_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n1 = * (EIF_NATURAL_8 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 557, Current, 0, 1, 12345);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12345);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tu8_1 = (EIF_NATURAL_64) arg1;
	uu8_1 = tu8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 45, dtype))(Current, uu8_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef uu8_1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_natural_16 */
void F558_9957 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_natural_16";
	RTEX;
#define arg1 arg1x.it_n2
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_NATURAL_64 tu8_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n2 = * (EIF_NATURAL_16 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT16,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 557, Current, 0, 1, 12346);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12346);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tu8_1 = (EIF_NATURAL_64) arg1;
	uu8_1 = tu8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 45, dtype))(Current, uu8_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef uu8_1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_natural_32 */
void F558_9958 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_natural_32";
	RTEX;
#define arg1 arg1x.it_n4
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_NATURAL_64 tu8_1;
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
	
	RTEAA(l_feature_name, 557, Current, 0, 1, 12347);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12347);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tu8_1 = (EIF_NATURAL_64) arg1;
	uu8_1 = tu8_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 45, dtype))(Current, uu8_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef uu8_1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_natural_64 */
void F558_9959 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_natural_64";
	RTEX;
	EIF_NATURAL_64 loc1 = (EIF_NATURAL_64) 0;
	EIF_NATURAL_64 loc2 = (EIF_NATURAL_64) 0;
#define arg1 arg1x.it_n8
	EIF_TYPED_VALUE uu8_1x = {0, SK_UINT64};
#define uu8_1 uu8_1x.it_n8
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_NATURAL_64 tu8_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_n8 = * (EIF_NATURAL_64 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_UINT64,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT64, &loc1);
	RTLU(SK_UINT64, &loc2);
	
	RTEAA(l_feature_name, 557, Current, 2, 1, 12348);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12348);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 0L);
	if ((EIF_BOOLEAN)(arg1 == tu8_1)) {
		RTHOOK(3);
		uc1 = (EIF_CHARACTER_8) '0';
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
	} else {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x3C000000, 1, 0); /* loc1 */
		
		loc1 = (EIF_NATURAL_64) arg1;
		RTHOOK(5);
		RTDBGAL(Current, 2, 0x3C000000, 1, 0); /* loc2 */
		
		tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		loc2 = (EIF_NATURAL_64) (EIF_NATURAL_64) (loc1 / tu8_1);
		RTHOOK(6);
		tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 0L);
		if ((EIF_BOOLEAN)(loc2 != tu8_1)) {
			RTHOOK(7);
			uu8_1 = loc2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 45, dtype))(Current, uu8_1x);
		}
		RTHOOK(8);
		tu8_1 = (EIF_NATURAL_64) ((EIF_INTEGER_32) 10L);
		switch ((EIF_NATURAL_64) (loc1 % tu8_1)) {
			case RTU64C(0):
				RTHOOK(9);
				uc1 = (EIF_CHARACTER_8) '0';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			case RTU64C(1):
				RTHOOK(10);
				uc1 = (EIF_CHARACTER_8) '1';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			case RTU64C(2):
				RTHOOK(11);
				uc1 = (EIF_CHARACTER_8) '2';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			case RTU64C(3):
				RTHOOK(12);
				uc1 = (EIF_CHARACTER_8) '3';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			case RTU64C(4):
				RTHOOK(13);
				uc1 = (EIF_CHARACTER_8) '4';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			case RTU64C(5):
				RTHOOK(14);
				uc1 = (EIF_CHARACTER_8) '5';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			case RTU64C(6):
				RTHOOK(15);
				uc1 = (EIF_CHARACTER_8) '6';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			case RTU64C(7):
				RTHOOK(16);
				uc1 = (EIF_CHARACTER_8) '7';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			case RTU64C(8):
				RTHOOK(17);
				uc1 = (EIF_CHARACTER_8) '8';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			case RTU64C(9):
				RTHOOK(18);
				uc1 = (EIF_CHARACTER_8) '9';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 53, dtype))(Current, uc1x);
				break;
			default:
				RTEC(EN_WHEN);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(19);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef uu8_1
#undef uc1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.put_boolean */
void F558_9960 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "put_boolean";
	RTEX;
#define arg1 arg1x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 557, Current, 0, 1, 12349);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12349);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	if (arg1) {
		RTHOOK(3);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 49, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 35, dtype))(Current, ur1x);
	} else {
		RTHOOK(4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 50, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 35, dtype))(Current, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.append */
void F558_9961 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "append";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc1);
	RTLR(3,tr1);
	RTLR(4,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 557, Current, 1, 1, 12350);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(557, Current, 12350);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {557,1591,766,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1591, typarr0)));
			RTCC(arg1, 557, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(557, 51, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("an_input_stream_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("an_input_stream_open_read", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1591, 36, "is_open_read", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF80002C2, 0, 0); /* loc1 */
	
	loc1 = RTCCL(arg1);
	loc1 = RTRV(eif_non_attached_type(706), loc1);
	RTHOOK(5);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(6);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(706, 43, "end_of_input", loc1))(loc1)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTHOOK(7);
			ui4_1 = ((EIF_INTEGER_32) 512L);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(706, 38, "read_string", loc1))(loc1, ui4_1x);
		}
		for (;;) {
			RTHOOK(8);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(706, 43, "end_of_input", loc1))(loc1)).it_b);
			if (tb1) break;
			RTHOOK(9);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(706, 40, "last_string", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(557, 35, dtype))(Current, ur1x);
			RTHOOK(10);
			ui4_1 = ((EIF_INTEGER_32) 512L);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(706, 38, "read_string", loc1))(loc1, ui4_1x);
		}
	} else {
		RTHOOK(11);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1599, 33, 1599))(Current, ur1x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(12);
		RTCT("end_of_input", EX_POST);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1591, 38, "end_of_input", arg1))(arg1)).it_b);
		if (tb2) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(13);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {KI_CHARACTER_OUTPUT_STREAM}.true_constant */
RTOID (F558_9963)


EIF_TYPED_VALUE F558_9963 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F558_9963,12352,RTMS_EX_H("True",4,1416787301));
}

/* {KI_CHARACTER_OUTPUT_STREAM}.false_constant */
RTOID (F558_9964)


EIF_TYPED_VALUE F558_9964 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F558_9964,12353,RTMS_EX_H("False",5,1635034981));
}

void EIF_Minit558 (void)
{
	GTCX
	RTOTS (9963,F558_9963)
	RTOTS (9964,F558_9964)
}


#ifdef __cplusplus
}
#endif
