/*
 * Code for class EV_DOCKABLE_SOURCE_I
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F923_17207(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17208(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17209(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17210(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17211(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17212(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17213(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17214(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17215(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F923_17216(EIF_REFERENCE);
extern void F923_17217(EIF_REFERENCE);
extern void F923_17219(EIF_REFERENCE);
extern void F923_17221(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F923_17222(EIF_REFERENCE);
extern void F923_17223(EIF_REFERENCE);
extern void F923_17224(EIF_REFERENCE);
extern void F923_17225(EIF_REFERENCE);
extern void F923_17226(EIF_REFERENCE);
extern void F923_17227(EIF_REFERENCE);
extern void F923_17228(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F923_17229(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17230(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17231(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17233(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F923_17234(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F923_17235(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F923_17236(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F923_17237(EIF_REFERENCE);
extern void F923_17238(EIF_REFERENCE);
extern void F923_17239(EIF_REFERENCE);
static EIF_TYPED_VALUE F923_17241_body(EIF_REFERENCE);
extern EIF_TYPED_VALUE F923_17241(EIF_REFERENCE);
extern void F923_23836(EIF_REFERENCE, int);
extern void EIF_Minit923(void);
extern EIF_REFERENCE _A923_100();

#ifdef __cplusplus
}
#endif

#include "eif_helpers.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {EV_DOCKABLE_SOURCE_I}.original_parent_position */
EIF_TYPED_VALUE F923_17207 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(922,79, Dtype(Current)));
	return r;
}


/* {EV_DOCKABLE_SOURCE_I}.is_dock_executing */
EIF_TYPED_VALUE F923_17208 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_dock_executing";
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
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21021);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(922, Current, 21021);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 64, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
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

/* {EV_DOCKABLE_SOURCE_I}.real_source */
EIF_TYPED_VALUE F923_17209 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(922,81, Dtype(Current)));
	return r;
}


/* {EV_DOCKABLE_SOURCE_I}.is_dockable */
EIF_TYPED_VALUE F923_17210 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(922,82, Dtype(Current)));
	return r;
}


/* {EV_DOCKABLE_SOURCE_I}.not_external_docking_enabled */
EIF_TYPED_VALUE F923_17211 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(922,83, Dtype(Current)));
	return r;
}


/* {EV_DOCKABLE_SOURCE_I}.is_external_docking_enabled */
EIF_TYPED_VALUE F923_17212 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_external_docking_enabled";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21025);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(922, Current, 21025);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = *(EIF_BOOLEAN *)(Current + RTWA(922, 83, Dtype(Current)));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !Result;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {EV_DOCKABLE_SOURCE_I}.not_is_external_docking_relative */
EIF_TYPED_VALUE F923_17213 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(922,85, Dtype(Current)));
	return r;
}


/* {EV_DOCKABLE_SOURCE_I}.is_external_docking_relative */
EIF_TYPED_VALUE F923_17214 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "is_external_docking_relative";
	RTEX;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21027);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(922, Current, 21027);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0x04000000, 1,0); /* Result */
	
	Result = *(EIF_BOOLEAN *)(Current + RTWA(922, 85, Dtype(Current)));
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !Result;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
}

/* {EV_DOCKABLE_SOURCE_I}.get_next_target */
EIF_TYPED_VALUE F923_17215 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "get_next_target";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(11);
	RTLR(0,arg1);
	RTLR(1,loc3);
	RTLR(2,tr1);
	RTLR(3,loc1);
	RTLR(4,loc2);
	RTLR(5,loc4);
	RTLR(6,loc5);
	RTLR(7,Result);
	RTLR(8,loc6);
	RTLR(9,loc7);
	RTLR(10,Current);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	
	RTEAA(l_feature_name, 922, Current, 7, 1, 21028);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21028);
	if (arg1) {
		RTCC(arg1, 922, l_feature_name, 1, 829);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_widget_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 3, 0xF800033D, 0, 0); /* loc3 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 153, "parent", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF800033E, 0, 0); /* loc1 */
	
	loc1 = RTCCL(loc3);
	loc1 = RTRV(eif_non_attached_type(830), loc1);
	RTHOOK(4);
	RTDBGAL(Current, 2, 0xF800032E, 0, 0); /* loc2 */
	
	loc2 = RTCCL(loc1);
	loc2 = RTRV(eif_non_attached_type(814), loc2);
	RTHOOK(5);
	tb1 = '\0';
	tb2 = '\0';
	loc4 = RTCCL(loc3);
	if (EIF_TEST(loc4)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 157, "real_target", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc5 = RTCCL(tr1);
		tb2 = EIF_TEST(loc5);
	}
	if (tb2) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 56, "is_docking_enabled", loc5))(loc5)).it_b);
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(6);
		RTDBGAL(Current, 0, 0xF800032E, 0,0); /* Result */
		
		Result = (EIF_REFERENCE) RTCCL(loc5);
	} else {
		RTHOOK(7);
		tb1 = '\0';
		loc6 = RTCCL(loc2);
		if (EIF_TEST(loc6)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 56, "is_docking_enabled", loc6))(loc6)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(8);
			RTDBGAL(Current, 0, 0xF800032E, 0,0); /* Result */
			
			Result = (EIF_REFERENCE) RTCCL(loc6);
		}
	}
	for (;;) {
		RTHOOK(9);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result != NULL) || (EIF_BOOLEAN)(loc1 == NULL))) break;
		RTHOOK(10);
		RTDBGAL(Current, 3, 0xF800033D, 0, 0); /* loc3 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(830, 153, "parent", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(11);
		RTDBGAL(Current, 1, 0xF800033E, 0, 0); /* loc1 */
		
		loc1 = RTCCL(loc3);
		loc1 = RTRV(eif_non_attached_type(830), loc1);
		RTHOOK(12);
		RTDBGAL(Current, 2, 0xF800032E, 0, 0); /* loc2 */
		
		loc2 = RTCCL(loc1);
		loc2 = RTRV(eif_non_attached_type(814), loc2);
		RTHOOK(13);
		tb1 = '\0';
		tb2 = '\0';
		if ((EIF_BOOLEAN)(loc3 != NULL)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 157, "real_target", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc7 = RTCCL(tr1);
			tb2 = EIF_TEST(loc7);
		}
		if (tb2) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 56, "is_docking_enabled", loc7))(loc7)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(14);
			RTDBGAL(Current, 0, 0xF800032E, 0,0); /* Result */
			
			Result = (EIF_REFERENCE) RTCCL(loc7);
		} else {
			RTHOOK(15);
			tb1 = '\0';
			if ((EIF_BOOLEAN)(loc2 != NULL)) {
				tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 56, "is_docking_enabled", loc2))(loc2)).it_b);
				tb1 = tb2;
			}
			if (tb1) {
				RTHOOK(16);
				RTDBGAL(Current, 0, 0xF800032E, 0,0); /* Result */
				
				Result = (EIF_REFERENCE) RTCCL(loc2);
			}
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(17);
		RTCT("result_is_dockable", EX_POST);
		tb1 = '\01';
		if ((EIF_BOOLEAN)(Result != NULL)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 56, "is_docking_enabled", Result))(Result)).it_b);
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
	RTHOOK(18);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef arg1
}

/* {EV_DOCKABLE_SOURCE_I}.closest_dockable_target */
EIF_TYPED_VALUE F923_17216 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "closest_dockable_target";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(9);
	RTLR(0,loc1);
	RTLR(1,Current);
	RTLR(2,loc2);
	RTLR(3,tr1);
	RTLR(4,loc3);
	RTLR(5,loc4);
	RTLR(6,Result);
	RTLR(7,loc5);
	RTLR(8,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 922, Current, 5, 0, 21029);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21029);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF800048C, 0, 0); /* loc1 */
	
	loc1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 104, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 2, 0xF800032E, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 730, "interface", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTCCL(tr1);
		loc2 = RTRV(eif_non_attached_type(814), loc2);
		RTHOOK(4);
		RTDBGAL(Current, 3, 0xF8000371, 0, 0); /* loc3 */
		
		loc3 = RTCCL(loc2);
		loc3 = RTRV(eif_non_attached_type(881), loc3);
		RTHOOK(5);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 201, "real_target", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc4 = RTCCL(tr1);
		if (EIF_TEST(loc4)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 56, "is_docking_enabled", loc4))(loc4)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(6);
			RTDBGAL(Current, 0, 0xF800032E, 0,0); /* Result */
			
			Result = (EIF_REFERENCE) RTCCL(loc4);
		} else {
			RTHOOK(7);
			tb1 = '\0';
			tb2 = '\0';
			loc5 = RTCCL(loc2);
			if (EIF_TEST(loc5)) {
				tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 56, "is_docking_enabled", loc5))(loc5)).it_b);
				tb2 = tb3;
			}
			if (tb2) {
				tb2 = '\0';
				if ((EIF_BOOLEAN)(loc3 != NULL)) {
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					tb2 = (EIF_BOOLEAN)(tr1 != NULL);
				}
				tb1 = tb2;
			}
			if (tb1) {
				RTHOOK(8);
				RTDBGAL(Current, 0, 0xF800032E, 0,0); /* Result */
				
				Result = (EIF_REFERENCE) RTCCL(loc2);
			} else {
				RTHOOK(9);
				RTDBGAL(Current, 0, 0xF800032E, 0,0); /* Result */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				ur1 = RTCCL(tr1);
				Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(922, 87, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			}
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(10);
		RTCT("result_is_dockable", EX_POST);
		tb1 = '\01';
		if ((EIF_BOOLEAN)(Result != NULL)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 56, "is_docking_enabled", Result))(Result)).it_b);
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
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef ur1
}

/* {EV_DOCKABLE_SOURCE_I}.enable_dockable */
void F923_17217 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "enable_dockable";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21030);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21030);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 922, 82, 0x04000000, 1); /* is_dockable */
	
	*(EIF_BOOLEAN *)(Current + RTWA(922, 82, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 90, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("is_dockable", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(922, 82, dtype));
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
	RTLO(2);
	RTEE;
}

/* {EV_DOCKABLE_SOURCE_I}.disable_dockable */
void F923_17219 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disable_dockable";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21031);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21031);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 922, 82, 0x04000000, 1); /* is_dockable */
	
	*(EIF_BOOLEAN *)(Current + RTWA(922, 82, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 92, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_is_dockable", EX_POST);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(922, 82, dtype));
		if ((EIF_BOOLEAN) !tb1) {
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
	RTLO(2);
	RTEE;
}

/* {EV_DOCKABLE_SOURCE_I}.set_real_source */
void F923_17221 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_real_source";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
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
	
	RTEAA(l_feature_name, 922, Current, 0, 1, 21032);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21032);
	if (arg1) {
		RTCC(arg1, 922, l_feature_name, 1, 810);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_dockable", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(922, 82, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("dockable_source_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 922, 81, 0xF800032A, 0); /* real_source */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(922, 81, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("real_source_assigned", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 81, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef arg1
}

/* {EV_DOCKABLE_SOURCE_I}.remove_real_source */
void F923_17222 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "remove_real_source";
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
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21033);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21033);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_dockable", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(922, 82, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 922, 81, 0xF800032A, 0); /* real_source */
	
	*(EIF_REFERENCE *)(Current + RTWA(922, 81, dtype)) = (EIF_REFERENCE) NULL;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("real_source_void", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 81, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 == NULL)) {
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
	RTLO(2);
	RTEE;
#undef up1
}

/* {EV_DOCKABLE_SOURCE_I}.enable_external_docking */
void F923_17223 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "enable_external_docking";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21034);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21034);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_dockable", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(922, 82, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 922, 83, 0x04000000, 1); /* not_external_docking_enabled */
	
	*(EIF_BOOLEAN *)(Current + RTWA(922, 83, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("is_externally_dockable", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 84, dtype))(Current)).it_b);
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
	RTLO(2);
	RTEE;
}

/* {EV_DOCKABLE_SOURCE_I}.disable_external_docking */
void F923_17224 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disable_external_docking";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21035);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21035);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_dockable", EX_PRE);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(922, 82, dtype));
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 922, 83, 0x04000000, 1); /* not_external_docking_enabled */
	
	*(EIF_BOOLEAN *)(Current + RTWA(922, 83, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_externally_dockable", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 84, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
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
	RTLO(2);
	RTEE;
}

/* {EV_DOCKABLE_SOURCE_I}.enable_external_docking_relative */
void F923_17225 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "enable_external_docking_relative";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21036);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21036);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("external_docking_enabled", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 84, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 922, 85, 0x04000000, 1); /* not_is_external_docking_relative */
	
	*(EIF_BOOLEAN *)(Current + RTWA(922, 85, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("external_docking_not_relative", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 86, dtype))(Current)).it_b);
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
	RTLO(2);
	RTEE;
}

/* {EV_DOCKABLE_SOURCE_I}.disable_external_docking_relative */
void F923_17226 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disable_external_docking_relative";
	RTEX;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21037);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21037);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("external_docking_enabled", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 84, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 922, 85, 0x04000000, 1); /* not_is_external_docking_relative */
	
	*(EIF_BOOLEAN *)(Current + RTWA(922, 85, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("external_docking_not_relative", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 86, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
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
	RTLO(2);
	RTEE;
}

/* {EV_DOCKABLE_SOURCE_I}.complete_dock */
void F923_17227 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "complete_dock";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc4 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc12 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc13 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc14 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc15 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc16 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc17 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc18 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc19 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc20 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc21 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc22 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc23 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc24 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc25 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc26 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc27 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc28 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc29 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc30 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc31 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc32 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc33 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc34 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc35 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc36 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc37 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc38 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc39 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc40 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc41 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc42 = (EIF_REFERENCE) 0;
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
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE tr3 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_16 ti2_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(41);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc8);
	RTLR(3,loc29);
	RTLR(4,loc7);
	RTLR(5,loc30);
	RTLR(6,loc32);
	RTLR(7,loc11);
	RTLR(8,loc14);
	RTLR(9,loc33);
	RTLR(10,loc31);
	RTLR(11,loc34);
	RTLR(12,loc5);
	RTLR(13,loc19);
	RTLR(14,tr2);
	RTLR(15,ur1);
	RTLR(16,loc13);
	RTLR(17,loc35);
	RTLR(18,loc12);
	RTLR(19,loc10);
	RTLR(20,loc6);
	RTLR(21,loc9);
	RTLR(22,loc3);
	RTLR(23,tr3);
	RTLR(24,loc36);
	RTLR(25,loc1);
	RTLR(26,loc2);
	RTLR(27,loc37);
	RTLR(28,loc28);
	RTLR(29,loc38);
	RTLR(30,loc39);
	RTLR(31,loc40);
	RTLR(32,loc21);
	RTLR(33,loc24);
	RTLR(34,loc17);
	RTLR(35,loc16);
	RTLR(36,loc15);
	RTLR(37,loc41);
	RTLR(38,loc20);
	RTLR(39,loc42);
	RTLR(40,loc27);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_BOOL, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_REF, &loc12);
	RTLU(SK_REF, &loc13);
	RTLU(SK_REF, &loc14);
	RTLU(SK_REF, &loc15);
	RTLU(SK_REF, &loc16);
	RTLU(SK_REF, &loc17);
	RTLU(SK_INT32, &loc18);
	RTLU(SK_REF, &loc19);
	RTLU(SK_REF, &loc20);
	RTLU(SK_REF, &loc21);
	RTLU(SK_INT32, &loc22);
	RTLU(SK_INT32, &loc23);
	RTLU(SK_REF, &loc24);
	RTLU(SK_BOOL, &loc25);
	RTLU(SK_BOOL, &loc26);
	RTLU(SK_REF, &loc27);
	RTLU(SK_REF, &loc28);
	RTLU(SK_REF, &loc29);
	RTLU(SK_REF, &loc30);
	RTLU(SK_REF, &loc31);
	RTLU(SK_REF, &loc32);
	RTLU(SK_REF, &loc33);
	RTLU(SK_REF, &loc34);
	RTLU(SK_REF, &loc35);
	RTLU(SK_REF, &loc36);
	RTLU(SK_REF, &loc37);
	RTLU(SK_REF, &loc38);
	RTLU(SK_REF, &loc39);
	RTLU(SK_REF, &loc40);
	RTLU(SK_REF, &loc41);
	RTLU(SK_REF, &loc42);
	
	RTEAA(l_feature_name, 922, Current, 42, 0, 21038);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21038);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("source_being_docked", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 64, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTTE((EIF_BOOLEAN)(tr1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 922, 75, 0xF8000347, 0); /* dockable_dialog_target */
	
	*(EIF_REFERENCE *)(Current + RTWA(922, 75, dtype)) = (EIF_REFERENCE) NULL;
	RTHOOK(3);
	RTDBGAL(Current, 8, 0xF800032E, 0, 0); /* loc8 */
	
	loc8 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 88, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(4);
	RTDBGAL(Current, 29, 0xF800048C, 0, 0); /* loc29 */
	
	loc29 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 102, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc29 = RTRV(eif_non_attached_type(RTWCT(922, 102, Current)), loc29);
	RTHOOK(5);
	if ((EIF_BOOLEAN)(loc29 != NULL)) {
		RTHOOK(6);
		RTDBGAL(Current, 7, 0xF8000347, 0, 0); /* loc7 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 651, "parent", loc29))(loc29)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc7 = RTCCL(tr1);
		loc7 = RTRV(eif_non_attached_type(839), loc7);
	} else {
		RTHOOK(7);
		RTDBGAL(Current, 30, 0xF80003D7, 0, 0); /* loc30 */
		
		loc30 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc30 = RTRV(eif_non_attached_type(RTWCT(922, 103, Current)), loc30);
		if (RTAL & CK_CHECK) {
			RTHOOK(8);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc30 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(9);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 133, "parent", loc30))(loc30)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc32 = RTCCL(tr1);
		if (EIF_TEST(loc32)) {
			RTHOOK(10);
			RTDBGAL(Current, 7, 0xF8000347, 0, 0); /* loc7 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1284, 149, "parent", loc32))(loc32)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc7 = RTCCL(tr1);
			loc7 = RTRV(eif_non_attached_type(839), loc7);
		}
	}
	RTHOOK(11);
	RTDBGAL(Current, 11, 0xF8000371, 0, 0); /* loc11 */
	
	loc11 = RTCCL(loc8);
	loc11 = RTRV(eif_non_attached_type(881), loc11);
	RTHOOK(12);
	RTDBGAL(Current, 14, 0xF800033E, 0, 0); /* loc14 */
	
	loc14 = RTCCL(loc8);
	loc14 = RTRV(eif_non_attached_type(830), loc14);
	RTHOOK(13);
	if (((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc29 != NULL) && (EIF_BOOLEAN)(loc14 == NULL)) || (EIF_BOOLEAN) ((EIF_BOOLEAN)(loc30 != NULL) && (EIF_BOOLEAN)(loc11 == NULL))))) {
		RTHOOK(14);
		RTDBGAL(Current, 8, 0xF800032E, 0, 0); /* loc8 */
		
		loc8 = (EIF_REFERENCE) NULL;
	}
	RTHOOK(15);
	if ((EIF_BOOLEAN)(loc8 == NULL)) {
		RTHOOK(16);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 65, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc33 = RTCCL(tr1);
		if (EIF_TEST(loc33)) {
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(922, 84, "is_external_docking_enabled", loc33))(loc33)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(17);
			if ((EIF_BOOLEAN)(loc7 == NULL)) {
				RTHOOK(18);
				RTDBGAL(Current, 31, 0xF8000347, 0, 0); /* loc31 */
				
				tr1 = RTLNSMART(eif_non_attached_type(RTWCT(922, 75, Current)));
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(839, 30, Dtype(tr1)))(tr1);
				RTNHOOK(18,1);
				loc31 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(19);
				RTDBGAA(Current, dtype, 922, 75, 0xF8000347, 0); /* dockable_dialog_target */
				
				RTAR(Current, loc31);
				*(EIF_REFERENCE *)(Current + RTWA(922, 75, dtype)) = (EIF_REFERENCE) RTCCL(loc31);
				RTHOOK(20);
				tb1 = '\0';
				if ((EIF_BOOLEAN)(loc29 != NULL)) {
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 781, "top_level_window_imp", loc29))(loc29)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc34 = RTCCL(tr1);
					tb1 = EIF_TEST(loc34);
				}
				if (tb1) {
					RTHOOK(21);
					RTDBGAL(Current, 5, 0xF8000343, 0, 0); /* loc5 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1171, 1848, "interface", loc34))(loc34)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc5 = (EIF_REFERENCE) RTCCL(tr1);
					RTHOOK(22);
					RTDBGAL(Current, 19, 0xF800032E, 0, 0); /* loc19 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc29))(loc29)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(22,1);
					tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 153, "parent", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc19 = RTCCL(tr2);
					loc19 = RTRV(eif_non_attached_type(814), loc19);
					if (RTAL & CK_CHECK) {
						RTHOOK(23);
						RTCT("original_parent_not_void", EX_CHECK);
						if ((EIF_BOOLEAN)(loc19 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(24);
					ur1 = RTCCL(loc19);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(839, 311, "set_original_parent", loc31))(loc31, ur1x);
					RTHOOK(25);
					ur1 = RTCCL(loc29);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(922, 105, dtype))(Current, ur1x)).it_i4);
					ui4_1 = ti4_1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(839, 312, "set_original_parent_index", loc31))(loc31, ui4_1x);
				} else {
					if (RTAL & CK_CHECK) {
						RTHOOK(26);
						RTCT(NULL, EX_CHECK);
						if ((EIF_BOOLEAN)(loc30 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(27);
					RTDBGAL(Current, 13, 0xF800048C, 0, 0); /* loc13 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 134, "parent_imp", loc30))(loc30)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc13 = RTCCL(tr1);
					loc13 = RTRV(eif_non_attached_type(1164), loc13);
					if (RTAL & CK_CHECK) {
						RTHOOK(28);
						RTCT("parent_is_widget", EX_CHECK);
						if ((EIF_BOOLEAN)(loc13 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(29);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 781, "top_level_window_imp", loc13))(loc13)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc35 = RTCCL(tr1);
					if (EIF_TEST(loc35)) {
						RTHOOK(30);
						RTDBGAL(Current, 5, 0xF8000343, 0, 0); /* loc5 */
						
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1171, 1848, "interface", loc35))(loc35)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						loc5 = (EIF_REFERENCE) RTCCL(tr1);
					}
					if (RTAL & CK_CHECK) {
						RTHOOK(31);
						RTCT(NULL, EX_CHECK);
						if ((EIF_BOOLEAN)(loc5 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(32);
					RTDBGAL(Current, 12, 0xF800032E, 0, 0); /* loc12 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 35, "attached_interface", loc30))(loc30)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(32,1);
					tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(867, 116, "parent", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc12 = RTCCL(tr2);
					loc12 = RTRV(eif_non_attached_type(814), loc12);
					if (RTAL & CK_CHECK) {
						RTHOOK(33);
						RTCT("parent_not_void", EX_CHECK);
						if ((EIF_BOOLEAN)(loc12 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(34);
					ur1 = RTCCL(loc12);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(839, 311, "set_original_parent", loc31))(loc31, ur1x);
					RTHOOK(35);
					RTDBGAL(Current, 10, 0xF8000483, 0, 0); /* loc10 */
					
					loc10 = RTCCL(loc30);
					loc10 = RTRV(eif_non_attached_type(1155), loc10);
					if (RTAL & CK_CHECK) {
						RTHOOK(36);
						RTCT("item_was_tool_bar_button", EX_CHECK);
						if ((EIF_BOOLEAN)(loc10 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(37);
					ur1 = RTCCL(loc10);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(922, 105, dtype))(Current, ur1x)).it_i4);
					ui4_1 = ti4_1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(839, 312, "set_original_parent_index", loc31))(loc31, ui4_1x);
					RTHOOK(38);
					RTDBGAL(Current, 11, 0xF8000371, 0, 0); /* loc11 */
					
					loc11 = RTCCL(loc12);
					loc11 = RTRV(eif_non_attached_type(881), loc11);
					if (RTAL & CK_CHECK) {
						RTHOOK(39);
						RTCT("tool_bar_not_void", EX_CHECK);
						if ((EIF_BOOLEAN)(loc11 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(40);
					RTDBGAL(Current, 18, 0x10000000, 1, 0); /* loc18 */
					
					ti4_1 = *(EIF_INTEGER_32 *)(loc31 + RTVA(839, 309, "original_parent_index", loc31));
					loc18 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
					RTHOOK(41);
					tb1 = '\0';
					tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(881, 209, "is_empty", loc11))(loc11)).it_b);
					if ((EIF_BOOLEAN) !tb2) {
						tb1 = (EIF_BOOLEAN) (loc18 >= ((EIF_INTEGER_32) 1L));
					}
					if (tb1) {
						RTHOOK(42);
						ur1 = RTCCL(loc11);
						ui4_1 = loc18;
						ui4_2 = loc18;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(922, 112, dtype))(Current, ur1x, ui4_1x, ui4_2x);
					}
				}
				RTHOOK(43);
				if ((EIF_BOOLEAN)(loc29 != NULL)) {
					RTHOOK(44);
					RTDBGAL(Current, 6, 0xF8000350, 0, 0); /* loc6 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc29))(loc29)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(44,1);
					tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 153, "parent", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc6 = RTCCL(tr2);
					loc6 = RTRV(eif_non_attached_type(848), loc6);
					RTHOOK(45);
					tb1 = '\0';
					if ((EIF_BOOLEAN)(loc6 != NULL)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc29))(loc29)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						ur1 = RTCCL(tr1);
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(848, 305, "is_item_expanded", loc6))(loc6, ur1x)).it_b);
						tb1 = (EIF_BOOLEAN) !tb2;
					}
					if (tb1) {
						RTHOOK(46);
						(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(839, 313, "set_expansion_was_disabled", loc31))(loc31);
					}
				}
				RTHOOK(47);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 109, dtype))(Current);
				RTHOOK(48);
				if ((EIF_BOOLEAN)(loc29 != NULL)) {
					RTHOOK(49);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc29))(loc29)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					ur1 = RTCCL(tr1);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(839, 198, "extend", loc31))(loc31, ur1x);
				} else {
					if (RTAL & CK_CHECK) {
						RTHOOK(50);
						RTCT(NULL, EX_CHECK);
						if ((EIF_BOOLEAN)(loc30 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(51);
					RTDBGAL(Current, 11, 0xF8000371, 0, 0); /* loc11 */
					
					tr1 = RTLN(881);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(881, 30, Dtype(tr1)))(tr1);
					RTNHOOK(51,1);
					loc11 = (EIF_REFERENCE) RTCCL(tr1);
					RTHOOK(52);
					ur1 = RTCCL(loc11);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(839, 198, "extend", loc31))(loc31, ur1x);
					RTHOOK(53);
					RTDBGAL(Current, 9, 0xF8000368, 0, 0); /* loc9 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 136, "interface", loc30))(loc30)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc9 = RTCCL(tr1);
					loc9 = RTRV(eif_non_attached_type(872), loc9);
					if (RTAL & CK_CHECK) {
						RTHOOK(54);
						RTCT("item_was_tool_bar_button", EX_CHECK);
						if ((EIF_BOOLEAN)(loc9 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(55);
					ur1 = RTCCL(loc9);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 263, "extend", loc11))(loc11, ur1x);
				}
				RTHOOK(56);
				RTDBGAL(Current, 3, 0xF80003BB, 0, 0); /* loc3 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 306, "implementation", loc31))(loc31)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc3 = RTCCL(tr1);
				loc3 = RTRV(eif_non_attached_type(955), loc3);
				if (RTAL & CK_CHECK) {
					RTHOOK(57);
					RTCT("dialog_imp_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc3 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(58);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(955, 287, "enable_closeable", loc3))(loc3);
				RTHOOK(59);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 244, "close_request_actions", loc31))(loc31)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(59,1);
				{
					EIF_TYPE_INDEX typarr0[] = {922,0xFFF9,2,734,0,839,0xFFFF};
					EIF_TYPE_INDEX typres0;
					typarr0[4] = dftype;
					
					typres0 = eif_compound_id(dftype, 734, typarr0);
					tr2 = RTLNTS(typres0, 3, 0);
				}
				((EIF_TYPED_VALUE *)tr2+1)->it_r = Current;
				RTAR(tr2,Current);
				((EIF_TYPED_VALUE *)tr2+2)->it_r = loc31;
				RTAR(tr2,loc31);
				
				{
					EIF_TYPE_INDEX typarr0[] = {922,1219,0,0xFFF9,0,734,0xFFFF};
					EIF_TYPE_INDEX typres0;
					typarr0[2] = dftype;
					
					typres0 = eif_compound_id(dftype, 1219, typarr0);
					tr3 = RTLNRW(typres0, 0, (EIF_POINTER) _A923_100, (EIF_POINTER)(0),922, 100, 0, 0, 0, 1, 0, tr2, 0);
				}
				ur1 = RTCCL(tr3);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 124, "extend", tr1))(tr1, ur1x);
				RTHOOK(60);
				ur1 = RTCCL(loc31);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(922, 107, dtype))(Current, ur1x);
				RTHOOK(61);
				tb1 = '\0';
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 64, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc36 = RTCCL(tr1);
				if (EIF_TEST(loc36)) {
					tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(922, 86, "is_external_docking_relative", loc36))(loc36)).it_b);
					tb1 = tb2;
				}
				if (tb1) {
					if (RTAL & CK_CHECK) {
						RTHOOK(62);
						RTCT(NULL, EX_CHECK);
						if ((EIF_BOOLEAN)(loc5 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(63);
					ur1 = RTCCL(loc5);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(839, 304, "show_relative_to_window", loc31))(loc31, ur1x);
				} else {
					RTHOOK(64);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(839, 164, "show", loc31))(loc31);
				}
				RTHOOK(65);
				RTDBGAL(Current, 1, 0xF800033E, 0, 0); /* loc1 */
				
				loc1 = RTCCL(loc31);
				loc1 = RTRV(eif_non_attached_type(830), loc1);
			} else {
				RTHOOK(66);
				ur1 = RTCCL(loc7);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(922, 107, dtype))(Current, ur1x);
			}
			RTHOOK(67);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 58, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			if ((EIF_BOOLEAN)(tr1 != NULL)) {
				RTHOOK(68);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(68,1);
				ur1 = NULL;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 180, "call", tr1))(tr1, ur1x);
			}
		}
	} else {
		RTHOOK(69);
		RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
		
		loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		RTHOOK(70);
		RTDBGAL(Current, 2, 0xF800048C, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 60, "implementation", loc8))(loc8)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTCCL(tr1);
		loc2 = RTRV(eif_non_attached_type(1164), loc2);
		if (RTAL & CK_CHECK) {
			RTHOOK(71);
			RTCT("target_widget_not_void", EX_CHECK);
			if ((EIF_BOOLEAN)(loc2 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(72);
		RTDBGAL(Current, 1, 0xF800033E, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 730, "interface", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = RTCCL(tr1);
		loc1 = RTRV(eif_non_attached_type(830), loc1);
	}
	RTHOOK(73);
	tb1 = '\0';
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc7 == NULL) || (EIF_BOOLEAN)(loc8 != NULL))) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 75, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tb1 = (EIF_BOOLEAN)(tr1 == NULL);
	}
	if (tb1) {
		RTHOOK(74);
		RTDBGAL(Current, 11, 0xF8000371, 0, 0); /* loc11 */
		
		loc11 = RTCCL(loc8);
		loc11 = RTRV(eif_non_attached_type(881), loc11);
		RTHOOK(75);
		if ((EIF_BOOLEAN) !(EIF_BOOLEAN) ((EIF_BOOLEAN)(loc11 != NULL) && (EIF_BOOLEAN)(loc29 != NULL))) {
			RTHOOK(76);
			RTDBGAL(Current, 26, 0x04000000, 1, 0); /* loc26 */
			
			tb1 = '\0';
			tr1 = RTLN(803);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(803, 30, Dtype(tr1)))(tr1);
			RTNHOOK(76,1);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(803, 44, "application", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc37 = RTCCL(tr2);
			if (EIF_TEST(loc37)) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(807, 65, "locked_window", loc37))(loc37)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				tb1 = (EIF_BOOLEAN)(tr1 == NULL);
			}
			loc26 = (EIF_BOOLEAN) tb1;
			if (RTAL & CK_CHECK) {
				RTHOOK(77);
				RTCT(NULL, EX_CHECK);
				if ((EIF_BOOLEAN)(loc29 != NULL)) {
					RTCK;
				} else {
					RTCF;
				}
			}
			RTHOOK(78);
			tb1 = '\0';
			if (loc26) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 647, "top_level_window", loc29))(loc29)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				tb1 = (EIF_BOOLEAN)(tr1 != NULL);
			}
			if (tb1) {
				if (RTAL & CK_CHECK) {
					RTHOOK(79);
					RTCT(NULL, EX_CHECK);
					if ((EIF_BOOLEAN)(loc14 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(80);
				RTDBGAL(Current, 28, 0xF800048D, 0, 0); /* loc28 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(830, 222, "implementation", loc14))(loc14)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc28 = RTCCL(tr1);
				loc28 = RTRV(eif_non_attached_type(1165), loc28);
				if (RTAL & CK_CHECK) {
					RTHOOK(81);
					RTCT("container_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc28 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(82);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1165, 839, "top_level_window_imp", loc28))(loc28)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc38 = RTCCL(tr1);
				if (EIF_TEST(loc38)) {
					RTHOOK(83);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1171, 1765, "lock_update", loc38))(loc38);
				}
			}
			RTHOOK(84);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(84,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			if ((EIF_BOOLEAN)(tr2 != NULL)) {
				RTHOOK(85);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 109, dtype))(Current);
				RTHOOK(86);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 110, dtype))(Current);
			}
			RTHOOK(87);
			loc39 = RTCCL(loc7);
			if (EIF_TEST(loc39)) {
				RTHOOK(88);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(839, 33, "destroy", loc39))(loc39);
			}
			RTHOOK(89);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 58, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			if ((EIF_BOOLEAN)(tr1 != NULL)) {
				RTHOOK(90);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(90,1);
				ur1 = NULL;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 180, "call", tr1))(tr1, ur1x);
			}
		} else {
			RTHOOK(91);
			loc40 = RTCCL(loc7);
			if (EIF_TEST(loc40)) {
				RTHOOK(92);
				ur1 = RTCCL(loc40);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(922, 107, dtype))(Current, ur1x);
			}
		}
	}
	RTHOOK(93);
	if ((EIF_BOOLEAN)(loc29 == NULL)) {
		if (RTAL & CK_CHECK) {
			RTHOOK(94);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc30 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(95);
		RTDBGAL(Current, 9, 0xF8000368, 0, 0); /* loc9 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 136, "interface", loc30))(loc30)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc9 = RTCCL(tr1);
		loc9 = RTRV(eif_non_attached_type(872), loc9);
		if (RTAL & CK_CHECK) {
			RTHOOK(96);
			RTCT("tool_bar_button_not_void", EX_CHECK);
			if ((EIF_BOOLEAN)(loc9 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(97);
		RTDBGAL(Current, 11, 0xF8000371, 0, 0); /* loc11 */
		
		loc11 = RTCCL(loc8);
		loc11 = RTRV(eif_non_attached_type(881), loc11);
		RTHOOK(98);
		if ((EIF_BOOLEAN)(loc11 != NULL)) {
			RTHOOK(99);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(99,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(871, 118, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			if ((EIF_BOOLEAN)(tr2 != NULL)) {
				RTHOOK(100);
				RTDBGAL(Current, 21, 0xF8000371, 0, 0); /* loc21 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 133, "parent", loc30))(loc30)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc21 = RTCCL(tr1);
				loc21 = RTRV(eif_non_attached_type(881), loc21);
				if (RTAL & CK_CHECK) {
					RTHOOK(101);
					RTCT("original_tool_bar_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc21 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(102);
				RTDBGAL(Current, 24, 0xF8000366, 0, 0); /* loc24 */
				
				loc24 = RTCCL(loc9);
				loc24 = RTRV(eif_non_attached_type(870), loc24);
				if (RTAL & CK_CHECK) {
					RTHOOK(103);
					RTCT(NULL, EX_CHECK);
					if ((EIF_BOOLEAN)(loc24 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(104);
				RTDBGAL(Current, 22, 0x10000000, 1, 0); /* loc22 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				ur1 = RTCCL(tr1);
				ui4_1 = ((EIF_INTEGER_32) 1L);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 249, "index_of", loc21))(loc21, ur1x, ui4_1x)).it_i4);
				loc22 = (EIF_INTEGER_32) ti4_1;
				RTHOOK(105);
				RTDBGAL(Current, 23, 0x10000000, 1, 0); /* loc23 */
				
				ur1 = RTCCL(loc24);
				ui4_1 = ((EIF_INTEGER_32) 1L);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 249, "index_of", loc21))(loc21, ur1x, ui4_1x)).it_i4);
				loc23 = (EIF_INTEGER_32) ti4_1;
				RTHOOK(106);
				RTDBGAL(Current, 25, 0x04000000, 1, 0); /* loc25 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(870, 119, "parent", loc24))(loc24)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc25 = (EIF_BOOLEAN) RTCEQ(tr1, loc11);
				RTHOOK(107);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 109, dtype))(Current);
				RTHOOK(108);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 111, dtype))(Current);
				RTHOOK(109);
				if ((EIF_BOOLEAN) (loc25 && (EIF_BOOLEAN)(loc23 == (EIF_INTEGER_32) (loc22 + ((EIF_INTEGER_32) 2L))))) {
					RTHOOK(110);
					ur1 = RTCCL(loc11);
					ui4_1 = (EIF_INTEGER_32) (loc22 + ((EIF_INTEGER_32) 1L));
					ui4_2 = (EIF_INTEGER_32) (loc22 + ((EIF_INTEGER_32) 1L));
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(922, 112, dtype))(Current, ur1x, ui4_1x, ui4_2x);
				}
				RTHOOK(111);
				if (RTCEQ(loc21, loc11)) {
					RTHOOK(112);
					RTDBGAL(Current, 17, 0xF80004A6, 0, 0); /* loc17 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(881, 302, "implementation", loc11))(loc11)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc17 = RTCCL(tr1);
					loc17 = RTRV(eif_non_attached_type(1190), loc17);
					if (RTAL & CK_CHECK) {
						RTHOOK(113);
						RTCT("tool_bar_imp_not_void", EX_CHECK);
						if ((EIF_BOOLEAN)(loc17 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(114);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1190, 1864, "block_selection_for_docking", loc17))(loc17);
				}
			} else {
				RTHOOK(115);
				RTDBGAL(Current, 17, 0xF80004A6, 0, 0); /* loc17 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(881, 302, "implementation", loc11))(loc11)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc17 = RTCCL(tr1);
				loc17 = RTRV(eif_non_attached_type(1190), loc17);
				if (RTAL & CK_CHECK) {
					RTHOOK(116);
					RTCT("tool_bar_imp_not_void", EX_CHECK);
					if ((EIF_BOOLEAN)(loc17 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(117);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1190, 1863, "insertion_position", loc17))(loc17)).it_i4);
				ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 248, "i_th", loc11))(loc11, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				if (RTCEQ(tr1, loc9)) {
					RTHOOK(118);
					RTDBGAL(Current, 18, 0x10000000, 1, 0); /* loc18 */
					
					ur1 = RTCCL(loc9);
					ui4_1 = ((EIF_INTEGER_32) 1L);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 249, "index_of", loc11))(loc11, ur1x, ui4_1x)).it_i4);
					loc18 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(119);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(881, 252, "count", loc11))(loc11)).it_i4);
					if ((EIF_BOOLEAN) (loc18 < ti4_1)) {
						RTHOOK(120);
						RTDBGAL(Current, 16, 0xF8000367, 0, 0); /* loc16 */
						
						ui4_1 = (EIF_INTEGER_32) (loc18 + ((EIF_INTEGER_32) 1L));
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 248, "i_th", loc11))(loc11, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						loc16 = RTCCL(tr1);
						loc16 = RTRV(eif_non_attached_type(871), loc16);
					}
					RTHOOK(121);
					if ((EIF_BOOLEAN) (loc18 > ((EIF_INTEGER_32) 1L))) {
						RTHOOK(122);
						RTDBGAL(Current, 15, 0xF8000367, 0, 0); /* loc15 */
						
						ui4_1 = (EIF_INTEGER_32) (loc18 - ((EIF_INTEGER_32) 1L));
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 248, "i_th", loc11))(loc11, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						loc15 = RTCCL(tr1);
						loc15 = RTRV(eif_non_attached_type(871), loc15);
					}
					RTHOOK(123);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 76, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(123,1);
					tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(823, 109, "pointer_position", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
					RTNHOOK(123,2);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(564, 38, "x", tr2))(tr2)).it_i4);
					ti2_1 = *(EIF_INTEGER_16 *)(Current + RTWA(922, 77, dtype));
					ti4_2 = (EIF_INTEGER_32) ti2_1;
					if ((EIF_BOOLEAN) (ti4_1 > ti4_2)) {
						RTHOOK(124);
						if ((EIF_BOOLEAN)(loc16 != NULL)) {
							RTHOOK(125);
							ur1 = RTCCL(loc16);
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 272, "prune", loc11))(loc11, ur1x);
						} else {
							RTHOOK(126);
							if ((EIF_BOOLEAN)(loc15 == NULL)) {
								RTHOOK(127);
								ur1 = RTCCL(loc9);
								ui4_1 = ((EIF_INTEGER_32) 1L);
								ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 249, "index_of", loc11))(loc11, ur1x, ui4_1x)).it_i4);
								ui4_1 = ti4_1;
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 258, "go_i_th", loc11))(loc11, ui4_1x);
								RTHOOK(128);
								tr1 = RTLN(871);
								(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(871, 30, Dtype(tr1)))(tr1);
								RTNHOOK(128,1);
								ur1 = RTCCL(tr1);
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 267, "put_left", loc11))(loc11, ur1x);
							}
						}
					} else {
						RTHOOK(129);
						if ((EIF_BOOLEAN)(loc15 != NULL)) {
							RTHOOK(130);
							ur1 = RTCCL(loc15);
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 272, "prune", loc11))(loc11, ur1x);
						} else {
							RTHOOK(131);
							if ((EIF_BOOLEAN)(loc16 == NULL)) {
								RTHOOK(132);
								ur1 = RTCCL(loc9);
								ui4_1 = ((EIF_INTEGER_32) 1L);
								ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 249, "index_of", loc11))(loc11, ur1x, ui4_1x)).it_i4);
								ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 258, "go_i_th", loc11))(loc11, ui4_1x);
								RTHOOK(133);
								tr1 = RTLN(871);
								(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(871, 30, Dtype(tr1)))(tr1);
								RTNHOOK(133,1);
								ur1 = RTCCL(tr1);
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 267, "put_left", loc11))(loc11, ur1x);
							}
						}
					}
					RTHOOK(134);
					RTDBGAL(Current, 22, 0x10000000, 1, 0); /* loc22 */
					
					ur1 = RTCCL(loc9);
					ui4_1 = ((EIF_INTEGER_32) 1L);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 249, "index_of", loc11))(loc11, ur1x, ui4_1x)).it_i4);
					loc22 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(135);
					ur1 = RTCCL(loc11);
					ui4_1 = loc22;
					ui4_2 = loc22;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(922, 112, dtype))(Current, ur1x, ui4_1x, ui4_2x);
				}
			}
		}
		RTHOOK(136);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 58, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 != NULL)) {
			RTHOOK(137);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 56, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(137,1);
			ur1 = NULL;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 180, "call", tr1))(tr1, ur1x);
		}
	}
	RTHOOK(138);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 64, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc41 = RTCCL(tr1);
	if (EIF_TEST(loc41)) {
		RTHOOK(139);
		RTDBGAL(Current, 20, 0xF800033D, 0, 0); /* loc20 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(922, 113, "interface", loc41))(loc41)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc20 = RTCCL(tr1);
		loc20 = RTRV(eif_non_attached_type(829), loc20);
		RTHOOK(140);
		if ((EIF_BOOLEAN)(loc20 != NULL)) {
			RTHOOK(141);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 99, "pointer_motion_actions", loc20))(loc20)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(141,1);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(532, 151, "resume", tr1))(tr1);
		} else {
			RTHOOK(142);
			RTDBGAL(Current, 9, 0xF8000368, 0, 0); /* loc9 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(922, 113, "interface", loc41))(loc41)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc9 = RTCCL(tr1);
			loc9 = RTRV(eif_non_attached_type(872), loc9);
			RTHOOK(143);
			if ((EIF_BOOLEAN)(loc9 != NULL)) {
				RTHOOK(144);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(872, 99, "pointer_motion_actions", loc9))(loc9)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(144,1);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(532, 151, "resume", tr1))(tr1);
			} else {
				if (RTAL & CK_CHECK) {
					RTHOOK(145);
					RTCT("type_not_supported", EX_CHECK);
						RTCF;
				}
			}
		}
	}
	RTHOOK(146);
	RTDBGAA(Current, dtype, 922, 64, 0xF800039A, 0); /* source_being_docked */
	
	*(EIF_REFERENCE *)(Current + RTWA(922, 64, dtype)) = (EIF_REFERENCE) NULL;
	RTHOOK(147);
	tb1 = '\0';
	if (loc26) {
		tr1 = RTLN(803);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(803, 30, Dtype(tr1)))(tr1);
		RTNHOOK(147,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(803, 44, "application", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc42 = RTCCL(tr2);
		tb1 = EIF_TEST(loc42);
	}
	if (tb1) {
		RTHOOK(148);
		RTDBGAL(Current, 27, 0xF8000343, 0, 0); /* loc27 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(807, 65, "locked_window", loc42))(loc42)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc27 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(149);
		if ((EIF_BOOLEAN)(loc27 != NULL)) {
			RTHOOK(150);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(835, 274, "unlock_update", loc27))(loc27);
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(151);
		RTCT("not_dock_executing", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 80, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(152);
		RTCT("insert_separator_not_parented", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(152,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(871, 118, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		if ((EIF_BOOLEAN)(tr2 == NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(153);
		RTCT("insert_label_not_parented", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(153,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		if ((EIF_BOOLEAN)(tr2 == NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(154);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(44);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
}

/* {EV_DOCKABLE_SOURCE_I}.close_dockable_dialog */
void F923_17228 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "close_dockable_dialog";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc9 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc12 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(16);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,loc3);
	RTLR(4,ur1);
	RTLR(5,loc4);
	RTLR(6,loc5);
	RTLR(7,loc6);
	RTLR(8,loc7);
	RTLR(9,loc8);
	RTLR(10,loc10);
	RTLR(11,loc11);
	RTLR(12,loc12);
	RTLR(13,loc9);
	RTLR(14,Current);
	RTLR(15,tr2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	RTLU(SK_REF, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_REF, &loc12);
	
	RTEAA(l_feature_name, 922, Current, 12, 1, 21039);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21039);
	if (arg1) {
		RTCC(arg1, 922, l_feature_name, 1, 839);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF800033D, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 192, "item", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(839, 233, "wipe_out", arg1))(arg1);
	RTHOOK(3);
	RTDBGAL(Current, 3, 0xF800033F, 0, 0); /* loc3 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 308, "original_parent", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = RTCCL(tr1);
	loc3 = RTRV(eif_non_attached_type(831), loc3);
	RTHOOK(4);
	tb1 = '\0';
	if ((EIF_BOOLEAN)(loc3 != NULL)) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 229, "is_empty", loc3))(loc3)).it_b);
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(5);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(831, 200, "extend", loc3))(loc3, ur1x);
	}
	RTHOOK(6);
	RTDBGAL(Current, 4, 0xF800034D, 0, 0); /* loc4 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 308, "original_parent", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc4 = RTCCL(tr1);
	loc4 = RTRV(eif_non_attached_type(845), loc4);
	RTHOOK(7);
	if ((EIF_BOOLEAN)(loc4 != NULL)) {
		RTHOOK(8);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(839, 309, "original_parent_index", arg1));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(9);
		ui4_1 = loc2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(845, 251, "valid_index", loc4))(loc4, ui4_1x)).it_b);
		if (tb1) {
			RTHOOK(10);
			ui4_1 = loc2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(845, 271, "go_i_th", loc4))(loc4, ui4_1x);
		} else {
			RTHOOK(11);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(845, 195, "count", loc4))(loc4)).it_i4);
			ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(845, 271, "go_i_th", loc4))(loc4, ui4_1x);
		}
		RTHOOK(12);
		ur1 = RTCCL(loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(845, 278, "put_left", loc4))(loc4, ur1x);
		RTHOOK(13);
		RTDBGAL(Current, 5, 0xF8000350, 0, 0); /* loc5 */
		
		loc5 = RTCCL(loc4);
		loc5 = RTRV(eif_non_attached_type(848), loc5);
		RTHOOK(14);
		if ((EIF_BOOLEAN)(loc5 != NULL)) {
			RTHOOK(15);
			tb1 = *(EIF_BOOLEAN *)(arg1 + RTVA(839, 310, "expansion_was_disabled", arg1));
			if (tb1) {
				RTHOOK(16);
				ur1 = RTCCL(loc1);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(848, 312, "disable_item_expand", loc5))(loc5, ur1x);
			}
		}
	}
	RTHOOK(17);
	RTDBGAL(Current, 6, 0xF8000371, 0, 0); /* loc6 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 308, "original_parent", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc6 = RTCCL(tr1);
	loc6 = RTRV(eif_non_attached_type(881), loc6);
	RTHOOK(18);
	if ((EIF_BOOLEAN)(loc6 != NULL)) {
		RTHOOK(19);
		RTDBGAL(Current, 7, 0xF8000371, 0, 0); /* loc7 */
		
		loc7 = RTCCL(loc1);
		loc7 = RTRV(eif_non_attached_type(881), loc7);
		if (RTAL & CK_CHECK) {
			RTHOOK(20);
			RTCT("old_parent_was_tool_bar", EX_CHECK);
			if ((EIF_BOOLEAN)(loc7 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(21);
		RTDBGAL(Current, 8, 0xF8000368, 0, 0); /* loc8 */
		
		ui4_1 = ((EIF_INTEGER_32) 1L);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 248, "i_th", loc7))(loc7, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc8 = RTCCL(tr1);
		loc8 = RTRV(eif_non_attached_type(872), loc8);
		if (RTAL & CK_CHECK) {
			RTHOOK(22);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc8 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(23);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(881, 276, "wipe_out", loc7))(loc7);
		RTHOOK(24);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(839, 309, "original_parent_index", arg1));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(25);
		ui4_1 = loc2;
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 230, "valid_index", loc6))(loc6, ui4_1x)).it_b);
		if (tb1) {
			RTHOOK(26);
			ui4_1 = loc2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 258, "go_i_th", loc6))(loc6, ui4_1x);
		} else {
			RTHOOK(27);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(881, 252, "count", loc6))(loc6)).it_i4);
			ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 258, "go_i_th", loc6))(loc6, ui4_1x);
		}
		RTHOOK(28);
		ur1 = RTCCL(loc8);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(881, 267, "put_left", loc6))(loc6, ur1x);
		RTHOOK(29);
		RTDBGAL(Current, 10, 0xF800032A, 0, 0); /* loc10 */
		
		loc10 = (EIF_REFERENCE) RTCCL(loc8);
	} else {
		RTHOOK(30);
		RTDBGAL(Current, 10, 0xF800032A, 0, 0); /* loc10 */
		
		loc10 = (EIF_REFERENCE) RTCCL(loc1);
	}
	RTHOOK(31);
	tb1 = '\0';
	loc11 = RTCCL(arg1);
	if (EIF_TEST(loc11)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 308, "original_parent", loc11))(loc11)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc12 = RTCCL(tr1);
		tb1 = EIF_TEST(loc12);
	}
	if (tb1) {
		RTHOOK(32);
		RTDBGAL(Current, 9, 0xF80003A2, 0, 0); /* loc9 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 60, "implementation", loc12))(loc12)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc9 = RTCCL(tr1);
		loc9 = RTRV(eif_non_attached_type(930), loc9);
	}
	if (RTAL & CK_CHECK) {
		RTHOOK(33);
		RTCT("target_not_void", EX_CHECK);
		if ((EIF_BOOLEAN)(loc9 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(34);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(930, 56, "docked_actions_internal", loc9))(loc9)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		RTHOOK(35);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(930, 55, "docked_actions", loc9))(loc9)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(35,1);
		{
			static EIF_TYPE_INDEX typarr0[] = {922,0xFFF9,1,734,810,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
			tr2 = RTLNTS(typres0, 2, 0);
		}
		((EIF_TYPED_VALUE *)tr2+1)->it_r = loc10;
		RTAR(tr2,loc10);
		ur1 = RTCCL(tr2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(529, 180, "call", tr1))(tr1, ur1x);
	}
	RTHOOK(36);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(839, 33, "destroy", arg1))(arg1);
	if (RTAL & CK_ENSURE) {
		RTHOOK(37);
		RTCT("dockable_dialog_destroyed", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 34, "is_destroyed", arg1))(arg1)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(38);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(15);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {EV_DOCKABLE_SOURCE_I}.drag_cursor */
RTOID (F923_17229)
EIF_TYPED_VALUE F923_17229 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "drag_cursor";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F923_17229);

	RTLI(3);
	RTLR(0,tr1);
	RTLR(1,tr2);
	RTLR(2,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21040);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(922, Current, 21040);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800031F, 0,0); /* Result */
	
	tr1 = RTLN(85);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(85, 26, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(85, 47, "sizeall_cursor", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr2);
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
#undef up1
#undef Result
}

/* {EV_DOCKABLE_SOURCE_I}.widget_source_being_docked */
EIF_TYPED_VALUE F923_17230 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "widget_source_being_docked";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,loc2);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,loc1);
	RTLR(4,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 922, Current, 2, 0, 21041);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21041);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 64, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = RTCCL(tr1);
	if (EIF_TEST(loc2)) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0xF800033D, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(922, 113, "interface", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = RTCCL(tr1);
		loc1 = RTRV(eif_non_attached_type(829), loc1);
		RTHOOK(3);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTHOOK(4);
			RTDBGAL(Current, 0, 0xF800048C, 0,0); /* Result */
			
			Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 64, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			Result = RTRV(eif_non_attached_type(1164), Result);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
}

/* {EV_DOCKABLE_SOURCE_I}.item_source_being_docked */
EIF_TYPED_VALUE F923_17231 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "item_source_being_docked";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Result);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21042);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(922, Current, 21042);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80003D7, 0,0); /* Result */
	
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 64, Dtype(Current)))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	Result = RTRV(eif_non_attached_type(983), Result);
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
}

/* {EV_DOCKABLE_SOURCE_I}.position_in_parent */
EIF_TYPED_VALUE F923_17233 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "position_in_parent";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(9);
	RTLR(0,arg1);
	RTLR(1,loc3);
	RTLR(2,tr1);
	RTLR(3,loc1);
	RTLR(4,loc2);
	RTLR(5,ur1);
	RTLR(6,loc4);
	RTLR(7,loc5);
	RTLR(8,Current);
	RTLU (SK_INT32, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 922, Current, 5, 1, 21043);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21043);
	if (arg1) {
		RTCC(arg1, 922, l_feature_name, 1, 922);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 3, 0xF800033D, 0, 0); /* loc3 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(922, 113, "interface", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = RTCCL(tr1);
	loc3 = RTRV(eif_non_attached_type(829), loc3);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc3 != NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 1, 0xF800033F, 0, 0); /* loc1 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 153, "parent", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc1 = RTCCL(tr1);
		loc1 = RTRV(eif_non_attached_type(831), loc1);
		RTHOOK(4);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTHOOK(5);
			RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
			
			Result = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
		}
		RTHOOK(6);
		RTDBGAL(Current, 2, 0xF8000350, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 153, "parent", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTCCL(tr1);
		loc2 = RTRV(eif_non_attached_type(848), loc2);
		RTHOOK(7);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTHOOK(8);
			RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
			
			ur1 = RTCCL(loc3);
			ui4_1 = ((EIF_INTEGER_32) 1L);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(848, 264, "index_of", loc2))(loc2, ur1x, ui4_1x)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
		}
	} else {
		RTHOOK(9);
		RTDBGAL(Current, 4, 0xF8000368, 0, 0); /* loc4 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(922, 113, "interface", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc4 = RTCCL(tr1);
		loc4 = RTRV(eif_non_attached_type(872), loc4);
		if (RTAL & CK_CHECK) {
			RTHOOK(10);
			RTCT("source_was_widget_or_tool_bar_button", EX_CHECK);
			if ((EIF_BOOLEAN)(loc4 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(11);
		RTDBGAL(Current, 5, 0xF8000371, 0, 0); /* loc5 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(872, 149, "parent", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc5 = RTCCL(tr1);
		loc5 = RTRV(eif_non_attached_type(881), loc5);
		if (RTAL & CK_CHECK) {
			RTHOOK(12);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc5 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(13);
		RTDBGAL(Current, 0, 0x10000000, 1,0); /* Result */
		
		ur1 = RTCCL(loc4);
		ui4_1 = ((EIF_INTEGER_32) 1L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 249, "index_of", loc5))(loc5, ur1x, ui4_1x)).it_i4);
		Result = (EIF_INTEGER_32) ti4_1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {EV_DOCKABLE_SOURCE_I}.initialize_transport */
void F923_17234 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "initialize_transport";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_16 ti2_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(8);
	RTLR(0,arg3);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,loc1);
	RTLR(5,loc2);
	RTLR(6,loc3);
	RTLR(7,tr2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 922, Current, 3, 3, 21044);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21044);
	if (arg3) {
		RTCC(arg3, 922, l_feature_name, 3, 810);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 57, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		RTHOOK(2);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 57, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		ur1 = NULL;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(538, 180, "call", tr1))(tr1, ur1x);
	}
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF800033D, 0, 0); /* loc1 */
	
	loc1 = RTCCL(arg3);
	loc1 = RTRV(eif_non_attached_type(829), loc1);
	RTHOOK(4);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(5);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 99, "pointer_motion_actions", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(5,1);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(532, 149, "block", tr1))(tr1);
	} else {
		RTHOOK(6);
		RTDBGAL(Current, 2, 0xF8000368, 0, 0); /* loc2 */
		
		loc2 = RTCCL(arg3);
		loc2 = RTRV(eif_non_attached_type(872), loc2);
		RTHOOK(7);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTHOOK(8);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(872, 99, "pointer_motion_actions", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(8,1);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(532, 149, "block", tr1))(tr1);
		} else {
			if (RTAL & CK_CHECK) {
				RTHOOK(9);
				RTCT("type_not_supported", EX_CHECK);
					RTCF;
			}
		}
	}
	RTHOOK(10);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(810, 46, "real_source", arg3))(arg3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = RTCCL(tr1);
	if (EIF_TEST(loc3)) {
		RTHOOK(11);
		RTDBGAA(Current, dtype, 922, 64, 0xF800039A, 0); /* source_being_docked */
		
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(810, 60, "implementation", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr1 = RTCCL(tr2);
		*(EIF_REFERENCE *)(Current + RTWA(922, 64, dtype)) = RTRV(eif_non_attached_type(RTWCT(922, 64, Current)), tr1);
		RTAR(Current, tr1);
	} else {
		RTHOOK(12);
		RTDBGAA(Current, dtype, 922, 64, 0xF800039A, 0); /* source_being_docked */
		
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(810, 60, "implementation", arg3))(arg3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tr1 = RTCCL(tr2);
		*(EIF_REFERENCE *)(Current + RTWA(922, 64, dtype)) = RTRV(eif_non_attached_type(RTWCT(922, 64, Current)), tr1);
		RTAR(Current, tr1);
	}
	RTHOOK(13);
	RTDBGAA(Current, dtype, 922, 65, 0xF800039A, 0); /* originating_source */
	
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(810, 60, "implementation", arg3))(arg3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr1 = RTCCL(tr2);
	*(EIF_REFERENCE *)(Current + RTWA(922, 65, dtype)) = RTRV(eif_non_attached_type(RTWCT(922, 65, Current)), tr1);
	RTAR(Current, tr1);
	RTHOOK(14);
	RTDBGAA(Current, dtype, 922, 77, 0x14000000, 1); /* pointer_x */
	
	ti2_1 = (EIF_INTEGER_16) arg1;
	*(EIF_INTEGER_16 *)(Current + RTWA(922, 77, dtype)) = (EIF_INTEGER_16) ti2_1;
	RTHOOK(15);
	RTDBGAA(Current, dtype, 922, 78, 0x14000000, 1); /* pointer_y */
	
	ti2_1 = (EIF_INTEGER_16) arg2;
	*(EIF_INTEGER_16 *)(Current + RTWA(922, 78, dtype)) = (EIF_INTEGER_16) ti2_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(16);
		RTCT("source_being_docked_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 64, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef ur1
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_DOCKABLE_SOURCE_I}.move_dialog_to_pointer */
void F923_17235 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "move_dialog_to_pointer";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_16 ti2_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	
	RTEAA(l_feature_name, 922, Current, 3, 1, 21045);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21045);
	if (arg1) {
		RTCC(arg1, 922, l_feature_name, 1, 839);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("dialog_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 68, "height", arg1))(arg1)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 202, "client_height", arg1))(arg1)).it_i4);
	ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 67, "width", arg1))(arg1)).it_i4);
	ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(839, 201, "client_width", arg1))(arg1)).it_i4);
	loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - ti4_2) - ((EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_3 - ti4_4) / ((EIF_INTEGER_32) 2L))));
	RTHOOK(3);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 76, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(823, 109, "pointer_position", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(3,2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(564, 38, "x", tr2))(tr2)).it_i4);
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 76, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(823, 109, "pointer_position", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(4,2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(564, 40, "y", tr2))(tr2)).it_i4);
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(5);
	ti2_1 = *(EIF_INTEGER_16 *)(Current + RTWA(922, 66, dtype));
	ti4_1 = (EIF_INTEGER_32) ti2_1;
	ui4_1 = (EIF_INTEGER_32) (loc1 - ti4_1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(839, 235, "set_x_position", arg1))(arg1, ui4_1x);
	RTHOOK(6);
	ti2_1 = *(EIF_INTEGER_16 *)(Current + RTWA(922, 67, dtype));
	ti4_1 = (EIF_INTEGER_32) ti2_1;
	ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc2 - ti4_1) - loc3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(839, 236, "set_y_position", arg1))(arg1, ui4_1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef up2
#undef ui4_1
#undef arg1
}

/* {EV_DOCKABLE_SOURCE_I}.execute_dragging */
void F923_17236 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x)
{
	GTCX
	char *l_feature_name = "execute_dragging";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc8 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc9 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc10 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc11 = (EIF_REFERENCE) 0;
	EIF_BOOLEAN loc12 = (EIF_BOOLEAN) 0;
	EIF_INTEGER_32 loc13 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc14 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc15 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc16 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc17 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc18 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc19 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc20 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_r8
#define arg4 arg4x.it_r8
#define arg5 arg5x.it_r8
#define arg6 arg6x.it_i4
#define arg7 arg7x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_i4 = * (EIF_INTEGER_32 *) arg7x.it_r;
	if ((arg6x.type & SK_HEAD) == SK_REF) arg6x.it_i4 = * (EIF_INTEGER_32 *) arg6x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_r8 = * (EIF_REAL_64 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_r8 = * (EIF_REAL_64 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_r8 = * (EIF_REAL_64 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(18);
	RTLR(0,loc2);
	RTLR(1,Current);
	RTLR(2,loc15);
	RTLR(3,tr1);
	RTLR(4,loc3);
	RTLR(5,loc16);
	RTLR(6,tr2);
	RTLR(7,ur1);
	RTLR(8,loc4);
	RTLR(9,loc6);
	RTLR(10,loc14);
	RTLR(11,loc5);
	RTLR(12,loc17);
	RTLR(13,loc18);
	RTLR(14,loc19);
	RTLR(15,loc11);
	RTLR(16,loc20);
	RTLR(17,loc10);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_REAL64,&arg3);
	RTLU(SK_REAL64,&arg4);
	RTLU(SK_REAL64,&arg5);
	RTLU(SK_INT32,&arg6);
	RTLU(SK_INT32,&arg7);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_INT32, &loc8);
	RTLU(SK_INT32, &loc9);
	RTLU(SK_REF, &loc10);
	RTLU(SK_REF, &loc11);
	RTLU(SK_BOOL, &loc12);
	RTLU(SK_INT32, &loc13);
	RTLU(SK_REF, &loc14);
	RTLU(SK_REF, &loc15);
	RTLU(SK_REF, &loc16);
	RTLU(SK_REF, &loc17);
	RTLU(SK_REF, &loc18);
	RTLU(SK_REF, &loc19);
	RTLU(SK_REF, &loc20);
	
	RTEAA(l_feature_name, 922, Current, 20, 7, 21046);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21046);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF800032E, 0, 0); /* loc2 */
	
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 88, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 102, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc15 = RTCCL(tr1);
	if (EIF_TEST(loc15)) {
		RTHOOK(3);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = !RTCEQ(loc2, tr1);
		}
		if (tb1) {
			RTHOOK(4);
			RTDBGAL(Current, 3, 0xF800033E, 0, 0); /* loc3 */
			
			loc3 = RTCCL(loc2);
			loc3 = RTRV(eif_non_attached_type(830), loc3);
			RTHOOK(5);
			if ((EIF_BOOLEAN)(loc3 != NULL)) {
				RTHOOK(6);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 55, "veto_dock_function", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				if ((EIF_BOOLEAN)(tr1 != NULL)) {
					RTHOOK(7);
					RTDBGAL(Current, 12, 0x04000000, 1, 0); /* loc12 */
					
					loc12 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
				}
				RTHOOK(8);
				RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
				
				loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
				for (;;) {
					RTHOOK(9);
					tb1 = '\01';
					tb2 = '\01';
					if (!(EIF_BOOLEAN)(loc2 == NULL)) {
						tb3 = '\0';
						if ((EIF_BOOLEAN)(loc2 != NULL)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 55, "veto_dock_function", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							tb3 = (EIF_BOOLEAN)(tr1 == NULL);
						}
						tb2 = tb3;
					}
					if (!tb2) {
						tb2 = '\0';
						tb3 = '\0';
						if ((EIF_BOOLEAN)(loc2 != NULL)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 55, "veto_dock_function", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							tb3 = (EIF_BOOLEAN)(tr1 != NULL);
						}
						if (tb3) {
							tb2 = (EIF_BOOLEAN) !loc12;
						}
						tb1 = tb2;
					}
					if (tb1) break;
					RTHOOK(10);
					RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
					
					loc1++;
					RTHOOK(11);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 55, "veto_dock_function", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc16 = RTCCL(tr1);
					if (EIF_TEST(loc16)) {
						RTHOOK(12);
						{
							static EIF_TYPE_INDEX typarr0[] = {922,0xFFF9,1,734,829,0xFFFF};
							EIF_TYPE_INDEX typres0;
							static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
							
							typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
							tr1 = RTLNTS(typres0, 2, 0);
						}
						tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc15))(loc15)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						((EIF_TYPED_VALUE *)tr1+1)->it_r = tr2;
						RTAR(tr1,tr2);
						ur1 = RTCCL(tr1);
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1226, 67, "call", loc16))(loc16, ur1x);
						RTHOOK(13);
						RTDBGAL(Current, 12, 0x04000000, 1, 0); /* loc12 */
						
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1226, 66, "last_result", loc16))(loc16)).it_b);
						loc12 = (EIF_BOOLEAN) tb2;
						RTHOOK(14);
						if (loc12) {
							RTHOOK(15);
							RTDBGAL(Current, 2, 0xF800032E, 0, 0); /* loc2 */
							
							ur1 = RTCCL(loc3);
							loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(922, 87, dtype))(Current, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						}
					}
				}
				RTHOOK(16);
				if ((EIF_BOOLEAN)(loc2 != NULL)) {
					RTHOOK(17);
					RTDBGAL(Current, 3, 0xF800033E, 0, 0); /* loc3 */
					
					loc3 = RTCCL(loc2);
					loc3 = RTRV(eif_non_attached_type(830), loc3);
					if (RTAL & CK_CHECK) {
						RTHOOK(18);
						RTCT("container_not_void", EX_CHECK);
						if ((EIF_BOOLEAN)(loc3 != NULL)) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(19);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(19,1);
					tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
					if (!RTCEQ(tr2, loc3)) {
						RTHOOK(20);
						(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 71, dtype))(Current);
					}
					RTHOOK(21);
					RTDBGAL(Current, 4, 0xF80004A1, 0, 0); /* loc4 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(830, 222, "implementation", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc4 = RTCCL(tr1);
					loc4 = RTRV(eif_non_attached_type(1185), loc4);
					RTHOOK(22);
					RTDBGAL(Current, 6, 0xF80003B4, 0, 0); /* loc6 */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(830, 222, "implementation", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					loc6 = RTCCL(tr1);
					loc6 = RTRV(eif_non_attached_type(948), loc6);
				}
			}
			RTHOOK(23);
			if ((EIF_BOOLEAN)(loc4 != NULL)) {
				RTHOOK(24);
				RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
				
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1185, 273, "insertion_position", loc4))(loc4)).it_i4);
				loc7 = (EIF_INTEGER_32) ti4_1;
				RTHOOK(25);
				if ((EIF_BOOLEAN)(loc7 != ((EIF_INTEGER_32) -1L))) {
					RTHOOK(26);
					tb2 = '\01';
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1185, 274, "count", loc4))(loc4)).it_i4);
					if (!(EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 0L))) {
						tb3 = '\01';
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1185, 274, "count", loc4))(loc4)).it_i4);
						ui4_1 = ti4_1;
						ti4_1 = eif_min_int32 (loc7,ui4_1);
						ui4_1 = ti4_1;
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1185, 345, "i_th", loc4))(loc4, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						if (!(RTCEQ(tr1, tr2))) {
							ui4_1 = ((EIF_INTEGER_32) 1L);
							ti4_1 = eif_max_int32 ((EIF_INTEGER_32) (loc7 - ((EIF_INTEGER_32) 1L)),ui4_1);
							ui4_1 = ti4_1;
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1185, 345, "i_th", loc4))(loc4, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							tb3 = RTCEQ(tr1, tr2);
						}
						tb2 = ((EIF_BOOLEAN) !tb3);
					}
					if (tb2) {
						RTHOOK(27);
						RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
						
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 730, "interface", loc15))(loc15)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						ur1 = RTCCL(tr1);
						ui4_1 = ((EIF_INTEGER_32) 1L);
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1185, 240, "index_of", loc4))(loc4, ur1x, ui4_1x)).it_i4);
						loc8 = (EIF_INTEGER_32) ti4_1;
						RTHOOK(28);
						tb2 = '\0';
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 651, "parent", loc15))(loc15)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1185, 1825, "interface", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						if (RTCEQ(tr1, tr2)) {
							tb2 = (EIF_BOOLEAN) ((EIF_BOOLEAN)(loc8 == loc7) || (EIF_BOOLEAN)(loc8 == (EIF_INTEGER_32) (loc7 - ((EIF_INTEGER_32) 1L))));
						}
						if (tb2) {
							RTHOOK(29);
							RTDBGAL(Current, 13, 0x10000000, 1, 0); /* loc13 */
							
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 730, "interface", loc15))(loc15)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							ur1 = RTCCL(tr1);
							ui4_1 = ((EIF_INTEGER_32) 1L);
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1185, 240, "index_of", loc4))(loc4, ur1x, ui4_1x)).it_i4);
							loc13 = (EIF_INTEGER_32) ti4_1;
							RTHOOK(30);
							if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc13 == loc7) || (EIF_BOOLEAN)((EIF_INTEGER_32) (loc13 + ((EIF_INTEGER_32) 1L)) == loc7))) {
								RTHOOK(31);
								(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 71, dtype))(Current);
							}
						} else {
							RTHOOK(32);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(32,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							if ((EIF_BOOLEAN)(tr2 != NULL)) {
								RTHOOK(33);
								RTDBGAL(Current, 9, 0x10000000, 1, 0); /* loc9 */
								
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 70, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								ur1 = RTCCL(tr1);
								loc9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(922, 105, dtype))(Current, ur1x)).it_i4);
								RTHOOK(34);
								if ((EIF_BOOLEAN) (loc9 < loc7)) {
									RTHOOK(35);
									RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
									
									loc7--;
								}
							}
							RTHOOK(36);
							RTDBGAL(Current, 14, 0xF8000493, 0, 0); /* loc14 */
							
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1185, 1817, "top_level_window_imp", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							loc14 = (EIF_REFERENCE) RTCCL(tr1);
							if (RTAL & CK_CHECK) {
								RTHOOK(37);
								RTCT(NULL, EX_CHECK);
								if ((EIF_BOOLEAN)(loc14 != NULL)) {
									RTCK;
								} else {
									RTCF;
								}
							}
							RTHOOK(38);
							(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1171, 1765, "lock_update", loc14))(loc14);
							RTHOOK(39);
							(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 71, dtype))(Current);
							RTHOOK(40);
							RTDBGAL(Current, 5, 0xF8000502, 0, 0); /* loc5 */
							
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1185, 237, "cursor", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							loc5 = (EIF_REFERENCE) RTCCL(tr1);
							RTHOOK(41);
							ui4_1 = loc7;
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1185, 247, "go_i_th", loc4))(loc4, ui4_1x);
							RTHOOK(42);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							ur1 = RTCCL(tr1);
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1185, 253, "put_left", loc4))(loc4, ur1x);
							RTHOOK(43);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							ur1 = RTCCL(tr1);
							ub1 = (EIF_BOOLEAN) 0;
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1185, 1811, "set_child_expandable", loc4))(loc4, ur1x, ub1x);
							RTHOOK(44);
							ur1 = RTCCL(loc5);
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1185, 248, "go_to", loc4))(loc4, ur1x);
							RTHOOK(45);
							(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1171, 1766, "unlock_update", loc14))(loc14);
						}
					}
				}
			}
			RTHOOK(46);
			if ((EIF_BOOLEAN)(loc6 != NULL)) {
				RTHOOK(47);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(948, 244, "item", loc6))(loc6)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				if ((EIF_BOOLEAN)(tr1 == NULL)) {
					RTHOOK(48);
					(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 71, dtype))(Current);
					RTHOOK(49);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					ur1 = RTCCL(tr1);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(948, 239, "extend", loc6))(loc6, ur1x);
				}
			}
		} else {
			RTHOOK(50);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			if (!RTCEQ(loc2, tr1)) {
				RTHOOK(51);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 71, dtype))(Current);
			}
		}
	} else {
		RTHOOK(52);
		tb2 = '\0';
		loc17 = RTCCL(loc2);
		if (EIF_TEST(loc17)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc18 = RTCCL(tr1);
			tb2 = EIF_TEST(loc18);
		}
		if (tb2) {
			RTHOOK(53);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 55, "veto_dock_function", loc17))(loc17)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc19 = RTCCL(tr1);
			if (EIF_TEST(loc19)) {
				RTHOOK(54);
				RTDBGAL(Current, 11, 0xF8000368, 0, 0); /* loc11 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 136, "interface", loc18))(loc18)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc11 = RTCCL(tr1);
				loc11 = RTRV(eif_non_attached_type(872), loc11);
				if (RTAL & CK_CHECK) {
					RTHOOK(55);
					RTCT("we_only_support_tool_bar_buttons", EX_CHECK);
					if ((EIF_BOOLEAN)(loc11 != NULL)) {
						RTCK;
					} else {
						RTCF;
					}
				}
				RTHOOK(56);
				if ((EIF_BOOLEAN)(loc11 != NULL)) {
					RTHOOK(57);
					{
						static EIF_TYPE_INDEX typarr0[] = {922,0xFFF9,1,734,872,0xFFFF};
						EIF_TYPE_INDEX typres0;
						static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
						
						typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 734, typarr0)));
						tr1 = RTLNTS(typres0, 2, 0);
					}
					((EIF_TYPED_VALUE *)tr1+1)->it_r = loc11;
					RTAR(tr1,loc11);
					ur1 = RTCCL(tr1);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1226, 67, "call", loc19))(loc19, ur1x);
				}
			}
			RTHOOK(58);
			tb2 = '\01';
			tb3 = '\0';
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 55, "veto_dock_function", loc17))(loc17)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc20 = RTCCL(tr1);
			if (EIF_TEST(loc20)) {
				tb4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1226, 66, "last_result", loc20))(loc20)).it_b);
				tb3 = (EIF_BOOLEAN) !tb4;
			}
			if (!(tb3)) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 55, "veto_dock_function", loc17))(loc17)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				tb2 = (EIF_BOOLEAN)(tr1 == NULL);
			}
			if (tb2) {
				RTHOOK(59);
				RTDBGAL(Current, 10, 0xF80004A6, 0, 0); /* loc10 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(814, 60, "implementation", loc17))(loc17)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc10 = RTCCL(tr1);
				loc10 = RTRV(eif_non_attached_type(1190), loc10);
			}
			RTHOOK(60);
			if ((EIF_BOOLEAN)(loc10 != NULL)) {
				RTHOOK(61);
				RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
				
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1190, 1863, "insertion_position", loc10))(loc10)).it_i4);
				loc7 = (EIF_INTEGER_32) ti4_1;
				RTHOOK(62);
				if ((EIF_BOOLEAN)(loc7 != ((EIF_INTEGER_32) -1L))) {
					RTHOOK(63);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1190, 319, "count", loc10))(loc10)).it_i4);
					if ((EIF_BOOLEAN) (loc7 < ti4_1)) {
						RTHOOK(64);
						RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
						
						loc7++;
					}
					RTHOOK(65);
					tb2 = '\01';
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1190, 319, "count", loc10))(loc10)).it_i4);
					ui4_1 = ti4_1;
					ti4_1 = eif_min_int32 (loc7,ui4_1);
					ui4_1 = ti4_1;
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1190, 318, "i_th", loc10))(loc10, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					if (!(RTCEQ(tr1, tr2))) {
						ui4_1 = ((EIF_INTEGER_32) 1L);
						ti4_1 = eif_max_int32 ((EIF_INTEGER_32) (loc7 - ((EIF_INTEGER_32) 1L)),ui4_1);
						ui4_1 = ti4_1;
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1190, 318, "i_th", loc10))(loc10, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						tb2 = RTCEQ(tr1, tr2);
					}
					if ((EIF_BOOLEAN) !tb2) {
						RTHOOK(66);
						RTDBGAL(Current, 11, 0xF8000368, 0, 0); /* loc11 */
						
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 136, "interface", loc18))(loc18)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						loc11 = RTCCL(tr1);
						loc11 = RTRV(eif_non_attached_type(872), loc11);
						if (RTAL & CK_CHECK) {
							RTHOOK(67);
							RTCT("tool_bar_button_not_void", EX_CHECK);
							if ((EIF_BOOLEAN)(loc11 != NULL)) {
								RTCK;
							} else {
								RTCF;
							}
						}
						RTHOOK(68);
						RTDBGAL(Current, 8, 0x10000000, 1, 0); /* loc8 */
						
						ur1 = RTCCL(loc11);
						ui4_1 = ((EIF_INTEGER_32) 1L);
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1190, 225, "index_of", loc10))(loc10, ur1x, ui4_1x)).it_i4);
						loc8 = (EIF_INTEGER_32) ti4_1;
						RTHOOK(69);
						tb2 = '\0';
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 133, "parent", loc18))(loc18)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1190, 1871, "interface", loc10))(loc10)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						if (RTCEQ(tr1, tr2)) {
							tb2 = (EIF_BOOLEAN) ((EIF_BOOLEAN)(loc8 == loc7) || (EIF_BOOLEAN)(loc8 == (EIF_INTEGER_32) (loc7 - ((EIF_INTEGER_32) 1L))));
						}
						if (tb2) {
							RTHOOK(70);
							(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 74, dtype))(Current);
						} else {
							RTHOOK(71);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(71,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							if ((EIF_BOOLEAN)(tr2 != NULL)) {
								RTHOOK(72);
								if ((EIF_BOOLEAN) (loc9 < loc7)) {
									RTHOOK(73);
									RTDBGAL(Current, 7, 0x10000000, 1, 0); /* loc7 */
									
									loc7--;
								}
							}
							RTHOOK(74);
							(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 74, dtype))(Current);
							RTHOOK(75);
							ui4_1 = loc7;
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1190, 233, "go_i_th", loc10))(loc10, ui4_1x);
							RTHOOK(76);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							ur1 = RTCCL(tr1);
							(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1190, 241, "put_left", loc10))(loc10, ur1x);
						}
					}
				}
			}
		} else {
			RTHOOK(77);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(922, 74, dtype))(Current);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(78);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(29);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ub1
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {EV_DOCKABLE_SOURCE_I}.unparent_source_being_docked */
void F923_17237 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "unparent_source_being_docked";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(8);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLR(3,loc2);
	RTLR(4,tr2);
	RTLR(5,ur1);
	RTLR(6,loc3);
	RTLR(7,loc4);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 922, Current, 4, 0, 21047);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21047);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("widget_or_item", EX_PRE);
		tb1 = '\01';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 102, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (!(EIF_BOOLEAN)(tr1 != NULL)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 102, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	if (EIF_TEST(loc1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(829, 153, "parent", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTCCL(tr2);
		tb1 = EIF_TEST(loc2);
	}
	if (tb1) {
		RTHOOK(3);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(830, 206, "prune", loc2))(loc2, ur1x);
		if (RTAL & CK_CHECK) {
			RTHOOK(4);
			RTCT("not_parented", EX_CHECK);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 651, "parent", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			if ((EIF_BOOLEAN)(tr1 == NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
	} else {
		RTHOOK(5);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = RTCCL(tr1);
		if (EIF_TEST(loc3)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 35, "attached_interface", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(867, 116, "parent", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc4 = RTCCL(tr2);
			tb1 = EIF_TEST(loc4);
		}
		if (tb1) {
			RTHOOK(6);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 35, "attached_interface", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1284, 124, "prune", loc4))(loc4, ur1x);
			if (RTAL & CK_CHECK) {
				RTHOOK(7);
				RTCT("not_parented", EX_CHECK);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 133, "parent", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				if ((EIF_BOOLEAN)(tr1 == NULL)) {
					RTCK;
				} else {
					RTCF;
				}
			}
		} else {
			if (RTAL & CK_CHECK) {
				RTHOOK(8);
				RTCT(NULL, EX_CHECK);
					RTCF;
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef ur1
}

/* {EV_DOCKABLE_SOURCE_I}.replace_insert_label */
void F923_17238 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "replace_insert_label";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
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
	EIF_REFERENCE tr4 = NULL;
	EIF_REFERENCE tr5 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(15);
	RTLR(0,loc5);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,tr3);
	RTLR(5,loc6);
	RTLR(6,tr4);
	RTLR(7,loc3);
	RTLR(8,loc4);
	RTLR(9,loc1);
	RTLR(10,ur1);
	RTLR(11,ur2);
	RTLR(12,loc2);
	RTLR(13,tr5);
	RTLR(14,loc7);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	
	RTEAA(l_feature_name, 922, Current, 7, 0, 21048);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21048);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("source_not_parented", EX_PRE);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 102, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc5 = RTCCL(tr1);
		if (EIF_TEST(loc5)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 651, "parent", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 == NULL);
		}
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("insert_label_parented", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTTE((EIF_BOOLEAN)(tr2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	if (RTAL & CK_ENSURE) {
		in_assertion = ~0;
		RTE_OT
		tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,2);
		tr3 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr2))(tr2)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		tr1 = tr3;
		tr2 = NULL;
		RTE_O
		tr2 = RTLA;
		RTE_OE
		in_assertion = 0;
	}
	RTHOOK(3);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	tr4 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr3))(tr3)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc6 = RTCCL(tr4);
	if (EIF_TEST(loc6)) {
		RTHOOK(4);
		RTDBGAL(Current, 3, 0xF80003A2, 0, 0); /* loc3 */
		
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(830, 222, "implementation", loc6))(loc6)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = RTCCL(tr3);
		loc3 = RTRV(eif_non_attached_type(930), loc3);
	}
	RTHOOK(5);
	RTDBGAL(Current, 4, 0xF800048C, 0, 0); /* loc4 */
	
	loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 102, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_CHECK) {
		RTHOOK(6);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc4 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	if (RTAL & CK_CHECK) {
		RTHOOK(7);
		RTCT("target_not_void", EX_CHECK);
		if ((EIF_BOOLEAN)(loc3 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(8);
	RTDBGAL(Current, 1, 0xF8000350, 0, 0); /* loc1 */
	
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(8,1);
	tr4 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr3))(tr3)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc1 = RTCCL(tr4);
	loc1 = RTRV(eif_non_attached_type(848), loc1);
	RTHOOK(9);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(10);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr3);
		tr4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur2 = RTCCL(tr4);
		ui4_1 = ((EIF_INTEGER_32) 1L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(848, 264, "index_of", loc1))(loc1, ur2x, ui4_1x)).it_i4);
		ui4_1 = ti4_1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(848, 279, "put_i_th", loc1))(loc1, ur1x, ui4_1x);
	}
	RTHOOK(11);
	RTDBGAL(Current, 2, 0xF800033F, 0, 0); /* loc2 */
	
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(11,1);
	tr4 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr3))(tr3)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc2 = RTCCL(tr4);
	loc2 = RTRV(eif_non_attached_type(831), loc2);
	RTHOOK(12);
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		RTHOOK(13);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr3);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(831, 201, "put", loc2))(loc2, ur1x);
	}
	RTHOOK(14);
	tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(930, 56, "docked_actions_internal", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr3 != NULL)) {
		RTHOOK(15);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(930, 55, "docked_actions", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(15,1);
		{
			static EIF_TYPE_INDEX typarr0[] = {922,0xFFF9,1,734,829,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
			tr4 = RTLNTS(typres0, 2, 0);
		}
		tr5 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 35, "attached_interface", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		((EIF_TYPED_VALUE *)tr4+1)->it_r = tr5;
		RTAR(tr4,tr5);
		ur1 = RTCCL(tr4);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(529, 180, "call", tr3))(tr3, ur1x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(16);
		RTCT("source_parented", EX_POST);
		tb1 = '\0';
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 102, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc7 = RTCCL(tr3);
		if (EIF_TEST(loc7)) {
			tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 651, "parent", loc7))(loc7)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTCO(tr2);
			tb1 = RTCEQ(tr3, tr1);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(17);
		RTCT("insert_label_not_parented", EX_POST);
		tr3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 69, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(17,1);
		tr4 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(831, 153, "parent", tr3))(tr3)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		if ((EIF_BOOLEAN)(tr4 == NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(18);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ui4_1
}

/* {EV_DOCKABLE_SOURCE_I}.replace_insert_sep */
void F923_17239 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "replace_insert_sep";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc6 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc8 = (EIF_REFERENCE) 0;
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
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(11);
	RTLR(0,loc6);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,loc1);
	RTLR(5,loc7);
	RTLR(6,loc2);
	RTLR(7,loc3);
	RTLR(8,ur1);
	RTLR(9,ur2);
	RTLR(10,loc8);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	RTLU(SK_REF, &loc8);
	
	RTEAA(l_feature_name, 922, Current, 8, 0, 21049);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(922, Current, 21049);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("source_not_parented", EX_PRE);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc6 = RTCCL(tr1);
		if (EIF_TEST(loc6)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 133, "parent", loc6))(loc6)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 == NULL);
		}
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("sep_parented", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(2,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(871, 118, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTTE((EIF_BOOLEAN)(tr2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF8000371, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(871, 118, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc1 = RTCCL(tr2);
	loc1 = RTRV(eif_non_attached_type(881), loc1);
	if (RTAL & CK_CHECK) {
		RTHOOK(4);
		RTCT("parent_was_tool_bar", EX_CHECK);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(5);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc7 = RTCCL(tr1);
	if (EIF_TEST(loc7)) {
		RTHOOK(6);
		RTDBGAL(Current, 2, 0xF8000366, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 136, "interface", loc7))(loc7)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTCCL(tr1);
		loc2 = RTRV(eif_non_attached_type(870), loc2);
	}
	if (RTAL & CK_CHECK) {
		RTHOOK(7);
		RTCT("tool_bar_item_not_void", EX_CHECK);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(8);
	RTDBGAL(Current, 3, 0xF800032A, 0, 0); /* loc3 */
	
	loc3 = RTCCL(loc2);
	loc3 = RTRV(eif_non_attached_type(810), loc3);
	if (RTAL & CK_CHECK) {
		RTHOOK(9);
		RTCT("source_not_void", EX_CHECK);
		if ((EIF_BOOLEAN)(loc3 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(10);
	RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 249, "index_of", loc1))(loc1, ur1x, ui4_1x)).it_i4);
	loc4 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(11);
	ur1 = RTCCL(loc2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur2 = RTCCL(tr1);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 249, "index_of", loc1))(loc1, ur2x, ui4_1x)).it_i4);
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(881, 268, "put_i_th", loc1))(loc1, ur1x, ui4_1x);
	RTHOOK(12);
	if ((EIF_BOOLEAN)(loc5 == (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 2L)))) {
		RTHOOK(13);
		ur1 = RTCCL(loc1);
		ui4_1 = loc5;
		ui4_2 = loc4;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(922, 112, dtype))(Current, ur1x, ui4_1x, ui4_2x);
	}
	RTHOOK(14);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(881, 302, "implementation", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(14,1);
	tr2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(964, 213, "docked_actions_internal", tr1))(tr1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr2 != NULL)) {
		RTHOOK(15);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(881, 193, "docked_actions", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(15,1);
		{
			static EIF_TYPE_INDEX typarr0[] = {922,0xFFF9,1,734,810,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
			tr2 = RTLNTS(typres0, 2, 0);
		}
		((EIF_TYPED_VALUE *)tr2+1)->it_r = loc3;
		RTAR(tr2,loc3);
		ur1 = RTCCL(tr2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(529, 180, "call", tr1))(tr1, ur1x);
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(16);
		RTCT("source_parented", EX_POST);
		tb1 = '\0';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc8 = RTCCL(tr1);
		if (EIF_TEST(loc8)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 133, "parent", loc8))(loc8)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(17);
		RTCT("insert_sep_not_parented", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(17,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(871, 118, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		if ((EIF_BOOLEAN)(tr2 == NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(18);
		RTCT("parent_swapped", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 72, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(18,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(871, 118, "parent", tr1))(tr1)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(983, 133, "parent", loc8))(loc8)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr2, tr1)) {
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
	RTLO(10);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ui4_1
#undef ui4_2
}

/* {EV_DOCKABLE_SOURCE_I}.interface */
static EIF_TYPED_VALUE F923_17241_body (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "interface";
	RTEX;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 922, Current, 0, 0, 21050);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(922, Current, 21050);
	RTIV(Current, RTAL);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(1);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
}

EIF_TYPED_VALUE F923_17241 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(922,113, Dtype(Current)));
	if (!r.it_r) {
		if (RTAT(RTWCT(922, 113, Current))) {
			GTCX
			RTLD;
			RTLI(1);
			RTLR(0,Current);
			r.it_r = (F923_17241_body (Current)).it_r;
			*(EIF_REFERENCE *)(Current + RTWA(922,113, Dtype(Current))) = r.it_r;
			RTAR(Current, r.it_r);
			RTLE;
		}
	}
	return r;
}


/* {EV_DOCKABLE_SOURCE_I}._invariant */
void F923_23836 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 922, Current, 0, 23835);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("widget_or_item_source", Current);
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 102, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if ((EIF_BOOLEAN)(tr1 != NULL)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		tb1 = (EIF_BOOLEAN)(tr1 != NULL);
	}
	if ((EIF_BOOLEAN) !tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTIT("dock_executing", Current);
	tb1 = '\01';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 80, dtype))(Current)).it_b);
	if (tb2) {
		tb2 = '\01';
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 102, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (!(EIF_BOOLEAN)(tr1 != NULL)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(922, 103, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb2 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		tb1 = tb2;
	}
	if (tb1) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
#undef up1
}

void EIF_Minit923 (void)
{
	GTCX
	RTOTS (17229,F923_17229)
}


#ifdef __cplusplus
}
#endif
