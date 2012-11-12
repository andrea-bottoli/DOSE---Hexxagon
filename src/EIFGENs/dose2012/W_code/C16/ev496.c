/*
 * Code for class EV_GDI_ALLOCATED_BRUSHES
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F496_9291(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F496_9292(EIF_REFERENCE);
extern void EIF_Minit496(void);

#ifdef __cplusplus
}
#endif

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

/* {EV_GDI_ALLOCATED_BRUSHES}.get */
EIF_TYPED_VALUE F496_9291 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "get";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REAL_64 tr8_1;
	EIF_REAL_64 tr8_2;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(11);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,tr2);
	RTLR(5,ur1);
	RTLR(6,loc1);
	RTLR(7,ur2);
	RTLR(8,Result);
	RTLR(9,loc2);
	RTLR(10,tr3);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 495, Current, 2, 2, 10615);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(495, Current, 10615);
	if (arg1) {
		RTCC(arg1, 495, l_feature_name, 1, 604);
	}
	if (arg2) {
		RTCC(arg2, 495, l_feature_name, 2, 1020);
	}
	RTIV(Current, RTAL);
	if (
		WDBG(495,"vision2_windows_gdi")
	) {
		RTHOOK(1);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(495, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(1,1);
		tr2 = RTMS_EX_H("getting a brush...",18,532685102);
		ur1 = tr2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 61, "put_string", tr1))(tr1, ur1x);
	}
	RTHOOK(2);
	RTDBGAA(Current, dtype, 495, 35, 0x10000000, 1); /* cache_time */
	
	(*(EIF_INTEGER_32 *)(Current + RTWA(495, 35, dtype)))++;
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF8000307, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(495, 63, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(4);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(775, 48, "set_values", loc1))(loc1, ur1x, ur2x);
	RTHOOK(5);
	ur1 = RTCCL(loc1);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(495, 38, dtype))(Current, ur1x)).it_b);
	if (tb1) {
		RTHOOK(6);
		RTDBGAL(Current, 0, 0xF800025E, 0,0); /* Result */
		
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(495, 34, dtype));
		ui4_1 = ti4_1;
		Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(495, 40, dtype))(Current, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	} else {
		RTHOOK(7);
		RTDBGAL(Current, 1, 0xF8000307, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(775, 10, "twin", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(8);
		if ((EIF_BOOLEAN)(arg1 != NULL)) {
			RTHOOK(9);
			RTDBGAL(Current, 0, 0xF800025E, 0,0); /* Result */
			
			tr1 = RTLN(606);
			ur1 = RTCCL(arg1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(606, 68, Dtype(tr1)))(tr1, ur1x);
			RTNHOOK(9,1);
			Result = (EIF_REFERENCE) RTCCL(tr1);
		} else {
			RTHOOK(10);
			RTDBGAL(Current, 2, 0xF80003FC, 0, 0); /* loc2 */
			
			loc2 = (EIF_REFERENCE) RTCCL(arg2);
			if (RTAL & CK_CHECK) {
				RTHOOK(11);
				RTCT(NULL, EX_CHECK);
				if ((EIF_BOOLEAN)(loc2 != NULL)) {
					RTCK;
				} else {
					RTCF;
				}
			}
			RTHOOK(12);
			RTDBGAL(Current, 0, 0xF800025E, 0,0); /* Result */
			
			tr1 = RTLN(606);
			ur1 = RTCCL(loc2);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(606, 66, Dtype(tr1)))(tr1, ur1x);
			RTNHOOK(12,1);
			Result = (EIF_REFERENCE) RTCCL(tr1);
		}
		RTHOOK(13);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(606, 48, "enable_reference_tracking", Result))(Result);
		RTHOOK(14);
		ur1 = RTCCL(Result);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(775, 38, "set_item", loc1))(loc1, ur1x);
		RTHOOK(15);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(495, 35, dtype));
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(775, 37, "update", loc1))(loc1, ui4_1x);
		RTHOOK(16);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(495, 39, dtype))(Current, ur1x);
	}
	if (
		WDBG(495,"vision2_windows_gdi")
	) {
		RTHOOK(17);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(495, 21, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(17,1);
		tr2 = RTMS_EX_H("Cache Stat: ",12,1758069792);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(495, 36, dtype));
		tr8_1 = (EIF_REAL_64) (ti4_1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(495, 35, dtype));
		tr8_2 = (EIF_REAL_64) (ti4_1);
		tr3 = c_outr64((EIF_REAL_64) ((EIF_REAL_64) ((EIF_REAL_64) ((EIF_REAL_64) 100.0 * tr8_1)) /  (EIF_REAL_64) (tr8_2)));
		ur1 = RTCCL(tr3);
		tr3 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr2))(tr2, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		tr2 = RTMS_EX_H("% \012",3,2433034);
		ur1 = tr2;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 194, "plus", tr3))(tr3, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		ur1 = RTCCL(tr2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(94, 61, "put_string", tr1))(tr1, ur1x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(18);
		RTCT("result_exists", EX_POST);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(Result != NULL)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(606, 35, "exists", Result))(Result)).it_b);
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
	RTHOOK(19);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ui4_1
#undef arg2
#undef arg1
}

/* {EV_GDI_ALLOCATED_BRUSHES}.reusable_search_object */
RTOID (F496_9292)
EIF_TYPED_VALUE F496_9292 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reusable_search_object";
	RTEX;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F496_9292);

	RTLI(4);
	RTLR(0,tr1);
	RTLR(1,ur1);
	RTLR(2,ur2);
	RTLR(3,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 495, Current, 0, 0, 10616);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(495, Current, 10616);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000307, 0,0); /* Result */
	
	tr1 = RTLN(775);
	ur1 = NULL;
	ur2 = NULL;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(775, 40, Dtype(tr1)))(tr1, ur1x, ur2x);
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
#undef ur1
#undef ur2
#undef Result
}

void EIF_Minit496 (void)
{
	GTCX
	RTOTS (9292,F496_9292)
}


#ifdef __cplusplus
}
#endif
