/*
 * Code for class KL_OPERATING_SYSTEM
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F31_1951(EIF_REFERENCE);
extern EIF_TYPED_VALUE F31_1952(EIF_REFERENCE);
extern EIF_TYPED_VALUE F31_1953(EIF_REFERENCE);
extern EIF_TYPED_VALUE F31_1954(EIF_REFERENCE);
extern EIF_TYPED_VALUE F31_1955(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F31_1956(EIF_REFERENCE);
extern void EIF_Minit31(void);

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

/* {KL_OPERATING_SYSTEM}.is_windows */
RTOID (F31_1951)
EIF_TYPED_VALUE F31_1951 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_windows";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_CHARACTER_8 tc1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRB(EIF_BOOLEAN)
	RTOTDB(EIF_BOOLEAN, F31_1951);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc2);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,Current);
	RTLR(4,loc3);
	RTLR(5,loc1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 30, Current, 3, 0, 1835);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(30, Current, 1835);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF8000313, 0, 0); /* loc2 */
	
	tr1 = RTMS_EX_H("GOBO_OS",7,715786835);
	ur1 = tr1;
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(30, 36, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tb1 = '\0';
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		ti4_1 = *(EIF_INTEGER_32 *)(loc2 + RTVA(787, 107, "count", loc2));
		tb1 = (EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L));
	}
	if (tb1) {
		RTHOOK(3);
		tr1 = RTMS_EX_H("windows",7,1657536371);
		ur1 = tr1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 110, "is_equal", loc2))(loc2, ur1x)).it_b);
		if (tb1) {
			RTHOOK(4);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
	} else {
		RTHOOK(5);
		RTDBGAL(Current, 3, 0xF8000313, 0, 0); /* loc3 */
		
		tr1 = RTMS_EX_H("OS",2,20307);
		ur1 = tr1;
		loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(30, 36, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(6);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(loc3 != NULL)) {
			tr1 = RTMS_EX_H("Windows_NT",10,121334100);
			ur1 = tr1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 110, "is_equal", loc3))(loc3, ur1x)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(7);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		} else {
			RTHOOK(8);
			RTDBGAL(Current, 1, 0xF8000313, 0, 0); /* loc1 */
			
			loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(30, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTHOOK(9);
			ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(787, 107, "count", loc1));
			if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 3L))) {
				RTHOOK(10);
				tb1 = '\0';
				ui4_1 = ((EIF_INTEGER_32) 2L);
				tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", loc1))(loc1, ui4_1x)).it_c1);
				if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) ':')) {
					ui4_1 = ((EIF_INTEGER_32) 3L);
					tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", loc1))(loc1, ui4_1x)).it_c1);
					tb1 = (EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) '\\');
				}
				if (tb1) {
					RTHOOK(11);
					RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
					
					Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
				} else {
					RTHOOK(12);
					tb1 = '\0';
					ui4_1 = ((EIF_INTEGER_32) 1L);
					tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", loc1))(loc1, ui4_1x)).it_c1);
					if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) '\\')) {
						ui4_1 = ((EIF_INTEGER_32) 2L);
						tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", loc1))(loc1, ui4_1x)).it_c1);
						tb1 = (EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) '\\');
					}
					if (tb1) {
						RTHOOK(13);
						RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
						
						Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
					}
				}
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef Result
}

/* {KL_OPERATING_SYSTEM}.is_unix */
RTOID (F31_1952)
EIF_TYPED_VALUE F31_1952 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_unix";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_CHARACTER_8 tc1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRB(EIF_BOOLEAN)
	RTOTDB(EIF_BOOLEAN, F31_1952);
	dtype = Dtype(Current);

	RTLI(5);
	RTLR(0,loc2);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,Current);
	RTLR(4,loc1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 30, Current, 2, 0, 1836);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(30, Current, 1836);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF8000313, 0, 0); /* loc2 */
	
	tr1 = RTMS_EX_H("GOBO_OS",7,715786835);
	ur1 = tr1;
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(30, 36, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tb1 = '\0';
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		ti4_1 = *(EIF_INTEGER_32 *)(loc2 + RTVA(787, 107, "count", loc2));
		tb1 = (EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L));
	}
	if (tb1) {
		RTHOOK(3);
		tr1 = RTMS_EX_H("unix",4,1970170232);
		ur1 = tr1;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 110, "is_equal", loc2))(loc2, ur1x)).it_b);
		if (tb1) {
			RTHOOK(4);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		}
	} else {
		RTHOOK(5);
		RTDBGAL(Current, 1, 0xF8000313, 0, 0); /* loc1 */
		
		loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(30, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTHOOK(6);
		ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(787, 107, "count", loc1));
		if ((EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L))) {
			RTHOOK(7);
			RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
			
			ui4_1 = ((EIF_INTEGER_32) 1L);
			tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 158, "item", loc1))(loc1, ui4_1x)).it_c1);
			Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) '/');
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef Result
}

/* {KL_OPERATING_SYSTEM}.is_dotnet */
RTOID (F31_1953)
EIF_TYPED_VALUE F31_1953 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_dotnet";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRB(EIF_BOOLEAN)
	RTOTDB(EIF_BOOLEAN, F31_1953);

	RTLI(3);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 30, Current, 1, 0, 1831);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(30, Current, 1831);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80001C8, 0, 0); /* loc1 */
	
	tr1 = RTLN(456);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(456, 26, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(456, 34, "is_dotnet", loc1))(loc1)).it_b);
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef Result
}

/* {KL_OPERATING_SYSTEM}.current_working_directory */
EIF_TYPED_VALUE F31_1954 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "current_working_directory";
	RTEX;
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
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 30, Current, 0, 0, 1832);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(30, Current, 1832);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(30, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(506, 33, "current_working_directory", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr2);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("current_working_directory_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
}

/* {KL_OPERATING_SYSTEM}.variable_value */
EIF_TYPED_VALUE F31_1955 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "variable_value";
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
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,tr2);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 30, Current, 0, 1, 1833);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(30, Current, 1833);
	if (arg1) {
		RTCC(arg1, 30, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_variable_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(30, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ur1 = RTCCL(arg1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(506, 35, "get", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef arg1
}

/* {KL_OPERATING_SYSTEM}.execution_environment */
RTOID (F31_1956)
EIF_TYPED_VALUE F31_1956 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "execution_environment";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F31_1956);
	dtype = Dtype(Current);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 30, Current, 0, 0, 1834);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(30, Current, 1834);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80001FA, 0,0); /* Result */
	
	tr1 = RTLN(506);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(506, 26, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("execution_environment_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef Result
}

void EIF_Minit31 (void)
{
	GTCX
	RTOTS (1951,F31_1951)
	RTOTS (1952,F31_1952)
	RTOTS (1953,F31_1953)
	RTOTS (1956,F31_1956)
}


#ifdef __cplusplus
}
#endif
