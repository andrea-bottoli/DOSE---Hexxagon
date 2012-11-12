/*
 * Code for class OBJECT_GRAPH_TRAVERSABLE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F222_4990(EIF_REFERENCE);
extern EIF_TYPED_VALUE F222_4991(EIF_REFERENCE);
extern EIF_TYPED_VALUE F222_4992(EIF_REFERENCE);
extern EIF_TYPED_VALUE F222_4993(EIF_REFERENCE);
extern EIF_TYPED_VALUE F222_4994(EIF_REFERENCE);
extern EIF_TYPED_VALUE F222_4995(EIF_REFERENCE);
extern void F222_4996(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F222_4997(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F222_4998(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F222_4999(EIF_REFERENCE);
extern void F222_5000(EIF_REFERENCE);
extern EIF_TYPED_VALUE F222_5002(EIF_REFERENCE);
extern void F222_5003(EIF_REFERENCE);
extern void EIF_Minit222(void);

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

/* {OBJECT_GRAPH_TRAVERSABLE}.root_object */
EIF_TYPED_VALUE F222_4990 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(221,32, Dtype(Current)));
	return r;
}


/* {OBJECT_GRAPH_TRAVERSABLE}.object_action */
EIF_TYPED_VALUE F222_4991 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(221,33, Dtype(Current)));
	return r;
}


/* {OBJECT_GRAPH_TRAVERSABLE}.visited_objects */
EIF_TYPED_VALUE F222_4992 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(221,34, Dtype(Current)));
	return r;
}


/* {OBJECT_GRAPH_TRAVERSABLE}.is_root_object_set */
EIF_TYPED_VALUE F222_4993 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_root_object_set";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 221, Current, 0, 0, 4823);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(221, Current, 4823);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 32, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(tr1 != NULL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
}

/* {OBJECT_GRAPH_TRAVERSABLE}.is_object_action_set */
EIF_TYPED_VALUE F222_4994 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_object_action_set";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 221, Current, 0, 0, 4824);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(221, Current, 4824);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 33, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(tr1 != NULL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
}

/* {OBJECT_GRAPH_TRAVERSABLE}.is_skip_transient */
EIF_TYPED_VALUE F222_4995 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(221,37, Dtype(Current)));
	return r;
}


/* {OBJECT_GRAPH_TRAVERSABLE}.set_root_object */
void F222_4996 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_root_object";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
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
	
	RTEAA(l_feature_name, 221, Current, 0, 1, 4826);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(221, Current, 4826);
	RTCC(arg1, 221, l_feature_name, 1, RTWCT(221, 32, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("an_object_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 221, 32, 0xF8000000, 0); /* root_object */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(221, 32, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("root_object_set", EX_POST);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 32, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 35, dtype))(Current)).it_b);
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
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {OBJECT_GRAPH_TRAVERSABLE}.set_object_action */
void F222_4997 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_object_action";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
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
	
	RTEAA(l_feature_name, 221, Current, 0, 1, 4827);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(221, Current, 4827);
	RTCC(arg1, 221, l_feature_name, 1, RTWCT(221, 33, Current));
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("an_object_action_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 221, 33, 0xF80004C3, 0); /* object_action */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(221, 33, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("an_object_action_set", EX_POST);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 36, dtype))(Current)).it_b);
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
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {OBJECT_GRAPH_TRAVERSABLE}.set_is_skip_transient */
void F222_4998 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_is_skip_transient";
	RTEX;
#define arg1 arg1x.it_b
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 221, Current, 0, 1, 4828);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(221, Current, 4828);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 221, 37, 0x04000000, 1); /* is_skip_transient */
	
	*(EIF_BOOLEAN *)(Current + RTWA(221, 37, dtype)) = (EIF_BOOLEAN) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("is_skip_transient_set", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(221, 37, dtype));
		if ((EIF_BOOLEAN)(tb1 == arg1)) {
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
#undef arg1
}

/* {OBJECT_GRAPH_TRAVERSABLE}.traverse */
#undef EIF_VOLATILE
#define EIF_VOLATILE volatile
void F222_4999 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "traverse";
	RTEX;
	RTED;
	EIF_REFERENCE EIF_VOLATILE loc1 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN EIF_VOLATILE loc2 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN EIF_VOLATILE loc3 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE EIF_VOLATILE saved_except = (EIF_REFERENCE) 0;
	EIF_REFERENCE  EIF_VOLATILE tr1 = NULL;
	EIF_BOOLEAN  EIF_VOLATILE tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTDT;
	RTXD;
	RTLXD;
	
	RTXI(4);
	RTLR(0,Current);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,saved_except);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_BOOL, &loc2);
	RTLU(SK_BOOL, &loc3);
	RTLXL;
	
	RTEAA(l_feature_name, 221, Current, 3, 0, 4829);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(221, Current, 4829);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("root_object_available", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTE_T
	RTHOOK(2);
	if ((EIF_BOOLEAN) !loc2) {
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF80000E6, 0, 0); /* loc1 */
		
		tr1 = RTLN(230);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(230, 26, Dtype(tr1)))(tr1);
		RTNHOOK(3,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(4);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(230, 157, "lock_marking", loc1))(loc1);
		RTHOOK(5);
		RTDBGAL(Current, 3, 0x04000000, 1, 0); /* loc3 */
		
		loc3 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		RTHOOK(6);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(221, 45, dtype))(Current);
		RTHOOK(7);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(230, 158, "unlock_marking", loc1))(loc1);
	} else {
		RTHOOK(8);
		if ((EIF_BOOLEAN) (loc3 && (EIF_BOOLEAN)(loc1 != NULL))) {
			RTHOOK(9);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(230, 158, "unlock_marking", loc1))(loc1);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTE_E
	RTLXE;
	RTXS(4);
	RTHOOK(10);
	RTDBGAL(Current, 2, 0x04000000, 1, 0); /* loc2 */
	
	loc2 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
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
	RTLO(5);
}
#undef EIF_VOLATILE
#define EIF_VOLATILE

/* {OBJECT_GRAPH_TRAVERSABLE}.wipe_out */
void F222_5000 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "wipe_out";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 221, Current, 0, 0, 4830);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(221, Current, 4830);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 221, 34, 0xF80004DA, 0); /* visited_objects */
	
	*(EIF_REFERENCE *)(Current + RTWA(221, 34, dtype)) = (EIF_REFERENCE) NULL;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 221, 33, 0xF80004C3, 0); /* object_action */
	
	*(EIF_REFERENCE *)(Current + RTWA(221, 33, dtype)) = (EIF_REFERENCE) NULL;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 221, 32, 0xF8000000, 0); /* root_object */
	
	*(EIF_REFERENCE *)(Current + RTWA(221, 32, dtype)) = (EIF_REFERENCE) NULL;
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("visited_objects_reset", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 34, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 == NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("object_action_not_set", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 36, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(6);
		RTCT("root_object_not_set", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 35, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
}

/* {OBJECT_GRAPH_TRAVERSABLE}.default_size */
EIF_TYPED_VALUE F222_5002 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 200L);
	return r;
}

/* {OBJECT_GRAPH_TRAVERSABLE}.internal_traverse */
void F222_5003 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "internal_traverse";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc9 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc12 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc13 = (EIF_REFERENCE) 0;
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
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(13);
	RTLR(0,Current);
	RTLR(1,loc5);
	RTLR(2,tr1);
	RTLR(3,loc7);
	RTLR(4,loc6);
	RTLR(5,loc11);
	RTLR(6,ur1);
	RTLR(7,loc8);
	RTLR(8,loc3);
	RTLR(9,loc12);
	RTLR(10,loc4);
	RTLR(11,loc13);
	RTLR(12,loc10);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_INT32, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_REF, &loc12);
	RTLU(SK_REF, &loc13);
	
	RTEAA(l_feature_name, 221, Current, 13, 0, 4832);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(221, Current, 4832);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("root_object_available", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 35, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 5, 0xF80000E6, 0, 0); /* loc5 */
	
	tr1 = RTLN(230);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(230, 26, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	loc5 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 7, 0xF80004DA, 0, 0); /* loc7 */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(221, 34, Current)));
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 44, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1242, 76, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(3,1);
	loc7 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAL(Current, 6, 0xF8000500, 0, 0); /* loc6 */
	
	loc6 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 43, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	RTDBGAL(Current, 11, 0xF8000000, 0, 0); /* loc11 */
	
	loc11 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 32, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(6);
	if ((EIF_BOOLEAN)(loc11 != NULL)) {
		RTHOOK(7);
		ur1 = RTCCL(loc11);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1280, 47, "put", loc6))(loc6, ur1x);
		RTHOOK(8);
		ur1 = RTCCL(loc11);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 155, "mark", loc5))(loc5, ur1x);
	}
	RTHOOK(9);
	RTDBGAL(Current, 8, 0xF80004C3, 0, 0); /* loc8 */
	
	loc8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(221, 33, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	for (;;) {
		RTHOOK(10);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1280, 41, "is_empty", loc6))(loc6)).it_b);
		if (tb1) break;
		RTHOOK(11);
		RTDBGAL(Current, 3, 0xF8000000, 0, 0); /* loc3 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1280, 48, "item", loc6))(loc6)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(12);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1280, 50, "remove", loc6))(loc6);
		RTHOOK(13);
		ur1 = RTCCL(loc3);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1242, 116, "extend", loc7))(loc7, ur1x);
		RTHOOK(14);
		if ((EIF_BOOLEAN)(loc8 != NULL)) {
			RTHOOK(15);
			{
				static EIF_TYPE_INDEX typarr0[] = {221,0xFFF9,1,734,0,0xFFFF};
				EIF_TYPE_INDEX typres0;
				static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
				
				typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
				tr1 = RTLNTS(typres0, 2, 0);
			}
			((EIF_TYPED_VALUE *)tr1+1)->it_r = loc3;
			RTAR(tr1,loc3);
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1219, 69, "call", loc8))(loc8, ur1x);
		}
		RTHOOK(16);
		RTDBGAL(Current, 9, 0x10000000, 1, 0); /* loc9 */
		
		ur1 = RTCCL(loc3);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 92, "dynamic_type", loc5))(loc5, ur1x)).it_i4);
		loc9 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(17);
		ui4_1 = loc9;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 54, "is_special_type", loc5))(loc5, ui4_1x)).it_b);
		if (tb2) {
			RTHOOK(18);
			ui4_1 = loc9;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 53, "is_special_any_type", loc5))(loc5, ui4_1x)).it_b);
			if (tb2) {
				RTHOOK(19);
				loc12 = RTCCL(loc3);
				{
					static EIF_TYPE_INDEX typarr0[] = {221,1225,0,0xFFFF};
					EIF_TYPE_INDEX typres0;
					static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
					
					typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1225, typarr0)));
					loc12 = RTRV(eif_non_attached_type(typres0),loc12);
				}
				if (EIF_TEST(loc12)) {
					RTHOOK(20);
					RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
					
					loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
					RTHOOK(21);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1225, 46, "count", loc12))(loc12)).it_i4);
					loc2 = (EIF_INTEGER_32) ti4_1;
					for (;;) {
						RTHOOK(22);
						if ((EIF_BOOLEAN)(loc1 == loc2)) break;
						RTHOOK(23);
						RTDBGAL(Current, 4, 0xF8000000, 0, 0); /* loc4 */
						
						ui4_1 = loc1;
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", loc12))(loc12, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						loc4 = (EIF_REFERENCE) RTCCL(tr1);
						RTHOOK(24);
						tb2 = '\0';
						if ((EIF_BOOLEAN)(loc4 != NULL)) {
							ur1 = RTCCL(loc4);
							tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 58, "is_marked", loc5))(loc5, ur1x)).it_b);
							tb2 = (EIF_BOOLEAN) !tb3;
						}
						if (tb2) {
							RTHOOK(25);
							ur1 = RTCCL(loc4);
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 155, "mark", loc5))(loc5, ur1x);
							RTHOOK(26);
							ur1 = RTCCL(loc4);
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1280, 47, "put", loc6))(loc6, ur1x);
						}
						RTHOOK(27);
						RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
						
						loc1++;
					}
				}
			}
		} else {
			RTHOOK(28);
			ur1 = RTCCL(loc3);
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 56, "is_tuple", loc5))(loc5, ur1x)).it_b);
			if (tb2) {
				RTHOOK(29);
				loc13 = RTCCL(loc3);
				{
					static EIF_TYPE_INDEX typarr0[] = {221,0xFFF9,0,734,0xFFFF};
					EIF_TYPE_INDEX typres0;
					static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
					
					typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
					loc13 = RTRV(eif_non_attached_type(typres0),loc13);
				}
				if (EIF_TEST(loc13)) {
					RTHOOK(30);
					RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
					
					loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					RTHOOK(31);
					RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(734, 63, "count", loc13))(loc13)).it_i4);
					loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
					for (;;) {
						RTHOOK(32);
						if ((EIF_BOOLEAN)(loc1 == loc2)) break;
						RTHOOK(33);
						ui4_1 = loc1;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(734, 105, "is_reference_item", loc13))(loc13, ui4_1x)).it_b);
						if (tb2) {
							RTHOOK(34);
							RTDBGAL(Current, 4, 0xF8000000, 0, 0); /* loc4 */
							
							ui4_1 = loc1;
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(734, 36, "reference_item", loc13))(loc13, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							loc4 = (EIF_REFERENCE) RTCCL(tr1);
							RTHOOK(35);
							tb2 = '\0';
							if ((EIF_BOOLEAN)(loc4 != NULL)) {
								ur1 = RTCCL(loc4);
								tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 58, "is_marked", loc5))(loc5, ur1x)).it_b);
								tb2 = (EIF_BOOLEAN) !tb3;
							}
							if (tb2) {
								RTHOOK(36);
								ur1 = RTCCL(loc4);
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 155, "mark", loc5))(loc5, ur1x);
								RTHOOK(37);
								ur1 = RTCCL(loc4);
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1280, 47, "put", loc6))(loc6, ur1x);
							}
						}
						RTHOOK(38);
						RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
						
						loc1++;
					}
				}
			} else {
				RTHOOK(39);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				
				loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
				RTHOOK(40);
				RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
				
				ui4_1 = loc9;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 147, "field_count_of_type", loc5))(loc5, ui4_1x)).it_i4);
				loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
				if (RTAL & CK_LOOP) {
					RTHOOK(41);
					RTCT(NULL, EX_VAR);
					ti4_2 = (EIF_INTEGER_32) (loc2 - loc1);
					if (ti4_2 >= 0) {
						RTCK;
					} else {
						RTCF;
					}
				}
				for (;;) {
					RTHOOK(42);
					if ((EIF_BOOLEAN)(loc1 == loc2)) break;
					RTHOOK(43);
					ui4_1 = loc1;
					ui4_2 = loc9;
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(230, 105, "field_type_of_type", loc5))(loc5, ui4_1x, ui4_2x)).it_i4);
					ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(230, 66, 230))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_3 == ti4_4)) {
						RTHOOK(44);
						tb2 = '\01';
						tb3 = *(EIF_BOOLEAN *)(Current + RTWA(221, 37, dtype));
						if (!(EIF_BOOLEAN) !tb3) {
							ui4_1 = loc1;
							ui4_2 = loc9;
							tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(230, 61, "is_field_transient_of_type", loc5))(loc5, ui4_1x, ui4_2x)).it_b);
							tb2 = (EIF_BOOLEAN) !tb3;
						}
						if (tb2) {
							RTHOOK(45);
							RTDBGAL(Current, 4, 0xF8000000, 0, 0); /* loc4 */
							
							ui4_1 = loc1;
							ur1 = RTCCL(loc3);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(230, 100, "field", loc5))(loc5, ui4_1x, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							loc4 = (EIF_REFERENCE) RTCCL(tr1);
							RTHOOK(46);
							tb2 = '\0';
							if ((EIF_BOOLEAN)(loc4 != NULL)) {
								ur1 = RTCCL(loc4);
								tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 58, "is_marked", loc5))(loc5, ur1x)).it_b);
								tb2 = (EIF_BOOLEAN) !tb3;
							}
							if (tb2) {
								RTHOOK(47);
								ur1 = RTCCL(loc4);
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 155, "mark", loc5))(loc5, ur1x);
								RTHOOK(48);
								ur1 = RTCCL(loc4);
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1280, 47, "put", loc6))(loc6, ur1x);
							}
						}
					}
					RTHOOK(49);
					RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
					
					loc1++;
					if (RTAL & CK_LOOP) {
						RTHOOK(41);
						RTCT(NULL, EX_VAR);
						ti4_1 = (EIF_INTEGER_32) (loc2 - loc1);
						if ((ti4_2 > ti4_1) && ti4_1 >= 0) {
							RTCK;
							ti4_2 = ti4_1;
						} else {
							RTCF;
						}
					}
				}
			}
		}
	}
	RTHOOK(50);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(51);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 97, "count", loc7))(loc7)).it_i4);
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(52);
	RTDBGAL(Current, 10, 0xF80004C9, 0, 0); /* loc10 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1242, 79, "area", loc7))(loc7)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc10 = (EIF_REFERENCE) tr1;
	for (;;) {
		RTHOOK(53);
		if ((EIF_BOOLEAN)(loc1 == loc2)) break;
		RTHOOK(54);
		ui4_1 = loc1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1225, 36, "item", loc10))(loc10, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(230, 156, "unmark", loc5))(loc5, ur1x);
		RTHOOK(55);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1++;
	}
	RTHOOK(56);
	RTDBGAA(Current, dtype, 221, 34, 0xF80004DA, 0); /* visited_objects */
	
	RTAR(Current, loc7);
	*(EIF_REFERENCE *)(Current + RTWA(221, 34, dtype)) = (EIF_REFERENCE) RTCCL(loc7);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(57);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
}

void EIF_Minit222 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
