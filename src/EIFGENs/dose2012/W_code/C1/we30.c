/*
 * Code for class WEL_GDIP_GRAYSCALE_IMAGE_DRAWER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F30_1943(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F30_1944(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F30_1945(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F30_1946(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F30_1947(EIF_REFERENCE);
extern EIF_TYPED_VALUE F30_1948(EIF_REFERENCE);
extern EIF_TYPED_VALUE F30_1949(EIF_REFERENCE);
extern EIF_TYPED_VALUE F30_1950(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit30(void);

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

/* {WEL_GDIP_GRAYSCALE_IMAGE_DRAWER}.draw_grayscale_bitmap */
void F30_1943 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "draw_grayscale_bitmap";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ur3x = {0, SK_REF};
#define ur3 ur3x.it_r
	EIF_TYPED_VALUE ur4x = {0, SK_REF};
#define ur4 ur4x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {0, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ui4_4x = {0, SK_INT32};
#define ui4_4 ui4_4x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	
	RTLI(12);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc2);
	RTLR(3,tr1);
	RTLR(4,Current);
	RTLR(5,ur1);
	RTLR(6,loc3);
	RTLR(7,loc4);
	RTLR(8,loc1);
	RTLR(9,ur2);
	RTLR(10,ur3);
	RTLR(11,ur4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	
	RTEAA(l_feature_name, 29, Current, 6, 4, 1823);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(29, Current, 1823);
	if (arg1) {
		RTCC(arg1, 29, l_feature_name, 1, 619);
	}
	if (arg2) {
		RTCC(arg2, 29, l_feature_name, 2, 723);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_image_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_image_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(619, 35, "exists", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_dest_dc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("a_dest_dc_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(723, 36, "exists", arg2))(arg2)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(5);
	RTDBGAL(Current, 2, 0xF8000268, 0, 0); /* loc2 */
	
	tr1 = RTLN(616);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(616, 48, Dtype(tr1)))(tr1);
	RTNHOOK(5,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(616, 49, "clear_color_key", loc2))(loc2);
	RTHOOK(7);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(29, 36, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(616, 51, "set_color_matrix", loc2))(loc2, ur1x);
	RTHOOK(8);
	RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(619, 63, "width", arg1))(arg1)).it_i4);
	loc5 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(9);
	RTDBGAL(Current, 6, 0x10000000, 1, 0); /* loc6 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(619, 64, "height", arg1))(arg1)).it_i4);
	loc6 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(10);
	RTDBGAL(Current, 3, 0xF80002B3, 0, 0); /* loc3 */
	
	tr1 = RTLN(691);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 0L);
	ui4_3 = loc5;
	ui4_4 = loc6;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(691, 52, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTNHOOK(10,1);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(11);
	RTDBGAL(Current, 4, 0xF80002B3, 0, 0); /* loc4 */
	
	tr1 = RTLN(691);
	ui4_1 = arg3;
	ui4_2 = arg4;
	ui4_3 = (EIF_INTEGER_32) (arg3 + loc5);
	ui4_4 = (EIF_INTEGER_32) (arg4 + loc6);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(691, 52, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTNHOOK(11,1);
	loc4 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(12);
	RTDBGAL(Current, 1, 0xF8000269, 0, 0); /* loc1 */
	
	tr1 = RTLN(617);
	ur1 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(617, 49, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(12,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(13);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(loc4);
	ur3 = RTCCL(loc3);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(51, 34, 51))(Current)).it_i4);
	ui4_1 = ti4_1;
	ur4 = RTCCL(loc2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(617, 57, "draw_image_with_src_rect_dest_rect_unit_attributes", loc1))(loc1, ur1x, ur2x, ur3x, ui4_1x, ur4x);
	RTHOOK(14);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(617, 71, "destroy_item", loc1))(loc1);
	RTHOOK(15);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(691, 39, "dispose", loc4))(loc4);
	RTHOOK(16);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(691, 39, "dispose", loc3))(loc3);
	RTHOOK(17);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(616, 53, "destroy_item", loc2))(loc2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(18);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(12);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ur3
#undef ur4
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_GDIP_GRAYSCALE_IMAGE_DRAWER}.draw_grayscale_bitmap_or_icon_with_memory_buffer */
void F30_1944 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x, EIF_TYPED_VALUE arg6x, EIF_TYPED_VALUE arg7x)
{
	GTCX
	char *l_feature_name = "draw_grayscale_bitmap_or_icon_with_memory_buffer";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_r
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_i4
#define arg6 arg6x.it_r
#define arg7 arg7x.it_b
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ur3x = {0, SK_REF};
#define ur3 ur3x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_POINTER tp1;
	EIF_POINTER tp2;
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg7x.type & SK_HEAD) == SK_REF) arg7x.it_b = * (EIF_BOOLEAN *) arg7x.it_r;
	if ((arg5x.type & SK_HEAD) == SK_REF) arg5x.it_i4 = * (EIF_INTEGER_32 *) arg5x.it_r;
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	
	RTLI(11);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,arg3);
	RTLR(3,arg6);
	RTLR(4,loc1);
	RTLR(5,tr1);
	RTLR(6,Current);
	RTLR(7,loc2);
	RTLR(8,ur1);
	RTLR(9,ur2);
	RTLR(10,ur3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_REF,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_INT32,&arg5);
	RTLU(SK_REF,&arg6);
	RTLU(SK_BOOL,&arg7);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	
	RTEAA(l_feature_name, 29, Current, 2, 7, 1824);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(29, Current, 1824);
	if (arg1) {
		RTCC(arg1, 29, l_feature_name, 1, 604);
	}
	if (arg2) {
		RTCC(arg2, 29, l_feature_name, 2, 609);
	}
	if (arg3) {
		RTCC(arg3, 29, l_feature_name, 3, 723);
	}
	if (arg6) {
		RTCC(arg6, 29, l_feature_name, 6, 1020);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_bitmap_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_bitmap_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 35, "exists", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_icon_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("a_icon_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(609, 36, "exists", arg2))(arg2)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(5);
		RTCT("a_control_dc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg3 != NULL), label_1);
		RTCK;
		RTHOOK(6);
		RTCT("a_control_dc_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(723, 36, "exists", arg3))(arg3)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(7);
		RTCT("a_background_color_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg6 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(8);
	RTDBGAL(Current, 1, 0xF800029B, 0, 0); /* loc1 */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(604, 85, "log_bitmap", arg1))(arg1)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(9);
	tb1 = '\0';
	tb2 = '\0';
	if ((EIF_BOOLEAN) !arg7) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(667, 60, "bits_pixel", loc1))(loc1)).it_i4);
		tb2 = (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 32L));
	}
	if (tb2) {
		tp1 = *(EIF_POINTER *)(arg1 + RTVA(604, 86, "ppv_bits", arg1));
		tp2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(29, 30, dtype))(Current)).it_p);
		tb1 = (EIF_BOOLEAN)(tp1 != tp2);
	}
	if (tb1) {
		RTHOOK(10);
		RTDBGAL(Current, 2, 0xF800026B, 0, 0); /* loc2 */
		
		tr1 = RTLN(619);
		ur1 = RTCCL(arg1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(619, 93, Dtype(tr1)))(tr1, ur1x);
		RTNHOOK(10,1);
		loc2 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(11);
		ur1 = RTCCL(loc2);
		ur2 = RTCCL(arg3);
		ui4_1 = arg4;
		ui4_2 = arg5;
		ur3 = RTCCL(arg6);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(29, 35, dtype))(Current, ur1x, ur2x, ui4_1x, ui4_2x, ur3x);
		RTHOOK(12);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(619, 40, "dispose", loc2))(loc2);
	} else {
		RTHOOK(13);
		ur1 = RTCCL(arg2);
		ur2 = RTCCL(arg3);
		ui4_1 = arg4;
		ui4_2 = arg5;
		ur3 = RTCCL(arg6);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(29, 34, dtype))(Current, ur1x, ur2x, ui4_1x, ui4_2x, ur3x);
	}
	RTHOOK(14);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(667, 39, "dispose", loc1))(loc1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(15);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(11);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef ur3
#undef ui4_1
#undef ui4_2
#undef arg7
#undef arg6
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_GDIP_GRAYSCALE_IMAGE_DRAWER}.draw_grayscale_icon_with_memory_buffer */
void F30_1945 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x)
{
	GTCX
	char *l_feature_name = "draw_grayscale_icon_with_memory_buffer";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_r
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ur3x = {0, SK_REF};
#define ur3 ur3x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	
	RTLI(9);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,arg5);
	RTLR(3,loc1);
	RTLR(4,tr1);
	RTLR(5,ur1);
	RTLR(6,ur2);
	RTLR(7,ur3);
	RTLR(8,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_REF,&arg5);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 29, Current, 1, 5, 1825);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(29, Current, 1825);
	if (arg1) {
		RTCC(arg1, 29, l_feature_name, 1, 609);
	}
	if (arg2) {
		RTCC(arg2, 29, l_feature_name, 2, 723);
	}
	if (arg5) {
		RTCC(arg5, 29, l_feature_name, 5, 1020);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_orignal_icon_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_orignal_icon_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(609, 36, "exists", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_control_dc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("a_control_dc_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(723, 36, "exists", arg2))(arg2)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(5);
		RTCT("a_background_color_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg5 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(6);
	RTDBGAL(Current, 1, 0xF800026B, 0, 0); /* loc1 */
	
	tr1 = RTLN(619);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(619, 89, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(6,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	ur1 = RTCCL(loc1);
	ur2 = RTCCL(arg2);
	ui4_1 = arg3;
	ui4_2 = arg4;
	ur3 = RTCCL(arg5);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(29, 35, dtype))(Current, ur1x, ur2x, ui4_1x, ui4_2x, ur3x);
	RTHOOK(8);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(619, 40, "dispose", loc1))(loc1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef ur1
#undef ur2
#undef ur3
#undef ui4_1
#undef ui4_2
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_GDIP_GRAYSCALE_IMAGE_DRAWER}.draw_grayscale_bitmap_with_memory_buffer */
void F30_1946 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x, EIF_TYPED_VALUE arg5x)
{
	GTCX
	char *l_feature_name = "draw_grayscale_bitmap_with_memory_buffer";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
#define arg5 arg5x.it_r
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
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	
	RTLI(10);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,arg5);
	RTLR(3,loc1);
	RTLR(4,tr1);
	RTLR(5,ur1);
	RTLR(6,loc2);
	RTLR(7,loc3);
	RTLR(8,ur2);
	RTLR(9,Current);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU(SK_REF,&arg5);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	
	RTEAA(l_feature_name, 29, Current, 5, 5, 1826);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(29, Current, 1826);
	if (arg1) {
		RTCC(arg1, 29, l_feature_name, 1, 619);
	}
	if (arg2) {
		RTCC(arg2, 29, l_feature_name, 2, 723);
	}
	if (arg5) {
		RTCC(arg5, 29, l_feature_name, 5, 1020);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_gdip_bitmap_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_gdip_bitmap_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(619, 35, "exists", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_control_dc_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("a_control_dc_exists", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(723, 36, "exists", arg2))(arg2)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(5);
		RTCT("a_background_color_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg5 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(6);
	RTDBGAL(Current, 4, 0x10000000, 1, 0); /* loc4 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(619, 63, "width", arg1))(arg1)).it_i4);
	loc4 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(7);
	RTDBGAL(Current, 5, 0x10000000, 1, 0); /* loc5 */
	
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(619, 64, "height", arg1))(arg1)).it_i4);
	loc5 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(8);
	RTDBGAL(Current, 1, 0xF80002D3, 0, 0); /* loc1 */
	
	tr1 = RTLN(724);
	ur1 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(724, 478, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(8,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(9);
	RTDBGAL(Current, 2, 0xF800025C, 0, 0); /* loc2 */
	
	tr1 = RTLN(604);
	ur1 = RTCCL(arg2);
	ui4_1 = loc4;
	ui4_2 = loc5;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(604, 77, Dtype(tr1)))(tr1, ur1x, ui4_1x, ui4_2x);
	RTNHOOK(9,1);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(10);
	ur1 = RTCCL(loc2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 333, "select_bitmap", loc1))(loc1, ur1x);
	RTHOOK(11);
	ur1 = RTCCL(arg5);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(723, 320, "set_background_color", loc1))(loc1, ur1x);
	RTHOOK(12);
	RTDBGAL(Current, 3, 0xF800025E, 0, 0); /* loc3 */
	
	tr1 = RTLN(606);
	ur1 = RTCCL(arg5);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(606, 66, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(12,1);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(13);
	tr1 = RTLN(691);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 0L);
	ui4_3 = loc4;
	ui4_4 = loc5;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(691, 52, Dtype(tr1)))(tr1, ui4_1x, ui4_2x, ui4_3x, ui4_4x);
	RTNHOOK(13,1);
	ur1 = RTCCL(tr1);
	ur2 = RTCCL(loc3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 366, "fill_rect", loc1))(loc1, ur1x, ur2x);
	RTHOOK(14);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(606, 51, "delete", loc3))(loc3);
	RTHOOK(15);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(loc1);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(29, 32, dtype))(Current, ur1x, ur2x, ui4_1x, ui4_2x);
	RTHOOK(16);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(604, 40, "dispose", loc2))(loc2);
	RTHOOK(17);
	ui4_1 = arg3;
	ui4_2 = arg4;
	ui4_3 = loc4;
	ui4_4 = loc5;
	ur1 = RTCCL(loc1);
	ui4_5 = ((EIF_INTEGER_32) 0L);
	ui4_6 = ((EIF_INTEGER_32) 0L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(215, 32, 215))(Current)).it_i4);
	ui4_7 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(723, 379, "bit_blt", arg2))(arg2, ui4_1x, ui4_2x, ui4_3x, ui4_4x, ur1x, ui4_5x, ui4_6x, ui4_7x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(18);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(12);
	RTEE;
#undef ur1
#undef ur2
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ui4_4
#undef ui4_5
#undef ui4_6
#undef ui4_7
#undef arg5
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {WEL_GDIP_GRAYSCALE_IMAGE_DRAWER}.disabled_color_matrix */
EIF_TYPED_VALUE F30_1947 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disabled_color_matrix";
	RTEX;
	EIF_TYPED_VALUE up1x = {0, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {0, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {0, SK_REF};
#define ur2 ur2x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,tr2);
	RTLR(4,ur2);
	RTLR(5,Result);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 29, Current, 0, 0, 1827);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(29, Current, 1827);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800002A, 0,0); /* Result */
	
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(29, 38, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(29, 37, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	ur2 = RTCCL(tr2);
	Result = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(29, 39, dtype))(Current, ur1x, ur2x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ur2
}

/* {WEL_GDIP_GRAYSCALE_IMAGE_DRAWER}.disabled_color_matrix_1 */
EIF_TYPED_VALUE F30_1948 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disabled_color_matrix_1";
	RTEX;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Result);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 29, Current, 0, 0, 1828);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(29, Current, 1828);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800002A, 0,0); /* Result */
	
	tr1 = RTLN(42);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(42, 32, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) (EIF_REAL_32) 0.2125;
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) (EIF_REAL_32) 0.2125;
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) (EIF_REAL_32) 0.2125;
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = tr1;
	ui4_2 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	RTHOOK(3);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) (EIF_REAL_32) 0.2577;
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) (EIF_REAL_32) 0.2577;
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) (EIF_REAL_32) 0.2577;
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = tr1;
	ui4_2 = ((EIF_INTEGER_32) 1L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	RTHOOK(4);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) (EIF_REAL_32) 0.0361;
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) (EIF_REAL_32) 0.0361;
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) (EIF_REAL_32) 0.0361;
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = tr1;
	ui4_2 = ((EIF_INTEGER_32) 2L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	RTHOOK(5);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) (EIF_REAL_32) 1.0;
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = tr1;
	ui4_2 = ((EIF_INTEGER_32) 3L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	RTHOOK(6);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) (EIF_REAL_32) 0.38;
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) (EIF_REAL_32) 0.38;
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) (EIF_REAL_32) 0.38;
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) (EIF_REAL_32) 0.0;
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) (EIF_REAL_32) 1.0;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = tr1;
	ui4_2 = ((EIF_INTEGER_32) 4L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef ui4_2
}

/* {WEL_GDIP_GRAYSCALE_IMAGE_DRAWER}.disabled_color_matrix_2 */
EIF_TYPED_VALUE F30_1949 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "disabled_color_matrix_2";
	RTEX;
	EIF_TYPED_VALUE ur1x = {0, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_REAL_32 tr4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,Result);
	RTLR(2,Current);
	RTLR(3,tr2);
	RTLR(4,ur1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 29, Current, 0, 0, 1829);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(29, Current, 1829);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800002A, 0,0); /* Result */
	
	tr1 = RTLN(42);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(42, 32, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 1L));
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) tr4_1;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = RTCCL(tr1);
	ui4_2 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	RTHOOK(3);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 1L));
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) tr4_1;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = RTCCL(tr1);
	ui4_2 = ((EIF_INTEGER_32) 1L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	RTHOOK(4);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 1L));
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) tr4_1;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = RTCCL(tr1);
	ui4_2 = ((EIF_INTEGER_32) 2L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	RTHOOK(5);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) tr4_1;
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) (EIF_REAL_32) 0.7;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) tr4_1;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = RTCCL(tr1);
	ui4_2 = ((EIF_INTEGER_32) 3L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	RTHOOK(6);
	ui4_1 = ((EIF_INTEGER_32) 5L);
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1678,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, 1678, typarr0)));
		tr2 = RTLNSP2(eif_non_attached_type(typres0),0,ui4_1,sizeof(EIF_REAL_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 5L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+0) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+1) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+2) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+3) = (EIF_REAL_32) tr4_1;
	tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
	*((EIF_REAL_32 *)tr2+4) = (EIF_REAL_32) tr4_1;
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(1678, 42, Dtype(tr2)))(tr2).it_r;
	ur1 = RTCCL(tr1);
	ui4_2 = ((EIF_INTEGER_32) 4L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 34, "set_m_row", Result))(Result, ur1x, ui4_2x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(7);
		RTCT("not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(8);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef ui4_2
}

/* {WEL_GDIP_GRAYSCALE_IMAGE_DRAWER}.mulitply_color_matrix */
EIF_TYPED_VALUE F30_1950 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "mulitply_color_matrix";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
	EIF_REAL_32 loc5 = (EIF_REAL_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE ur4_1x = {0, SK_REAL32};
#define ur4_1 ur4_1x.it_r4
	EIF_TYPED_VALUE ui4_1x = {0, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {0, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REAL_32 tr4_1;
	EIF_REAL_32 tr4_2;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,tr1);
	RTLR(3,Result);
	RTLR(4,loc4);
	RTLR(5,Current);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_REF, &loc4);
	RTLU(SK_REAL32, &loc5);
	
	RTEAA(l_feature_name, 29, Current, 5, 2, 1830);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(29, Current, 1830);
	if (arg1) {
		RTCC(arg1, 29, l_feature_name, 1, 42);
	}
	if (arg2) {
		RTCC(arg2, 29, l_feature_name, 2, 42);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(Current, 0, 0xF800002A, 0,0); /* Result */
	
	tr1 = RTLN(42);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(42, 32, Dtype(tr1)))(tr1);
	RTNHOOK(3,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAL(Current, 4, 0xF800067F, 0, 0); /* loc4 */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {29,1663,760,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), 1663, typarr0)));
		tr1 = RTLN(typres0);
	}
	tr4_1 = (EIF_REAL_32) ((EIF_REAL_64) 0.0);
	ur4_1 = tr4_1;
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 4L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWC(1663, 50, Dtype(tr1)))(tr1, ur4_1x, ui4_1x, ui4_2x);
	RTNHOOK(4,1);
	loc4 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
	
	loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	for (;;) {
		RTHOOK(6);
		if ((EIF_BOOLEAN) (loc2 > ((EIF_INTEGER_32) 4L))) break;
		RTHOOK(7);
		RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
		
		loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
		for (;;) {
			RTHOOK(8);
			if ((EIF_BOOLEAN) (loc3 > ((EIF_INTEGER_32) 4L))) break;
			RTHOOK(9);
			ui4_1 = loc3;
			ui4_2 = loc2;
			tr4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 36, "m", arg1))(arg1, ui4_1x, ui4_2x)).it_r4);
			ur4_1 = tr4_1;
			ui4_1 = loc3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(1663, 75, "put", loc4))(loc4, ur4_1x, ui4_1x);
			RTHOOK(10);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			loc3++;
		}
		RTHOOK(11);
		RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
		
		loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
		for (;;) {
			RTHOOK(12);
			if ((EIF_BOOLEAN) (loc1 > ((EIF_INTEGER_32) 4L))) break;
			RTHOOK(13);
			RTDBGAL(Current, 5, 0x18000000, 1, 0); /* loc5 */
			
			tr4_1 = (EIF_REAL_32) (((EIF_INTEGER_32) 0L));
			loc5 = (EIF_REAL_32) tr4_1;
			RTHOOK(14);
			RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
			
			loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			for (;;) {
				RTHOOK(15);
				if ((EIF_BOOLEAN) (loc3 > ((EIF_INTEGER_32) 4L))) break;
				RTHOOK(16);
				RTDBGAL(Current, 5, 0x18000000, 1, 0); /* loc5 */
				
				ui4_1 = loc1;
				ui4_2 = loc3;
				tr4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 36, "m", arg2))(arg2, ui4_1x, ui4_2x)).it_r4);
				ui4_1 = loc3;
				tr4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1663, 55, "item", loc4))(loc4, ui4_1x)).it_r4);
				loc5 += (EIF_REAL_32) (tr4_1 * tr4_2);
				RTHOOK(17);
				RTDBGAL(Current, 3, 0x10000000, 1, 0); /* loc3 */
				
				loc3++;
			}
			RTHOOK(18);
			ur4_1 = loc5;
			ui4_1 = loc1;
			ui4_2 = loc2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(42, 33, "set_m", Result))(Result, ur4_1x, ui4_1x, ui4_2x);
			RTHOOK(19);
			RTDBGAL(Current, 1, 0x10000000, 1, 0); /* loc1 */
			
			loc1++;
		}
		RTHOOK(20);
		RTDBGAL(Current, 2, 0x10000000, 1, 0); /* loc2 */
		
		loc2++;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(21);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur4_1
#undef ui4_1
#undef ui4_2
#undef arg2
#undef arg1
}

void EIF_Minit30 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
