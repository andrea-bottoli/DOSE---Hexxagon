/*
 * Code for class WEL_ABSTRACT_DISPATCHER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1102_20182(EIF_REFERENCE);
extern void F1102_20183(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1102_20184(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1102_20185(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1102_20186(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1102_20187(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1102_20188(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit1102(void);

#ifdef __cplusplus
}
#endif

#include <windows.h>
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

/* {WEL_ABSTRACT_DISPATCHER}.make */
void F1102_20182 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1101, Current, 0, 0, 24202);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(1101, Current, 24202);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 360, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1112, 28, "do_nothing", tr1))(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
}

/* {WEL_ABSTRACT_DISPATCHER}.set_exception_callback */
void F1102_20183 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_exception_callback";
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
	
	RTEAA(l_feature_name, 1101, Current, 0, 1, 24203);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1101, Current, 24203);
	RTCC(arg1, 1101, l_feature_name, 1, RTWCT(1101, 365, Current));
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 1101, 365, 0xF80004C3, 0); /* exception_callback */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(1101, 365, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("exception_callback_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 365, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
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

/* {WEL_ABSTRACT_DISPATCHER}.exception_callback */
EIF_TYPED_VALUE F1102_20184 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1101,365, Dtype(Current)));
	return r;
}


/* {WEL_ABSTRACT_DISPATCHER}.window_procedure */
#undef EIF_VOLATILE
#define EIF_VOLATILE volatile
EIF_TYPED_VALUE F1102_20185 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "window_procedure";
	RTEX;
	RTED;
	EIF_REFERENCE EIF_VOLATILE loc1 = (EIF_REFERENCE) 0;
	EIF_POINTER EIF_VOLATILE loc2 = (EIF_POINTER) 0;
	EIF_BOOLEAN EIF_VOLATILE loc3 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN EIF_VOLATILE loc4 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN EIF_VOLATILE loc5 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE EIF_VOLATILE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE EIF_VOLATILE saved_except = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_p
#define arg4 arg4x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_POINTER  EIF_VOLATILE tp1;
	EIF_REFERENCE  EIF_VOLATILE tr1 = NULL;
	EIF_REFERENCE  EIF_VOLATILE tr2 = NULL;
	EIF_BOOLEAN  EIF_VOLATILE tb1;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTDT;
	RTXD;
	RTLXD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_POINTER *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTXI(7);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,loc6);
	RTLR(5,tr2);
	RTLR(6,saved_except);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_POINTER, &loc2);
	RTLU(SK_BOOL, &loc3);
	RTLU(SK_BOOL, &loc4);
	RTLU(SK_BOOL, &loc5);
	RTLU(SK_REF, &loc6);
	RTLXL;
	
	RTEAA(l_feature_name, 1101, Current, 6, 4, 24205);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1101, Current, 24205);
	RTIV(Current, RTAL);
	RTE_T
	RTHOOK(1);
	if ((EIF_BOOLEAN) !loc5) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0xF8000452, 0, 0); /* loc1 */
		
		up1 = arg1;
		loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1101, 104, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(3);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTHOOK(4);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 36, "exists", loc1))(loc1)).it_b);
			if (tb1) {
				if (
					WDBG(1101,"win_dispatcher")
				) {
					RTHOOK(5);
					tr1 = RTMS_EX_H("After look at windows table ",28,1720817952);
					ur1 = tr1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1101, 24, dtype))(Current, ur1x);
					RTHOOK(6);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 2, "generating_type", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					ur1 = RTCCL(tr1);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1101, 24, dtype))(Current, ur1x);
					RTHOOK(7);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(7,1);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(94, 80, "put_new_line", tr1))(tr1);
				}
				RTHOOK(8);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1106, 598, "increment_level", loc1))(loc1);
				RTHOOK(9);
				RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
				
				loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
				RTHOOK(10);
				RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
				
				up1 = arg1;
				ui4_1 = arg2;
				up2 = arg3;
				up3 = arg4;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1106, 774, "process_message", loc1))(loc1, up1x, ui4_1x, up2x, up3x)).it_p);
				Result = (EIF_POINTER) tp1;
				RTHOOK(11);
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 593, "has_return_value", loc1))(loc1)).it_b);
				if (tb1) {
					RTHOOK(12);
					RTDBGAL(Current, 2, 0x40000000, 1, 0); /* loc2 */
					
					tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 594, "message_return_value", loc1))(loc1)).it_p);
					loc2 = (EIF_POINTER) tp1;
					RTHOOK(13);
					RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
					
					tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 593, "has_return_value", loc1))(loc1)).it_b);
					loc3 = (EIF_BOOLEAN) tb1;
				}
				RTHOOK(14);
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 595, "default_processing", loc1))(loc1)).it_b);
				if (tb1) {
					RTHOOK(15);
					RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
					
					up1 = arg1;
					ui4_1 = arg2;
					up2 = arg3;
					up3 = arg4;
					tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1106, 775, "call_default_window_procedure", loc1))(loc1, up1x, ui4_1x, up2x, up3x)).it_p);
					Result = (EIF_POINTER) tp1;
				}
				RTHOOK(16);
				if (loc3) {
					RTHOOK(17);
					RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
					
					Result = (EIF_POINTER) loc2;
				}
				RTHOOK(18);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1106, 599, "decrement_level", loc1))(loc1);
				RTHOOK(19);
				RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
				
				loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			} else {
				RTHOOK(20);
				RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
				
				up1 = arg1;
				ui4_1 = arg2;
				up2 = arg3;
				up3 = arg4;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1106, 775, "call_default_window_procedure", loc1))(loc1, up1x, ui4_1x, up2x, up3x)).it_p);
				Result = (EIF_POINTER) tp1;
			}
		} else {
			RTHOOK(21);
			RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
			
			up1 = arg1;
			ui4_1 = arg2;
			up2 = arg3;
			up3 = arg4;
			Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1101, 369, dtype))(Current, up1x, ui4_1x, up2x, up3x)).it_p);
		}
	} else {
		RTHOOK(22);
		RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
		
		up1 = arg1;
		ui4_1 = arg2;
		up2 = arg3;
		up3 = arg4;
		Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(1101, 369, dtype))(Current, up1x, ui4_1x, up2x, up3x)).it_p);
		RTHOOK(23);
		RTDBGAL(Current, 6, 0xF80004C3, 0, 0); /* loc6 */
		
		loc6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 365, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(24);
		if ((EIF_BOOLEAN)(loc6 != NULL)) {
			RTHOOK(25);
			{
				static EIF_TYPE_INDEX typarr0[] = {1101,0xFFF9,1,734,415,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
				tr1 = RTLNTS(typres0, 2, 0);
			}
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 368, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
			RTAR(tr1,tr2);
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1219, 69, "call", loc6))(loc6, ur1x);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTE_E
	RTLXE;
	RTXS(7);
	RTHOOK(26);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 != NULL) && loc4)) {
		RTHOOK(27);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1106, 599, "decrement_level", loc1))(loc1);
		RTHOOK(28);
		RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
		
		loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	}
	RTHOOK(29);
	RTDBGAL(Current, 5, 0x04000000, 1, 0); /* loc5 */
	
	loc5 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(30);
	RTTS;
	RTPS;
	RTER;
	RTMD(0);
	/* NOTREACHED */
	RTE_EE
	RTHOOK(31);
	RTDBGLE;
	RTMD(0);
	RTEOK;
	RTXE;
	RTLO(12);
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef up1
#undef up2
#undef up3
#undef ur1
#undef ui4_1
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}
#undef EIF_VOLATILE
#define EIF_VOLATILE

/* {WEL_ABSTRACT_DISPATCHER}.dialog_procedure */
#undef EIF_VOLATILE
#define EIF_VOLATILE volatile
EIF_TYPED_VALUE F1102_20186 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "dialog_procedure";
	RTEX;
	RTED;
	EIF_REFERENCE EIF_VOLATILE loc1 = (EIF_REFERENCE) 0;
	EIF_POINTER EIF_VOLATILE loc2 = (EIF_POINTER) 0;
	EIF_BOOLEAN EIF_VOLATILE loc3 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN EIF_VOLATILE loc4 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE EIF_VOLATILE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE EIF_VOLATILE saved_except = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_p
#define arg4 arg4x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE up3x = {0, SK_POINTER};
#define up3 up3x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_POINTER  EIF_VOLATILE tp1;
	EIF_REFERENCE  EIF_VOLATILE tr1 = NULL;
	EIF_REFERENCE  EIF_VOLATILE tr2 = NULL;
	EIF_INTEGER_32  EIF_VOLATILE ti4_1;
	EIF_BOOLEAN  EIF_VOLATILE tb1;
	EIF_BOOLEAN  EIF_VOLATILE tb2;
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTDT;
	RTXD;
	RTLXD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_POINTER *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTXI(7);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLR(4,loc1);
	RTLR(5,loc5);
	RTLR(6,saved_except);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_POINTER, &loc2);
	RTLU(SK_BOOL, &loc3);
	RTLU(SK_BOOL, &loc4);
	RTLU(SK_REF, &loc5);
	RTLXL;
	
	RTEAA(l_feature_name, 1101, Current, 5, 4, 24206);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1101, Current, 24206);
	RTIV(Current, RTAL);
	RTE_T
	RTHOOK(1);
	if ((EIF_BOOLEAN) !loc4) {
		if (
			WDBG(1101,"dlg_dispatcher")
		) {
			RTHOOK(2);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(2,1);
			tr2 = RTMS_EX_H("in dlg_proc ",12,1615306784);
			ur1 = tr2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 61, "put_string", tr1))(tr1, ur1x);
			RTHOOK(3);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(3,1);
			tr2 = c_outp(arg1);
			ur1 = RTCCL(tr2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 61, "put_string", tr1))(tr1, ur1x);
			RTHOOK(4);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(4,1);
			uc1 = (EIF_CHARACTER_8) ' ';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 59, "put_character", tr1))(tr1, uc1x);
			RTHOOK(5);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			ui4_1 = arg2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 67, "put_integer", tr1))(tr1, ui4_1x);
			RTHOOK(6);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(6,1);
			uc1 = (EIF_CHARACTER_8) ' ';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 59, "put_character", tr1))(tr1, uc1x);
			RTHOOK(7);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(7,1);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 245, dtype))(Current)).it_i4);
			ub1 = (EIF_BOOLEAN)(arg2 == ti4_1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 78, "put_boolean", tr1))(tr1, ub1x);
			RTHOOK(8);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(8,1);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(94, 80, "put_new_line", tr1))(tr1);
		}
		RTHOOK(9);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 245, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(arg2 == ti4_1)) {
			RTHOOK(10);
			RTDBGAL(Current, 1, 0xF8000452, 0, 0); /* loc1 */
			
			loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 138, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTHOOK(11);
			if ((EIF_BOOLEAN)(loc1 != NULL)) {
				RTHOOK(12);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 139, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(12,1);
				ur1 = NULL;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1255, 33, "put", tr1))(tr1, ur1x);
				RTHOOK(13);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1106, 598, "increment_level", loc1))(loc1);
				RTHOOK(14);
				RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
				
				loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
				RTHOOK(15);
				up1 = arg1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1106, 37, "set_item", loc1))(loc1, up1x);
				RTHOOK(16);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1106, 776, "register_current_window", loc1))(loc1);
				RTHOOK(17);
				RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
				
				up1 = arg1;
				ui4_1 = arg2;
				up2 = arg3;
				up3 = arg4;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1106, 774, "process_message", loc1))(loc1, up1x, ui4_1x, up2x, up3x)).it_p);
				Result = (EIF_POINTER) tp1;
				RTHOOK(18);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1106, 599, "decrement_level", loc1))(loc1);
				RTHOOK(19);
				RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
				
				loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			}
			RTHOOK(20);
			RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
			
			ui4_1 = ((EIF_INTEGER_32) 1L);
			Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1101, 89, dtype))(Current, ui4_1x)).it_p);
		} else {
			RTHOOK(21);
			RTDBGAL(Current, 1, 0xF8000452, 0, 0); /* loc1 */
			
			up1 = arg1;
			loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1101, 104, dtype))(Current, up1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTHOOK(22);
			tb1 = '\0';
			if ((EIF_BOOLEAN)(loc1 != NULL)) {
				tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 36, "exists", loc1))(loc1)).it_b);
				tb1 = tb2;
			}
			if (tb1) {
				RTHOOK(23);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1106, 598, "increment_level", loc1))(loc1);
				RTHOOK(24);
				RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
				
				loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
				RTHOOK(25);
				RTDBGAL(Current, 2, 0x40000000, 1, 0); /* loc2 */
				
				up1 = arg1;
				ui4_1 = arg2;
				up2 = arg3;
				up3 = arg4;
				tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1106, 774, "process_message", loc1))(loc1, up1x, ui4_1x, up2x, up3x)).it_p);
				loc2 = (EIF_POINTER) tp1;
				RTHOOK(26);
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 593, "has_return_value", loc1))(loc1)).it_b);
				if (tb1) {
					RTHOOK(27);
					RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
					
					tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 594, "message_return_value", loc1))(loc1)).it_p);
					Result = (EIF_POINTER) tp1;
				} else {
					RTHOOK(28);
					tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1106, 595, "default_processing", loc1))(loc1)).it_b);
					if ((EIF_BOOLEAN) !tb1) {
						RTHOOK(29);
						RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
						
						ui4_1 = ((EIF_INTEGER_32) 1L);
						Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1101, 89, dtype))(Current, ui4_1x)).it_p);
					} else {
						RTHOOK(30);
						RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
						
						ui4_1 = ((EIF_INTEGER_32) 0L);
						Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1101, 89, dtype))(Current, ui4_1x)).it_p);
					}
				}
				RTHOOK(31);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1106, 599, "decrement_level", loc1))(loc1);
				RTHOOK(32);
				RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
				
				loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			}
		}
	} else {
		RTHOOK(33);
		RTDBGAL(Current, 0, 0x40000000, 1,0); /* Result */
		
		ui4_1 = ((EIF_INTEGER_32) 0L);
		Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1101, 89, dtype))(Current, ui4_1x)).it_p);
		RTHOOK(34);
		RTDBGAL(Current, 5, 0xF80004C3, 0, 0); /* loc5 */
		
		loc5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 365, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(35);
		if ((EIF_BOOLEAN)(loc5 != NULL)) {
			RTHOOK(36);
			{
				static EIF_TYPE_INDEX typarr0[] = {1101,0xFFF9,1,734,415,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
				tr1 = RTLNTS(typres0, 2, 0);
			}
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 368, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
			RTAR(tr1,tr2);
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1219, 69, "call", loc5))(loc5, ur1x);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTE_E
	RTLXE;
	RTXS(7);
	RTHOOK(37);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 != NULL) && loc3)) {
		RTHOOK(38);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1106, 599, "decrement_level", loc1))(loc1);
		RTHOOK(39);
		RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
		
		loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	}
	RTHOOK(40);
	RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
	
	loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(41);
	RTTS;
	RTPS;
	RTER;
	RTMD(0);
	/* NOTREACHED */
	RTE_EE
	RTHOOK(42);
	RTDBGLE;
	RTMD(0);
	RTEOK;
	RTXE;
	RTLO(11);
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef up1
#undef up2
#undef up3
#undef ur1
#undef ui4_1
#undef ub1
#undef uc1
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}
#undef EIF_VOLATILE
#define EIF_VOLATILE

/* {WEL_ABSTRACT_DISPATCHER}.new_exception */
EIF_TYPED_VALUE F1102_20187 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "new_exception";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,loc1);
	RTLR(4,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 1101, Current, 1, 0, 24207);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1101, Current, 24207);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT(NULL, EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(1,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(234, 32, "last_exception", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTTE((EIF_BOOLEAN)(tr2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF800019F, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1101, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(234, 32, "last_exception", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr2);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT("l_exception_attached", EX_CHECK);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(4);
	RTDBGAL(Current, 0, 0xF800019F, 0,0); /* Result */
	
	Result = (EIF_REFERENCE) RTCCL(loc1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
}

/* {WEL_ABSTRACT_DISPATCHER}.cwin_def_window_proc */
EIF_TYPED_VALUE F1102_20188 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "cwin_def_window_proc";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_p
#define arg4 arg4x.it_p
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_p = * (EIF_POINTER *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_p = * (EIF_POINTER *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_POINTER,&arg3);
	RTLU(SK_POINTER,&arg4);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1101, Current, 0, 4, 24208);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(1101, Current, 24208);
	RTIV(Current, RTAL);
	Result = (EIF_POINTER) DefWindowProc(((HWND) arg1), ((UINT) arg2), ((WPARAM) arg3), ((LPARAM) arg4));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

void EIF_Minit1102 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
