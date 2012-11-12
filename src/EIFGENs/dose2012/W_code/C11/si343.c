/*
 * Code for class SINGLE_MATH
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F343_6590(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6591(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6592(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6593(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6594(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6595(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6596(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6597(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6598(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6599(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6600(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6601(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6602(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F343_6603(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit343(void);

#ifdef __cplusplus
}
#endif

#include <math.h>

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {SINGLE_MATH}.log_2 */
EIF_TYPED_VALUE F343_6590 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "log_2";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_TYPED_VALUE ur4_1x = {0, SK_REAL32};
#define ur4_1 ur4_1x.it_r4
	EIF_REAL_32 tr4_1;
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6311);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(342, Current, 6311);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x18000000, 1,0); /* Result */
	
	ur4_1 = arg1;
	Result = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(342, 46, dtype))(Current, ur4_1x)).it_r4);
	ur4_1 = (EIF_REAL_32) 2.0;
	tr4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(342, 46, dtype))(Current, ur4_1x)).it_r4);
	Result = (EIF_REAL_32) (EIF_REAL_32) ((EIF_REAL_64) (Result) /  (EIF_REAL_64) (tr4_1));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef ur4_1
#undef arg1
}

/* {SINGLE_MATH}.cosine */
EIF_TYPED_VALUE F343_6591 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "cosine";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6312);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6312);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) cos((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.arc_cosine */
EIF_TYPED_VALUE F343_6592 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "arc_cosine";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6313);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6313);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) acos((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.sine */
EIF_TYPED_VALUE F343_6593 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "sine";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6314);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6314);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) sin((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.arc_sine */
EIF_TYPED_VALUE F343_6594 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "arc_sine";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6315);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6315);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) asin((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.tangent */
EIF_TYPED_VALUE F343_6595 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "tangent";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6316);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6316);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) tan((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.arc_tangent */
EIF_TYPED_VALUE F343_6596 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "arc_tangent";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6317);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6317);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) atan((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.sqrt */
EIF_TYPED_VALUE F343_6597 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "sqrt";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6318);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6318);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) sqrt((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.exp */
EIF_TYPED_VALUE F343_6598 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "exp";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6319);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6319);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) exp((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.log */
EIF_TYPED_VALUE F343_6599 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "log";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6320);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6320);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) log((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.log10 */
EIF_TYPED_VALUE F343_6600 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "log10";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6321);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6321);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) log10((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.floor */
EIF_TYPED_VALUE F343_6601 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "floor";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6322);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6322);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) floor((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.ceiling */
EIF_TYPED_VALUE F343_6602 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "ceiling";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6323);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6323);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) ceil((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

/* {SINGLE_MATH}.rabs */
EIF_TYPED_VALUE F343_6603 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "rabs";
	RTEX;
#define arg1 arg1x.it_r4
	EIF_REAL_32 Result = ((EIF_REAL_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_r4 = * (EIF_REAL_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REAL32, &Result);
	RTLU(SK_REAL32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 342, Current, 0, 1, 6310);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(342, Current, 6310);
	RTIV(Current, RTAL);Result = (EIF_REAL_32) fabs((double) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REAL32; r.it_r4 = Result; return r; }
#undef arg1
}

void EIF_Minit343 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
