/*
 * Code for class WEL_PROCESS_LAUNCHER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1089_19880(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1089_19881(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1089_19882(EIF_REFERENCE);
extern void F1089_19883(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1089_19884(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1089_19885(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1089_19886(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1089_19887(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19888(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19889(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19890(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19891(EIF_REFERENCE);
extern void F1089_19892(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1089_19893(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19894(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19895(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19896(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19897(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19898(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19899(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19900(EIF_REFERENCE);
extern void F1089_19901(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1089_19902(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1089_19903(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1089_19904(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1089_19905(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19906(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1089_19907(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1089_19908(EIF_REFERENCE);
extern void EIF_Minit1089(void);

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

/* {WEL_PROCESS_LAUNCHER}.set_block_size */
void F1089_19880 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_block_size";
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
	
	RTEAA(l_feature_name, 1088, Current, 0, 1, 23909);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23909);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("valid_size", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 > ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1088, 84, 0x10000000, 1); /* internal_block_size */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(1088, 84, dtype)) = (EIF_INTEGER_32) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("size_set", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 83, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.set_environment_variables */
void F1089_19881 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_environment_variables";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 1, 23910);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23910);
	RTCC(arg1, 1088, l_feature_name, 1, RTWCT(1088, 75, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1088, 75, 0xF80004F6, 0); /* environment_variables */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1088, 75, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("environment_variables_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 75, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
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
#undef up1
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.run_hidden */
void F1089_19882 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "run_hidden";
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
	
	RTEAA(l_feature_name, 1088, Current, 0, 0, 23911);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23911);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1088, 74, 0x04000000, 1); /* hidden */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1088, 74, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("hidden", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1088, 74, dtype));
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

/* {WEL_PROCESS_LAUNCHER}.spawn */
void F1089_19883 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "spawn";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,ur1);
	RTLR(3,ur2);
	RTLR(4,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 2, 23912);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23912);
	if (arg1) {
		RTCC(arg1, 1088, l_feature_name, 1, 780);
	}
	if (arg2) {
		RTCC(arg2, 1088, l_feature_name, 2, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("non_void_command_line", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid_command_line", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 53, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 36, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1088, 76, dtype))(Current, ur1x, ur2x, ui4_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ur1
#undef ur2
#undef ui4_1
#undef arg2
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.spawn_with_console */
void F1089_19884 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "spawn_with_console";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,ur1);
	RTLR(3,ur2);
	RTLR(4,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 2, 23913);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23913);
	if (arg1) {
		RTCC(arg1, 1088, l_feature_name, 1, 780);
	}
	if (arg2) {
		RTCC(arg2, 1088, l_feature_name, 2, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("non_void_command_line", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid_command_line", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 53, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 33, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1088, 76, dtype))(Current, ur1x, ur2x, ui4_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ur1
#undef ur2
#undef ui4_1
#undef arg2
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.launch */
void F1089_19885 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "launch";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(13);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,arg3);
	RTLR(3,loc2);
	RTLR(4,Current);
	RTLR(5,tr1);
	RTLR(6,ur1);
	RTLR(7,ur2);
	RTLR(8,loc5);
	RTLR(9,loc3);
	RTLR(10,tr2);
	RTLR(11,loc6);
	RTLR(12,loc4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	
	RTEAA(l_feature_name, 1088, Current, 6, 3, 23914);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23914);
	if (arg1) {
		RTCC(arg1, 1088, l_feature_name, 1, 780);
	}
	if (arg2) {
		RTCC(arg2, 1088, l_feature_name, 2, 780);
	}
	if (arg3) {
		{
			static EIF_TYPE_INDEX typarr0[] = {1088,1220,0,0xFFF9,1,734,787,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1220, typarr0)));
			RTCC(arg3, 1088, l_feature_name, 3, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("non_void_command_line", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid_command_line", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 53, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 2, 0xF80002DE, 0, 0); /* loc2 */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {1088,0xFFF9,1,734,787,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
		tr1 = RTLNTS(typres0, 2, 0);
	}
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(734, 25, Dtype(tr1)))(tr1);
	RTNHOOK(3,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1088, 74, dtype));
	if (tb1) {
		RTHOOK(5);
		ur1 = RTCCL(arg1);
		ur2 = RTCCL(arg2);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 35, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1088, 76, dtype))(Current, ur1x, ur2x, ui4_1x);
	} else {
		RTHOOK(6);
		ur1 = RTCCL(arg1);
		ur2 = RTCCL(arg2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1088, 67, dtype))(Current, ur1x, ur2x);
	}
	RTHOOK(7);
	RTDBGAL(Current, 5, 0xF80001F6, 0, 0); /* loc5 */
	
	loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 79, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(8);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc5 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(9);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(502, 109, "close_input", loc5))(loc5);
	RTHOOK(10);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 83, dtype))(Current)).it_i4);
	RTHOOK(11);
	ui4_1 = loc1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(502, 111, "read_stream", loc5))(loc5, ui4_1x);
	for (;;) {
		RTHOOK(12);
		tb1 = *(EIF_BOOLEAN *)(loc5 + RTVA(502, 103, "last_read_successful", loc5));
		if ((EIF_BOOLEAN) !tb1) break;
		RTHOOK(13);
		if ((EIF_BOOLEAN)(arg3 != NULL)) {
			RTHOOK(14);
			RTDBGAL(Current, 3, 0xF800030C, 0, 0); /* loc3 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(502, 104, "last_string", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc3 = (EIF_REFERENCE) RTCCL(tr1);
			if (RTAL & CK_CHECK) {
				RTHOOK(15);
				RTCT(NULL, EX_CHECK);
				if ((EIF_BOOLEAN)(loc3 != NULL)) {
					RTCK;
				} else {
					RTCF;
				}
			}
			
			RTHOOK(16);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 81, "as_string_8", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tr2 = RTCCL(tr1);
			RTCC(tr2, 1088, l_feature_name, 1, eif_gen_param_id(Dftype(loc2), 1));
			eif_put_reference_item(RTCV(loc2),1,tr2);
			RTHOOK(17);
			ur1 = RTCCL(loc2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1220, 47, "call", arg3))(arg3, ur1x);
		}
		RTHOOK(18);
		ui4_1 = loc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(502, 111, "read_stream", loc5))(loc5, ui4_1x);
	}
	RTHOOK(19);
	RTDBGAL(Current, 6, 0xF8000270, 0, 0); /* loc6 */
	
	loc6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 81, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(20);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc6 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(21);
	RTDBGAA(Current, dtype, 1088, 72, 0x04000000, 1); /* last_launch_successful */
	
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc6))(loc6)).it_p);
	up1 = tp1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(76, 84, 76))(Current)).it_i4);
	ui4_1 = ti4_1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 80, 76))(Current, up1x, ui4_1x)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(76, 83, 76))(Current)).it_i4);
	*(EIF_BOOLEAN *)(Current + RTWA(1088, 72, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
	RTHOOK(22);
	tb2 = *(EIF_BOOLEAN *)(Current + RTWA(1088, 72, dtype));
	if (tb2) {
		RTHOOK(23);
		RTDBGAA(Current, dtype, 1088, 72, 0x04000000, 1); /* last_launch_successful */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc6))(loc6)).it_p);
		up1 = tp1;
		up2 = (EIF_INTEGER_32 *) &(*(EIF_INTEGER_32 *)(Current + RTWA(1088, 73, dtype)));
		tb2 = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 85, 76))(Current, up1x, up2x))).it_b);
		*(EIF_BOOLEAN *)(Current + RTWA(1088, 72, dtype)) = (EIF_BOOLEAN) tb2;
	}
	RTHOOK(24);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 54, "thread_handle", loc6))(loc6)).it_p);
	up1 = tp1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(76, 77, 76))(Current, up1x)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
		if (RTAL & CK_CHECK) {
			RTHOOK(25);
			RTCT("close_thread_handle_success", EX_CHECK);
				RTCF;
		}
	}
	RTHOOK(26);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
	up1 = tp1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(624, 58, "set_thread_handle", loc6))(loc6, up1x);
	RTHOOK(27);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc6))(loc6)).it_p);
	up1 = tp1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(76, 77, 76))(Current, up1x)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
		if (RTAL & CK_CHECK) {
			RTHOOK(28);
			RTCT("close_process_handle_success", EX_CHECK);
				RTCF;
		}
	}
	RTHOOK(29);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
	up1 = tp1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(624, 57, "set_process_handle", loc6))(loc6, up1x);
	RTHOOK(30);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(502, 108, "close_output", loc5))(loc5);
	RTHOOK(31);
	RTDBGAL(Current, 4, 0xF80001F6, 0, 0); /* loc4 */
	
	loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 78, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(32);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc4 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(33);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(502, 109, "close_input", loc4))(loc4);
	RTHOOK(34);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(502, 108, "close_output", loc4))(loc4);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(35);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(11);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ui4_1
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.launch_and_refresh */
void F1089_19886 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "launch_and_refresh";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_BOOLEAN loc2 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc3 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,arg3);
	RTLR(3,ur1);
	RTLR(4,ur2);
	RTLR(5,Current);
	RTLR(6,loc4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_BOOL, &loc2);
	RTLU(SK_BOOL, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 1088, Current, 4, 3, 23915);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23915);
	if (arg1) {
		RTCC(arg1, 1088, l_feature_name, 1, 780);
	}
	if (arg2) {
		RTCC(arg2, 1088, l_feature_name, 2, 780);
	}
	if (arg3) {
		{
			static EIF_TYPE_INDEX typarr0[] = {1088,1220,0,0xFFF9,0,734,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1220, typarr0)));
			RTCC(arg3, 1088, l_feature_name, 3, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("non_void_command_line", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid_command_line", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 53, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1088, 67, dtype))(Current, ur1x, ur2x);
	for (;;) {
		RTHOOK(4);
		if (loc3) break;
		RTHOOK(5);
		RTDBGAL(Current, 4, 0xF8000270, 0, 0); /* loc4 */
		
		loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 81, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTAL & CK_CHECK) {
			RTHOOK(6);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc4 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(7);
		RTDBGAL(Current, 2, 0x04000000, 1, 0); /* loc2 */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc4))(loc4)).it_p);
		up1 = tp1;
		up2 = (EIF_INTEGER_32 *) &(*(EIF_INTEGER_32 *)(Current + RTWA(1088, 73, dtype)));
		loc2 = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 85, 76))(Current, up1x, up2x))).it_b);
		if (RTAL & CK_CHECK) {
			RTHOOK(8);
			RTCT("valid_external_call_2", EX_CHECK);
			if (loc2) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(9);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1088, 73, dtype));
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(76, 87, 76))(Current)).it_i4);
		if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
			RTHOOK(10);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc4))(loc4)).it_p);
			up1 = tp1;
			ui4_1 = ((EIF_INTEGER_32) 1L);
			loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 80, 76))(Current, up1x, ui4_1x)).it_i4);
			RTHOOK(11);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(76, 83, 76))(Current)).it_i4);
			if ((EIF_BOOLEAN)(loc1 == ti4_1)) {
				RTHOOK(12);
				RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
				
				loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			} else {
				RTHOOK(13);
				if ((EIF_BOOLEAN)(arg3 != NULL)) {
					RTHOOK(14);
					ur1 = NULL;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1220, 47, "call", arg3))(arg3, ur1x);
				}
			}
		} else {
			RTHOOK(15);
			RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
			
			loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
	}
	RTHOOK(16);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1088, 71, dtype))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ui4_1
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.terminate_process */
void F1089_19887 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "terminate_process";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,loc2);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1088, Current, 2, 0, 23916);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23916);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1088, 72, dtype));
	if (tb1) {
		RTHOOK(2);
		RTDBGAL(Current, 2, 0xF8000270, 0, 0); /* loc2 */
		
		loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 81, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTAL & CK_CHECK) {
			RTHOOK(3);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc2 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc2))(loc2)).it_p);
		up1 = tp1;
		up2 = (EIF_INTEGER_32 *) &(*(EIF_INTEGER_32 *)(Current + RTWA(1088, 73, dtype)));
		loc1 = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 85, 76))(Current, up1x, up2x))).it_b);
		RTHOOK(5);
		if (loc1) {
			RTHOOK(6);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(1088, 73, dtype));
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(76, 87, 76))(Current)).it_i4);
			if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
				RTHOOK(7);
				RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
				
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc2))(loc2)).it_p);
				up1 = tp1;
				ui4_1 = ((EIF_INTEGER_32) 0L);
				loc1 = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 86, 76))(Current, up1x, ui4_1x))).it_b);
			}
			RTHOOK(8);
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 54, "thread_handle", loc2))(loc2)).it_p);
			up1 = tp1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(76, 77, 76))(Current, up1x)).it_i4);
			if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
				if (RTAL & CK_CHECK) {
					RTHOOK(9);
					RTCT("close_thread_handle_success", EX_CHECK);
						RTCF;
				}
			}
			RTHOOK(10);
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
			up1 = tp1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(624, 58, "set_thread_handle", loc2))(loc2, up1x);
			RTHOOK(11);
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(624, 53, "process_handle", loc2))(loc2)).it_p);
			up1 = tp1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(76, 77, 76))(Current, up1x)).it_i4);
			if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
				if (RTAL & CK_CHECK) {
					RTHOOK(12);
					RTCT("close_process_handle_success", EX_CHECK);
						RTCF;
				}
			}
			RTHOOK(13);
			tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
			up1 = tp1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(624, 57, "set_process_handle", loc2))(loc2, up1x);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef up2
#undef ui4_1
}

/* {WEL_PROCESS_LAUNCHER}.last_launch_successful */
EIF_TYPED_VALUE F1089_19888 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1088,72, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS_LAUNCHER}.last_process_result */
EIF_TYPED_VALUE F1089_19889 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1088,73, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS_LAUNCHER}.hidden */
EIF_TYPED_VALUE F1089_19890 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(1088,74, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS_LAUNCHER}.environment_variables */
EIF_TYPED_VALUE F1089_19891 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1088,75, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS_LAUNCHER}.spawn_with_flags */
void F1089_19892 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "spawn_with_flags";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_POINTER loc5 = (EIF_POINTER) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE up4x = {0, SK_POINTER};
#define up4 up4x.it_p
	EIF_TYPED_VALUE up5x = {0, SK_POINTER};
#define up5 up5x.it_p
	EIF_TYPED_VALUE up6x = {0, SK_POINTER};
#define up6 up6x.it_p
	EIF_TYPED_VALUE up7x = {0, SK_POINTER};
#define up7 up7x.it_p
	EIF_TYPED_VALUE up8x = {0, SK_POINTER};
#define up8 up8x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_POINTER tp3;
	EIF_POINTER tp4;
	EIF_POINTER tp5;
	EIF_POINTER tp6;
	EIF_POINTER tp7;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	
	RTLI(9);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,loc1);
	RTLR(5,ur1);
	RTLR(6,loc3);
	RTLR(7,loc4);
	RTLR(8,loc2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_POINTER, &loc5);
	
	RTEAA(l_feature_name, 1088, Current, 5, 3, 23921);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23921);
	if (arg1) {
		RTCC(arg1, 1088, l_feature_name, 1, 780);
	}
	if (arg2) {
		RTCC(arg2, 1088, l_feature_name, 2, 780);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("non_void_command_line", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("valid_command_line", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 53, "is_empty", arg1))(arg1)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 1088, 81, 0xF8000270, 0); /* process_info */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1088, 81, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(624, 41, Dtype(tr1)))(tr1);
	RTNHOOK(3,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(1088, 81, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF80001F7, 0, 0); /* loc1 */
	
	tr1 = RTLN(503);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(4,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAL(Current, 3, 0xF8000270, 0, 0); /* loc3 */
	
	loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 81, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(6);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc3 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(7);
	RTDBGAL(Current, 4, 0xF80001F8, 0, 0); /* loc4 */
	
	loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 77, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(8);
	if ((EIF_BOOLEAN)(loc4 != NULL)) {
		RTHOOK(9);
		RTDBGAL(Current, 5, 0x40000000, 1, 0); /* loc5 */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(504, 51, "item", loc4))(loc4)).it_p);
		loc5 = (EIF_POINTER) tp1;
	}
	RTHOOK(10);
	tb1 = '\0';
	if ((EIF_BOOLEAN)(arg2 != NULL)) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(780, 53, "is_empty", arg2))(arg2)).it_b);
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTHOOK(11);
		RTDBGAL(Current, 2, 0xF80001F7, 0, 0); /* loc2 */
		
		tr1 = RTLN(503);
		ur1 = RTCCL(arg2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(503, 31, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(11,1);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(12);
		RTDBGAA(Current, dtype, 1088, 72, 0x04000000, 1); /* last_launch_successful */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
		up1 = tp1;
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc1))(loc1)).it_p);
		up2 = tp2;
		tp3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
		up3 = tp3;
		tp4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
		up4 = tp4;
		ub1 = (EIF_BOOLEAN) 1;
		ui4_1 = arg3;
		up5 = loc5;
		tp5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc2))(loc2)).it_p);
		up6 = tp5;
		tr1 = ((up7x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 80, dtype))(Current)), (((up7x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up7x.it_r = RTBU(up7x))), (up7x.type = SK_POINTER), up7x.it_r);
		RTNHOOK(12,1);
		tp6 = *(EIF_POINTER *)(tr1 + RTVA(713, 32, "item", tr1));
		up7 = tp6;
		tp7 = *(EIF_POINTER *)(loc3 + RTVA(624, 32, "item", loc3));
		up8 = tp7;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 75, 76))(Current, up1x, up2x, up3x, up4x, ub1x, ui4_1x, up5x, up6x, up7x, up8x)).it_b);
		*(EIF_BOOLEAN *)(Current + RTWA(1088, 72, dtype)) = (EIF_BOOLEAN) tb1;
	} else {
		RTHOOK(13);
		RTDBGAA(Current, dtype, 1088, 72, 0x04000000, 1); /* last_launch_successful */
		
		tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
		up1 = tp1;
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(503, 45, "item", loc1))(loc1)).it_p);
		up2 = tp2;
		tp3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
		up3 = tp3;
		tp4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
		up4 = tp4;
		ub1 = (EIF_BOOLEAN) 1;
		ui4_1 = arg3;
		up5 = loc5;
		tp5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 30, dtype))(Current)).it_p);
		up6 = tp5;
		tr1 = ((up7x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 80, dtype))(Current)), (((up7x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up7x.it_r = RTBU(up7x))), (up7x.type = SK_POINTER), up7x.it_r);
		RTNHOOK(13,1);
		tp6 = *(EIF_POINTER *)(tr1 + RTVA(713, 32, "item", tr1));
		up7 = tp6;
		tp7 = *(EIF_POINTER *)(loc3 + RTVA(624, 32, "item", loc3));
		up8 = tp7;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 75, 76))(Current, up1x, up2x, up3x, up4x, ub1x, ui4_1x, up5x, up6x, up7x, up8x)).it_b);
		*(EIF_BOOLEAN *)(Current + RTWA(1088, 72, dtype)) = (EIF_BOOLEAN) tb1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
#undef up1
#undef up2
#undef up3
#undef up4
#undef up5
#undef up6
#undef up7
#undef up8
#undef ur1
#undef ui4_1
#undef ub1
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.environment_variables_as_c_string */
EIF_TYPED_VALUE F1089_19893 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "environment_variables_as_c_string";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,loc2);
	RTLR(1,Current);
	RTLR(2,loc1);
	RTLR(3,tr1);
	RTLR(4,ur1);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1088, Current, 2, 0, 23922);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1088, Current, 23922);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF80004F6, 0, 0); /* loc2 */
	
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 75, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tb1 = '\0';
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1270, 35, "is_empty", loc2))(loc2)).it_b);
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF8000313, 0, 0); /* loc1 */
		
		tr1 = RTLN(787);
		ui4_1 = ((EIF_INTEGER_32) 512L);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(787, 91, Dtype(tr1)))(tr1, ui4_1x);
		RTNHOOK(3,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(4);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1270, 76, "start", loc2))(loc2);
		for (;;) {
			RTHOOK(5);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1270, 71, "after", loc2))(loc2)).it_b);
			if (tb1) break;
			RTHOOK(6);
			tb2 = '\0';
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1270, 51, "key_for_iteration", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			if ((EIF_BOOLEAN)(tr1 != NULL)) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1270, 50, "item_for_iteration", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				tb2 = (EIF_BOOLEAN)(tr1 != NULL);
			}
			if (tb2) {
				RTHOOK(7);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1270, 51, "key_for_iteration", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				ur1 = RTCCL(tr1);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", loc1))(loc1, ur1x);
				RTHOOK(8);
				uc1 = (EIF_CHARACTER_8) '=';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", loc1))(loc1, uc1x);
				RTHOOK(9);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1270, 50, "item_for_iteration", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				ur1 = RTCCL(tr1);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 193, "append", loc1))(loc1, ur1x);
				RTHOOK(10);
				uc1 = (EIF_CHARACTER_8) '\000';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", loc1))(loc1, uc1x);
			}
			RTHOOK(11);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1270, 77, "forth", loc2))(loc2);
		}
		RTHOOK(12);
		uc1 = (EIF_CHARACTER_8) '\000';
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", loc1))(loc1, uc1x);
		RTHOOK(13);
		RTDBGAL(Current, 0, 0xF80001F8, 0,0); /* Result */
		
		tr1 = RTLN(504);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(504, 32, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(13,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef uc1
}

/* {WEL_PROCESS_LAUNCHER}.input_pipe */
EIF_TYPED_VALUE F1089_19894 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1088,78, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS_LAUNCHER}.output_pipe */
EIF_TYPED_VALUE F1089_19895 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1088,79, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS_LAUNCHER}.startup_info */
EIF_TYPED_VALUE F1089_19896 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "startup_info";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,loc2);
	RTLR(4,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 1088, Current, 2, 0, 23925);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23925);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80001F6, 0, 0); /* loc1 */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1088, 78, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(502, 91, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 1088, 78, 0xF80001F6, 0); /* input_pipe */
	
	RTAR(Current, loc1);
	*(EIF_REFERENCE *)(Current + RTWA(1088, 78, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
	RTHOOK(3);
	RTDBGAL(Current, 2, 0xF80001F6, 0, 0); /* loc2 */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1088, 79, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(502, 91, Dtype(tr1)))(tr1);
	RTNHOOK(3,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 1088, 79, 0xF80001F6, 0); /* output_pipe */
	
	RTAR(Current, loc2);
	*(EIF_REFERENCE *)(Current + RTWA(1088, 79, dtype)) = (EIF_REFERENCE) RTCCL(loc2);
	RTHOOK(5);
	RTDBGAL(Current, 0, 0xF80002C9, 0,0); /* Result */
	
	tr1 = RTLN(713);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(713, 74, Dtype(tr1)))(tr1);
	RTNHOOK(5,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 61, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 96, "set_flags", Result))(Result, ui4_1x);
	RTHOOK(7);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1088, 74, dtype));
	if (tb1) {
		RTHOOK(8);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 40, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 98, "set_show_command", Result))(Result, ui4_1x);
	} else {
		RTHOOK(9);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 44, dtype))(Current)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 98, "set_show_command", Result))(Result, ui4_1x);
	}
	RTHOOK(10);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 54, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 97, "add_flag", Result))(Result, ui4_1x);
	RTHOOK(11);
	tp1 = *(EIF_POINTER *)(loc1 + RTVA(502, 99, "input_handle", loc1));
	up1 = tp1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 99, "set_std_input", Result))(Result, up1x);
	RTHOOK(12);
	tp1 = *(EIF_POINTER *)(loc2 + RTVA(502, 99, "input_handle", loc2));
	up1 = tp1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 100, "set_std_output", Result))(Result, up1x);
	RTHOOK(13);
	tp1 = *(EIF_POINTER *)(loc2 + RTVA(502, 99, "input_handle", loc2));
	up1 = tp1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(713, 101, "set_std_error", Result))(Result, up1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(14);
		RTCT("result_attached", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(15);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ui4_1
}

/* {WEL_PROCESS_LAUNCHER}.process_info */
EIF_TYPED_VALUE F1089_19897 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1088,81, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS_LAUNCHER}.default_block_size */
EIF_TYPED_VALUE F1089_19898 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 255L);
	return r;
}

/* {WEL_PROCESS_LAUNCHER}.block_size */
EIF_TYPED_VALUE F1089_19899 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "block_size";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 0, 23928);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1088, Current, 23928);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = *(EIF_INTEGER_32 *)(Current + RTWA(1088, 84, dtype));
	RTHOOK(2);
	if ((EIF_BOOLEAN)(Result == ((EIF_INTEGER_32) 0L))) {
		RTHOOK(3);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1088, 82, dtype))(Current)).it_i4);
		Result = (EIF_INTEGER_32) Result;
		RTHOOK(4);
		RTDBGAA(Current, dtype, 1088, 84, 0x10000000, 1); /* internal_block_size */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(1088, 84, dtype)) = (EIF_INTEGER_32) Result;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_LAUNCHER}.internal_block_size */
EIF_TYPED_VALUE F1089_19900 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(1088,84, Dtype(Current)));
	return r;
}


/* {WEL_PROCESS_LAUNCHER}.cwin_close_handle */
void F1089_19901 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "cwin_close_handle";
	RTEX;
#define arg1 arg1x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_INTEGER_32 ti4_1;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 1, 23930);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1088, Current, 23930);
	RTIV(Current, RTAL);
	RTHOOK(1);
	up1 = arg1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(76, 77, 76))(Current, up1x)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
		if (RTAL & CK_CHECK) {
			RTHOOK(2);
			RTCT("close_handle_success", EX_CHECK);
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
#undef up1
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.cwin_create_process */
EIF_TYPED_VALUE F1089_19902 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x, EIF_TYPED_VALUE arg8x, EIF_TYPED_VALUE arg9x, EIF_TYPED_VALUE arg10x)
{
	GTCX
	char *l_feature_name = "cwin_create_process";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_p
#define arg4 arg4x.it_p
#define arg5 arg5x.it_b
#define arg6 arg6x.it_i4
#define arg7 arg7x.it_p
#define arg8 arg8x.it_p
#define arg9 arg9x.it_p
#define arg10 arg10x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE up4x = {0, SK_POINTER};
#define up4 up4x.it_p
	EIF_TYPED_VALUE up5x = {0, SK_POINTER};
#define up5 up5x.it_p
	EIF_TYPED_VALUE up6x = {0, SK_POINTER};
#define up6 up6x.it_p
	EIF_TYPED_VALUE up7x = {0, SK_POINTER};
#define up7 up7x.it_p
	EIF_TYPED_VALUE up8x = {0, SK_POINTER};
#define up8 up8x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg10x.type & SK_HEAD) == SK_REF) arg10x.it_p = * (EIF_POINTER *) arg10x.it_r;
	if ((arg9x.type & SK_HEAD) == SK_REF) arg9x.it_p = * (EIF_POINTER *) arg9x.it_r;
	if ((arg8x.type & SK_HEAD) == SK_REF) arg8x.it_p = * (EIF_POINTER *) arg8x.it_r;
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_p = * (EIF_POINTER *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_i4 = * (EIF_INTEGER_32 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_b = * (EIF_BOOLEAN *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_POINTER *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU(SK_BOOL,&arg5);
	RTLU(SK_INT32,&arg6);
	RTLU(SK_POINTER,&arg7);
	RTLU(SK_POINTER,&arg8);
	RTLU(SK_POINTER,&arg9);
	RTLU(SK_POINTER,&arg10);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 10, 23931);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1088, Current, 23931);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	up1 = arg1;
	up2 = arg2;
	up3 = arg3;
	up4 = arg4;
	ub1 = arg5;
	ui4_1 = arg6;
	up5 = arg7;
	up6 = arg8;
	up7 = arg9;
	up8 = arg10;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 75, 76))(Current, up1x, up2x, up3x, up4x, ub1x, ui4_1x, up5x, up6x, up7x, up8x)).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(12);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef up2
#undef up3
#undef up4
#undef up5
#undef up6
#undef up7
#undef up8
#undef ui4_1
#undef ub1
#undef arg10
#undef arg9
#undef arg8
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.cwin_wait_for_single_object */
EIF_TYPED_VALUE F1089_19903 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "cwin_wait_for_single_object";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 2, 23932);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1088, Current, 23932);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	up1 = arg1;
	ui4_1 = arg2;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 80, 76))(Current, up1x, ui4_1x)).it_i4);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.cwin_exit_code_process */
EIF_TYPED_VALUE F1089_19904 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "cwin_exit_code_process";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 2, 23933);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1088, Current, 23933);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	up1 = arg1;
	up2 = arg2;
	Result = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 85, 76))(Current, up1x, up2x))).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef up2
#undef arg2
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.cwin_wait_object_0 */
EIF_TYPED_VALUE F1089_19905 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_wait_object_0";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 0, 23934);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1088, Current, 23934);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(76, 83, 76))(Current)).it_i4);
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

/* {WEL_PROCESS_LAUNCHER}.cwin_infinite */
EIF_TYPED_VALUE F1089_19906 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_infinite";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 0, 23935);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1088, Current, 23935);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(76, 84, 76))(Current)).it_i4);
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

/* {WEL_PROCESS_LAUNCHER}.cwin_terminate_process */
EIF_TYPED_VALUE F1089_19907 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "cwin_terminate_process";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 2, 23936);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1088, Current, 23936);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	up1 = arg1;
	ui4_1 = arg2;
	Result = EIF_TEST ((((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(76, 86, 76))(Current, up1x, ui4_1x))).it_b);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ui4_1
#undef arg2
#undef arg1
}

/* {WEL_PROCESS_LAUNCHER}.cwin_still_active */
EIF_TYPED_VALUE F1089_19908 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_still_active";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1088, Current, 0, 0, 23937);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1088, Current, 23937);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
	
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(76, 87, 76))(Current)).it_i4);
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

void EIF_Minit1089 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
