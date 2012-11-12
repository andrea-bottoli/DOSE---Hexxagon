/*
 * Code for class INET6_ADDRESS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F373_7073(EIF_REFERENCE);
extern void F373_7074(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F373_7075(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F373_7076(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F373_7077(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F373_7078(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7079(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7080(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7081(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7082(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7083(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7084(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7085(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7086(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7087(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7088(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7089(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7090(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F373_7091(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7092(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7093(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7094(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7095(EIF_REFERENCE);
extern EIF_TYPED_VALUE F373_7096(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F373_7097(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);extern void en_socket_address_fill_ipv6(EIF_POINTER, EIF_POINTER, EIF_INTEGER_32, EIF_INTEGER_32);

extern EIF_TYPED_VALUE F373_7098(EIF_REFERENCE, EIF_TYPED_VALUE);extern EIF_POINTER en_sockaddr_get_ipv6_address(EIF_POINTER);

extern EIF_TYPED_VALUE F373_7099(EIF_REFERENCE, EIF_TYPED_VALUE);extern EIF_INTEGER_32 en_sockaddr_get_ipv6_address_scope(EIF_POINTER);

extern EIF_TYPED_VALUE F373_7100(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit373(void);

#ifdef __cplusplus
}
#endif

#include "eif_misc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef INLINE_F373_7100
static EIF_NATURAL_8 inline_F373_7100 (EIF_POINTER arg1, EIF_INTEGER_32 arg2)
{
	return (EIF_NATURAL_8) (((unsigned char*)arg1)[arg2])
	;
}
#define INLINE_F373_7100
#endif

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {INET6_ADDRESS}.inaddrsz */
EIF_TYPED_VALUE F373_7073 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 16L);
	return r;
}

/* {INET6_ADDRESS}.make_from_host_and_address */
void F373_7074 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "make_from_host_and_address";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 2, 6762);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6762);
	if (arg1) {
		RTCC(arg1, 372, l_feature_name, 1, 787);
	}
	if (arg2) {
		{
			static EIF_TYPE_INDEX typarr0[] = {372,1363,757,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1363, typarr0)));
			RTCC(arg2, 372, l_feature_name, 2, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("an_address_count_valid", EX_PRE);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1363, 61, "count", arg2))(arg2)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 42, dtype))(Current)).it_i4);
		RTTE((EIF_BOOLEAN)(ti4_1 == ti4_2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 372, 34, 0x10000000, 1); /* family */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 33, dtype))(Current)).it_i4);
	*(EIF_INTEGER_32 *)(Current + RTWA(372, 34, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 372, 37, 0xF8000313, 0); /* internal_host_name */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(372, 37, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 372, 60, 0xF8000553, 0); /* the_address */
	
	RTAR(Current, arg2);
	*(EIF_REFERENCE *)(Current + RTWA(372, 60, dtype)) = (EIF_REFERENCE) RTCCL(arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef arg2
#undef arg1
}

/* {INET6_ADDRESS}.make_from_host_and_address_and_interface_name */
void F373_7075 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "make_from_host_and_address_and_interface_name";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,arg3);
	RTLR(3,Current);
	RTLR(4,ur1);
	RTLR(5,ur2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 3, 6763);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6763);
	if (arg1) {
		RTCC(arg1, 372, l_feature_name, 1, 787);
	}
	if (arg2) {
		{
			static EIF_TYPE_INDEX typarr0[] = {372,1363,757,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1363, typarr0)));
			RTCC(arg2, 372, l_feature_name, 2, typres0);
		}
	}
	if (arg3) {
		RTCC(arg3, 372, l_feature_name, 3, 787);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("an_address_count_valid", EX_PRE);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1363, 61, "count", arg2))(arg2)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 42, dtype))(Current)).it_i4);
		RTTE((EIF_BOOLEAN)(ti4_1 == ti4_2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 372, 62, 0xF8000313, 0); /* the_scope_ifname */
	
	RTAR(Current, arg3);
	*(EIF_REFERENCE *)(Current + RTWA(372, 62, dtype)) = (EIF_REFERENCE) RTCCL(arg3);
	RTHOOK(3);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(372, 45, dtype))(Current, ur1x, ur2x, ui4_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef ur1
#undef ur2
#undef ui4_1
#undef arg3
#undef arg2
#undef arg1
}

/* {INET6_ADDRESS}.make_from_host_and_address_and_scope */
void F373_7076 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "make_from_host_and_address_and_scope";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLR(3,ur1);
	RTLR(4,ur2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 3, 6764);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6764);
	if (arg1) {
		RTCC(arg1, 372, l_feature_name, 1, 787);
	}
	if (arg2) {
		{
			static EIF_TYPE_INDEX typarr0[] = {372,1363,757,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1363, typarr0)));
			RTCC(arg2, 372, l_feature_name, 2, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("an_address_count_valid", EX_PRE);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1363, 61, "count", arg2))(arg2)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 42, dtype))(Current)).it_i4);
		RTTE((EIF_BOOLEAN)(ti4_1 == ti4_2), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(372, 43, dtype))(Current, ur1x, ur2x);
	RTHOOK(3);
	if ((EIF_BOOLEAN) (arg3 >= ((EIF_INTEGER_32) 0L))) {
		RTHOOK(4);
		RTDBGAA(Current, dtype, 372, 61, 0x10000000, 1); /* the_scope_id */
		
		*(EIF_INTEGER_32 *)(Current + RTWA(372, 61, dtype)) = (EIF_INTEGER_32) arg3;
		RTHOOK(5);
		RTDBGAA(Current, dtype, 372, 64, 0x04000000, 1); /* is_scope_id_set */
		
		*(EIF_BOOLEAN *)(Current + RTWA(372, 64, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef ur1
#undef ur2
#undef arg3
#undef arg2
#undef arg1
}

/* {INET6_ADDRESS}.make_from_host_and_pointer */
void F373_7077 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "make_from_host_and_pointer";
	RTEX;
	EIF_POINTER loc1 = (EIF_POINTER) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_p
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_POINTER tp1;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_8 tu1_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,loc2);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,ur1);
	RTLR(5,ur2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_POINTER, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	
	RTEAA(l_feature_name, 372, Current, 4, 2, 6765);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6765);
	if (arg1) {
		RTCC(arg1, 372, l_feature_name, 1, 787);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF8000553, 0, 0); /* loc2 */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {372,1363,757,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1363, typarr0)));
		tr1 = RTLN(typres0);
	}
	uu1_1 = ((EIF_NATURAL_8) 0U);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 42, dtype))(Current)).it_i4);
	ui4_2 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1363, 50, Dtype(tr1)))(tr1, uu1_1x, ui4_1x, ui4_2x);
	RTNHOOK(1,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	tp1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 30, dtype))(Current)).it_p);
	if ((EIF_BOOLEAN)(arg2 != tp1)) {
		RTHOOK(3);
		RTDBGAL(Current, 1, 0x40000000, 1, 0); /* loc1 */
		
		up1 = arg2;
		loc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(372, 67, dtype))(Current, up1x)).it_p);
		RTHOOK(4);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
		for (;;) {
			RTHOOK(5);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 42, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN) (loc3 > ti4_1)) break;
			RTHOOK(6);
			up1 = loc1;
			ui4_1 = (EIF_INTEGER_32) (loc3 - ((EIF_INTEGER_32) 1L));
			tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(372, 69, dtype))(Current, up1x, ui4_1x)).it_n1);
			uu1_1 = tu1_1;
			ui4_1 = loc3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1363, 75, "put", loc2))(loc2, uu1_1x, ui4_1x);
			RTHOOK(7);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			loc3++;
		}
		RTHOOK(8);
		RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
		
		up1 = arg2;
		loc4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(372, 68, dtype))(Current, up1x)).it_i4);
	}
	RTHOOK(9);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(loc2);
	ui4_1 = loc4;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(372, 45, dtype))(Current, ur1x, ur2x, ui4_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(10);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ui4_1
#undef ui4_2
#undef uu1_1
#undef arg2
#undef arg1
}

/* {INET6_ADDRESS}.host_address */
EIF_TYPED_VALUE F373_7078 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "host_address";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,Result);
	RTLR(4,loc1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 372, Current, 1, 0, 6766);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6766);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(372, 65, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF8000313, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 62, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(3);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(4);
		uc1 = (EIF_CHARACTER_8) '%';
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", Result))(Result, uc1x);
		RTHOOK(5);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 196, "append_string", Result))(Result, ur1x);
	} else {
		RTHOOK(6);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(372, 64, dtype));
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(372, 61, dtype));
		if ((EIF_BOOLEAN) (tb1 && (EIF_BOOLEAN) (ti4_1 > ((EIF_INTEGER_32) 0L)))) {
			RTHOOK(7);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", Result))(Result, uc1x);
			RTHOOK(8);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(372, 61, dtype));
			ui4_1 = ti4_1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 197, "append_integer", Result))(Result, ui4_1x);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef uc1
}

/* {INET6_ADDRESS}.is_multicast_address */
EIF_TYPED_VALUE F373_7079 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_multicast_address";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6767);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(372, Current, 6767);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
	tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	uu1_1 = tu1_2;
	tu1_2 = eif_bit_and(tu1_1,uu1_1);
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	Result = (EIF_BOOLEAN) ((EIF_BOOLEAN)(tu1_2 == tu1_1));
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
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.is_any_local_address */
EIF_TYPED_VALUE F373_7080 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_any_local_address";
	RTEX;
	EIF_NATURAL_8 loc1 = (EIF_NATURAL_8) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT8, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 372, Current, 2, 0, 6768);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6768);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0x30000000, 1, 0); /* loc1 */
	
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	loc1 = (EIF_NATURAL_8) tu1_1;
	RTHOOK(2);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(3);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 42, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (loc2 > ti4_1)) break;
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x30000000, 1, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = loc2;
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		uu1_1 = tu1_1;
		tu1_1 = eif_bit_or(loc1,uu1_1);
		loc1 = (EIF_NATURAL_8) tu1_1;
		RTHOOK(5);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2++;
	}
	RTHOOK(6);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(loc1 == tu1_1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.is_loopback_address */
EIF_TYPED_VALUE F373_7081 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_loopback_address";
	RTEX;
	EIF_NATURAL_8 loc1 = (EIF_NATURAL_8) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT8, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 372, Current, 2, 0, 6769);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6769);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0x30000000, 1, 0); /* loc1 */
	
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	loc1 = (EIF_NATURAL_8) tu1_1;
	RTHOOK(2);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(3);
		if ((EIF_BOOLEAN) (loc2 > ((EIF_INTEGER_32) 15L))) break;
		RTHOOK(4);
		RTDBGAL(Current, 1, 0x30000000, 1, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = loc2;
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		uu1_1 = tu1_1;
		tu1_1 = eif_bit_or(loc1,uu1_1);
		loc1 = (EIF_NATURAL_8) tu1_1;
		RTHOOK(5);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2++;
	}
	RTHOOK(6);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 0L);
	if ((EIF_BOOLEAN)(loc1 == tu1_1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = ((EIF_INTEGER_32) 16L);
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 1L);
		tb1 = (EIF_BOOLEAN)(tu1_1 == tu1_2);
	}
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.is_link_local_address */
EIF_TYPED_VALUE F373_7082 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_link_local_address";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6770);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6770);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
	tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	uu1_1 = tu1_2;
	tu1_2 = eif_bit_and(tu1_1,uu1_1);
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 254L);
	if ((EIF_BOOLEAN)(tu1_2 == tu1_1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = ((EIF_INTEGER_32) 2L);
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 192L);
		uu1_1 = tu1_2;
		tu1_2 = eif_bit_and(tu1_1,uu1_1);
		tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 128L);
		tb1 = (EIF_BOOLEAN)(tu1_2 == tu1_1);
	}
	Result = (EIF_BOOLEAN) tb1;
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
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.is_site_local_address */
EIF_TYPED_VALUE F373_7083 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_site_local_address";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6771);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6771);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
	tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	uu1_1 = tu1_2;
	tu1_2 = eif_bit_and(tu1_1,uu1_1);
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 254L);
	if ((EIF_BOOLEAN)(tu1_2 == tu1_1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = ((EIF_INTEGER_32) 2L);
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 192L);
		uu1_1 = tu1_2;
		tu1_2 = eif_bit_and(tu1_1,uu1_1);
		tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 192L);
		tb1 = (EIF_BOOLEAN)(tu1_2 == tu1_1);
	}
	Result = (EIF_BOOLEAN) tb1;
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
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.is_mc_global */
EIF_TYPED_VALUE F373_7084 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_mc_global";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6772);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6772);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
	tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	uu1_1 = tu1_2;
	tu1_2 = eif_bit_and(tu1_1,uu1_1);
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	if ((EIF_BOOLEAN)(tu1_2 == tu1_1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = ((EIF_INTEGER_32) 2L);
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 15L);
		uu1_1 = tu1_2;
		tu1_2 = eif_bit_and(tu1_1,uu1_1);
		tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 14L);
		tb1 = (EIF_BOOLEAN)(tu1_2 == tu1_1);
	}
	Result = (EIF_BOOLEAN) tb1;
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
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.is_mc_node_local */
EIF_TYPED_VALUE F373_7085 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_mc_node_local";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6773);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6773);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
	tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	uu1_1 = tu1_2;
	tu1_2 = eif_bit_and(tu1_1,uu1_1);
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	if ((EIF_BOOLEAN)(tu1_2 == tu1_1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = ((EIF_INTEGER_32) 2L);
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 15L);
		uu1_1 = tu1_2;
		tu1_2 = eif_bit_and(tu1_1,uu1_1);
		tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 1L);
		tb1 = (EIF_BOOLEAN)(tu1_2 == tu1_1);
	}
	Result = (EIF_BOOLEAN) tb1;
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
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.is_mc_link_local */
EIF_TYPED_VALUE F373_7086 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_mc_link_local";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6774);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6774);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
	tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	uu1_1 = tu1_2;
	tu1_2 = eif_bit_and(tu1_1,uu1_1);
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	if ((EIF_BOOLEAN)(tu1_2 == tu1_1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = ((EIF_INTEGER_32) 2L);
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 15L);
		uu1_1 = tu1_2;
		tu1_2 = eif_bit_and(tu1_1,uu1_1);
		tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 2L);
		tb1 = (EIF_BOOLEAN)(tu1_2 == tu1_1);
	}
	Result = (EIF_BOOLEAN) tb1;
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
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.is_mc_site_local */
EIF_TYPED_VALUE F373_7087 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_mc_site_local";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6775);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6775);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
	tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	uu1_1 = tu1_2;
	tu1_2 = eif_bit_and(tu1_1,uu1_1);
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	if ((EIF_BOOLEAN)(tu1_2 == tu1_1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = ((EIF_INTEGER_32) 2L);
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 15L);
		uu1_1 = tu1_2;
		tu1_2 = eif_bit_and(tu1_1,uu1_1);
		tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 5L);
		tb1 = (EIF_BOOLEAN)(tu1_2 == tu1_1);
	}
	Result = (EIF_BOOLEAN) tb1;
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
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.is_mc_org_local */
EIF_TYPED_VALUE F373_7088 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_mc_org_local";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu1_1x = {0, SK_UINT8};
#define uu1_1 uu1_1x.it_n1
	EIF_REFERENCE tr1 = NULL;
	EIF_NATURAL_8 tu1_1;
	EIF_NATURAL_8 tu1_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6776);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6776);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
	tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	uu1_1 = tu1_2;
	tu1_2 = eif_bit_and(tu1_1,uu1_1);
	tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 255L);
	if ((EIF_BOOLEAN)(tu1_2 == tu1_1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ui4_1 = ((EIF_INTEGER_32) 2L);
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", tr1))(tr1, ui4_1x)).it_n1);
		tu1_2 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 15L);
		uu1_1 = tu1_2;
		tu1_2 = eif_bit_and(tu1_1,uu1_1);
		tu1_1 = (EIF_NATURAL_8) ((EIF_INTEGER_32) 8L);
		tb1 = (EIF_BOOLEAN)(tu1_2 == tu1_1);
	}
	Result = (EIF_BOOLEAN) tb1;
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
#undef ui4_1
#undef uu1_1
}

/* {INET6_ADDRESS}.raw_address */
EIF_TYPED_VALUE F373_7089 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "raw_address";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
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
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6777);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(372, Current, 6777);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000553, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1363, 10, "twin", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr2);
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
#undef up2
}

/* {INET6_ADDRESS}.sockaddr */
EIF_TYPED_VALUE F373_7090 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "sockaddr";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(6);
	RTLR(0,tr1);
	RTLR(1,Result);
	RTLR(2,loc1);
	RTLR(3,Current);
	RTLR(4,tr2);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 372, Current, 1, 1, 6778);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6778);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800023B, 0,0); /* Result */
	
	tr1 = RTLN(571);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 38, dtype))(Current)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(571, 81, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF800023B, 0, 0); /* loc1 */
	
	tr1 = RTLN(571);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 60, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(571, 82, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	tp1 = *(EIF_POINTER *)(Result + RTVA(571, 87, "item", Result));
	up1 = tp1;
	tp2 = *(EIF_POINTER *)(loc1 + RTVA(571, 87, "item", loc1));
	up2 = tp2;
	ui4_1 = arg1;
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(372, 61, dtype));
	ui4_2 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(372, 66, dtype))(Current, up1x, up2x, ui4_1x, ui4_2x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg1
}

/* {INET6_ADDRESS}.the_address */
EIF_TYPED_VALUE F373_7091 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(372,60, Dtype(Current)));
	return r;
}


/* {INET6_ADDRESS}.the_scope_id */
EIF_TYPED_VALUE F373_7092 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(372,61, Dtype(Current)));
	return r;
}


/* {INET6_ADDRESS}.the_scope_ifname */
EIF_TYPED_VALUE F373_7093 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(372,62, Dtype(Current)));
	return r;
}


/* {INET6_ADDRESS}.is_scope_ifname_set */
EIF_TYPED_VALUE F373_7094 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_scope_ifname_set";
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
	
	RTEAA(l_feature_name, 372, Current, 0, 0, 6782);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(372, Current, 6782);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 62, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
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

/* {INET6_ADDRESS}.is_scope_id_set */
EIF_TYPED_VALUE F373_7095 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(372,64, Dtype(Current)));
	return r;
}


/* {INET6_ADDRESS}.numeric_to_text */
EIF_TYPED_VALUE F373_7096 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "numeric_to_text";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_NATURAL_16 loc2 = (EIF_NATURAL_16) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uu2_1x = {0, SK_UINT16};
#define uu2_1 uu2_1x.it_n2
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_NATURAL_16 tu2_1;
	EIF_NATURAL_16 tu2_2;
	EIF_NATURAL_16 tu2_3;
	EIF_NATURAL_8 tu1_1;
	EIF_BOOLEAN tb1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,Result);
	RTLR(4,tr2);
	RTLR(5,ur1);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_UINT16, &loc2);
	
	RTEAA(l_feature_name, 372, Current, 2, 1, 6784);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(372, Current, 6784);
	if (arg1) {
		{
			static EIF_TYPE_INDEX typarr0[] = {372,1363,757,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1363, typarr0)));
			RTCC(arg1, 372, l_feature_name, 1, typres0);
		}
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT(NULL, EX_PRE);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(arg1 != NULL)) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1363, 61, "count", arg1))(arg1)).it_i4);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 42, dtype))(Current)).it_i4);
			tb1 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
		}
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 0, 0xF8000313, 0,0); /* Result */
	
	tr1 = RTLN(787);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(787, 36, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(4);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 42, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (loc1 >= ti4_1)) break;
		RTHOOK(5);
		RTDBGAL(Current, 2, 0x34000000, 1, 0); /* loc2 */
		
		ui4_1 = loc1;
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", arg1))(arg1, ui4_1x)).it_n1);
		RTNHOOK(5,1);
		tu2_1 = (EIF_NATURAL_16) tu1_1;
		ui4_1 = ((EIF_INTEGER_32) 8L);
		tu2_2 = eif_bit_shift_left(tu2_1,ui4_1);
		tu2_1 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 65280L);
		uu2_1 = tu2_1;
		tu2_1 = eif_bit_and((tu2_2),uu2_1);
		ui4_1 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 1L));
		tu1_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1363, 55, "item", arg1))(arg1, ui4_1x)).it_n1);
		RTNHOOK(5,2);
		tu2_2 = (EIF_NATURAL_16) tu1_1;
		tu2_3 = (EIF_NATURAL_16) ((EIF_INTEGER_32) 255L);
		uu2_1 = tu2_3;
		tu2_3 = eif_bit_and(tu2_2,uu2_1);
		uu2_1 = tu2_3;
		tu2_2 = eif_bit_or((tu2_1),uu2_1);
		tu2_1 = (EIF_NATURAL_16) tu2_2;
		loc2 = (EIF_NATURAL_16) tu2_1;
		RTHOOK(6);
		tr1 = RTLN(754);
		*(EIF_NATURAL_16 *)tr1 = loc2;
		
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(755, 65, "to_hex_string", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 196, "append_string", Result))(Result, ur1x);
		RTHOOK(7);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(372, 42, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (loc1 < (EIF_INTEGER_32) (ti4_2 - ((EIF_INTEGER_32) 1L)))) {
			RTHOOK(8);
			uc1 = (EIF_CHARACTER_8) ':';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", Result))(Result, uc1x);
		}
		RTHOOK(9);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1 += ((EIF_INTEGER_32) 2L);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(10);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef uu2_1
#undef uc1
#undef arg1
}

/* {INET6_ADDRESS}.fill_ipv6 */
void F373_7097 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "fill_ipv6";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_p
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_p = * (EIF_POINTER *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_POINTER,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 4, 6785);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(372, Current, 6785);
	RTIV(Current, RTAL);en_socket_address_fill_ipv6(arg1, arg2, arg3, arg4);
	
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(6);
	RTEE;
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {INET6_ADDRESS}.c_sockaddr_get_ipv6_address */
EIF_TYPED_VALUE F373_7098 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_sockaddr_get_ipv6_address";
	RTEX;
#define arg1 arg1x.it_p
	EIF_POINTER Result = ((EIF_POINTER) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_POINTER, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 1, 6786);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(372, Current, 6786);
	RTIV(Current, RTAL);Result = (EIF_POINTER) en_sockaddr_get_ipv6_address(arg1);
	
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

/* {INET6_ADDRESS}.c_sockaddr_get_ipv6_address_scope */
EIF_TYPED_VALUE F373_7099 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "c_sockaddr_get_ipv6_address_scope";
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
	
	RTEAA(l_feature_name, 372, Current, 0, 1, 6787);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(372, Current, 6787);
	RTIV(Current, RTAL);Result = (EIF_INTEGER_32) en_sockaddr_get_ipv6_address_scope(arg1);
	
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

/* {INET6_ADDRESS}.c_get_addr_element */
EIF_TYPED_VALUE F373_7100 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "c_get_addr_element";
	RTEX;
#define arg1 arg1x.it_p
#define arg2 arg2x.it_i4
	EIF_NATURAL_8 Result = ((EIF_NATURAL_8) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_p = * (EIF_POINTER *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_UINT8, &Result);
	RTLU(SK_POINTER,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 372, Current, 0, 2, 6760);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 1);
	RTDBGEAA(372, Current, 6760);
	RTIV(Current, RTAL);
	Result = inline_F373_7100 ((EIF_POINTER) arg1, (EIF_INTEGER_32) arg2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(1);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_UINT8; r.it_n1 = Result; return r; }
#undef arg2
#undef arg1
}

void EIF_Minit373 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
