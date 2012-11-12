/*
 * Code for class WEL_PROCESS_TOOLHELP_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F100_3157(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3158(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3159(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3160(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3161(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3162(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3163(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3164(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3165(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3166(EIF_REFERENCE);
extern EIF_TYPED_VALUE F100_3167(EIF_REFERENCE);
extern void EIF_Minit100(void);

#ifdef __cplusplus
}
#endif

#include <Tlhelp32.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F100_3157
static EIF_INTEGER_32 inline_F100_3157 (void)
{
	return (EIF_INTEGER_32) (PROCESS_ALL_ACCESS)
	;
}
#define INLINE_F100_3157
#endif
#ifndef INLINE_F100_3158
static EIF_INTEGER_32 inline_F100_3158 (void)
{
	return (EIF_INTEGER_32) (PROCESS_TERMINATE)
	;
}
#define INLINE_F100_3158
#endif
#ifndef INLINE_F100_3159
static EIF_INTEGER_32 inline_F100_3159 (void)
{
	return (EIF_INTEGER_32) (PROCESS_CREATE_PROCESS)
	;
}
#define INLINE_F100_3159
#endif
#ifndef INLINE_F100_3160
static EIF_INTEGER_32 inline_F100_3160 (void)
{
	return (EIF_INTEGER_32) (PROCESS_DUP_HANDLE)
	;
}
#define INLINE_F100_3160
#endif
#ifndef INLINE_F100_3161
static EIF_INTEGER_32 inline_F100_3161 (void)
{
	return (EIF_INTEGER_32) (PROCESS_QUERY_INFORMATION)
	;
}
#define INLINE_F100_3161
#endif
#ifndef INLINE_F100_3162
static EIF_INTEGER_32 inline_F100_3162 (void)
{
	return (EIF_INTEGER_32) (PROCESS_SET_QUOTA)
	;
}
#define INLINE_F100_3162
#endif
#ifndef INLINE_F100_3163
static EIF_INTEGER_32 inline_F100_3163 (void)
{
	return (EIF_INTEGER_32) (PROCESS_SET_INFORMATION)
	;
}
#define INLINE_F100_3163
#endif
#ifndef INLINE_F100_3164
static EIF_INTEGER_32 inline_F100_3164 (void)
{
	return (EIF_INTEGER_32) (PROCESS_VM_OPERATION)
	;
}
#define INLINE_F100_3164
#endif
#ifndef INLINE_F100_3165
static EIF_INTEGER_32 inline_F100_3165 (void)
{
	return (EIF_INTEGER_32) (PROCESS_VM_READ)
	;
}
#define INLINE_F100_3165
#endif
#ifndef INLINE_F100_3166
static EIF_INTEGER_32 inline_F100_3166 (void)
{
	return (EIF_INTEGER_32) (PROCESS_VM_WRITE)
	;
}
#define INLINE_F100_3166
#endif
#ifndef INLINE_F100_3167
static EIF_INTEGER_32 inline_F100_3167 (void)
{
	return (EIF_INTEGER_32) (SYNCHRONIZE)
	;
}
#define INLINE_F100_3167
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_all_access */
EIF_TYPED_VALUE F100_3157 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_all_access";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3034);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3034);
	RTIV(Current, RTAL);
	Result = inline_F100_3157 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_terminate */
EIF_TYPED_VALUE F100_3158 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_terminate";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3035);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3035);
	RTIV(Current, RTAL);
	Result = inline_F100_3158 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_create_process */
EIF_TYPED_VALUE F100_3159 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_create_process";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3036);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3036);
	RTIV(Current, RTAL);
	Result = inline_F100_3159 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_dup_handle */
EIF_TYPED_VALUE F100_3160 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_dup_handle";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3037);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3037);
	RTIV(Current, RTAL);
	Result = inline_F100_3160 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_query_information */
EIF_TYPED_VALUE F100_3161 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_query_information";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3038);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3038);
	RTIV(Current, RTAL);
	Result = inline_F100_3161 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_set_quota */
EIF_TYPED_VALUE F100_3162 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_set_quota";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3028);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3028);
	RTIV(Current, RTAL);
	Result = inline_F100_3162 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_set_information */
EIF_TYPED_VALUE F100_3163 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_set_information";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3029);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3029);
	RTIV(Current, RTAL);
	Result = inline_F100_3163 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_vm_operation */
EIF_TYPED_VALUE F100_3164 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_vm_operation";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3030);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3030);
	RTIV(Current, RTAL);
	Result = inline_F100_3164 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_vm_read */
EIF_TYPED_VALUE F100_3165 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_vm_read";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3031);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3031);
	RTIV(Current, RTAL);
	Result = inline_F100_3165 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_vm_write */
EIF_TYPED_VALUE F100_3166 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_vm_write";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3032);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3032);
	RTIV(Current, RTAL);
	Result = inline_F100_3166 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

/* {WEL_PROCESS_TOOLHELP_CONSTANTS}.cwin_process_synchronize */
EIF_TYPED_VALUE F100_3167 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "cwin_process_synchronize";
	RTEX;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_INT32, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 99, Current, 0, 0, 3033);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(99, Current, 3033);
	RTIV(Current, RTAL);
	Result = inline_F100_3167 ();
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
}

void EIF_Minit100 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
