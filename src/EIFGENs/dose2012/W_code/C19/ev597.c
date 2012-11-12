/*
 * Code for class EV_IMAGE_LIST_IMP
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F597_11095(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F597_11096(EIF_REFERENCE);
extern void F597_11097(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F597_11098(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F597_11099(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F597_11100(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F597_11101(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F597_11102(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F597_11103(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F597_11104(EIF_REFERENCE);
extern EIF_TYPED_VALUE F597_11105(EIF_REFERENCE);
extern EIF_TYPED_VALUE F597_11106(EIF_REFERENCE);
extern EIF_TYPED_VALUE F597_11107(EIF_REFERENCE);
extern EIF_TYPED_VALUE F597_11108(EIF_REFERENCE);
extern void EIF_Minit597(void);

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

/* {EV_IMAGE_LIST_IMP}.make_with_size */
void F597_11095 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "make_with_size";
	RTEX;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 596, Current, 0, 2, 13830);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(596, Current, 13830);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ui4_1 = arg1;
	ui4_2 = arg2;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 48, dtype))(Current)).it_i4);
	ui4_3 = ti4_1;
	ub1 = (EIF_BOOLEAN) 1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(596, 52, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(596, 104, dtype))(Current);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 596, 115, 0xF800062D, 0); /* image_list_info */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(596, 115, Current)));
	ui4_1 = ((EIF_INTEGER_32) 4L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1581, 41, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(3,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(596, 115, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 596, 112, 0xF80005F6, 0); /* filenames_index */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(596, 112, Current)));
	ui4_1 = ((EIF_INTEGER_32) 4L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1526, 41, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(4,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(596, 112, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 596, 113, 0xF8000511, 0); /* bitmap_ids_index */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(596, 113, Current)));
	ui4_1 = ((EIF_INTEGER_32) 4L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1297, 41, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(5,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(596, 113, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 596, 114, 0xF8000511, 0); /* image_id_to_bitmap_id_index */
	
	tr1 = RTLNSMART(eif_non_attached_type(RTWCT(596, 114, Current)));
	ui4_1 = ((EIF_INTEGER_32) 4L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1297, 41, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(6,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(596, 114, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ub1
#undef arg2
#undef arg1
}

/* {EV_IMAGE_LIST_IMP}.add_transparent_pixmap */
void F597_11096 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "add_transparent_pixmap";
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
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_TYPED_VALUE ui4_5x = {0, SK_INT32};
#define ui4_5 ui4_5x.it_i4
	EIF_TYPED_VALUE ub1x = {0, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(8);
	RTLR(0,loc3);
	RTLR(1,tr1);
	RTLR(2,loc1);
	RTLR(3,ur1);
	RTLR(4,loc2);
	RTLR(5,Current);
	RTLR(6,loc4);
	RTLR(7,loc5);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 596, Current, 5, 0, 13831);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(596, Current, 13831);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 3, 0xF80002D4, 0, 0); /* loc3 */
	
	tr1 = RTLN(724);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(724, 477, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	RTDBGAL(Current, 1, 0xF800025C, 0, 0); /* loc1 */
	
	tr1 = RTLN(604);
	ur1 = RTCCL(loc3);
	ui4_1 = ((EIF_INTEGER_32) 16L);
	ui4_2 = ((EIF_INTEGER_32) 16L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(604, 77, Dtype(tr1)))(tr1, ur1x, ui4_1x, ui4_2x);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAL(Current, 2, 0xF800025C, 0, 0); /* loc2 */
	
	tr1 = RTLN(604);
	ur1 = RTCCL(loc3);
	ui4_1 = ((EIF_INTEGER_32) 16L);
	ui4_2 = ((EIF_INTEGER_32) 16L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(604, 77, Dtype(tr1)))(tr1, ur1x, ui4_1x, ui4_2x);
	RTNHOOK(3,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc3))(loc3, ur1x);
	RTHOOK(5);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 0L);
	ui4_3 = ((EIF_INTEGER_32) 16L);
	ui4_4 = ((EIF_INTEGER_32) 16L);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 116, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(5,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(215, 46, "whiteness", tr1))(tr1)).it_i4);
	ui4_5 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(724, 383, "pat_blt", loc3))(loc3, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ui4_5x);
	RTHOOK(6);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc3))(loc3);
	RTHOOK(7);
	RTDBGAL(Current, 4, 0xF80002B1, 0, 0); /* loc4 */
	
	tr1 = RTLN(689);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(689, 41, Dtype(tr1)))(tr1);
	RTNHOOK(7,1);
	loc4 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(8);
	ur1 = RTCCL(loc2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(689, 69, "set_color_bitmap", loc4))(loc4, ur1x);
	RTHOOK(9);
	ur1 = RTCCL(loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(689, 68, "set_mask_bitmap", loc4))(loc4, ur1x);
	RTHOOK(10);
	ub1 = (EIF_BOOLEAN) 1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(689, 70, "set_is_icon", loc4))(loc4, ub1x);
	RTHOOK(11);
	RTDBGAL(Current, 5, 0xF8000261, 0, 0); /* loc5 */
	
	tr1 = RTLN(609);
	ur1 = RTCCL(loc4);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(609, 70, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(11,1);
	loc5 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(12);
	ur1 = RTCCL(loc5);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 63, dtype))(Current, ur1x);
	RTHOOK(13);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(689, 78, "delete", loc4))(loc4);
	RTHOOK(14);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 51, "delete", loc1))(loc1);
	RTHOOK(15);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 51, "delete", loc2))(loc2);
	RTHOOK(16);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc3))(loc3);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ub1
}

/* {EV_IMAGE_LIST_IMP}.pixmap_position */
void F597_11097 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "pixmap_position";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,loc1);
	RTLR(3,tr1);
	RTLR(4,loc2);
	RTLR(5,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 596, Current, 2, 1, 13832);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(596, Current, 13832);
	if (arg1) {
		RTCC(arg1, 596, l_feature_name, 1, 854);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_pixmap_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAA(Current, dtype, 596, 55, 0x10000000, 1); /* last_position */
	
	*(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
	RTHOOK(3);
	RTDBGAL(Current, 1, 0xF80003FF, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(854, 261, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	loc1 = RTRV(eif_non_attached_type(1023), loc1);
	RTHOOK(4);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(5);
		RTDBGAL(Current, 2, 0xF8000313, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1023, 506, "pixmap_filename", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(6);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 112, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(6,1);
			ur1 = RTCCL(loc2);
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1526, 46, "has", tr1))(tr1, ur1x)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(7);
			RTDBGAA(Current, dtype, 596, 55, 0x10000000, 1); /* last_position */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 112, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(7,1);
			ur1 = RTCCL(loc2);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1526, 44, "item", tr1))(tr1, ur1x)).it_i4);
			*(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype)) = (EIF_INTEGER_32) ti4_1;
		} else {
			RTHOOK(8);
			tb1 = '\0';
			ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(1023, 510, "private_bitmap_id", loc1));
			if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(8,1);
				ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(1023, 510, "private_bitmap_id", loc1));
				ui4_1 = ti4_1;
				tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1297, 46, "has", tr1))(tr1, ui4_1x)).it_b);
				tb1 = tb2;
			}
			if (tb1) {
				RTHOOK(9);
				RTDBGAA(Current, dtype, 596, 55, 0x10000000, 1); /* last_position */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(9,1);
				ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(1023, 510, "private_bitmap_id", loc1));
				ui4_1 = ti4_1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1297, 44, "item", tr1))(tr1, ui4_1x)).it_i4);
				*(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype)) = (EIF_INTEGER_32) ti4_1;
			}
		}
	}
	RTHOOK(10);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) -1L))) {
		RTHOOK(11);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 109, dtype))(Current, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {EV_IMAGE_LIST_IMP}.add_pixmap */
void F597_11098 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "add_pixmap";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
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
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,loc2);
	RTLR(4,Current);
	RTLR(5,ur1);
	RTLR(6,loc3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_INT32, &loc4);
	
	RTEAA(l_feature_name, 596, Current, 4, 1, 13819);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(596, Current, 13819);
	if (arg1) {
		RTCC(arg1, 596, l_feature_name, 1, 854);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80003FF, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(854, 261, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	loc1 = RTRV(eif_non_attached_type(1023), loc1);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 2, 0xF8000313, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1023, 506, "pixmap_filename", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(4);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTHOOK(5);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 112, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			ur1 = RTCCL(loc2);
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1526, 46, "has", tr1))(tr1, ur1x)).it_b);
			if (tb1) {
				RTHOOK(6);
				RTDBGAA(Current, dtype, 596, 55, 0x10000000, 1); /* last_position */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 112, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(6,1);
				ur1 = RTCCL(loc2);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1526, 44, "item", tr1))(tr1, ur1x)).it_i4);
				*(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype)) = (EIF_INTEGER_32) ti4_1;
			} else {
				RTHOOK(7);
				RTDBGAL(Current, 3, 0xF800025C, 0, 0); /* loc3 */
				
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1023, 509, "private_bitmap", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc3 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(8);
				if ((EIF_BOOLEAN)(loc3 != NULL)) {
					RTHOOK(9);
					RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
					
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 47, "object_id", loc3))(loc3)).it_i4);
					loc4 = (EIF_INTEGER_32) ti4_1;
					RTHOOK(10);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(10,1);
					ui4_1 = loc4;
					tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1297, 46, "has", tr1))(tr1, ui4_1x)).it_b);
					if (tb1) {
						RTHOOK(11);
						RTDBGAA(Current, dtype, 596, 55, 0x10000000, 1); /* last_position */
						
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(11,1);
						ui4_1 = loc4;
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1297, 44, "item", tr1))(tr1, ui4_1x)).it_i4);
						*(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype)) = (EIF_INTEGER_32) ti4_1;
					} else {
						RTHOOK(12);
						ur1 = RTCCL(arg1);
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 108, dtype))(Current, ur1x);
						RTHOOK(13);
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(13,1);
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
						ui4_1 = ti4_1;
						ui4_2 = loc4;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1297, 83, "put", tr1))(tr1, ui4_1x, ui4_2x);
						RTHOOK(14);
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 114, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(14,1);
						ui4_1 = loc4;
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
						ui4_2 = ti4_1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1297, 83, "put", tr1))(tr1, ui4_1x, ui4_2x);
						RTHOOK(15);
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 112, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(15,1);
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
						ui4_1 = ti4_1;
						ur1 = RTCCL(loc2);
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1526, 83, "put", tr1))(tr1, ui4_1x, ur1x);
					}
				} else {
					RTHOOK(16);
					ur1 = RTCCL(arg1);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 108, dtype))(Current, ur1x);
					RTHOOK(17);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 112, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(17,1);
					ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
					ui4_1 = ti4_1;
					ur1 = RTCCL(loc2);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1526, 83, "put", tr1))(tr1, ui4_1x, ur1x);
				}
			}
		} else {
			RTHOOK(18);
			ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(1023, 510, "private_bitmap_id", loc1));
			if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
				RTHOOK(19);
				RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
				
				ti4_1 = *(EIF_INTEGER_32 *)(loc1 + RTVA(1023, 510, "private_bitmap_id", loc1));
				loc4 = (EIF_INTEGER_32) ti4_1;
				RTHOOK(20);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(20,1);
				ui4_1 = loc4;
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1297, 46, "has", tr1))(tr1, ui4_1x)).it_b);
				if (tb1) {
					RTHOOK(21);
					RTDBGAA(Current, dtype, 596, 55, 0x10000000, 1); /* last_position */
					
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(21,1);
					ui4_1 = loc4;
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1297, 44, "item", tr1))(tr1, ui4_1x)).it_i4);
					*(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype)) = (EIF_INTEGER_32) ti4_1;
				} else {
					RTHOOK(22);
					ur1 = RTCCL(arg1);
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 108, dtype))(Current, ur1x);
					RTHOOK(23);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(23,1);
					ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
					ui4_1 = ti4_1;
					ui4_2 = loc4;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1297, 83, "put", tr1))(tr1, ui4_1x, ui4_2x);
					RTHOOK(24);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 114, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(24,1);
					ui4_1 = loc4;
					ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
					ui4_2 = ti4_1;
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1297, 83, "put", tr1))(tr1, ui4_1x, ui4_2x);
				}
			} else {
				RTHOOK(25);
				ur1 = RTCCL(arg1);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 108, dtype))(Current, ur1x);
			}
		}
	} else {
		RTHOOK(26);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 108, dtype))(Current, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(27);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg1
}

/* {EV_IMAGE_LIST_IMP}.extend_pixmap */
void F597_11099 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "extend_pixmap";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
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
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,loc2);
	RTLR(4,ur1);
	RTLR(5,Current);
	RTLR(6,loc3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 596, Current, 3, 1, 13820);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(596, Current, 13820);
	if (arg1) {
		RTCC(arg1, 596, l_feature_name, 1, 854);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 1, 0xF80003FF, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(854, 261, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = RTCCL(tr1);
	loc1 = RTRV(eif_non_attached_type(1023), loc1);
	RTHOOK(2);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(3);
		RTDBGAL(Current, 2, 0xF8000313, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1023, 506, "pixmap_filename", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(4);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 110, dtype))(Current, ur1x);
	RTHOOK(5);
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		RTHOOK(6);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 112, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
		ui4_1 = ti4_1;
		ur1 = RTCCL(loc2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1526, 83, "put", tr1))(tr1, ui4_1x, ur1x);
	} else {
		RTHOOK(7);
		if ((EIF_BOOLEAN)(loc1 != NULL)) {
			RTHOOK(8);
			RTDBGAL(Current, 3, 0xF800025C, 0, 0); /* loc3 */
			
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1023, 509, "private_bitmap", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc3 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(9);
			if ((EIF_BOOLEAN)(loc3 != NULL)) {
				RTHOOK(10);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 113, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(10,1);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
				ui4_1 = ti4_1;
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 47, "object_id", loc3))(loc3)).it_i4);
				ui4_2 = ti4_2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1297, 83, "put", tr1))(tr1, ui4_1x, ui4_2x);
				RTHOOK(11);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 114, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(11,1);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 47, "object_id", loc3))(loc3)).it_i4);
				ui4_1 = ti4_1;
				ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
				ui4_2 = ti4_2;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1297, 83, "put", tr1))(tr1, ui4_1x, ui4_2x);
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg1
}

/* {EV_IMAGE_LIST_IMP}.internal_add_pixmap */
void F597_11100 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "internal_add_pixmap";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
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
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(8);
	RTLR(0,arg1);
	RTLR(1,loc5);
	RTLR(2,tr1);
	RTLR(3,loc4);
	RTLR(4,Current);
	RTLR(5,loc2);
	RTLR(6,ur1);
	RTLR(7,loc3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 596, Current, 5, 1, 13821);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(596, Current, 13821);
	if (arg1) {
		RTCC(arg1, 596, l_feature_name, 1, 854);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_pixmap_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 5, 0xF80003FE, 0, 0); /* loc5 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(854, 261, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc5 = RTCCL(tr1);
	loc5 = RTRV(eif_non_attached_type(1022), loc5);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc5 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(4);
	RTDBGAL(Current, 4, 0xF800062D, 0, 0); /* loc4 */
	
	loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 115, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0xF8000260, 0, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 146, "icon", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	if ((EIF_BOOLEAN)(loc2 == NULL)) {
		RTHOOK(7);
		RTDBGAL(Current, 2, 0xF8000260, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 147, "cursor", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(8);
	if ((EIF_BOOLEAN)(loc2 == NULL)) {
		RTHOOK(9);
		RTDBGAL(Current, 2, 0xF8000260, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 155, "build_icon", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(10);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(608, 52, "enable_reference_tracking", loc2))(loc2);
	} else {
		RTHOOK(11);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(608, 54, "increment_reference", loc2))(loc2);
	}
	RTHOOK(12);
	RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(608, 51, "object_id", loc2))(loc2)).it_i4);
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(13);
	tb1 = '\01';
	if (!(EIF_BOOLEAN)(loc1 == ((EIF_INTEGER_32) 0L))) {
		ui4_1 = loc1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1581, 46, "has", loc4))(loc4, ui4_1x)).it_b);
		tb1 = (EIF_BOOLEAN) !tb2;
	}
	if (tb1) {
		RTHOOK(14);
		ur1 = RTCCL(loc2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 63, dtype))(Current, ur1x);
		RTHOOK(15);
		{
			static EIF_TYPE_INDEX typarr0[] = {596,0xFFF9,2,734,739,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
			tr1 = RTLNTS(typres0, 3, 1);
		}
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
		((EIF_TYPED_VALUE *)tr1+1)->it_i4 = ti4_1;
		((EIF_TYPED_VALUE *)tr1+2)->it_i4 = ((EIF_INTEGER_32) 1L);
		ur1 = RTCCL(tr1);
		ui4_1 = loc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1581, 83, "put", loc4))(loc4, ur1x, ui4_1x);
	} else {
		RTHOOK(16);
		RTDBGAL(Current, 3, 0xF80002DE, 0, 0); /* loc3 */
		
		ui4_1 = loc1;
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1581, 44, "item", loc4))(loc4, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc3 = (EIF_REFERENCE) RTCCL(tr1);
		if (RTAL & CK_CHECK) {
			RTHOOK(17);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc3 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(18);
		RTDBGAA(Current, dtype, 596, 55, 0x10000000, 1); /* last_position */
		
		ti4_1 = eif_integer_32_item(RTCV(loc3),1);
		*(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype)) = (EIF_INTEGER_32) ti4_1;
	}
	RTHOOK(19);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(608, 53, "decrement_reference", loc2))(loc2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(20);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {EV_IMAGE_LIST_IMP}.internal_pixmap_position */
void F597_11101 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "internal_pixmap_position";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc5 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,loc5);
	RTLR(2,tr1);
	RTLR(3,loc4);
	RTLR(4,Current);
	RTLR(5,loc2);
	RTLR(6,loc3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	
	RTEAA(l_feature_name, 596, Current, 5, 1, 13822);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(596, Current, 13822);
	if (arg1) {
		RTCC(arg1, 596, l_feature_name, 1, 854);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_pixmap_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 5, 0xF80003FE, 0, 0); /* loc5 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(854, 261, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc5 = RTCCL(tr1);
	loc5 = RTRV(eif_non_attached_type(1022), loc5);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc5 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(4);
	RTDBGAL(Current, 4, 0xF800062D, 0, 0); /* loc4 */
	
	loc4 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 115, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0xF8000260, 0, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 146, "icon", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	if ((EIF_BOOLEAN)(loc2 == NULL)) {
		RTHOOK(7);
		RTDBGAL(Current, 2, 0xF8000260, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 147, "cursor", loc5))(loc5)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
	}
	RTHOOK(8);
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		RTHOOK(9);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(608, 51, "object_id", loc2))(loc2)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(10);
		tb1 = '\0';
		if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
			ui4_1 = loc1;
			tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1581, 46, "has", loc4))(loc4, ui4_1x)).it_b);
			tb1 = tb2;
		}
		if (tb1) {
			RTHOOK(11);
			RTDBGAL(Current, 3, 0xF80002DE, 0, 0); /* loc3 */
			
			ui4_1 = loc1;
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1581, 44, "item", loc4))(loc4, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			loc3 = (EIF_REFERENCE) RTCCL(tr1);
			if (RTAL & CK_CHECK) {
				RTHOOK(12);
				RTCT(NULL, EX_CHECK);
				if ((EIF_BOOLEAN)(loc3 != NULL)) {
					RTCK;
				} else {
					RTCF;
				}
			}
			RTHOOK(13);
			RTDBGAA(Current, dtype, 596, 55, 0x10000000, 1); /* last_position */
			
			ti4_1 = eif_integer_32_item(RTCV(loc3),1);
			*(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype)) = (EIF_INTEGER_32) ti4_1;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef ui4_1
#undef arg1
}

/* {EV_IMAGE_LIST_IMP}.internal_extend_pixmap */
void F597_11102 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "internal_extend_pixmap";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,loc4);
	RTLR(2,tr1);
	RTLR(3,loc3);
	RTLR(4,Current);
	RTLR(5,loc2);
	RTLR(6,ur1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 596, Current, 4, 1, 13823);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(596, Current, 13823);
	if (arg1) {
		RTCC(arg1, 596, l_feature_name, 1, 854);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_pixmap_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(Current, 4, 0xF80003FE, 0, 0); /* loc4 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(854, 261, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc4 = RTCCL(tr1);
	loc4 = RTRV(eif_non_attached_type(1022), loc4);
	if (RTAL & CK_CHECK) {
		RTHOOK(3);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc4 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(4);
	RTDBGAL(Current, 3, 0xF800062D, 0, 0); /* loc3 */
	
	loc3 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(596, 115, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0xF8000260, 0, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 146, "icon", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	if ((EIF_BOOLEAN)(loc2 == NULL)) {
		RTHOOK(7);
		RTDBGAL(Current, 2, 0xF8000260, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 147, "cursor", loc4))(loc4)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTCCL(tr1);
		loc2 = RTRV(eif_non_attached_type(608), loc2);
	}
	RTHOOK(8);
	if ((EIF_BOOLEAN)(loc2 != NULL)) {
		RTHOOK(9);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(608, 51, "object_id", loc2))(loc2)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(10);
		ur1 = RTCCL(loc2);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 63, dtype))(Current, ur1x);
		RTHOOK(11);
		{
			static EIF_TYPE_INDEX typarr0[] = {596,0xFFF9,2,734,739,739,0xFFFF};
			EIF_TYPE_INDEX typres0;
			static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
			
			typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 734, typarr0)));
			tr1 = RTLNTS(typres0, 3, 1);
		}
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 55, dtype));
		((EIF_TYPED_VALUE *)tr1+1)->it_i4 = ti4_1;
		((EIF_TYPED_VALUE *)tr1+2)->it_i4 = ((EIF_INTEGER_32) 1L);
		ur1 = RTCCL(tr1);
		ui4_1 = loc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1581, 83, "put", loc3))(loc3, ur1x, ui4_1x);
	} else {
		RTHOOK(12);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 111, dtype))(Current, ur1x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(13);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef arg1
}

/* {EV_IMAGE_LIST_IMP}.add_pixmap_bitmap */
void F597_11103 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "add_pixmap_bitmap";
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
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_TYPED_VALUE ui4_5x = {0, SK_INT32};
#define ui4_5 ui4_5x.it_i4
	EIF_TYPED_VALUE ui4_6x = {0, SK_INT32};
#define ui4_6 ui4_6x.it_i4
	EIF_TYPED_VALUE ui4_7x = {0, SK_INT32};
#define ui4_7 ui4_7x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(12);
	RTLR(0,arg1);
	RTLR(1,loc2);
	RTLR(2,tr1);
	RTLR(3,Current);
	RTLR(4,loc1);
	RTLR(5,ur1);
	RTLR(6,loc3);
	RTLR(7,loc4);
	RTLR(8,loc5);
	RTLR(9,loc7);
	RTLR(10,loc6);
	RTLR(11,ur2);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REF, &loc5);
	RTLU(SK_REF, &loc6);
	RTLU(SK_REF, &loc7);
	
	RTEAA(l_feature_name, 596, Current, 7, 1, 13824);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(596, Current, 13824);
	if (arg1) {
		RTCC(arg1, 596, l_feature_name, 1, 854);
	}
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 2, 0xF80003FE, 0, 0); /* loc2 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(854, 261, "implementation", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = RTCCL(tr1);
	loc2 = RTRV(eif_non_attached_type(1022), loc2);
	if (RTAL & CK_CHECK) {
		RTHOOK(2);
		RTCT(NULL, EX_CHECK);
		if ((EIF_BOOLEAN)(loc2 != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(3);
	tb1 = '\01';
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 159, "height", loc2))(loc2)).it_i4);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 71, dtype));
	if (!((EIF_BOOLEAN)(ti4_1 != ti4_2))) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 158, "width", loc2))(loc2)).it_i4);
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 70, dtype));
		tb1 = (EIF_BOOLEAN)(ti4_1 != ti4_2);
	}
	if (tb1) {
		RTHOOK(4);
		RTDBGAL(Current, 1, 0xF8000356, 0, 0); /* loc1 */
		
		tr1 = RTLN(854);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(854, 29, Dtype(tr1)))(tr1);
		RTNHOOK(4,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(5);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(854, 260, "copy", loc1))(loc1, ur1x);
		RTHOOK(6);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 70, dtype));
		ui4_1 = ti4_1;
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(596, 71, dtype));
		ui4_2 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(854, 257, "stretch", loc1))(loc1, ui4_1x, ui4_2x);
		RTHOOK(7);
		RTDBGAL(Current, 2, 0xF80003FE, 0, 0); /* loc2 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(854, 261, "implementation", loc1))(loc1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc2 = RTCCL(tr1);
		loc2 = RTRV(eif_non_attached_type(1022), loc2);
		if (RTAL & CK_CHECK) {
			RTHOOK(8);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc2 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
	}
	RTHOOK(9);
	RTDBGAL(Current, 3, 0xF800025C, 0, 0); /* loc3 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 144, "get_bitmap", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(10);
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 148, "has_mask", loc2))(loc2)).it_b);
	if (tb1) {
		RTHOOK(11);
		RTDBGAL(Current, 4, 0xF800025C, 0, 0); /* loc4 */
		
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1022, 145, "get_mask_bitmap", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		loc4 = (EIF_REFERENCE) RTCCL(tr1);
		if (RTAL & CK_CHECK) {
			RTHOOK(12);
			RTCT(NULL, EX_CHECK);
			if ((EIF_BOOLEAN)(loc4 != NULL)) {
				RTCK;
			} else {
				RTCF;
			}
		}
		RTHOOK(13);
		RTDBGAL(Current, 5, 0xF80002D4, 0, 0); /* loc5 */
		
		tr1 = RTLN(724);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(724, 477, Dtype(tr1)))(tr1);
		RTNHOOK(13,1);
		loc5 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(14);
		ur1 = RTCCL(loc4);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc5))(loc5, ur1x);
		RTHOOK(15);
		RTDBGAL(Current, 7, 0xF80002D4, 0, 0); /* loc7 */
		
		tr1 = RTLN(724);
		ur1 = RTCCL(loc5);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(724, 478, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(15,1);
		loc7 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(16);
		RTDBGAL(Current, 6, 0xF800025C, 0, 0); /* loc6 */
		
		tr1 = RTLN(604);
		ur1 = RTCCL(loc7);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 83, "width", loc4))(loc4)).it_i4);
		ui4_1 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 84, "height", loc4))(loc4)).it_i4);
		ui4_2 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(604, 77, Dtype(tr1)))(tr1, ur1x, ui4_1x, ui4_2x);
		RTNHOOK(16,1);
		loc6 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(17);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 48, "enable_reference_tracking", loc6))(loc6);
		RTHOOK(18);
		ur1 = RTCCL(loc6);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(724, 331, "select_bitmap", loc7))(loc7, ur1x);
		RTHOOK(19);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ui4_2 = ((EIF_INTEGER_32) 0L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 83, "width", loc4))(loc4)).it_i4);
		ui4_3 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 84, "height", loc4))(loc4)).it_i4);
		ui4_4 = ti4_2;
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(215, 46, 215))(Current)).it_i4);
		ui4_5 = ti4_3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(724, 383, "pat_blt", loc7))(loc7, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ui4_5x);
		RTHOOK(20);
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ui4_2 = ((EIF_INTEGER_32) 0L);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 83, "width", loc4))(loc4)).it_i4);
		ui4_3 = ti4_1;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 84, "height", loc4))(loc4)).it_i4);
		ui4_4 = ti4_2;
		ur1 = RTCCL(loc5);
		ui4_5 = ((EIF_INTEGER_32) 0L);
		ui4_6 = ((EIF_INTEGER_32) 0L);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(215, 35, 215))(Current)).it_i4);
		ui4_7 = ti4_3;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(724, 377, "bit_blt", loc7))(loc7, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ur1x, ui4_5x, ui4_6x, ui4_7x);
		RTHOOK(21);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc5))(loc5);
		RTHOOK(22);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc5))(loc5);
		RTHOOK(23);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 337, "unselect_bitmap", loc7))(loc7);
		RTHOOK(24);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(724, 55, "delete", loc7))(loc7);
		RTHOOK(25);
		ur1 = RTCCL(loc3);
		ur2 = RTCCL(loc6);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(596, 60, dtype))(Current, ur1x, ur2x);
		RTHOOK(26);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc6))(loc6);
		RTHOOK(27);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc4))(loc4);
		RTHOOK(28);
		RTDBGAL(Current, 4, 0xF800025C, 0, 0); /* loc4 */
		
		loc4 = (EIF_REFERENCE) NULL;
	} else {
		RTHOOK(29);
		ur1 = RTCCL(loc3);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(596, 58, dtype))(Current, ur1x);
	}
	RTHOOK(30);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 49, "decrement_reference", loc3))(loc3);
	RTHOOK(31);
	if ((EIF_BOOLEAN)(loc1 != NULL)) {
		RTHOOK(32);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(854, 32, "destroy", loc1))(loc1);
		RTHOOK(33);
		RTDBGAL(Current, 1, 0xF8000356, 0, 0); /* loc1 */
		
		loc1 = (EIF_REFERENCE) NULL;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(34);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ui4_6
#undef ui4_7
#undef arg1
}

/* {EV_IMAGE_LIST_IMP}.filenames_index */
EIF_TYPED_VALUE F597_11104 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(596,112, Dtype(Current)));
	return r;
}


/* {EV_IMAGE_LIST_IMP}.bitmap_ids_index */
EIF_TYPED_VALUE F597_11105 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(596,113, Dtype(Current)));
	return r;
}


/* {EV_IMAGE_LIST_IMP}.image_id_to_bitmap_id_index */
EIF_TYPED_VALUE F597_11106 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(596,114, Dtype(Current)));
	return r;
}


/* {EV_IMAGE_LIST_IMP}.image_list_info */
EIF_TYPED_VALUE F597_11107 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(596,115, Dtype(Current)));
	return r;
}


/* {EV_IMAGE_LIST_IMP}.raster_constants */
RTOID (F597_11108)
EIF_TYPED_VALUE F597_11108 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "raster_constants";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F597_11108);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 596, Current, 0, 0, 13829);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(596, Current, 13829);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF80000D7, 0,0); /* Result */
	
	tr1 = RTLN(215);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(215, 26, Dtype(tr1)))(tr1);
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
#undef Result
}

void EIF_Minit597 (void)
{
	GTCX
	RTOTS (11108,F597_11108)
}


#ifdef __cplusplus
}
#endif
