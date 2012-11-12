/*
 * Code for class KL_TEXT_INPUT_FILE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1044_19007(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_19008(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_19009(EIF_REFERENCE);
extern void F1044_19010(EIF_REFERENCE);
extern void F1044_19011(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_19012(EIF_REFERENCE);
extern void EIF_Minit1044(void);

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

/* {KL_TEXT_INPUT_FILE}.last_character */
EIF_TYPED_VALUE F1044_19007 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_CHAR8;
	r.it_c1 = *(EIF_CHARACTER_8 *)(Current + RTWA(1043,358, Dtype(Current)));
	return r;
}


/* {KL_TEXT_INPUT_FILE}.last_string */
EIF_TYPED_VALUE F1044_19008 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1043,359, Dtype(Current)));
	return r;
}


/* {KL_TEXT_INPUT_FILE}.eol */
RTOID (F1044_19009)


EIF_TYPED_VALUE F1044_19009 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F1044_19009,23075,RTMS_EX_H("\012",1,10));
}

/* {KL_TEXT_INPUT_FILE}.read_line */
void F1044_19010 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "read_line";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_CHARACTER_8 loc3 = (EIF_CHARACTER_8) 0;
	EIF_BOOLEAN loc4 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc5 = (EIF_BOOLEAN) 0;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,loc2);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_CHAR8, &loc3);
	RTLU(SK_BOOL, &loc4);
	RTLU(SK_BOOL, &loc5);
	
	RTEAA(l_feature_name, 1043, Current, 5, 0, 23075);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1043, Current, 23075);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_read", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 58, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("not_end_of_input", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 40, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(787, 222, "clear_all", tr1))(tr1);
	RTHOOK(4);
	RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
	
	loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
	RTHOOK(5);
	RTDBGAL(Current, 2, 0xF8000313, 0, 0); /* loc2 */
	
	loc2 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	for (;;) {
		RTHOOK(6);
		if (loc1) break;
		RTHOOK(7);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1043, 59, dtype))(Current);
		RTHOOK(8);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1043, 42, dtype));
		if (tb1) {
			RTHOOK(9);
			RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
			
			loc1 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
		} else {
			RTHOOK(10);
			RTDBGAL(Current, 4, 0x04000000, 1, 0); /* loc4 */
			
			loc4 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			RTHOOK(11);
			RTDBGAL(Current, 3, 0x08000000, 1, 0); /* loc3 */
			
			loc3 = *(EIF_CHARACTER_8 *)(Current + RTWA(1043, 358, dtype));
			RTHOOK(12);
			switch (loc3) {
				case (EIF_CHARACTER_8) '\012':
					RTHOOK(13);
					RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
					
					loc1 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
					break;
				case (EIF_CHARACTER_8) '\015':
					RTHOOK(14);
					RTDBGAL(Current, 5, 0x04000000, 1, 0); /* loc5 */
					
					loc5 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
					break;
				default:
					RTHOOK(15);
					if (loc5) {
						RTHOOK(16);
						uc1 = loc3;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1043, 60, dtype))(Current, uc1x);
						RTHOOK(17);
						RTDBGAL(Current, 1, 0x04000000, 1, 0); /* loc1 */
						
						loc1 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
					} else {
						RTHOOK(18);
						uc1 = loc3;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", loc2))(loc2, uc1x);
					}
					break;
			}
		}
	}
	RTHOOK(19);
	RTDBGAA(Current, dtype, 1043, 42, 0x04000000, 1); /* end_of_file */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1043, 42, dtype)) = (EIF_BOOLEAN) loc4;
	if (RTAL & CK_ENSURE) {
		RTHOOK(20);
		RTCT("last_string_not_void", EX_POST);
		tb1 = '\01';
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 40, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb2) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			tb1 = (EIF_BOOLEAN)(tr1 != NULL);
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(21);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef uc1
}

/* {KL_TEXT_INPUT_FILE}.read_new_line */
void F1044_19011 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "read_new_line";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE uc1x = {0, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1043, Current, 0, 0, 23076);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1043, Current, 23076);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_open_read", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 58, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("not_end_of_input", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 40, dtype))(Current)).it_b);
		RTTE((EIF_BOOLEAN) !tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(787, 222, "clear_all", tr1))(tr1);
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1043, 59, dtype))(Current);
	RTHOOK(5);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1043, 42, dtype));
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(6);
		tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(1043, 358, dtype));
		switch (tc1) {
			case (EIF_CHARACTER_8) '\012':
				RTHOOK(7);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(7,1);
				uc1 = (EIF_CHARACTER_8) '\012';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", tr1))(tr1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\015':
				RTHOOK(8);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(8,1);
				uc1 = (EIF_CHARACTER_8) '\015';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", tr1))(tr1, uc1x);
				RTHOOK(9);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(1043, 59, dtype))(Current);
				RTHOOK(10);
				tb1 = *(EIF_BOOLEAN *)(Current + RTWA(1043, 42, dtype));
				if ((EIF_BOOLEAN) !tb1) {
					RTHOOK(11);
					tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(1043, 358, dtype));
					if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) '\012')) {
						RTHOOK(12);
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(12,1);
						uc1 = (EIF_CHARACTER_8) '\012';
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(787, 207, "append_character", tr1))(tr1, uc1x);
					} else {
						RTHOOK(13);
						tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(1043, 358, dtype));
						uc1 = tc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1043, 60, dtype))(Current, uc1x);
					}
				}
				break;
			default:
				RTHOOK(14);
				tc1 = *(EIF_CHARACTER_8 *)(Current + RTWA(1043, 358, dtype));
				uc1 = tc1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(1043, 60, dtype))(Current, uc1x);
				break;
		}
	}
	RTHOOK(15);
	RTDBGAA(Current, dtype, 1043, 42, 0x04000000, 1); /* end_of_file */
	
	*(EIF_BOOLEAN *)(Current + RTWA(1043, 42, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	if (RTAL & CK_ENSURE) {
		RTHOOK(16);
		RTCT("not_end_of_input", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 40, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(17);
		RTCT("last_string_not_void", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(1043, 359, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 != NULL)) {
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
	RTLO(2);
	RTEE;
#undef up1
#undef uc1
}

/* {KL_TEXT_INPUT_FILE}.string_name */
EIF_TYPED_VALUE F1044_19012 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1043,363, Dtype(Current)));
	return r;
}


void EIF_Minit1044 (void)
{
	GTCX
	RTOTS (19009,F1044_19009)
}


#ifdef __cplusplus
}
#endif
