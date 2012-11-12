/*
 * Code for class EQA_TEST_EVALUATOR [G#1]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1294_9468(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1294_9469(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1294_9470(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1294_23741(EIF_REFERENCE);
extern void EIF_Minit1294(void);
extern EIF_REFERENCE _A1294_300();
extern EIF_REFERENCE _A1220_69();
extern EIF_REFERENCE _A238_39();

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

/* {EQA_TEST_EVALUATOR}.buffer */
RTOID (F1294_9468)
EIF_TYPED_VALUE F1294_9468 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "buffer";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F1294_9468);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1293, Current, 0, 0, 10795);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1293, Current, 10795);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800024B, 0,0); /* Result */
	
	tr1 = RTLN(587);
	ui4_1 = ((EIF_INTEGER_32) 2048L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(587, 300, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ui4_1
#undef Result
}

/* {EQA_TEST_EVALUATOR}.execute */
EIF_TYPED_VALUE F1294_9469 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "execute";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
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
	EIF_TYPED_VALUE ur5x = {0, SK_REF};
#define ur5 ur5x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(20);
	RTLR(0,arg1);
	RTLR(1,loc7);
	RTLR(2,loc6);
	RTLR(3,Current);
	RTLR(4,tr1);
	RTLR(5,tr2);
	RTLR(6,ur1);
	RTLR(7,loc2);
	RTLR(8,loc1);
	RTLR(9,loc3);
	RTLR(10,loc9);
	RTLR(11,loc8);
	RTLR(12,loc4);
	RTLR(13,loc5);
	RTLR(14,ur2);
	RTLR(15,ur3);
	RTLR(16,ur4);
	RTLR(17,tr3);
	RTLR(18,ur5);
	RTLR(19,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	
	RTEAA(l_feature_name, 1293, Current, 9, 1, 10796);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1293, Current, 10796);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {1293,1219,0,0xFFF9,1,734,237,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1219, typarr0)));
			RTCC(arg1, 1293, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 7, 0xF8000313, 0, 0); /* loc7 */
	
	loc7 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	RTDBGAL(Current, 6, 0xF800024A, 0, 0); /* loc6 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(94, 35, "default_output", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc6 = (EIF_REFERENCE) RTCCL(tr2);
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 296, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 57, "set_file_default", tr1))(tr1, ur1x);
	RTHOOK(4);
	RTDBGAL(Current, 2, 0xF8000501, 0, 0); /* loc2 */
	
	{
		EIF_TYPE_INDEX typarr0[] = {1293,0xFFF9,1,734,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, 734, typarr0);
		tr1 = RTLNTS(typres0, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	
	{
		EIF_TYPE_INDEX typarr0[] = {1293,1281,0,0xFFF9,0,734,0,0xFFFF};
		EIF_TYPE_INDEX typres0;
		typarr0[2] = dftype;
		typarr0[6] = RTWCT(1293, 299, Current);
		
		typres0 = eif_compound_id(dftype, 1281, typarr0);
		tr2 = RTLNRW(typres0, 0, (EIF_POINTER) _A1294_300, (EIF_POINTER)(0),1293, 300, 0, 0, 0, 1, 1, tr1, 0);
	}
	loc2 = (EIF_REFERENCE) RTCCL(tr2);
	RTHOOK(5);
	RTDBGAL(Current, 1, 0xF8000436, 0, 0); /* loc1 */
	
	tr1 = RTLN(1078);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(1078, 118, Dtype(tr1)))(tr1);
	RTNHOOK(5,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAL(Current, 3, 0xF800005A, 0, 0); /* loc3 */
	
	ur1 = RTCCL(loc2);
	loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1293, 298, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(7);
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(90, 36, "is_exceptional", loc3))(loc3)).it_b);
	if ((EIF_BOOLEAN) !tb2) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1281, 66, "last_result", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc9 = RTCCL(tr1);
		tb1 = EIF_TEST(loc9);
	}
	if (tb1) {
		RTHOOK(8);
		RTDBGAL(Current, 8, 0xF80002DE, 0, 0); /* loc8 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1219, 37, "empty_operands", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc8 = (EIF_REFERENCE) RTCCL(tr1);
		if (RTAL & CK_CHECK) {
			RTHOOK(9);
			RTCT("valid_operand_count", EX_CHECK);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(734, 63, "count", loc8))(loc8)).it_i4);
			if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L))) {
				RTCK;
			} else {
				RTCF;
			}
			RTHOOK(10);
			RTCT("valid_operand", EX_CHECK);
			ur1 = RTCCL(loc9);
			ui4_1 = ((EIF_INTEGER_32) 1L);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(734, 62, "valid_type_for_index", loc8))(loc8, ur1x, ui4_1x)).it_b);
			if (tb1) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(11);
		ur1 = RTCCL(loc9);
		ui4_1 = ((EIF_INTEGER_32) 1L);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(734, 67, "put", loc8))(loc8, ur1x, ui4_1x);
		RTHOOK(12);
		RTDBGAL(Current, 4, 0xF800005A, 0, 0); /* loc4 */
		
		{
			static EIF_TYPE_INDEX typarr0[] = {1293,0xFFF9,2,734,1219,0,0xFFF9,1,734,237,0xFFF9,1,734,237,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
			tr1 = RTLNTS(typres0, 3, 0);
		}
		((EIF_TYPED_VALUE *)tr1+1)->it_r = arg1;
		RTAR(tr1,arg1);
		((EIF_TYPED_VALUE *)tr1+2)->it_r = loc8;
		RTAR(tr1,loc8);
		
		{
			static EIF_TYPE_INDEX typarr0[] = {1293,1219,1219,0,0xFFF9,1,734,237,0xFFF9,0,734,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1219, typarr0)));
			tr2 = RTLNRW(typres0, 0, (EIF_POINTER) _A1220_69, (EIF_POINTER)(0),1219, 69, 0, 0, 0, 1, 0, tr1, 0);
		}
		ur1 = RTCCL(tr2);
		loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1293, 298, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(13);
		RTDBGAL(Current, 5, 0xF800005A, 0, 0); /* loc5 */
		
		{
			static EIF_TYPE_INDEX typarr0[] = {1293,0xFFF9,2,734,237,769,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
			tr1 = RTLNTS(typres0, 3, 0);
		}
		((EIF_TYPED_VALUE *)tr1+1)->it_r = loc9;
		RTAR(tr1,loc9);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(90, 36, "is_exceptional", loc4))(loc4)).it_b);
		((EIF_TYPED_VALUE *)tr1+2)->it_b = tb1;
		
		{
			static EIF_TYPE_INDEX typarr0[] = {1293,1219,237,0xFFF9,0,734,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1219, typarr0)));
			tr2 = RTLNRW(typres0, 0, (EIF_POINTER) _A238_39, (EIF_POINTER)(0),237, 39, 0, 0, 0, 1, 0, tr1, 0);
		}
		ur1 = RTCCL(tr2);
		loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1293, 298, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(14);
		RTDBGAL(Current, 0, 0xF8000203, 0,0); /* Result */
		
		tr1 = RTLN(516);
		ur1 = RTCCL(loc1);
		ur2 = RTCCL(loc3);
		ur3 = RTCCL(loc4);
		ur4 = RTCCL(loc5);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 296, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(14,1);
		tr3 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(587, 306, "formatted_content", tr2))(tr2)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		ur5 = RTCCL(tr3);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(516, 42, Dtype(tr1)))(tr1, ur1x, ur2x, ur3x, ur4x, ur5x);
		RTNHOOK(14,2);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	} else {
		RTHOOK(15);
		RTDBGAL(Current, 0, 0xF8000203, 0,0); /* Result */
		
		tr1 = RTLN(515);
		ur1 = RTCCL(loc1);
		ur2 = RTCCL(loc3);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 296, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(15,1);
		tr3 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(587, 306, "formatted_content", tr2))(tr2)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		ur3 = RTCCL(tr3);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(515, 33, Dtype(tr1)))(tr1, ur1x, ur2x, ur3x);
		RTNHOOK(15,2);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(16);
	if ((EIF_BOOLEAN)(loc6 == NULL)) {
		RTHOOK(17);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(17,1);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(94, 58, "set_output_default", tr1))(tr1);
	} else {
		RTHOOK(18);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(18,1);
		ur1 = RTCCL(loc6);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 57, "set_file_default", tr1))(tr1, ur1x);
	}
	RTHOOK(19);
	ur1 = RTCCL(loc7);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1293, 40, dtype))(Current, ur1x);
	RTHOOK(20);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 296, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(20,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(587, 313, "wipe_out", tr1))(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(21);
		RTCT("result_attached", EX_POST);
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
	RTLO(12);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ur3
#undef ur4
#undef ur5
#undef ui4_1
#undef arg1
}

/* {EQA_TEST_EVALUATOR}.execute_test_stage */
#undef EIF_VOLATILE
#define EIF_VOLATILE volatile
EIF_TYPED_VALUE F1294_9470 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "execute_test_stage";
	RTEX;
	RTED;
	EIF_REFERENCE EIF_VOLATILE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE EIF_VOLATILE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE EIF_VOLATILE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE EIF_VOLATILE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE EIF_VOLATILE saved_except = (EIF_REFERENCE) 0;
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
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE  EIF_VOLATILE tr1 = NULL;
	EIF_REFERENCE  EIF_VOLATILE tr2 = NULL;
	EIF_INTEGER_32  EIF_VOLATILE ti4_1;
	EIF_BOOLEAN  EIF_VOLATILE tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTDT;
	RTXD;
	RTLXD;
	
	
	RTXI(13);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,loc1);
	RTLR(3,Current);
	RTLR(4,tr1);
	RTLR(5,Result);
	RTLR(6,loc4);
	RTLR(7,tr2);
	RTLR(8,loc3);
	RTLR(9,loc2);
	RTLR(10,ur2);
	RTLR(11,ur3);
	RTLR(12,saved_except);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLXL;
	
	RTEAA(l_feature_name, 1293, Current, 4, 1, 10797);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1293, Current, 10797);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {1293,1220,0,0xFFF9,0,734,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1220, typarr0)));
			RTCC(arg1, 1293, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_procedure_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_procedure_expects_not_operands", EX_PRE);
		ur1 = NULL;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1220, 40, "valid_operands", arg1))(arg1, ur1x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTE_T
	RTHOOK(3);
	if ((EIF_BOOLEAN)(loc1 == NULL)) {
		RTHOOK(4);
		ur1 = NULL;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1220, 47, "call", arg1))(arg1, ur1x);
		RTHOOK(5);
		RTDBGAL(Current, 1, 0xF800005A, 0, 0); /* loc1 */
		
		tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1293, 298, Current)));
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(90, 32, Dtype(tr1)))(tr1);
		RTNHOOK(5,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(6);
	RTDBGAL(Current, 0, 0xF800005A, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(loc1);
	RTVI(Current, RTAL);
	RTRS;
	RTE_E
	RTLXE;
	RTXS(13);
	RTHOOK(7);
	RTCT0(NULL, EX_CHECK);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1293, 89, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(7,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(234, 32, "last_exception", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc4 = RTCCL(tr2);
	if (EIF_TEST(loc4)) {
		RTCK0;
	} else {
		RTCF0;
	}
	RTHOOK(8);
	RTDBGAL(Current, 3, 0xF8000313, 0, 0); /* loc3 */
	
	tr1 = RTLNTY(RTWCT(1293, 299, Current));
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1221, 33, "type_id", tr1))(tr1)).it_i4);
	ui4_1 = ti4_1;
	loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1293, 171, dtype))(Current, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(9);
	RTDBGAL(Current, 2, 0xF800043F, 0, 0); /* loc2 */
	
	tr1 = RTLN(1087);
	ur1 = RTCCL(loc4);
	ur2 = RTCCL(loc3);
	ur3 = NULL;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1087, 247, Dtype(tr1)))(tr1, ur1x, ur2x, ur3x);
	RTNHOOK(9,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(10);
	RTDBGAL(Current, 1, 0xF800005A, 0, 0); /* loc1 */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1293, 298, Current)));
	ur1 = RTCCL(loc2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(90, 33, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(10,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(11);
	RTTS;
	RTPS;
	RTER;
	RTMD(0);
	/* NOTREACHED */
	RTE_EE
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTEOK;
	RTXE;
	RTLO(7);
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ur3
#undef ui4_1
#undef arg1
}
#undef EIF_VOLATILE
#define EIF_VOLATILE

/* {EQA_TEST_EVALUATOR}.inline-agent#1 of execute */
EIF_TYPED_VALUE F1294_23741 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "inline-agent#1 of execute";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1293, Current, 0, 0, 10798);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1293, Current, 10798);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80000ED, 0,0); /* Result */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(1293, 299, Current)));
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(237, 31, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

void EIF_Minit1294 (void)
{
	GTCX
	RTOTS (9468,F1294_9468)
}


#ifdef __cplusplus
}
#endif
