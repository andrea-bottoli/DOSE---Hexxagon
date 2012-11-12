/*
 * Code for class WEL_GDIP_IMAGE_ENCODER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F18_1807(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F18_1808(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1809(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1810(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1811(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1812(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1813(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1814(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1815(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1816(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1817(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1818(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1819(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1820(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1821(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1822(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1823(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1824(EIF_REFERENCE);
extern EIF_TYPED_VALUE F18_1825(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F18_1826(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit18(void);

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

/* {WEL_GDIP_IMAGE_ENCODER}.make */
void F18_1807 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "make";
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
	
	RTEAA(l_feature_name, 17, Current, 0, 1, 1687);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(17, Current, 1687);
	if (arg1) {
		RTCC(arg1, 17, l_feature_name, 1, 39);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 17, 33, 0xF8000027, 0); /* guid */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(17, 33, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
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
#undef up1
#undef arg1
}

/* {WEL_GDIP_IMAGE_ENCODER}.guid */
EIF_TYPED_VALUE F18_1808 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(17,33, Dtype(Current)));
	return r;
}


/* {WEL_GDIP_IMAGE_ENCODER}.find_encoder */
EIF_TYPED_VALUE F18_1809 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "find_encoder";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(7);
	RTLR(0,loc2);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLR(3,tr2);
	RTLR(4,Current);
	RTLR(5,ur1);
	RTLR(6,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 17, Current, 2, 0, 1689);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1689);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF800026A, 0, 0); /* loc2 */
	
	tr1 = RTLN(618);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(618, 42, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF80004DA, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(618, 69, "all_image_encoders", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1242, 106, "start", loc1))(loc1);
	for (;;) {
		RTHOOK(4);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 66, "after", loc1))(loc1)).it_b);
		if (!tb2) {
			tb1 = (EIF_BOOLEAN)(Result != NULL);
		}
		if (tb1) break;
		RTHOOK(5);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 80, "item", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(19, 35, "format_id", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 33, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", tr2))(tr2, ur1x)).it_b);
		if (tb2) {
			RTHOOK(6);
			RTDBGAL(Current, 0, 0xF8000013, 0,0); /* Result */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 80, "item", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			Result = (EIF_REFERENCE) RTCCL(tr1);
		}
		RTHOOK(7);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1242, 108, "forth", loc1))(loc1);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
}

/* {WEL_GDIP_IMAGE_ENCODER}.bmp */
EIF_TYPED_VALUE F18_1810 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "bmp";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,tr1);
	RTLR(1,tr2);
	RTLR(2,tr3);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1690);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1690);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(786);
	tr2 = RTMS_EX_H("image/bmp",9,203750768);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 63, "as_string_32", tr2))(tr2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(786, 93, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	ur1 = RTCCL(tr1);
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(17, 51, Dtype(Current)))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
}

/* {WEL_GDIP_IMAGE_ENCODER}.jpg */
EIF_TYPED_VALUE F18_1811 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "jpg";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,tr1);
	RTLR(1,tr2);
	RTLR(2,tr3);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1691);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1691);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(786);
	tr2 = RTMS_EX_H("image/jpeg",10,755092839);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 63, "as_string_32", tr2))(tr2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(786, 93, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	ur1 = RTCCL(tr1);
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(17, 51, Dtype(Current)))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
}

/* {WEL_GDIP_IMAGE_ENCODER}.gif */
EIF_TYPED_VALUE F18_1812 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "gif";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,tr1);
	RTLR(1,tr2);
	RTLR(2,tr3);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1692);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1692);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(786);
	tr2 = RTMS_EX_H("image/gif",9,204077414);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 63, "as_string_32", tr2))(tr2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(786, 93, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	ur1 = RTCCL(tr1);
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(17, 51, Dtype(Current)))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
}

/* {WEL_GDIP_IMAGE_ENCODER}.tiff */
EIF_TYPED_VALUE F18_1813 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "tiff";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,tr1);
	RTLR(1,tr2);
	RTLR(2,tr3);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1693);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1693);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(786);
	tr2 = RTMS_EX_H("image/tiff",10,922406502);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 63, "as_string_32", tr2))(tr2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(786, 93, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	ur1 = RTCCL(tr1);
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(17, 51, Dtype(Current)))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
}

/* {WEL_GDIP_IMAGE_ENCODER}.png */
EIF_TYPED_VALUE F18_1814 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "png";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,tr1);
	RTLR(1,tr2);
	RTLR(2,tr3);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1694);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1694);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
	
	tr1 = RTLN(786);
	tr2 = RTMS_EX_H("image/png",9,204668519);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(787, 63, "as_string_32", tr2))(tr2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(786, 93, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(1,1);
	ur1 = RTCCL(tr1);
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(17, 51, Dtype(Current)))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
}

/* {WEL_GDIP_IMAGE_ENCODER}.compression */
RTOID (F18_1815)
EIF_TYPED_VALUE F18_1815 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "compression";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1815);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1695);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1695);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) -526552163L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) -13100L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 17646L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 142L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 186L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 63L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 191L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 139L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 228L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 252L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 88L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.color_depth */
RTOID (F18_1816)
EIF_TYPED_VALUE F18_1816 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "color_depth";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1816);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1696);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1696);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1711829077L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) -21146L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 19580L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 154L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 24L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 56L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 162L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 49L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 11L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 131L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 55L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.scan_method */
RTOID (F18_1817)
EIF_TYPED_VALUE F18_1817 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "scan_method";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1817);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1697);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1697);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 978200161L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 12553L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 20054L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 133L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 54L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 66L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 193L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 86L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 231L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 220L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 250L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.version */
RTOID (F18_1818)
EIF_TYPED_VALUE F18_1818 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "version";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1818);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1698);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1698);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 617712758L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) -32438L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 16804L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 191L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 83L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 28L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 33L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 156L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 204L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 247L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 151L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.render_method */
RTOID (F18_1819)
EIF_TYPED_VALUE F18_1819 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "render_method";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1819);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1699);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1699);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 1833092410L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 8858L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 18469L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 139L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 183L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 92L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 153L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 226L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 185L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 168L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 184L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.quality */
RTOID (F18_1820)
EIF_TYPED_VALUE F18_1820 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "quality";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1820);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1700);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1700);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 492561589L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) -1462L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 17709L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 156L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 221L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 93L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 179L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 81L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 5L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 231L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 235L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.transformation */
RTOID (F18_1821)
EIF_TYPED_VALUE F18_1821 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "transformation";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1821);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1701);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1701);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) -1928416559L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) -23154L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 20136L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 170L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 20L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 16L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 128L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 116L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 183L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 182L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 249L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.luminance_table */
RTOID (F18_1822)
EIF_TYPED_VALUE F18_1822 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "luminance_table";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1822);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1702);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1702);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) -307020850L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 614L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 19063L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 185L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 4L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 39L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 33L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 96L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 153L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 231L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 23L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.chrominance_table */
RTOID (F18_1823)
EIF_TYPED_VALUE F18_1823 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "chrominance_table";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1823);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1703);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1703);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) -219916836L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 2483L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 17174L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 130L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 96L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 103L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 106L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 218L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 50L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 72L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 28L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.save_flag */
RTOID (F18_1824)
EIF_TYPED_VALUE F18_1824 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "save_flag";
	RTEX;
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
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F18_1824);

	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLR(2,tr2);
	RTLR(3,tr3);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 0, 1704);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1704);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000027, 0,0); /* Result */
	
	tr1 = RTLN(39);
	tu4_1 = (EIF_NATURAL_32) ((EIF_INTEGER_32) 690120444L);
	uu4_1 = tu4_1;
	tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) -21440L);
	uu2_1 = tu2_1;
	tu2_2 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 18367L);
	uu2_2 = tu2_2;
	ui4_1 = ((EIF_INTEGER_32) 8L);
	{
		static EIF_TYPE_INDEX typarr0[] = {17,1374,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1374, typarr0)));
		tr3 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_NATURAL_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr3) = 8L;
		memset(tr3, 0, RT_SPECIAL_VISIBLE_SIZE(tr3));
	}
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 140L);
	*((EIF_NATURAL_8 *)tr3+0) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 252L);
	*((EIF_NATURAL_8 *)tr3+1) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 168L);
	*((EIF_NATURAL_8 *)tr3+2) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 91L);
	*((EIF_NATURAL_8 *)tr3+3) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 137L);
	*((EIF_NATURAL_8 *)tr3+4) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 166L);
	*((EIF_NATURAL_8 *)tr3+5) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 85L);
	*((EIF_NATURAL_8 *)tr3+6) = (EIF_NATURAL_8) tu1_1;
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 222L);
	*((EIF_NATURAL_8 *)tr3+7) = (EIF_NATURAL_8) tu1_1;
	tr2 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1374, 42, Dtype(tr3)))(tr3).it_r;
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(39, 30, Dtype(tr1)))(tr1, uu4_1x, uu2_1x, uu2_2x, ur1x);
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
#undef ui4_1
#undef uu4_1
#undef uu2_1
#undef uu2_2
#undef Result
}

/* {WEL_GDIP_IMAGE_ENCODER}.is_valid */
EIF_TYPED_VALUE F18_1825 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_valid";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	EIF_BOOLEAN tb6;
	EIF_BOOLEAN tb7;
	EIF_BOOLEAN tb8;
	EIF_BOOLEAN tb9;
	EIF_BOOLEAN tb10;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 17, Current, 0, 1, 1705);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(17, Current, 1705);
	if (arg1) {
		RTCC(arg1, 17, l_feature_name, 1, 39);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_guid_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\01';
	tb2 = '\01';
	tb3 = '\01';
	tb4 = '\01';
	tb5 = '\01';
	tb6 = '\01';
	tb7 = '\01';
	tb8 = '\01';
	tb9 = '\01';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 45, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	tb10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
	if (!tb10) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 40, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		tb9 = tb10;
	}
	if (!tb9) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 41, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		tb8 = tb9;
	}
	if (!tb8) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 42, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb8 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		tb7 = tb8;
	}
	if (!tb7) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		tb6 = tb7;
	}
	if (!tb6) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 44, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		tb5 = tb6;
	}
	if (!tb5) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 46, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		tb4 = tb5;
	}
	if (!tb4) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 47, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		tb3 = tb4;
	}
	if (!tb3) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 48, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		tb2 = tb3;
	}
	if (!tb2) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(17, 49, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(39, 44, "is_equal", arg1))(arg1, ur1x)).it_b);
		tb1 = tb2;
	}
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef arg1
}

/* {WEL_GDIP_IMAGE_ENCODER}.find_encoder_with */
EIF_TYPED_VALUE F18_1826 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "find_encoder_with";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(9);
	RTLR(0,arg1);
	RTLR(1,loc2);
	RTLR(2,tr1);
	RTLR(3,loc1);
	RTLR(4,loc3);
	RTLR(5,tr2);
	RTLR(6,ur1);
	RTLR(7,Result);
	RTLR(8,Current);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 17, Current, 3, 1, 1706);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(17, Current, 1706);
	if (arg1) {
		RTCC(arg1, 17, l_feature_name, 1, 786);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_mini_type_attached", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF800026A, 0, 0); /* loc2 */
	
	tr1 = RTLN(618);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(618, 42, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF80004DA, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(618, 69, "all_image_encoders", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1242, 106, "start", loc1))(loc1);
	for (;;) {
		RTHOOK(5);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 66, "after", loc1))(loc1)).it_b);
		if (!tb2) {
			tb1 = (EIF_BOOLEAN)(loc3 != NULL);
		}
		if (tb1) break;
		RTHOOK(6);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 80, "item", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(19, 40, "mime_type", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,2);
		ur1 = RTCCL(arg1);
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(786, 110, "is_equal", tr2))(tr2, ur1x)).it_b);
		if (tb2) {
			RTHOOK(7);
			RTDBGAL(Current, 3, 0xF8000013, 0, 0); /* loc3 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 80, "item", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc3 = (EIF_REFERENCE) RTCCL(tr1);
		}
		RTHOOK(8);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1242, 108, "forth", loc1))(loc1);
	}
	RTHOOK(9);
	if ((EIF_BOOLEAN)(loc3 != NULL)) {
		RTHOOK(10);
		RTDBGAL(Current, 0, 0xF8000011, 0,0); /* Result */
		
		tr1 = RTLN(17);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(19, 35, "format_id", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(17, 32, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(10,1);
		Result = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef arg1
}

void EIF_Minit18 (void)
{
	GTCX
	RTOTS (1815,F18_1815)
	RTOTS (1816,F18_1816)
	RTOTS (1817,F18_1817)
	RTOTS (1818,F18_1818)
	RTOTS (1819,F18_1819)
	RTOTS (1820,F18_1820)
	RTOTS (1821,F18_1821)
	RTOTS (1822,F18_1822)
	RTOTS (1823,F18_1823)
	RTOTS (1824,F18_1824)
}


#ifdef __cplusplus
}
#endif
