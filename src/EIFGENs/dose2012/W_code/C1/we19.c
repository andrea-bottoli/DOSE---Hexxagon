/*
 * Code for class WEL_GDIP_IMAGE_ENCODER_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F19_1827(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1828(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1829(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1830(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1831(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1832(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1833(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1834(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1835(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1836(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1837(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1838(EIF_REFERENCE);
extern EIF_TYPED_VALUE F19_1839(EIF_REFERENCE);
extern void EIF_Minit19(void);

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

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.all_formats */
EIF_TYPED_VALUE F19_1827 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "all_formats";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLR(3,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 18, Current, 0, 0, 1718);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1718);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80004DA, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1242,17,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1242, typarr0)));
		tr1 = RTLN(typres0);
	}
	ui4_1 = ((EIF_INTEGER_32) 12L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1242, 76, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 34, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 35, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(5);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(6);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 37, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(7);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 38, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(8);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 39, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(9);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(10);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 41, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(11);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 42, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(12);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	RTHOOK(13);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(18, 44, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", Result))(Result, ur1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(14);
		RTCT("not_void", EX_POST);
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
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.memorybmp */
RTOID (F19_1828)
EIF_TYPED_VALUE F19_1828 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "memorybmp";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1828);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1719);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1719);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812842));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.bmp */
RTOID (F19_1829)
EIF_TYPED_VALUE F19_1829 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "bmp";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1829);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1707);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1707);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812843));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.emf */
RTOID (F19_1830)
EIF_TYPED_VALUE F19_1830 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "emf";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1830);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1708);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1708);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812844));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.wmf */
RTOID (F19_1831)
EIF_TYPED_VALUE F19_1831 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "wmf";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1831);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1709);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1709);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812845));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.jpeg */
RTOID (F19_1832)
EIF_TYPED_VALUE F19_1832 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "jpeg";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1832);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1710);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1710);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812846));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.png */
RTOID (F19_1833)
EIF_TYPED_VALUE F19_1833 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "png";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1833);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1711);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1711);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812847));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.gif */
RTOID (F19_1834)
EIF_TYPED_VALUE F19_1834 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "gif";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1834);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1712);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1712);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812848));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.tiff */
RTOID (F19_1835)
EIF_TYPED_VALUE F19_1835 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tiff";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1835);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1713);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1713);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812849));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.exif */
RTOID (F19_1836)
EIF_TYPED_VALUE F19_1836 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "exif";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1836);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1714);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1714);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812850));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.photocd */
RTOID (F19_1837)
EIF_TYPED_VALUE F19_1837 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "photocd";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1837);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1715);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1715);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812851));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.flashpix */
RTOID (F19_1838)
EIF_TYPED_VALUE F19_1838 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "flashpix";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1838);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1716);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1716);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812852));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER_CONSTANTS}.icon */
RTOID (F19_1839)
EIF_TYPED_VALUE F19_1839 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "icon";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu4_1x = {0, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uu2_2x = {0, SK_UINT16};
#define uu2_2 uu2_2x.it_n2
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_NATURAL_32 tu4_1;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_8 tu1_1;
	RTCDD;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F19_1839);
	dtype = Dtype(Current);

	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 18, Current, 1, 0, 1717);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(18, Current, 1717);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF8000027, 0, 0); /* loc1 */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_64) RTI64C(3110812853));
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 1832L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 4563L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {18,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 157L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 123L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 248L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 30L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 243L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 46L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(17);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

void EIF_Minit19 (void)
{
	GTCX
	RTOTS (1828,F19_1828)
	RTOTS (1829,F19_1829)
	RTOTS (1830,F19_1830)
	RTOTS (1831,F19_1831)
	RTOTS (1832,F19_1832)
	RTOTS (1833,F19_1833)
	RTOTS (1834,F19_1834)
	RTOTS (1835,F19_1835)
	RTOTS (1836,F19_1836)
	RTOTS (1837,F19_1837)
	RTOTS (1838,F19_1838)
	RTOTS (1839,F19_1839)
}


#ifdef __cplusplus
}
#endif
