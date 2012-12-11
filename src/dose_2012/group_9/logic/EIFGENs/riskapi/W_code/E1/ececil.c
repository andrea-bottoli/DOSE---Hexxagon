#include "eif_eiffel.h"
#include "eif_rout_obj.h"
#include "eaddress.h"

#ifdef __cplusplus
extern "C" {
#endif

	/* TRACING_HANDLER per_thread_trace */
void A32_36 (EIF_REFERENCE Current, EIF_INTEGER_32 arg1, EIF_POINTER arg2, EIF_POINTER arg3, EIF_INTEGER_32 arg4, EIF_BOOLEAN arg5)
{
	EIF_TYPED_VALUE u [5];
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVPF(170, 4, "per_thread_trace", Current))(Current, ((u [0].type = SK_INT32), (u [0].it_i4 = arg1), u [0]), ((u [1].type = SK_POINTER), (u [1].it_p = arg2), u [1]), ((u [2].type = SK_POINTER), (u [2].it_p = arg3), u [2]), ((u [3].type = SK_INT32), (u [3].it_i4 = arg4), u [3]), ((u [4].type = SK_BOOL), (u [4].it_b = arg5), u [4]));
}

	/* HASH_TABLE [G#1, G#2] has */
EIF_TYPED_VALUE _A255_46_2 (EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE, EIF_TYPED_VALUE) , EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	nstcall = 1;
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVPF(93, 3, "has", closed [1].it_r))(closed [1].it_r, open [1]);
}

	/* HASH_TABLE [INTEGER_32, INTEGER_32] has */
EIF_TYPED_VALUE _A376_46_2 (EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE, EIF_TYPED_VALUE) , EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	nstcall = 1;
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVPF(93, 3, "has", closed [1].it_r))(closed [1].it_r, open [1]);
}

	/* HASH_TABLE [G#1, INTEGER_32] has */
EIF_TYPED_VALUE _A440_46_2 (EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE, EIF_TYPED_VALUE) , EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	nstcall = 1;
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVPF(93, 3, "has", closed [1].it_r))(closed [1].it_r, open [1]);
}

	/* HASH_TABLE [INTEGER_32, G#2] has */
EIF_TYPED_VALUE _A753_46_2 (EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE, EIF_TYPED_VALUE) , EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	nstcall = 1;
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVPF(93, 3, "has", closed [1].it_r))(closed [1].it_r, open [1]);
}

	/* HASH_TABLE [NATURAL_32, POINTER] has */
EIF_TYPED_VALUE _A804_46_2 (EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE, EIF_TYPED_VALUE) , EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	nstcall = 1;
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVPF(93, 3, "has", closed [1].it_r))(closed [1].it_r, open [1]);
}

	/* MISMATCH_INFORMATION clear_all */
void A153_89 (EIF_REFERENCE Current)
{
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVPF(93, 33, "clear_all", Current))(Current);
}

	/* MISMATCH_INFORMATION internal_put */
void A153_155 (EIF_REFERENCE Current, EIF_REFERENCE arg1, EIF_POINTER arg2)
{
	EIF_TYPED_VALUE u [2];
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVPF(58, 6, "internal_put", Current))(Current, ((u [0].type = SK_REF), (u [0].it_r = arg1), u [0]), ((u [1].type = SK_POINTER), (u [1].it_p = arg2), u [1]));
}

	/* MISMATCH_INFORMATION set_string_versions */
void A153_156 (EIF_REFERENCE Current, EIF_POINTER arg1, EIF_POINTER arg2)
{
	EIF_TYPED_VALUE u [2];
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVPF(58, 7, "set_string_versions", Current))(Current, ((u [0].type = SK_POINTER), (u [0].it_p = arg1), u [0]), ((u [1].type = SK_POINTER), (u [1].it_p = arg2), u [1]));
}

	/* RT_DBG_CALL_RECORD inline-agent#1 of record_fields */
void _A216_343_2 (void(*f_ptr) (EIF_REFERENCE, EIF_TYPED_VALUE) , EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	nstcall = 1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) F216_6520)(closed [1].it_r, open [1]);
}


static fnptr feif_address_table[] = {
(fnptr)0,
(fnptr)A32_36,
(fnptr)A153_89,
(fnptr)A153_155,
(fnptr)A153_156,
};

fnptr *egc_address_table_init = feif_address_table;



#ifdef __cplusplus
}
#endif
