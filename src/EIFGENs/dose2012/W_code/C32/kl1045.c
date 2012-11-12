/*
 * Code for class KL_BINARY_INPUT_FILE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1045_19013(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1045_19014(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1045_19015(EIF_REFERENCE);
extern void EIF_Minit1045(void);

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

/* {KL_BINARY_INPUT_FILE}.last_character */
EIF_TYPED_VALUE F1045_19013 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_CHAR8;
	r.it_c1 = *(EIF_CHARACTER_8 *)(Current + RTWA(1044,357, Dtype(Current)));
	return r;
}


/* {KL_BINARY_INPUT_FILE}.last_string */
EIF_TYPED_VALUE F1045_19014 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1044,358, Dtype(Current)));
	return r;
}


/* {KL_BINARY_INPUT_FILE}.string_name */
EIF_TYPED_VALUE F1045_19015 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(1044,359, Dtype(Current)));
	return r;
}


void EIF_Minit1045 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
