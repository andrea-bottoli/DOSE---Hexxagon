/*
 * Code for class EV_SHARED_TRANSPORT_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F307_6089(EIF_REFERENCE);
extern EIF_TYPED_VALUE F307_6090(EIF_REFERENCE);
extern EIF_TYPED_VALUE F307_6091(EIF_REFERENCE);
extern EIF_TYPED_VALUE F307_6092(EIF_REFERENCE);
extern EIF_TYPED_VALUE F307_6093(EIF_REFERENCE);
extern EIF_TYPED_VALUE F307_6094(EIF_REFERENCE);
extern EIF_TYPED_VALUE F307_6095(EIF_REFERENCE);
extern EIF_TYPED_VALUE F307_6096(EIF_REFERENCE);
extern void F307_6097(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F307_6098(EIF_REFERENCE);
extern EIF_TYPED_VALUE F307_6100(EIF_REFERENCE);
extern void EIF_Minit307(void);

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

/* {EV_SHARED_TRANSPORT_IMP}.widget_imp_at_pointer_position */
EIF_TYPED_VALUE F307_6089 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "widget_imp_at_pointer_position";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,loc1);
	RTLR(1,tr1);
	RTLR(2,loc2);
	RTLR(3,Result);
	RTLR(4,loc3);
	RTLR(5,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 306, Current, 3, 0, 5851);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(306, Current, 5851);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF800044B, 0, 0); /* loc1 */
	
	tr1 = RTLN(1099);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1099, 158, Dtype(tr1)))(tr1, ui4_1x, ui4_2x);
	RTNHOOK(1,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1099, 165, "set_cursor_position", loc1))(loc1);
	RTHOOK(3);
	RTDBGAL(Current, 2, 0xF8000452, 0, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1099, 166, "window_at", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		RTHOOK(5);
		RTDBGAL(Current, 0, 0xF800048C, 0,0); /* Result */
		
		Result = RTCCL(loc2);
		Result = RTRV(eif_non_attached_type(1164), Result);
		RTHOOK(6);
		if ((EIF_BOOLEAN)(Result == NULL)) {
			RTHOOK(7);
			RTDBGAL(Current, 3, 0xF800046C, 0, 0); /* loc3 */
			
			loc3 = RTCCL(loc2);
			loc3 = RTRV(eif_non_attached_type(1132), loc3);
			RTHOOK(8);
			if ((EIF_BOOLEAN)(loc3 != NULL)) {
				RTHOOK(9);
				RTDBGAL(Current, 0, 0xF800048C, 0,0); /* Result */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1132, 1025, "parent", loc3))(loc3)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				Result = (EIF_REFERENCE) RTCCL(tr1);
			}
		}
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
#undef ui4_1
#undef ui4_2
}

/* {EV_SHARED_TRANSPORT_IMP}.awaiting_movement */
EIF_TYPED_VALUE F307_6090 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(306,33, Dtype(Current)));
	return r;
}


/* {EV_SHARED_TRANSPORT_IMP}.drag_and_drop_starting_movement */
EIF_TYPED_VALUE F307_6091 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 3L);
	return r;
}

/* {EV_SHARED_TRANSPORT_IMP}.original_x */
EIF_TYPED_VALUE F307_6092 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(306,35, Dtype(Current)));
	return r;
}


/* {EV_SHARED_TRANSPORT_IMP}.original_y */
EIF_TYPED_VALUE F307_6093 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(306,36, Dtype(Current)));
	return r;
}


/* {EV_SHARED_TRANSPORT_IMP}.original_x_tilt */
EIF_TYPED_VALUE F307_6094 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REAL64;
	r.it_r8 = *(EIF_REAL_64 *)(Current + RTWA(306,37, Dtype(Current)));
	return r;
}


/* {EV_SHARED_TRANSPORT_IMP}.original_y_tilt */
EIF_TYPED_VALUE F307_6095 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REAL64;
	r.it_r8 = *(EIF_REAL_64 *)(Current + RTWA(306,38, Dtype(Current)));
	return r;
}


/* {EV_SHARED_TRANSPORT_IMP}.original_pressure */
EIF_TYPED_VALUE F307_6096 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REAL64;
	r.it_r8 = *(EIF_REAL_64 *)(Current + RTWA(306,39, Dtype(Current)));
	return r;
}


/* {EV_SHARED_TRANSPORT_IMP}.internal_set_pointer_style */
void F307_6097 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "internal_set_pointer_style";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
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
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc2);
	RTLR(3,tr1);
	RTLR(4,loc1);
	RTLR(5,loc4);
	RTLR(6,loc3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 306, Current, 4, 1, 5859);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(306, Current, 5859);
	if (arg1) {
		RTCC(arg1, 306, l_feature_name, 1, 799);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 306, 43, 0xF800031F, 0); /* cursor_pixmap */
	
	RTAR(Current, arg1);
	*(EIF_REFERENCE *)(Current + RTWA(306, 43, dtype)) = (EIF_REFERENCE) RTCCL(arg1);
	RTHOOK(2);
	RTDBGAL(Current, 2, 0xF8000387, 0, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(799, 56, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = RTCCL(tr1);
	loc2 = RTRV(eif_non_attached_type(903), loc2);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT("not_void", EX_CHECK);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(4);
	RTDBGAL(Current, 1, 0xF8000403, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(903, 66, "wel_cursor", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1027, 54, "increment_reference", loc1))(loc1);
	RTHOOK(6);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(306, 41, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc4 = RTCCL(tr1);
	if (EIF_TEST(loc4)) {
		RTHOOK(7);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1027, 53, "decrement_reference", loc4))(loc4);
		RTHOOK(8);
		RTDBGAA(Current, dtype, 306, 41, 0xF8000403, 0); /* current_wel_cursor */
		
		*(EIF_REFERENCE *)(Current + RTWA(306, 41, dtype)) = (EIF_REFERENCE) NULL;
	}
	RTHOOK(9);
	RTDBGAA(Current, dtype, 306, 41, 0xF8000403, 0); /* current_wel_cursor */
	
	RTAR(Current, loc1);
	*(EIF_REFERENCE *)(Current + RTWA(306, 41, dtype)) = (EIF_REFERENCE) RTCCL(loc1);
	RTHOOK(10);
	RTDBGAL(Current, 3, 0xF800048C, 0, 0); /* loc3 */
	
	loc3 = RTCCL(Current);
	loc3 = RTRV(eif_non_attached_type(1164), loc3);
	RTHOOK(11);
	tb1 = '\0';
	if ((EIF_BOOLEAN)(loc3 != NULL)) {
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 736, "exists", loc3))(loc3)).it_b);
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(12);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1164, 769, "is_displayed", loc3))(loc3)).it_b);
		if (tb1) {
			RTHOOK(13);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1027, 188, "set", loc1))(loc1);
		}
	} else {
		RTHOOK(14);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(1027, 188, "set", loc1))(loc1);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(15);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef arg1
}

/* {EV_SHARED_TRANSPORT_IMP}.current_wel_cursor */
EIF_TYPED_VALUE F307_6098 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(306,41, Dtype(Current)));
	return r;
}


/* {EV_SHARED_TRANSPORT_IMP}.cursor_pixmap */
EIF_TYPED_VALUE F307_6100 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(306,43, Dtype(Current)));
	return r;
}


void EIF_Minit307 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
