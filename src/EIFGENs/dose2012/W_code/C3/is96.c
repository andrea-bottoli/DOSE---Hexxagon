/*
 * Code for class ISE_RUNTIME
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F96_3111(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3112(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3113(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3114(EIF_REFERENCE);
extern EIF_TYPED_VALUE F96_3115(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3116(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3117(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3118(EIF_REFERENCE);
extern void F96_3119(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3120(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3121(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3122(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3123(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3124(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3125(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F96_3126(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit96(void);

#ifdef __cplusplus
}
#endif

#include "eif_built_in.h"
#include "eif_cecil.h"
#include "eif_copy.h"
#include "eif_eiffel.h"
#include "eif_gen_conf.h"
#include "eif_memory_analyzer.h"
#include "eif_out.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F96_3114
static int inline_F96_3114 (void)
{
	GTCX;	/* Needed in multithreaded mode as `in_assertion' is a per-thread data. */
return EIF_TEST(in_assertion!=0);
	;
}
#define INLINE_F96_3114
#endif
#ifndef INLINE_F96_3118
static int inline_F96_3118 (void)
{
	return eif_pre_ecma_mapping();
	;
}
#define INLINE_F96_3118
#endif
#ifndef INLINE_F96_3119
static void inline_F96_3119 (EIF_BOOLEAN arg1)
{
	eif_set_pre_ecma_mapping(arg1)
	;
}
#define INLINE_F96_3119
#endif
#ifndef INLINE_F96_3120
static int inline_F96_3120 (EIF_INTEGER_32 arg1)
{
	return eif_is_attached_type((EIF_TYPE_INDEX) arg1)
	;
}
#define INLINE_F96_3120
#endif
#ifndef INLINE_F96_3121
static EIF_INTEGER_32 inline_F96_3121 (EIF_INTEGER_32 arg1)
{
	return eif_non_attached_type((EIF_TYPE_INDEX) arg1)
	;
}
#define INLINE_F96_3121
#endif
#ifndef INLINE_F96_3122
static EIF_INTEGER_32 inline_F96_3122 (EIF_INTEGER_32 arg1)
{
	return eif_attached_type((EIF_TYPE_INDEX) arg1)
	;
}
#define INLINE_F96_3122
#endif
#ifndef INLINE_F96_3123
static int inline_F96_3123 (EIF_INTEGER_32 arg1, EIF_INTEGER_32 arg2)
{
	return EIF_IS_TRANSIENT_ATTRIBUTE(System(To_dtype(arg2)), arg1);
	;
}
#define INLINE_F96_3123
#endif
#ifndef INLINE_F96_3124
static int inline_F96_3124 (EIF_INTEGER_32 arg1, EIF_INTEGER_32 arg2)
{
	return ((System(To_dtype(arg2)).cn_types[arg1] & SK_HEAD) == SK_EXP);
	;
}
#define INLINE_F96_3124
#endif
#ifndef INLINE_F96_3125
static EIF_INTEGER_32 inline_F96_3125 (EIF_INTEGER_32 arg1)
{
	return (System(To_dtype(arg1)).cn_persistent_nbattr);
	;
}
#define INLINE_F96_3125
#endif
#ifndef INLINE_F96_3126
static EIF_POINTER inline_F96_3126 (EIF_INTEGER_32 arg1)
{
	return System(To_dtype(arg1)).cn_version;
	;
}
#define INLINE_F96_3126
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {ISE_RUNTIME}.c_generator_of_type */
EIF_TYPED_VALUE F96_3111 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_generator_of_type";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2982);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2982);
	RTIV(Current, RTAL);Result = (EIF_REFERENCE) c_generator_of_type(arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.check_assert */
EIF_TYPED_VALUE F96_3112 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "check_assert";
	RTEX;
#define arg1 arg1x.it_b
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2983);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2983);
	RTIV(Current, RTAL);Result = (EIF_BOOLEAN) EIF_TEST(c_check_assert(arg1));
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.c_generating_type_of_type */
EIF_TYPED_VALUE F96_3113 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_generating_type_of_type";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2984);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2984);
	RTIV(Current, RTAL);Result = (EIF_REFERENCE) eif_gen_typename_of_type((int16) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.in_assertion */
EIF_TYPED_VALUE F96_3114 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "in_assertion";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 0, 2985);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2985);
	RTIV(Current, RTAL);
	Result = EIF_TEST(inline_F96_3114 ());
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {ISE_RUNTIME}.once_objects */
EIF_TYPED_VALUE F96_3115 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "once_objects";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,Result);
	RTLU (SK_REF, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2986);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2986);
	RTIV(Current, RTAL);Result = (EIF_REFERENCE) eif_once_objects_of_result_type((EIF_INTEGER) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.type_id_from_name */
EIF_TYPED_VALUE F96_3116 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "type_id_from_name";
	RTEX;
#define arg1 arg1x.it_p
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2987);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2987);
	RTIV(Current, RTAL);Result = (EIF_INTEGER_32) eif_type_id((char*) arg1);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.dynamic_type */
EIF_TYPED_VALUE F96_3117 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "dynamic_type";
	RTEX;
#define arg1 arg1x.it_r
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,arg1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2988);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2988);
	RTIV(Current, RTAL);
	Result = (EIF_INTEGER_32) eif_builtin_ISE_RUNTIME_dynamic_type (arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.pre_ecma_mapping_status */
EIF_TYPED_VALUE F96_3118 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "pre_ecma_mapping_status";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 0, 2989);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2989);
	RTIV(Current, RTAL);
	Result = EIF_TEST(inline_F96_3118 ());
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {ISE_RUNTIME}.set_pre_ecma_mapping */
void F96_3119 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_pre_ecma_mapping";
	RTEX;
#define arg1 arg1x.it_b
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_b = * (EIF_BOOLEAN *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_BOOL,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2990);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2990);
	RTIV(Current, RTAL);
	inline_F96_3119 ((EIF_BOOLEAN) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {ISE_RUNTIME}.is_attached_type */
EIF_TYPED_VALUE F96_3120 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "is_attached_type";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2991);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2991);
	RTIV(Current, RTAL);
	Result = EIF_TEST(inline_F96_3120 ((EIF_INTEGER_32) arg1));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.detachable_type */
EIF_TYPED_VALUE F96_3121 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "detachable_type";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2992);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2992);
	RTIV(Current, RTAL);
	Result = inline_F96_3121 ((EIF_INTEGER_32) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.attached_type */
EIF_TYPED_VALUE F96_3122 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "attached_type";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2993);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2993);
	RTIV(Current, RTAL);
	Result = inline_F96_3122 ((EIF_INTEGER_32) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.is_field_transient_of_type */
EIF_TYPED_VALUE F96_3123 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "is_field_transient_of_type";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 2, 2994);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2994);
	RTIV(Current, RTAL);
	Result = EIF_TEST(inline_F96_3123 ((EIF_INTEGER_32) arg1, (EIF_INTEGER_32) arg2));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef arg2
#undef arg1
}

/* {ISE_RUNTIME}.is_field_expanded_of_type */
EIF_TYPED_VALUE F96_3124 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "is_field_expanded_of_type";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 2, 2995);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2995);
	RTIV(Current, RTAL);
	Result = EIF_TEST(inline_F96_3124 ((EIF_INTEGER_32) arg1, (EIF_INTEGER_32) arg2));
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef arg2
#undef arg1
}

/* {ISE_RUNTIME}.persistent_field_count_of_type */
EIF_TYPED_VALUE F96_3125 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "persistent_field_count_of_type";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2996);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2996);
	RTIV(Current, RTAL);
	Result = inline_F96_3125 ((EIF_INTEGER_32) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

/* {ISE_RUNTIME}.storable_version_of_type */
EIF_TYPED_VALUE F96_3126 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "storable_version_of_type";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 95, Current, 0, 1, 2997);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(95, Current, 2997);
	RTIV(Current, RTAL);
	Result = inline_F96_3126 ((EIF_INTEGER_32) arg1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_POINTER; r.it_p = Result; return r; }
#undef arg1
}

void EIF_Minit96 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
