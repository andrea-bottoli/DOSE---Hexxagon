/*
 * Code for class EV_LABEL_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1193_22695(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1193_22696(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1193_22697(EIF_REFERENCE);
extern void F1193_22698(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1193_22699(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1193_22700(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1193_22701(EIF_REFERENCE);
extern void F1193_22702(EIF_REFERENCE);
extern void F1193_22703(EIF_REFERENCE);
extern void F1193_22704(EIF_REFERENCE);
extern void F1193_22705(EIF_REFERENCE);
extern void F1193_22706(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1193_22707(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1193_22708(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1193_22709(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1193_22710(EIF_REFERENCE);
extern void F1193_22711(EIF_REFERENCE);
extern void F1193_22712(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1193_22713(EIF_REFERENCE);
extern void F1193_22714(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1193_22715(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1193_22716(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1193_22717(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1193_22718(EIF_REFERENCE);
static EIF_TYPED_VALUE F1193_22719_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1193_22719(EIF_REFERENCE);
extern void EIF_Minit1193(void);

#ifdef __cplusplus
}
#endif

#include "eif_helpers.h"
#include "eif_misc.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {EV_LABEL_IMP}.old_make */
void F1193_22695 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "old_make";
	RTEX;
#define arg1 arg1x.it_r
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
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 1, 26619);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26619);
	RTCC(arg1, 1192, l_feature_name, 1, RTWCT(1192, 1612, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("an_interface_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 32, dtype))(Current, ur1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("interface_assigned", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1612, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("base_make_called", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 45, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
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

/* {EV_LABEL_IMP}.make */
void F1193_22696 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_TYPED_VALUE ui4_5x = {0, SK_INT32};
#define ui4_5 ui4_5x.it_i4
	EIF_TYPED_VALUE ui1_1x = {0, SK_INT8};
#define ui1_1 ui1_1x.it_i1
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_8 ti1_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,tr2);
	RTLR(4,ur2);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26620);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTAOMS(22695,1);
	RTDBGEAA(1192, Current, 26620);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 686, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	RTCOMS(tr2,22695,0,"",0,0);
	ur2 = tr2;
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 0L);
	ui4_3 = ((EIF_INTEGER_32) 0L);
	ui4_4 = ((EIF_INTEGER_32) 0L);
	ui4_5 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1192, 1587, dtype))(Current, ur1x, ur2x, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ui4_5x);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 837, dtype))(Current);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 287, dtype))(Current);
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 285, dtype))(Current);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 1192, 288, 0x10000000, 1); /* text_alignment */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(63, 33, 63))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1192, 288, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(6);
	RTDBGAA(Current, dtype, 1192, 1600, 0x10000000, 1); /* vertical_text_alignment */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1602, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1192, 1600, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(7);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1188, 236, 1188))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("is_initialized", EX_POST);
		ti1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 38, dtype))(Current)).it_i1);
		ui1_1 = ti1_1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 44, dtype))(Current, ui1_1x)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ui1_1
}

/* {EV_LABEL_IMP}.angle */
EIF_TYPED_VALUE F1193_22697 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REAL32;
	r.it_r4 = *(EIF_REAL_32 *)(Current + RTWA(1192,1590, Dtype(Current)));
	return r;
}


/* {EV_LABEL_IMP}.set_angle */
void F1193_22698 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_angle";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REAL_32 tr4_1;
	EIF_REAL_32 tr4_2;
	EIF_REAL_32 tr4_3;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(7);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,loc2);
	RTLR(3,tr1);
	RTLR(4,loc3);
	RTLR(5,tr2);
	RTLR(6,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1192, Current, 3, 1, 26622);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26622);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr4_1 = *(EIF_REAL_32 *)(Current + RTWA(1192, 1590, dtype));
	if ((EIF_BOOLEAN)(arg1 != tr4_1)) {
		RTHOOK(2);
		RTDBGAA(Current, dtype, 1192, 1590, 0x18000000, 1); /* angle */
		
		*(EIF_REAL_32 *)(Current + RTWA(1192, 1590, dtype)) = (EIF_REAL_32) arg1;
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF800031C, 0, 0); /* loc1 */
		
		loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 290, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(4);
		RTDBGAL(Current, 2, 0xF800043A, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(796, 83, "implementation", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTCCL(tr1);
		loc2 = RTRV(eif_non_attached_type(1082), loc2);
		if (RTAL & CK_CHECK) {
			RTHOOK(5);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc2 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(6);
		RTDBGAL(Current, 3, 0xF80002A9, 0, 0); /* loc3 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1082, 187, "wel_font", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1080, 149, "log_font", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = (EIF_REFERENCE) RTCCL(tr2);
		RTHOOK(7);
		tr4_1 = *(EIF_REAL_32 *)(Current + RTWA(1192, 1590, dtype));
		tr4_2 = (EIF_REAL_32) (((EIF_INTEGER_32) 1800L));
		tr4_3 = (EIF_REAL_32) ((EIF_REAL_64) 3.14);
		tr1 = RTLN(760);
		*(EIF_REAL_32 *)tr1 = (EIF_REAL_32) ((EIF_REAL_64) ((EIF_REAL_32) (tr4_1 * tr4_2)) /  (EIF_REAL_64) (tr4_3));
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(761, 55, "rounded", tr1))(tr1)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(681, 176, "set_escapement", loc3))(loc3, ui4_1x);
		RTHOOK(8);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1082, 187, "wel_font", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(8,1);
		ur1 = RTCCL(loc3);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1080, 148, "set_indirect", tr1))(tr1, ur1x);
		RTHOOK(9);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1082, 187, "wel_font", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 842, dtype))(Current, ur1x);
		RTHOOK(10);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 1593, dtype))(Current, ur1x);
		RTHOOK(11);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 289, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 1605, dtype))(Current, ur1x);
		RTHOOK(12);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 812, dtype))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(13);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {EV_LABEL_IMP}.set_text */
void F1193_22699 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_text";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_32 tu4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,ur1);
	RTLR(5,loc2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1192, Current, 2, 1, 26623);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26623);
	if (arg1) {
		RTCC(arg1, 1192, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_text_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("no_carriage_returns", EX_PRE);
		tu4_1 = (EIF_NATURAL_32) (EIF_CHARACTER_8) '\015';
		uu4_1 = tu4_1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(780, 54, "has_code", arg1))(arg1, uu4_1x)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	tb1 = '\01';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1538, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	if (EIF_TEST(loc1)) {
		ur1 = RTCCL(arg1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(786, 88, "same_string_general", loc1))(loc1, ur1x)).it_b);
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTHOOK(4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 46, "count", arg1))(arg1)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
			RTHOOK(5);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 1604, dtype))(Current);
		} else {
			RTHOOK(6);
			ur1 = RTCCL(arg1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 1605, dtype))(Current, ur1x);
		}
		RTHOOK(7);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(944, 59, 944))(Current, ur1x);
		RTHOOK(8);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 218, dtype))(Current)).it_b);
		if (tb1) {
			RTHOOK(9);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 812, dtype))(Current);
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(10);
		RTCT("text_cloned", EX_POST);
		tb1 = '\0';
		tb2 = '\0';
		loc2 = RTCCL(arg1);
		if (EIF_TEST(loc2)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 289, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(10,1);
			ur1 = RTCCL(loc2);
			tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(786, 88, "same_string_general", tr1))(tr1, ur1x)).it_b);
			tb2 = tb3;
		}
		if (tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 289, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = !RTCEQ(tr1, loc2);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef ur1
#undef uu4_1
#undef arg1
}

/* {EV_LABEL_IMP}.set_font */
void F1193_22700 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_font";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 1, 26624);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26624);
	if (arg1) {
		RTCC(arg1, 1192, l_feature_name, 1, 796);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_font_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tb1 = '\01';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 838, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (!(EIF_BOOLEAN)(tr1 == NULL)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 835, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		ur1 = RTCCL(arg1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(796, 80, "is_equal", tr1))(tr1, ur1x)).it_b);
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTHOOK(3);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(939, 59, 939))(Current, ur1x);
		RTHOOK(4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 834, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
			RTHOOK(5);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 289, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 1605, dtype))(Current, ur1x);
		}
		RTHOOK(6);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 218, dtype))(Current)).it_b);
		if (tb1) {
			RTHOOK(7);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 812, dtype))(Current);
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("assigned", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 54, dtype))(Current)).it_b);
		if (tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 290, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(8,1);
			ur1 = RTCCL(arg1);
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(796, 80, "is_equal", tr1))(tr1, ur1x)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef ur1
#undef arg1
}

/* {EV_LABEL_IMP}.align_text_center */
void F1193_22701 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "align_text_center";
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
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26625);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26625);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(944, 64, 944))(Current);
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 218, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 812, dtype))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_LABEL_IMP}.align_text_right */
void F1193_22702 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "align_text_right";
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
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26626);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26626);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(944, 65, 944))(Current);
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 218, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 812, dtype))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_LABEL_IMP}.align_text_left */
void F1193_22703 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "align_text_left";
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
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26627);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26627);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(944, 66, 944))(Current);
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 218, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 812, dtype))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_LABEL_IMP}.align_text_top */
void F1193_22704 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "align_text_top";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26628);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26628);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1192, 1600, 0x10000000, 1); /* vertical_text_alignment */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1601, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1192, 1600, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 218, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 812, dtype))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_LABEL_IMP}.align_text_vertical_center */
void F1193_22705 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "align_text_vertical_center";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26629);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26629);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1192, 1600, 0x10000000, 1); /* vertical_text_alignment */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1602, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1192, 1600, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 218, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 812, dtype))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_LABEL_IMP}.align_text_bottom */
void F1193_22706 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "align_text_bottom";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26630);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26630);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1192, 1600, 0x10000000, 1); /* vertical_text_alignment */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1603, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(1192, 1600, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 218, dtype))(Current)).it_b);
	if (tb1) {
		RTHOOK(3);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 812, dtype))(Current);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {EV_LABEL_IMP}.vertical_text_alignment */
EIF_TYPED_VALUE F1193_22707 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1192,1600, Dtype(Current)));
	return r;
}


/* {EV_LABEL_IMP}.ev_text_alignment_top */
EIF_TYPED_VALUE F1193_22708 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	return r;
}

/* {EV_LABEL_IMP}.ev_text_alignment_vertical_center */
EIF_TYPED_VALUE F1193_22709 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	return r;
}

/* {EV_LABEL_IMP}.ev_text_alignment_bottom */
EIF_TYPED_VALUE F1193_22710 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	return r;
}

/* {EV_LABEL_IMP}.set_default_minimum_size */
void F1193_22711 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "set_default_minimum_size";
	RTEX;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,tr1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26635);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTAOMS(22710,1);
	RTDBGEAA(1192, Current, 26635);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTCOMS(tr1,22710,0," ",1,32);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 1605, Dtype(Current)))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef ur1
}

/* {EV_LABEL_IMP}.accomodate_text */
void F1193_22712 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "accomodate_text";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_REAL_32 loc4 = (EIF_REAL_32) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur4_1x = {0, SK_REAL32};
#define ur4_1 ur4_1x.it_r4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REAL_32 tr4_1;
	EIF_REAL_32 tr4_2;
	EIF_REAL_32 tr4_3;
	EIF_REAL_32 tr4_4;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,loc5);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,loc1);
	RTLR(5,ur1);
	RTLR(6,tr2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_REAL32, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 1192, Current, 5, 1, 26636);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26636);
	if (arg1) {
		RTCC(arg1, 1192, l_feature_name, 1, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_text_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_text_not_empty", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 53, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 839, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc5 = RTCCL(tr1);
	if (EIF_TEST(loc5)) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF80002DE, 0, 0); /* loc1 */
		
		ur1 = RTCCL(arg1);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1080, 156, "string_size", loc5))(loc5, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
	} else {
		RTHOOK(5);
		RTDBGAL(Current, 1, 0xF80002DE, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 835, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		ur1 = RTCCL(arg1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(796, 79, "string_size", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		loc1 = (EIF_REFERENCE) RTCCL(tr2);
	}
	RTHOOK(6);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	ti4_1 = eif_integer_32_item(RTCV(loc1),1);
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(7);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	ti4_1 = eif_integer_32_item(RTCV(loc1),2);
	loc3 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(8);
	RTDBGAL(Current, 4, 0x18000000, 1, 0); /* loc4 */
	
	loc4 = *(EIF_REAL_32 *)(Current + RTWA(1192, 1590, dtype));
	RTHOOK(9);
	tr4_1 = (EIF_REAL_32) ((EIF_REAL_64) 0.0);
	if ((EIF_BOOLEAN)(loc4 != tr4_1)) {
		RTHOOK(10);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		tr4_1 = (EIF_REAL_32) (loc2);
		ur4_1 = loc4;
		tr4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 1576, dtype))(Current, ur4_1x)).it_r4);
		tr4_3 = (EIF_REAL_32) (loc3);
		ur4_1 = loc4;
		tr4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 1574, dtype))(Current, ur4_1x)).it_r4);
		tr1 = RTLN(760);
		*(EIF_REAL_32 *)tr1 = (EIF_REAL_32) ((EIF_REAL_32) (tr4_1 * tr4_2) + (EIF_REAL_32) (tr4_3 * tr4_4));
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(761, 55, "rounded", tr1))(tr1)).it_i4);
		loc3 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(11);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		tr4_1 = (EIF_REAL_32) (loc2);
		ur4_1 = loc4;
		tr4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 1574, dtype))(Current, ur4_1x)).it_r4);
		tr4_3 = (EIF_REAL_32) (loc3);
		ur4_1 = loc4;
		tr4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1192, 1576, dtype))(Current, ur4_1x)).it_r4);
		tr1 = RTLN(760);
		*(EIF_REAL_32 *)tr1 = (EIF_REAL_32) ((EIF_REAL_32) (tr4_1 * tr4_2) + (EIF_REAL_32) (tr4_3 * tr4_4));
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(761, 55, "rounded", tr1))(tr1)).it_i4);
		loc2 = (EIF_INTEGER_32) ti4_1;
	}
	RTHOOK(12);
	RTDBGAA(Current, dtype, 1192, 1610, 0x10000000, 1); /* text_height */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1192, 1610, dtype)) = (EIF_INTEGER_32) loc3;
	RTHOOK(13);
	RTDBGAA(Current, dtype, 1192, 1611, 0x10000000, 1); /* text_width */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1192, 1611, dtype)) = (EIF_INTEGER_32) loc2;
	RTHOOK(14);
	ti4_1 = eif_abs_int32 (loc2);
	ui4_1 = ti4_1;
	ti4_2 = eif_abs_int32 (loc3);
	ui4_2 = ti4_2;
	ub1 = (EIF_BOOLEAN) 0;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1192, 753, dtype))(Current, ui4_1x, ui4_2x, ub1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(15);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ur4_1
#undef ui4_1
#undef ui4_2
#undef ub1
#undef arg1
}

/* {EV_LABEL_IMP}.default_style */
EIF_TYPED_VALUE F1193_22713 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "default_style";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26637);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26637);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1191, dtype))(Current)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1188, dtype))(Current)).it_i4);
	ui4_1 = ti4_2;
	ti4_2 = eif_bit_or(ti4_1,ui4_1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1497, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = eif_bit_or(ti4_2,ui4_1);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1493, dtype))(Current)).it_i4);
	ui4_1 = ti4_2;
	ti4_2 = eif_bit_or(ti4_1,ui4_1);
	Result = (EIF_INTEGER_32) ti4_2;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef ui4_1
}

/* {EV_LABEL_IMP}.on_draw_item */
void F1193_22714 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "on_draw_item";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc12 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc13 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc14 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ur3x = {0, SK_REF};
#define ur3 ur3x.it_r
	EIF_TYPED_VALUE ur4x = {0, SK_REF};
#define ur4 ur4x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_TYPED_VALUE ui4_5x = {0, SK_INT32};
#define ui4_5 ui4_5x.it_i4
	EIF_TYPED_VALUE ui4_6x = {0, SK_INT32};
#define ui4_6 ui4_6x.it_i4
	EIF_TYPED_VALUE ui4_7x = {0, SK_INT32};
#define ui4_7 ui4_7x.it_i4
	EIF_TYPED_VALUE uw1x = {0, SK_CHAR32};
#define uw1 uw1x.it_c4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_CHARACTER_32 tw1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(19);
	RTLR(0,arg1);
	RTLR(1,loc9);
	RTLR(2,Current);
	RTLR(3,loc8);
	RTLR(4,tr1);
	RTLR(5,ur1);
	RTLR(6,loc1);
	RTLR(7,loc5);
	RTLR(8,loc14);
	RTLR(9,loc2);
	RTLR(10,loc11);
	RTLR(11,loc4);
	RTLR(12,tr2);
	RTLR(13,ur2);
	RTLR(14,ur3);
	RTLR(15,ur4);
	RTLR(16,loc6);
	RTLR(17,loc7);
	RTLR(18,loc10);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_BOOL, &loc12);
	RTLU(SK_BOOL, &loc13);
	RTLU(SK_REF, &loc14);
	
	RTEAA(l_feature_name, 1192, Current, 14, 1, 26638);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26638);
	if (arg1) {
		RTCC(arg1, 1192, l_feature_name, 1, 1097);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 9, 0xF80003FC, 0, 0); /* loc9 */
	
	loc9 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 740, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	RTDBGAL(Current, 8, 0xF800025E, 0, 0); /* loc8 */
	
	tr1 = RTLN(606);
	ur1 = RTCCL(loc9);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(606, 66, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	loc8 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF80002D8, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1097, 167, "dc", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAL(Current, 5, 0xF80002B3, 0, 0); /* loc5 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1097, 168, "rect_item", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc5 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1538, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc14 = RTCCL(tr1);
	if (EIF_TEST(loc14)) {
		RTHOOK(6);
		RTDBGAL(Current, 12, 0x04000000, 1, 0); /* loc12 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1567, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1025, 133, "is_remote_session", tr1))(tr1)).it_b);
		loc12 = (EIF_BOOLEAN) tb1;
		RTHOOK(7);
		RTDBGAL(Current, 13, 0x04000000, 1, 0); /* loc13 */
		
		tw1 = (EIF_CHARACTER_32) (EIF_CHARACTER_8) '\012';
		uw1 = tw1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(786, 108, "occurrences", loc14))(loc14, uw1x)).it_i4);
		loc13 = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L));
		RTHOOK(8);
		if (loc12) {
			RTHOOK(9);
			RTDBGAL(Current, 2, 0xF80002D3, 0, 0); /* loc2 */
			
			loc2 = (EIF_REFERENCE) RTCCL(loc1);
		} else {
			RTHOOK(10);
			RTDBGAL(Current, 2, 0xF80002D3, 0, 0); /* loc2 */
			
			tr1 = RTLN(724);
			ur1 = RTCCL(loc1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(724, 478, Dtype(tr1)))(tr1, ur1x);
			RTNHOOK(10,1);
			loc2 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(11);
			RTDBGAL(Current, 11, 0xF800025C, 0, 0); /* loc11 */
			
			tr1 = RTLN(604);
			ur1 = RTCCL(loc1);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", loc5))(loc5)).it_i4);
			ui4_1 = ti4_1;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", loc5))(loc5)).it_i4);
			ui4_2 = ti4_2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(604, 77, Dtype(tr1)))(tr1, ur1x, ui4_1x, ui4_2x);
			RTNHOOK(11,1);
			loc11 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(12);
			ur1 = RTCCL(loc11);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 333, "select_bitmap", loc2))(loc2, ur1x);
			RTHOOK(13);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 40, "dispose", loc11))(loc11);
		}
		RTHOOK(14);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1558, dtype))(Current)).it_i4);
		loc3 = (EIF_INTEGER_32) loc3;
		RTHOOK(15);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1192, 288, dtype));
		switch (ti4_1) {
			case 1L:
				RTHOOK(16);
				RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
				
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1551, dtype))(Current)).it_i4);
				ui4_1 = ti4_1;
				ti4_1 = eif_bit_or(loc3,ui4_1);
				loc3 = (EIF_INTEGER_32) ti4_1;
				break;
			case 3L:
				RTHOOK(17);
				RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
				
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1553, dtype))(Current)).it_i4);
				ui4_1 = ti4_1;
				ti4_1 = eif_bit_or(loc3,ui4_1);
				loc3 = (EIF_INTEGER_32) ti4_1;
				break;
			default:
				RTHOOK(18);
				RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
				
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1552, dtype))(Current)).it_i4);
				ui4_1 = ti4_1;
				ti4_1 = eif_bit_or(loc3,ui4_1);
				loc3 = (EIF_INTEGER_32) ti4_1;
				break;
		}
		RTHOOK(19);
		if (loc13) {
			RTHOOK(20);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1557, dtype))(Current)).it_i4);
			ui4_1 = ti4_1;
			ti4_1 = eif_bit_or(loc3,ui4_1);
			loc3 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(21);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1192, 1600, dtype));
			switch (ti4_1) {
				case 1L:
					RTHOOK(22);
					RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1550, dtype))(Current)).it_i4);
					ui4_1 = ti4_1;
					ti4_1 = eif_bit_or(loc3,ui4_1);
					loc3 = (EIF_INTEGER_32) ti4_1;
					break;
				case 2L:
					RTHOOK(23);
					RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1555, dtype))(Current)).it_i4);
					ui4_1 = ti4_1;
					ti4_1 = eif_bit_or(loc3,ui4_1);
					loc3 = (EIF_INTEGER_32) ti4_1;
					break;
				default:
					RTHOOK(24);
					RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 1554, dtype))(Current)).it_i4);
					ui4_1 = ti4_1;
					ti4_1 = eif_bit_or(loc3,ui4_1);
					loc3 = (EIF_INTEGER_32) ti4_1;
					break;
			}
			RTHOOK(25);
			RTDBGAL(Current, 4, 0xF80002B3, 0, 0); /* loc4 */
			
			loc4 = (EIF_REFERENCE) RTCCL(loc5);
		} else {
			RTHOOK(26);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1192, 1600, dtype));
			switch (ti4_1) {
				case 1L:
					RTHOOK(27);
					RTDBGAL(Current, 4, 0xF80002B3, 0, 0); /* loc4 */
					
					loc4 = (EIF_REFERENCE) RTCCL(loc5);
					break;
				case 2L:
					RTHOOK(28);
					RTDBGAL(Current, 4, 0xF80002B3, 0, 0); /* loc4 */
					
					tr1 = RTLN(691);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", loc5))(loc5)).it_i4);
					ui4_1 = ti4_1;
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 62, "bottom", loc5))(loc5)).it_i4);
					ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(1192, 1610, dtype));
					ui4_2 = (EIF_INTEGER_32) (ti4_2 - ti4_3);
					ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 61, "right", loc5))(loc5)).it_i4);
					ui4_3 = ti4_4;
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 62, "bottom", loc5))(loc5)).it_i4);
					ui4_4 = ti4_5;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(691, 52, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
					RTNHOOK(28,1);
					loc4 = (EIF_REFERENCE) RTCCL(tr1);
					break;
				default:
					RTHOOK(29);
					RTDBGAL(Current, 4, 0xF80002B3, 0, 0); /* loc4 */
					
					tr1 = RTLN(691);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", loc5))(loc5)).it_i4);
					ui4_1 = ti4_1;
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", loc5))(loc5)).it_i4);
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", loc5))(loc5)).it_i4);
					ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(1192, 1610, dtype));
					ui4_2 = (EIF_INTEGER_32) (ti4_2 + (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_3 - ti4_4) / ((EIF_INTEGER_32) 2L)));
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 61, "right", loc5))(loc5)).it_i4);
					ui4_3 = ti4_5;
					ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 62, "bottom", loc5))(loc5)).it_i4);
					ui4_4 = ti4_6;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(691, 52, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
					RTNHOOK(29,1);
					loc4 = (EIF_REFERENCE) RTCCL(tr1);
					break;
			}
		}
		RTHOOK(30);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 450, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(30,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 665, "theme_drawer", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTNHOOK(30,2);
		ur1 = RTCCL(Current);
		ur2 = RTCCL(loc2);
		ur3 = RTCCL(loc5);
		ur4 = RTCCL(loc8);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(308, 37, "draw_widget_background", tr2))(tr2, ur1x, ur2x, ur3x, ur4x);
		RTHOOK(31);
		RTDBGAL(Current, 6, 0xF8000438, 0, 0); /* loc6 */
		
		loc6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 839, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(32);
		if ((EIF_BOOLEAN)(loc6 == NULL)) {
			RTHOOK(33);
			RTDBGAL(Current, 7, 0xF800043A, 0, 0); /* loc7 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 835, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(33,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(796, 83, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			loc7 = RTCCL(tr2);
			loc7 = RTRV(eif_non_attached_type(1082), loc7);
			if (RTAL & CK_CHECK) {
				RTHOOK(34);
				RTCT(NULL, EX_CHECK);
				if ((EIF_BOOLEAN)(loc7 != NULL)) {
					RTCK;
				} else {
					RTCF;
				}
			}
			RTHOOK(35);
			RTDBGAL(Current, 6, 0xF8000438, 0, 0); /* loc6 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1082, 187, "wel_font", loc7))(loc7)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc6 = (EIF_REFERENCE) RTCCL(tr1);
		}
		RTHOOK(36);
		ur1 = RTCCL(loc6);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 332, "select_font", loc2))(loc2, ur1x);
		RTHOOK(37);
		RTDBGAL(Current, 10, 0xF80003FD, 0, 0); /* loc10 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 164, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(37,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(795, 78, "implementation", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		loc10 = RTCCL(tr2);
		loc10 = RTRV(eif_non_attached_type(1021), loc10);
		if (RTAL & CK_CHECK) {
			RTHOOK(38);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc10 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(39);
		ur1 = RTCCL(loc10);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 321, "set_text_color", loc2))(loc2, ur1x);
		RTHOOK(40);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(723, 323, "set_background_transparent", loc2))(loc2);
		RTHOOK(41);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 260, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTHOOK(42);
			ur1 = RTCCL(loc14);
			ur2 = RTCCL(loc4);
			ui4_1 = loc3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 348, "draw_disabled_text", loc2))(loc2, ur1x, ur2x, ui4_1x);
		} else {
			RTHOOK(43);
			ur1 = RTCCL(loc14);
			ur2 = RTCCL(loc4);
			ui4_1 = loc3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 346, "draw_text", loc2))(loc2, ur1x, ur2x, ui4_1x);
		}
		RTHOOK(44);
		if ((EIF_BOOLEAN) !loc12) {
			RTHOOK(45);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 57, "left", loc5))(loc5)).it_i4);
			ui4_1 = ti4_1;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 59, "top", loc5))(loc5)).it_i4);
			ui4_2 = ti4_2;
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 63, "width", loc5))(loc5)).it_i4);
			ui4_3 = ti4_3;
			ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 64, "height", loc5))(loc5)).it_i4);
			ui4_4 = ti4_4;
			ur1 = RTCCL(loc2);
			ui4_5 = ((EIF_INTEGER_32) 0L);
			ui4_6 = ((EIF_INTEGER_32) 0L);
			ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(215, 32, 215))(Current)).it_i4);
			ui4_7 = ti4_5;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(728, 377, "bit_blt", loc1))(loc1, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ur1x, ui4_5x, ui4_6x, ui4_7x);
		}
		RTHOOK(46);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(723, 340, "unselect_all", loc2))(loc2);
		RTHOOK(47);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(723, 55, "delete", loc2))(loc2);
	} else {
		RTHOOK(48);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 450, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(48,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1104, 665, "theme_drawer", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTNHOOK(48,2);
		ur1 = RTCCL(Current);
		ur2 = RTCCL(loc1);
		ur3 = RTCCL(loc5);
		ur4 = RTCCL(loc8);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(308, 37, "draw_widget_background", tr2))(tr2, ur1x, ur2x, ur3x, ur4x);
	}
	RTHOOK(49);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(606, 51, "delete", loc8))(loc8);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(50);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(17);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ur3
#undef ur4
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ui4_6
#undef ui4_7
#undef uw1
#undef arg1
}

/* {EV_LABEL_IMP}.on_erase_background */
void F1193_22715 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "on_erase_background";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 2, 26639);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26639);
	if (arg1) {
		RTCC(arg1, 1192, l_feature_name, 1, 730);
	}
	if (arg2) {
		RTCC(arg2, 1192, l_feature_name, 2, 691);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("paint_dc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("invalid_rect_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("invalid_rect_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(691, 34, "exists", arg2))(arg2)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 814, dtype))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef arg2
#undef arg1
}

/* {EV_LABEL_IMP}.on_size */
void F1193_22716 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "on_size";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1192, Current, 0, 3, 26640);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1192, Current, 26640);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 803, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCK;
		RTHOOK(2);
		RTCT("exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 803, dtype))(Current)).it_b);
		RTTE(tb1, label_2);
		RTCK;
		RTJB;
label_2:
		RTCF;
	}
body:;
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1192, 214, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		RTHOOK(4);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1192, 1366, dtype))(Current);
	}
	RTHOOK(5);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ui4_3 = arg3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1188, 725, 1188))(Current, ui4_1x, ui4_2x, ui4_3x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_LABEL_IMP}.text_height */
EIF_TYPED_VALUE F1193_22717 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1192,1610, Dtype(Current)));
	return r;
}


/* {EV_LABEL_IMP}.text_width */
EIF_TYPED_VALUE F1193_22718 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1192,1611, Dtype(Current)));
	return r;
}


/* {EV_LABEL_IMP}.interface */
static EIF_TYPED_VALUE F1193_22719_body (EIF_REFERENCE Current)
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
	
	RTEAA(l_feature_name, 1192, Current, 0, 0, 26643);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1192, Current, 26643);
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

EIF_TYPED_VALUE F1193_22719 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1192,1612, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(1192, 1612, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F1193_22719_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(1192,1612, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


void EIF_Minit1193 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
