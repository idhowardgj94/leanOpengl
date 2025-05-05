/* Generated file, do not edit */

#define CAML_INTERNALS
#include "caml/mlvalues.h"
#include "caml/prims.h"

CAMLextern value caml_reset_afl_instrumentation(value full);
CAMLextern value caml_reset_afl_instrumentation(value full);
CAMLextern value caml_alloc_dummy(value size);
CAMLextern value caml_alloc_dummy_function(value size,value arity);
CAMLextern value caml_alloc_dummy_float (value size);
CAMLextern value caml_alloc_dummy_infix(value vsize, value voffset);
CAMLextern value caml_update_dummy(value dummy, value newval);
CAMLextern value caml_atomic_make_contended(value v);
CAMLextern value caml_array_get_addr(value array, value index);
CAMLextern value caml_floatarray_get(value array, value index);
CAMLextern value caml_array_get(value array, value index);
CAMLextern value caml_array_set_addr(value array, value index, value newval);
CAMLextern value caml_floatarray_set(value array, value index, value newval);
CAMLextern value caml_array_set(value array, value index, value newval);
CAMLextern value caml_floatarray_unsafe_get(value array, value index);
CAMLextern value caml_array_unsafe_get(value array, value index);
CAMLextern value caml_floatarray_unsafe_set(value array, value index,value newval);
CAMLextern value caml_array_unsafe_set(value array, value index, value newval);
CAMLextern value caml_floatarray_create(value len);
CAMLextern value caml_make_vect(value len, value init);
CAMLextern value caml_make_float_vect(value len);
CAMLextern value caml_make_array(value init);
CAMLextern value caml_floatarray_blit(value a1, value ofs1, value a2, value ofs2,
                                    value n);
CAMLextern value caml_array_blit(value a1, value ofs1, value a2, value ofs2,
                               value n);
CAMLextern value caml_array_sub(value a, value ofs, value len);
CAMLextern value caml_array_append(value a1, value a2);
CAMLextern value caml_array_concat(value al);
CAMLextern value caml_array_fill(value array,
                               value v_ofs,
                               value v_len,
                               value val);
CAMLextern value caml_record_backtrace(value flag);
CAMLextern value caml_backtrace_status(value vunit);
CAMLextern value caml_ml_debug_info_status(value unit);
CAMLextern value caml_get_exception_raw_backtrace(value unit);
CAMLextern value caml_restore_raw_backtrace(value exn, value backtrace);
CAMLextern value caml_convert_raw_backtrace_slot(value slot);
CAMLextern value caml_convert_raw_backtrace(value bt);
CAMLextern value caml_raw_backtrace_length(value bt);
CAMLextern value caml_raw_backtrace_slot(value bt, value index);
CAMLextern value caml_raw_backtrace_next_slot(value slot);
CAMLextern value caml_get_exception_backtrace(value unit);
CAMLextern value caml_ba_create(value vkind, value vlayout, value vdim);
CAMLextern value caml_ba_get_1(value vb, value vind1);
CAMLextern value caml_ba_get_2(value vb, value vind1, value vind2);
CAMLextern value caml_ba_get_3(value vb, value vind1, value vind2, value vind3);
CAMLextern value caml_ba_get_generic(value vb, value vind);
CAMLextern value caml_ba_uint8_get16(value vb, value vind);
CAMLextern value caml_ba_uint8_get32(value vb, value vind);
CAMLextern value caml_ba_uint8_get64(value vb, value vind);
CAMLextern value caml_ba_set_1(value vb, value vind1, value newval);
CAMLextern value caml_ba_set_2(value vb, value vind1, value vind2, value newval);
CAMLextern value caml_ba_set_3(value vb, value vind1, value vind2, value vind3,
                     value newval);
CAMLextern value caml_ba_set_generic(value vb, value vind, value newval);
CAMLextern value caml_ba_uint8_set16(value vb, value vind, value newval);
CAMLextern value caml_ba_uint8_set32(value vb, value vind, value newval);
CAMLextern value caml_ba_uint8_set64(value vb, value vind, value newval);
CAMLextern value caml_ba_num_dims(value vb);
CAMLextern value caml_ba_dim(value vb, value vn);
CAMLextern value caml_ba_dim_1(value vb);
CAMLextern value caml_ba_dim_2(value vb);
CAMLextern value caml_ba_dim_3(value vb);
CAMLextern value caml_ba_kind(value vb);
CAMLextern value caml_ba_layout(value vb);
CAMLextern value caml_ba_slice(value vb, value vind);
CAMLextern value caml_ba_change_layout(value vb, value vlayout);
CAMLextern value caml_ba_sub(value vb, value vofs, value vlen);
CAMLextern value caml_ba_blit(value vsrc, value vdst);
CAMLextern value caml_ba_fill(value vb, value vinit);
CAMLextern value caml_ba_reshape(value vb, value vdim);
CAMLextern value caml_blake2_create(value hashlen, value key);
CAMLextern value caml_blake2_update(value ctx, value buf, value ofs, value len);
CAMLextern value caml_blake2_final(value ctx, value hashlen);
CAMLextern value caml_blake2_string(value hashlen, value key,
                                  value buf, value ofs, value len);
CAMLextern value caml_register_named_value(value vname, value val);
CAMLextern value caml_compare(value v1, value v2);
CAMLextern value caml_equal(value v1, value v2);
CAMLextern value caml_notequal(value v1, value v2);
CAMLextern value caml_lessthan(value v1, value v2);
CAMLextern value caml_lessequal(value v1, value v2);
CAMLextern value caml_greaterthan(value v1, value v2);
CAMLextern value caml_greaterequal(value v1, value v2);
CAMLextern value caml_domain_spawn(value callback, value term_sync);
CAMLextern value caml_ml_domain_id(value unit);
CAMLextern value caml_ml_domain_cpu_relax(value t);
CAMLextern value caml_domain_dls_set(value t);
CAMLextern value caml_domain_dls_get(value unused);
CAMLextern value caml_domain_dls_compare_and_set(value old, value new);
CAMLextern value caml_recommended_domain_count(value unused);
CAMLextern value caml_dynlink_get_bytecode_sections(value unit);
CAMLextern value caml_dynlink_open_lib(value filename);
CAMLextern value caml_dynlink_close_lib(value handle);
CAMLextern value caml_dynlink_lookup_symbol(value handle, value symbolname);
CAMLextern value caml_dynlink_add_primitive(value handle);
CAMLextern value caml_dynlink_get_current_libs(value unit);
CAMLextern value caml_output_value(value vchan, value v, value flags);
CAMLextern value caml_output_value_to_bytes(value v, value flags);
CAMLextern value caml_output_value_to_string(value v, value flags);
CAMLextern value caml_output_value_to_buffer(value buf, value ofs, value len,
                                           value v, value flags);
CAMLextern value caml_obj_reachable_words(value v);
CAMLextern value caml_alloc_stack(value hval, value hexn, value heff);
CAMLextern value caml_ensure_stack_capacity(value required_space);
CAMLextern value caml_continuation_use_noexc (value cont);
CAMLextern value caml_continuation_use (value cont);
CAMLextern value caml_continuation_use_and_update_handler_noexc
  (value cont, value hval, value hexn, value heff);
CAMLextern value caml_drop_continuation (value cont);
CAMLextern value caml_final_register (value f, value v);
CAMLextern value caml_final_register_called_without_value (value f, value v);
CAMLextern value caml_final_release (value unit);
CAMLextern value caml_format_float(value fmt, value arg);
CAMLextern value caml_hexstring_of_float(value arg, value vprec, value vstyle);
CAMLextern value caml_float_of_string(value vs);
CAMLextern value caml_int_of_float(value f);
CAMLextern value caml_float_of_int(value n);
CAMLextern value caml_neg_float(value f);
CAMLextern value caml_abs_float(value f);
CAMLextern value caml_add_float(value f, value g);
CAMLextern value caml_sub_float(value f, value g);
CAMLextern value caml_mul_float(value f, value g);
CAMLextern value caml_div_float(value f, value g);
CAMLextern value caml_exp_float(value f);
CAMLextern value caml_exp2_float(value f);
CAMLextern value caml_trunc_float(value f);
CAMLextern value caml_round_float(value f);
CAMLextern value caml_floor_float(value f);
CAMLextern value caml_nextafter_float(value x, value y);
CAMLextern value caml_fma_float(value f1, value f2, value f3);
CAMLextern value caml_fmod_float(value f1, value f2);
CAMLextern value caml_frexp_float(value f);
CAMLextern value caml_ldexp_float(value f, value i);
CAMLextern value caml_log_float(value f);
CAMLextern value caml_log10_float(value f);
CAMLextern value caml_log2_float(value f);
CAMLextern value caml_modf_float(value f);
CAMLextern value caml_sqrt_float(value f);
CAMLextern value caml_cbrt_float(value f);
CAMLextern value caml_power_float(value f, value g);
CAMLextern value caml_sin_float(value f);
CAMLextern value caml_sinh_float(value f);
CAMLextern value caml_cos_float(value f);
CAMLextern value caml_cosh_float(value f);
CAMLextern value caml_tan_float(value f);
CAMLextern value caml_tanh_float(value f);
CAMLextern value caml_asin_float(value f);
CAMLextern value caml_asinh_float(value f);
CAMLextern value caml_acos_float(value f);
CAMLextern value caml_acosh_float(value f);
CAMLextern value caml_atan_float(value f);
CAMLextern value caml_atanh_float(value f);
CAMLextern value caml_atan2_float(value f, value g);
CAMLextern value caml_ceil_float(value f);
CAMLextern value caml_hypot_float(value f, value g);
CAMLextern value caml_expm1_float(value f);
CAMLextern value caml_log1p_float(value f);
CAMLextern value caml_erf_float(value f);
CAMLextern value caml_erfc_float(value f);
CAMLextern value caml_copysign_float(value f, value g);
CAMLextern value caml_signbit(double x);
CAMLextern value caml_signbit_float(value f);
CAMLextern value caml_neq_float(value f, value g);
CAMLextern value caml_eq_float(value f, value g);
CAMLextern value caml_le_float(value f, value g);
CAMLextern value caml_lt_float(value f, value g);
CAMLextern value caml_ge_float(value f, value g);
CAMLextern value caml_gt_float(value f, value g);
CAMLextern value caml_float_compare(value vf, value vg);
CAMLextern value caml_classify_float(value vd);
CAMLextern value caml_gc_quick_stat(value v);
CAMLextern value caml_gc_minor_words(value v);
CAMLextern value caml_gc_counters(value v);
CAMLextern value caml_gc_get(value v);
CAMLextern value caml_gc_set(value v);
CAMLextern value caml_gc_minor(value v);
CAMLextern value caml_gc_major(value v);
CAMLextern value caml_gc_full_major(value v);
CAMLextern value caml_gc_major_slice (value v);
CAMLextern value caml_gc_compaction(value v);
CAMLextern value caml_gc_stat(value v);
CAMLextern value caml_get_minor_free (value v);
CAMLextern value caml_runtime_variant (value unit);
CAMLextern value caml_runtime_parameters (value unit);
CAMLextern value caml_ml_enable_runtime_warnings(value vbool);
CAMLextern value caml_ml_runtime_warnings_enabled(value unit);
CAMLextern value caml_hash(value count, value limit, value seed, value obj);
CAMLextern value caml_string_hash(value seed, value string);
CAMLextern value caml_input_value(value vchan);
CAMLextern value caml_input_value_to_outside_heap(value vchan);
CAMLextern value caml_input_value_from_bytes(value str, value ofs);
CAMLextern value caml_marshal_data_size(value buff, value ofs);
CAMLextern value caml_bswap16(value v);
CAMLextern value caml_int_compare(value v1, value v2);
CAMLextern value caml_int_of_string(value s);
CAMLextern value caml_format_int(value fmt, value arg);
CAMLextern value caml_int32_neg(value v);
CAMLextern value caml_int32_add(value v1, value v2);
CAMLextern value caml_int32_sub(value v1, value v2);
CAMLextern value caml_int32_mul(value v1, value v2);
CAMLextern value caml_int32_div(value v1, value v2);
CAMLextern value caml_int32_mod(value v1, value v2);
CAMLextern value caml_int32_and(value v1, value v2);
CAMLextern value caml_int32_or(value v1, value v2);
CAMLextern value caml_int32_xor(value v1, value v2);
CAMLextern value caml_int32_shift_left(value v1, value v2);
CAMLextern value caml_int32_shift_right(value v1, value v2);
CAMLextern value caml_int32_shift_right_unsigned(value v1, value v2);
CAMLextern value caml_int32_bswap(value v);
CAMLextern value caml_int32_of_int(value v);
CAMLextern value caml_int32_to_int(value v);
CAMLextern value caml_int32_of_float(value v);
CAMLextern value caml_int32_to_float(value v);
CAMLextern value caml_int32_compare(value v1, value v2);
CAMLextern value caml_int32_format(value fmt, value arg);
CAMLextern value caml_int32_of_string(value s);
CAMLextern value caml_int32_bits_of_float(value vd);
CAMLextern value caml_int32_float_of_bits(value vi);
CAMLextern value caml_int64_neg(value v);
CAMLextern value caml_int64_add(value v1, value v2);
CAMLextern value caml_int64_sub(value v1, value v2);
CAMLextern value caml_int64_mul(value v1, value v2);
CAMLextern value caml_int64_div(value v1, value v2);
CAMLextern value caml_int64_mod(value v1, value v2);
CAMLextern value caml_int64_and(value v1, value v2);
CAMLextern value caml_int64_or(value v1, value v2);
CAMLextern value caml_int64_xor(value v1, value v2);
CAMLextern value caml_int64_shift_left(value v1, value v2);
CAMLextern value caml_int64_shift_right(value v1, value v2);
CAMLextern value caml_int64_shift_right_unsigned(value v1, value v2);
CAMLextern value caml_int64_bswap(value v);
CAMLextern value caml_int64_of_int(value v);
CAMLextern value caml_int64_to_int(value v);
CAMLextern value caml_int64_of_float(value v);
CAMLextern value caml_int64_to_float(value v);
CAMLextern value caml_int64_of_int32(value v);
CAMLextern value caml_int64_to_int32(value v);
CAMLextern value caml_int64_of_nativeint(value v);
CAMLextern value caml_int64_to_nativeint(value v);
CAMLextern value caml_int64_compare(value v1, value v2);
CAMLextern value caml_int64_format(value fmt, value arg);
CAMLextern value caml_int64_of_string(value s);
CAMLextern value caml_int64_bits_of_float(value vd);
CAMLextern value caml_int64_float_of_bits(value vi);
CAMLextern value caml_nativeint_neg(value v);
CAMLextern value caml_nativeint_add(value v1, value v2);
CAMLextern value caml_nativeint_sub(value v1, value v2);
CAMLextern value caml_nativeint_mul(value v1, value v2);
CAMLextern value caml_nativeint_div(value v1, value v2);
CAMLextern value caml_nativeint_mod(value v1, value v2);
CAMLextern value caml_nativeint_and(value v1, value v2);
CAMLextern value caml_nativeint_or(value v1, value v2);
CAMLextern value caml_nativeint_xor(value v1, value v2);
CAMLextern value caml_nativeint_shift_left(value v1, value v2);
CAMLextern value caml_nativeint_shift_right(value v1, value v2);
CAMLextern value caml_nativeint_shift_right_unsigned(value v1, value v2);
CAMLextern value caml_nativeint_bswap(value v);
CAMLextern value caml_nativeint_of_int(value v);
CAMLextern value caml_nativeint_to_int(value v);
CAMLextern value caml_nativeint_of_float(value v);
CAMLextern value caml_nativeint_to_float(value v);
CAMLextern value caml_nativeint_of_int32(value v);
CAMLextern value caml_nativeint_to_int32(value v);
CAMLextern value caml_nativeint_compare(value v1, value v2);
CAMLextern value caml_nativeint_format(value fmt, value arg);
CAMLextern value caml_nativeint_of_string(value s);
CAMLextern value caml_ml_open_descriptor_in_with_flags(int fd, int flags);
CAMLextern value caml_ml_open_descriptor_in(value fd);
CAMLextern value caml_ml_open_descriptor_out_with_flags(int fd, int flags);
CAMLextern value caml_ml_open_descriptor_out(value fd);
CAMLextern value caml_ml_set_channel_name(value vchannel, value vname);
CAMLextern value caml_ml_out_channels_list (value unit);
CAMLextern value caml_channel_descriptor(value vchannel);
CAMLextern value caml_ml_close_channel(value vchannel);
CAMLextern value caml_ml_channel_size(value vchannel);
CAMLextern value caml_ml_channel_size_64(value vchannel);
CAMLextern value caml_ml_set_binary_mode(value vchannel, value mode);
CAMLextern value caml_ml_is_binary_mode(value vchannel);
CAMLextern value caml_ml_flush(value vchannel);
CAMLextern value caml_ml_set_buffered(value vchannel, value mode);
CAMLextern value caml_ml_is_buffered(value vchannel);
CAMLextern value caml_ml_output_char(value vchannel, value ch);
CAMLextern value caml_ml_output_int(value vchannel, value w);
CAMLextern value caml_ml_output_bytes(value vchannel, value buff, value start,
                              value length);
CAMLextern value caml_ml_output(value vchannel, value buff, value start,
                              value length);
CAMLextern value caml_ml_output_bigarray(value vchannel, value vbuf,
                                       value vpos, value vlen);
CAMLextern value caml_ml_seek_out(value vchannel, value pos);
CAMLextern value caml_ml_seek_out_64(value vchannel, value pos);
CAMLextern value caml_ml_pos_out(value vchannel);
CAMLextern value caml_ml_pos_out_64(value vchannel);
CAMLextern value caml_ml_input_char(value vchannel);
CAMLextern value caml_ml_input_int(value vchannel);
CAMLextern value caml_ml_input(value vchannel, value buff, value vstart,
                             value vlength);
CAMLextern value caml_ml_input_bigarray(value vchannel, value vbuf,
                                      value vpos, value vlen);
CAMLextern value caml_ml_seek_in(value vchannel, value pos);
CAMLextern value caml_ml_seek_in_64(value vchannel, value pos);
CAMLextern value caml_ml_pos_in(value vchannel);
CAMLextern value caml_ml_pos_in_64(value vchannel);
CAMLextern value caml_ml_input_scan_line(value vchannel);
CAMLextern value caml_terminfo_rows(value vchannel);
CAMLextern value caml_lex_engine(value vtbl, value start_state, value vlexbuf);
CAMLextern value caml_new_lex_engine(value vtbl, value start_state,
                                   value vlexbuf);
CAMLextern value caml_md5_string(value str, value ofs, value len);
CAMLextern value caml_md5_chan(value vchan, value len);
CAMLextern value caml_atomic_load (value ref);
CAMLextern value caml_atomic_exchange (value ref, value v);
CAMLextern value caml_atomic_cas (value ref, value oldv, value newv);
CAMLextern value caml_atomic_fetch_add (value ref, value incr);
CAMLextern value caml_memprof_start(value lv, value szv, value tracker_param);
CAMLextern value caml_memprof_stop(value unit);
CAMLextern value caml_memprof_discard(value profile);
CAMLextern value caml_memprof_start(value lv, value szv, value tracker_param);
CAMLextern value caml_memprof_stop(value unit);
CAMLextern value caml_get_global_data(value unit);
CAMLextern value caml_reify_bytecode(value ls_prog,
                                   value debuginfo,
                                   value digest_opt);
CAMLextern value caml_static_release_bytecode(value bc);
CAMLextern value caml_realloc_global(value size);
CAMLextern value caml_get_current_environment(value unit);
CAMLextern value caml_invoke_traced_function(value codeptr, value env, value arg);
CAMLextern value caml_obj_tag(value arg);
CAMLextern value caml_obj_raw_field(value arg, value pos);
CAMLextern value caml_obj_set_raw_field(value arg, value pos, value bits);
CAMLextern value caml_obj_block(value tag, value size);
CAMLextern value caml_obj_with_tag(value new_tag_v, value arg);
CAMLextern value caml_obj_dup(value arg);
CAMLextern value caml_obj_add_offset (value v, value offset);
CAMLextern value caml_obj_compare_and_swap (value v, value f,
                                          value oldv, value newv);
CAMLextern value caml_obj_is_shared (value obj);
CAMLextern value caml_lazy_make_forward (value v);
CAMLextern value caml_lazy_reset_to_lazy (value v);
CAMLextern value caml_lazy_update_to_forward (value v);
CAMLextern value caml_lazy_read_result (value v);
CAMLextern value caml_lazy_update_to_forcing (value v);
CAMLextern value caml_get_public_method (value obj, value tag);
CAMLextern value caml_fresh_oo_id (value v);
CAMLextern value caml_set_oo_id (value obj);
CAMLextern value caml_int_as_pointer (value n);
CAMLextern value caml_parse_engine(value vtables, value venv,
                                 value cmd, value arg);
CAMLextern value caml_set_parser_trace(value flag);
CAMLextern value caml_lxm_next(value v);
CAMLextern value caml_ml_runtime_events_start(value vunit);
CAMLextern value caml_ml_runtime_events_pause(value vunit);
CAMLextern value caml_ml_runtime_events_resume(value vunit);
CAMLextern value caml_ml_runtime_events_are_active(void);
CAMLextern value caml_runtime_events_user_register(value event_name,
  value event_tag, value event_type);
CAMLextern value caml_runtime_events_user_write(
  value write_buffer, value event, value event_content);
CAMLextern value caml_install_signal_handler(value signal_number, value action);
CAMLextern value caml_ml_string_length(value s);
CAMLextern value caml_ml_bytes_length(value s);
CAMLextern value caml_create_string(value len);
CAMLextern value caml_create_bytes(value len);
CAMLextern value caml_string_get(value str, value index);
CAMLextern value caml_bytes_get(value str, value index);
CAMLextern value caml_bytes_set(value str, value index, value newval);
CAMLextern value caml_string_set(value str, value index, value newval);
CAMLextern value caml_string_get16(value str, value index);
CAMLextern value caml_bytes_get16(value str, value index);
CAMLextern value caml_string_get32(value str, value index);
CAMLextern value caml_bytes_get32(value str, value index);
CAMLextern value caml_string_get64(value str, value index);
CAMLextern value caml_bytes_get64(value str, value index);
CAMLextern value caml_bytes_set16(value str, value index, value newval);
CAMLextern value caml_bytes_set32(value str, value index, value newval);
CAMLextern value caml_bytes_set64(value str, value index, value newval);
CAMLextern value caml_string_equal(value s1, value s2);
CAMLextern value caml_bytes_equal(value s1, value s2);
CAMLextern value caml_string_notequal(value s1, value s2);
CAMLextern value caml_bytes_notequal(value s1, value s2);
CAMLextern value caml_string_compare(value s1, value s2);
CAMLextern value caml_bytes_compare(value s1, value s2);
CAMLextern value caml_string_lessthan(value s1, value s2);
CAMLextern value caml_bytes_lessthan(value s1, value s2);
CAMLextern value caml_string_lessequal(value s1, value s2);
CAMLextern value caml_bytes_lessequal(value s1, value s2);
CAMLextern value caml_string_greaterthan(value s1, value s2);
CAMLextern value caml_bytes_greaterthan(value s1, value s2);
CAMLextern value caml_string_greaterequal(value s1, value s2);
CAMLextern value caml_bytes_greaterequal(value s1, value s2);
CAMLextern value caml_blit_bytes(value s1, value ofs1, value s2, value ofs2,
                                value n);
CAMLextern value caml_blit_string(value s1, value ofs1, value s2, value ofs2,
                                value n);
CAMLextern value caml_fill_bytes(value s, value offset, value len, value init);
CAMLextern value caml_fill_string(value s, value offset, value len, value init);
CAMLextern value caml_string_of_bytes(value bv);
CAMLextern value caml_bytes_of_string(value bv);
CAMLextern value caml_ml_mutex_new(value unit);
CAMLextern value caml_ml_mutex_lock(value wrapper);
CAMLextern value caml_ml_mutex_unlock(value wrapper);
CAMLextern value caml_ml_mutex_try_lock(value wrapper);
CAMLextern value caml_ml_condition_new(value unit);
CAMLextern value caml_ml_condition_wait(value wcond, value wmut);
CAMLextern value caml_ml_condition_signal(value wrapper);
CAMLextern value caml_ml_condition_broadcast(value wrapper);
CAMLextern value caml_sys_exit(value retcode);
CAMLextern value caml_sys_open(value path, value vflags, value vperm);
CAMLextern value caml_sys_close(value fd_v);
CAMLextern value caml_sys_file_exists(value name);
CAMLextern value caml_sys_is_directory(value name);
CAMLextern value caml_sys_is_regular_file(value name);
CAMLextern value caml_sys_remove(value name);
CAMLextern value caml_sys_rename(value oldname, value newname);
CAMLextern value caml_sys_chdir(value dirname);
CAMLextern value caml_sys_mkdir(value path, value vperm);
CAMLextern value caml_sys_rmdir(value path);
CAMLextern value caml_sys_getcwd(value unit);
CAMLextern value caml_sys_unsafe_getenv(value var);
CAMLextern value caml_sys_getenv(value var);
CAMLextern value caml_sys_get_argv(value unit);
CAMLextern value caml_sys_argv(value unit);
CAMLextern value caml_sys_modify_argv(value new_argv);
CAMLextern value caml_sys_executable_name(value unit);
CAMLextern value caml_sys_system_command(value command);
CAMLextern value caml_sys_system_command(value command);
CAMLextern value caml_sys_time_include_children(value include_children);
CAMLextern value caml_sys_time(value unit);
CAMLextern value caml_sys_random_seed (value unit);
CAMLextern value caml_sys_const_big_endian(value unit);
CAMLextern value caml_sys_const_word_size(value unit);
CAMLextern value caml_sys_const_int_size(value unit);
CAMLextern value caml_sys_const_max_wosize(value unit);
CAMLextern value caml_sys_const_ostype_unix(value unit);
CAMLextern value caml_sys_const_ostype_win32(value unit);
CAMLextern value caml_sys_const_ostype_cygwin(value unit);
CAMLextern value caml_sys_const_backend_type(value unit);
CAMLextern value caml_sys_get_config(value unit);
CAMLextern value caml_sys_read_directory(value path);
CAMLextern value caml_sys_isatty(value chan);
CAMLextern value caml_xdg_defaults(value unit);
CAMLextern value caml_ephe_create (value len);
CAMLextern value caml_weak_create (value len);
CAMLextern value caml_ephe_set_key (value e, value n, value el);
CAMLextern value caml_ephe_unset_key (value e, value n);
CAMLextern value caml_weak_set (value ar, value n, value el);
CAMLextern value caml_ephe_set_data (value e, value el);
CAMLextern value caml_ephe_unset_data (value e);
CAMLextern value caml_ephe_get_key (value e, value n);
CAMLextern value caml_weak_get (value ar, value n);
CAMLextern value caml_ephe_get_key_copy (value e, value n);
CAMLextern value caml_weak_get_copy (value e, value n);
CAMLextern value caml_ephe_get_data (value e);
CAMLextern value caml_ephe_get_data_copy (value e);
CAMLextern value caml_ephe_check_key (value e, value n);
CAMLextern value caml_weak_check (value e, value n);
CAMLextern value caml_ephe_check_data (value e);
CAMLextern value caml_ephe_blit_key (value es, value ofs,
                                   value ed, value ofd, value len);
CAMLextern value caml_ephe_blit_data (value es, value ed);
CAMLextern value caml_weak_blit (value es, value ofs,
                      value ed, value ofd, value len);
CAMLextern value caml_get_current_callstack (value max_frames_value);
CAMLextern value caml_get_continuation_callstack (value cont, value max_frames);
CAMLextern value caml_zstd_initialize(value vunit);
CAMLextern value caml_zstd_initialize(value vunit);

const c_primitive caml_builtin_cprim[] = {
  (c_primitive) caml_abs_float,
  (c_primitive) caml_acos_float,
  (c_primitive) caml_acosh_float,
  (c_primitive) caml_add_float,
  (c_primitive) caml_alloc_dummy,
  (c_primitive) caml_alloc_dummy_float,
  (c_primitive) caml_alloc_dummy_function,
  (c_primitive) caml_alloc_dummy_infix,
  (c_primitive) caml_alloc_stack,
  (c_primitive) caml_array_append,
  (c_primitive) caml_array_blit,
  (c_primitive) caml_array_concat,
  (c_primitive) caml_array_fill,
  (c_primitive) caml_array_get,
  (c_primitive) caml_array_get_addr,
  (c_primitive) caml_array_set,
  (c_primitive) caml_array_set_addr,
  (c_primitive) caml_array_sub,
  (c_primitive) caml_array_unsafe_get,
  (c_primitive) caml_array_unsafe_set,
  (c_primitive) caml_asin_float,
  (c_primitive) caml_asinh_float,
  (c_primitive) caml_atan2_float,
  (c_primitive) caml_atan_float,
  (c_primitive) caml_atanh_float,
  (c_primitive) caml_atomic_cas,
  (c_primitive) caml_atomic_exchange,
  (c_primitive) caml_atomic_fetch_add,
  (c_primitive) caml_atomic_load,
  (c_primitive) caml_atomic_make_contended,
  (c_primitive) caml_ba_blit,
  (c_primitive) caml_ba_change_layout,
  (c_primitive) caml_ba_create,
  (c_primitive) caml_ba_dim,
  (c_primitive) caml_ba_dim_1,
  (c_primitive) caml_ba_dim_2,
  (c_primitive) caml_ba_dim_3,
  (c_primitive) caml_ba_fill,
  (c_primitive) caml_ba_get_1,
  (c_primitive) caml_ba_get_2,
  (c_primitive) caml_ba_get_3,
  (c_primitive) caml_ba_get_generic,
  (c_primitive) caml_ba_kind,
  (c_primitive) caml_ba_layout,
  (c_primitive) caml_ba_num_dims,
  (c_primitive) caml_ba_reshape,
  (c_primitive) caml_ba_set_1,
  (c_primitive) caml_ba_set_2,
  (c_primitive) caml_ba_set_3,
  (c_primitive) caml_ba_set_generic,
  (c_primitive) caml_ba_slice,
  (c_primitive) caml_ba_sub,
  (c_primitive) caml_ba_uint8_get16,
  (c_primitive) caml_ba_uint8_get32,
  (c_primitive) caml_ba_uint8_get64,
  (c_primitive) caml_ba_uint8_set16,
  (c_primitive) caml_ba_uint8_set32,
  (c_primitive) caml_ba_uint8_set64,
  (c_primitive) caml_backtrace_status,
  (c_primitive) caml_blake2_create,
  (c_primitive) caml_blake2_final,
  (c_primitive) caml_blake2_string,
  (c_primitive) caml_blake2_update,
  (c_primitive) caml_blit_bytes,
  (c_primitive) caml_blit_string,
  (c_primitive) caml_bswap16,
  (c_primitive) caml_bytes_compare,
  (c_primitive) caml_bytes_equal,
  (c_primitive) caml_bytes_get,
  (c_primitive) caml_bytes_get16,
  (c_primitive) caml_bytes_get32,
  (c_primitive) caml_bytes_get64,
  (c_primitive) caml_bytes_greaterequal,
  (c_primitive) caml_bytes_greaterthan,
  (c_primitive) caml_bytes_lessequal,
  (c_primitive) caml_bytes_lessthan,
  (c_primitive) caml_bytes_notequal,
  (c_primitive) caml_bytes_of_string,
  (c_primitive) caml_bytes_set,
  (c_primitive) caml_bytes_set16,
  (c_primitive) caml_bytes_set32,
  (c_primitive) caml_bytes_set64,
  (c_primitive) caml_cbrt_float,
  (c_primitive) caml_ceil_float,
  (c_primitive) caml_channel_descriptor,
  (c_primitive) caml_classify_float,
  (c_primitive) caml_compare,
  (c_primitive) caml_continuation_use,
  (c_primitive) caml_continuation_use_and_update_handler_noexc,
  (c_primitive) caml_continuation_use_noexc,
  (c_primitive) caml_convert_raw_backtrace,
  (c_primitive) caml_convert_raw_backtrace_slot,
  (c_primitive) caml_copysign_float,
  (c_primitive) caml_cos_float,
  (c_primitive) caml_cosh_float,
  (c_primitive) caml_create_bytes,
  (c_primitive) caml_create_string,
  (c_primitive) caml_div_float,
  (c_primitive) caml_domain_dls_compare_and_set,
  (c_primitive) caml_domain_dls_get,
  (c_primitive) caml_domain_dls_set,
  (c_primitive) caml_domain_spawn,
  (c_primitive) caml_drop_continuation,
  (c_primitive) caml_dynlink_add_primitive,
  (c_primitive) caml_dynlink_close_lib,
  (c_primitive) caml_dynlink_get_bytecode_sections,
  (c_primitive) caml_dynlink_get_current_libs,
  (c_primitive) caml_dynlink_lookup_symbol,
  (c_primitive) caml_dynlink_open_lib,
  (c_primitive) caml_ensure_stack_capacity,
  (c_primitive) caml_ephe_blit_data,
  (c_primitive) caml_ephe_blit_key,
  (c_primitive) caml_ephe_check_data,
  (c_primitive) caml_ephe_check_key,
  (c_primitive) caml_ephe_create,
  (c_primitive) caml_ephe_get_data,
  (c_primitive) caml_ephe_get_data_copy,
  (c_primitive) caml_ephe_get_key,
  (c_primitive) caml_ephe_get_key_copy,
  (c_primitive) caml_ephe_set_data,
  (c_primitive) caml_ephe_set_key,
  (c_primitive) caml_ephe_unset_data,
  (c_primitive) caml_ephe_unset_key,
  (c_primitive) caml_eq_float,
  (c_primitive) caml_equal,
  (c_primitive) caml_erf_float,
  (c_primitive) caml_erfc_float,
  (c_primitive) caml_exp2_float,
  (c_primitive) caml_exp_float,
  (c_primitive) caml_expm1_float,
  (c_primitive) caml_fill_bytes,
  (c_primitive) caml_fill_string,
  (c_primitive) caml_final_register,
  (c_primitive) caml_final_register_called_without_value,
  (c_primitive) caml_final_release,
  (c_primitive) caml_float_compare,
  (c_primitive) caml_float_of_int,
  (c_primitive) caml_float_of_string,
  (c_primitive) caml_floatarray_blit,
  (c_primitive) caml_floatarray_create,
  (c_primitive) caml_floatarray_get,
  (c_primitive) caml_floatarray_set,
  (c_primitive) caml_floatarray_unsafe_get,
  (c_primitive) caml_floatarray_unsafe_set,
  (c_primitive) caml_floor_float,
  (c_primitive) caml_fma_float,
  (c_primitive) caml_fmod_float,
  (c_primitive) caml_format_float,
  (c_primitive) caml_format_int,
  (c_primitive) caml_fresh_oo_id,
  (c_primitive) caml_frexp_float,
  (c_primitive) caml_gc_compaction,
  (c_primitive) caml_gc_counters,
  (c_primitive) caml_gc_full_major,
  (c_primitive) caml_gc_get,
  (c_primitive) caml_gc_major,
  (c_primitive) caml_gc_major_slice,
  (c_primitive) caml_gc_minor,
  (c_primitive) caml_gc_minor_words,
  (c_primitive) caml_gc_quick_stat,
  (c_primitive) caml_gc_set,
  (c_primitive) caml_gc_stat,
  (c_primitive) caml_ge_float,
  (c_primitive) caml_get_continuation_callstack,
  (c_primitive) caml_get_current_callstack,
  (c_primitive) caml_get_current_environment,
  (c_primitive) caml_get_exception_backtrace,
  (c_primitive) caml_get_exception_raw_backtrace,
  (c_primitive) caml_get_global_data,
  (c_primitive) caml_get_minor_free,
  (c_primitive) caml_get_public_method,
  (c_primitive) caml_greaterequal,
  (c_primitive) caml_greaterthan,
  (c_primitive) caml_gt_float,
  (c_primitive) caml_hash,
  (c_primitive) caml_hexstring_of_float,
  (c_primitive) caml_hypot_float,
  (c_primitive) caml_input_value,
  (c_primitive) caml_input_value_from_bytes,
  (c_primitive) caml_input_value_to_outside_heap,
  (c_primitive) caml_install_signal_handler,
  (c_primitive) caml_int32_add,
  (c_primitive) caml_int32_and,
  (c_primitive) caml_int32_bits_of_float,
  (c_primitive) caml_int32_bswap,
  (c_primitive) caml_int32_compare,
  (c_primitive) caml_int32_div,
  (c_primitive) caml_int32_float_of_bits,
  (c_primitive) caml_int32_format,
  (c_primitive) caml_int32_mod,
  (c_primitive) caml_int32_mul,
  (c_primitive) caml_int32_neg,
  (c_primitive) caml_int32_of_float,
  (c_primitive) caml_int32_of_int,
  (c_primitive) caml_int32_of_string,
  (c_primitive) caml_int32_or,
  (c_primitive) caml_int32_shift_left,
  (c_primitive) caml_int32_shift_right,
  (c_primitive) caml_int32_shift_right_unsigned,
  (c_primitive) caml_int32_sub,
  (c_primitive) caml_int32_to_float,
  (c_primitive) caml_int32_to_int,
  (c_primitive) caml_int32_xor,
  (c_primitive) caml_int64_add,
  (c_primitive) caml_int64_and,
  (c_primitive) caml_int64_bits_of_float,
  (c_primitive) caml_int64_bswap,
  (c_primitive) caml_int64_compare,
  (c_primitive) caml_int64_div,
  (c_primitive) caml_int64_float_of_bits,
  (c_primitive) caml_int64_format,
  (c_primitive) caml_int64_mod,
  (c_primitive) caml_int64_mul,
  (c_primitive) caml_int64_neg,
  (c_primitive) caml_int64_of_float,
  (c_primitive) caml_int64_of_int,
  (c_primitive) caml_int64_of_int32,
  (c_primitive) caml_int64_of_nativeint,
  (c_primitive) caml_int64_of_string,
  (c_primitive) caml_int64_or,
  (c_primitive) caml_int64_shift_left,
  (c_primitive) caml_int64_shift_right,
  (c_primitive) caml_int64_shift_right_unsigned,
  (c_primitive) caml_int64_sub,
  (c_primitive) caml_int64_to_float,
  (c_primitive) caml_int64_to_int,
  (c_primitive) caml_int64_to_int32,
  (c_primitive) caml_int64_to_nativeint,
  (c_primitive) caml_int64_xor,
  (c_primitive) caml_int_as_pointer,
  (c_primitive) caml_int_compare,
  (c_primitive) caml_int_of_float,
  (c_primitive) caml_int_of_string,
  (c_primitive) caml_invoke_traced_function,
  (c_primitive) caml_lazy_make_forward,
  (c_primitive) caml_lazy_read_result,
  (c_primitive) caml_lazy_reset_to_lazy,
  (c_primitive) caml_lazy_update_to_forcing,
  (c_primitive) caml_lazy_update_to_forward,
  (c_primitive) caml_ldexp_float,
  (c_primitive) caml_le_float,
  (c_primitive) caml_lessequal,
  (c_primitive) caml_lessthan,
  (c_primitive) caml_lex_engine,
  (c_primitive) caml_log10_float,
  (c_primitive) caml_log1p_float,
  (c_primitive) caml_log2_float,
  (c_primitive) caml_log_float,
  (c_primitive) caml_lt_float,
  (c_primitive) caml_lxm_next,
  (c_primitive) caml_make_array,
  (c_primitive) caml_make_float_vect,
  (c_primitive) caml_make_vect,
  (c_primitive) caml_marshal_data_size,
  (c_primitive) caml_md5_chan,
  (c_primitive) caml_md5_string,
  (c_primitive) caml_memprof_discard,
  (c_primitive) caml_memprof_start,
  (c_primitive) caml_memprof_stop,
  (c_primitive) caml_ml_bytes_length,
  (c_primitive) caml_ml_channel_size,
  (c_primitive) caml_ml_channel_size_64,
  (c_primitive) caml_ml_close_channel,
  (c_primitive) caml_ml_condition_broadcast,
  (c_primitive) caml_ml_condition_new,
  (c_primitive) caml_ml_condition_signal,
  (c_primitive) caml_ml_condition_wait,
  (c_primitive) caml_ml_debug_info_status,
  (c_primitive) caml_ml_domain_cpu_relax,
  (c_primitive) caml_ml_domain_id,
  (c_primitive) caml_ml_enable_runtime_warnings,
  (c_primitive) caml_ml_flush,
  (c_primitive) caml_ml_input,
  (c_primitive) caml_ml_input_bigarray,
  (c_primitive) caml_ml_input_char,
  (c_primitive) caml_ml_input_int,
  (c_primitive) caml_ml_input_scan_line,
  (c_primitive) caml_ml_is_binary_mode,
  (c_primitive) caml_ml_is_buffered,
  (c_primitive) caml_ml_mutex_lock,
  (c_primitive) caml_ml_mutex_new,
  (c_primitive) caml_ml_mutex_try_lock,
  (c_primitive) caml_ml_mutex_unlock,
  (c_primitive) caml_ml_open_descriptor_in,
  (c_primitive) caml_ml_open_descriptor_in_with_flags,
  (c_primitive) caml_ml_open_descriptor_out,
  (c_primitive) caml_ml_open_descriptor_out_with_flags,
  (c_primitive) caml_ml_out_channels_list,
  (c_primitive) caml_ml_output,
  (c_primitive) caml_ml_output_bigarray,
  (c_primitive) caml_ml_output_bytes,
  (c_primitive) caml_ml_output_char,
  (c_primitive) caml_ml_output_int,
  (c_primitive) caml_ml_pos_in,
  (c_primitive) caml_ml_pos_in_64,
  (c_primitive) caml_ml_pos_out,
  (c_primitive) caml_ml_pos_out_64,
  (c_primitive) caml_ml_runtime_events_are_active,
  (c_primitive) caml_ml_runtime_events_pause,
  (c_primitive) caml_ml_runtime_events_resume,
  (c_primitive) caml_ml_runtime_events_start,
  (c_primitive) caml_ml_runtime_warnings_enabled,
  (c_primitive) caml_ml_seek_in,
  (c_primitive) caml_ml_seek_in_64,
  (c_primitive) caml_ml_seek_out,
  (c_primitive) caml_ml_seek_out_64,
  (c_primitive) caml_ml_set_binary_mode,
  (c_primitive) caml_ml_set_buffered,
  (c_primitive) caml_ml_set_channel_name,
  (c_primitive) caml_ml_string_length,
  (c_primitive) caml_modf_float,
  (c_primitive) caml_mul_float,
  (c_primitive) caml_nativeint_add,
  (c_primitive) caml_nativeint_and,
  (c_primitive) caml_nativeint_bswap,
  (c_primitive) caml_nativeint_compare,
  (c_primitive) caml_nativeint_div,
  (c_primitive) caml_nativeint_format,
  (c_primitive) caml_nativeint_mod,
  (c_primitive) caml_nativeint_mul,
  (c_primitive) caml_nativeint_neg,
  (c_primitive) caml_nativeint_of_float,
  (c_primitive) caml_nativeint_of_int,
  (c_primitive) caml_nativeint_of_int32,
  (c_primitive) caml_nativeint_of_string,
  (c_primitive) caml_nativeint_or,
  (c_primitive) caml_nativeint_shift_left,
  (c_primitive) caml_nativeint_shift_right,
  (c_primitive) caml_nativeint_shift_right_unsigned,
  (c_primitive) caml_nativeint_sub,
  (c_primitive) caml_nativeint_to_float,
  (c_primitive) caml_nativeint_to_int,
  (c_primitive) caml_nativeint_to_int32,
  (c_primitive) caml_nativeint_xor,
  (c_primitive) caml_neg_float,
  (c_primitive) caml_neq_float,
  (c_primitive) caml_new_lex_engine,
  (c_primitive) caml_nextafter_float,
  (c_primitive) caml_notequal,
  (c_primitive) caml_obj_add_offset,
  (c_primitive) caml_obj_block,
  (c_primitive) caml_obj_compare_and_swap,
  (c_primitive) caml_obj_dup,
  (c_primitive) caml_obj_is_shared,
  (c_primitive) caml_obj_raw_field,
  (c_primitive) caml_obj_reachable_words,
  (c_primitive) caml_obj_set_raw_field,
  (c_primitive) caml_obj_tag,
  (c_primitive) caml_obj_with_tag,
  (c_primitive) caml_output_value,
  (c_primitive) caml_output_value_to_buffer,
  (c_primitive) caml_output_value_to_bytes,
  (c_primitive) caml_output_value_to_string,
  (c_primitive) caml_parse_engine,
  (c_primitive) caml_power_float,
  (c_primitive) caml_raw_backtrace_length,
  (c_primitive) caml_raw_backtrace_next_slot,
  (c_primitive) caml_raw_backtrace_slot,
  (c_primitive) caml_realloc_global,
  (c_primitive) caml_recommended_domain_count,
  (c_primitive) caml_record_backtrace,
  (c_primitive) caml_register_named_value,
  (c_primitive) caml_reify_bytecode,
  (c_primitive) caml_reset_afl_instrumentation,
  (c_primitive) caml_restore_raw_backtrace,
  (c_primitive) caml_round_float,
  (c_primitive) caml_runtime_events_user_register,
  (c_primitive) caml_runtime_events_user_write,
  (c_primitive) caml_runtime_parameters,
  (c_primitive) caml_runtime_variant,
  (c_primitive) caml_set_oo_id,
  (c_primitive) caml_set_parser_trace,
  (c_primitive) caml_signbit,
  (c_primitive) caml_signbit_float,
  (c_primitive) caml_sin_float,
  (c_primitive) caml_sinh_float,
  (c_primitive) caml_sqrt_float,
  (c_primitive) caml_static_release_bytecode,
  (c_primitive) caml_string_compare,
  (c_primitive) caml_string_equal,
  (c_primitive) caml_string_get,
  (c_primitive) caml_string_get16,
  (c_primitive) caml_string_get32,
  (c_primitive) caml_string_get64,
  (c_primitive) caml_string_greaterequal,
  (c_primitive) caml_string_greaterthan,
  (c_primitive) caml_string_hash,
  (c_primitive) caml_string_lessequal,
  (c_primitive) caml_string_lessthan,
  (c_primitive) caml_string_notequal,
  (c_primitive) caml_string_of_bytes,
  (c_primitive) caml_string_set,
  (c_primitive) caml_sub_float,
  (c_primitive) caml_sys_argv,
  (c_primitive) caml_sys_chdir,
  (c_primitive) caml_sys_close,
  (c_primitive) caml_sys_const_backend_type,
  (c_primitive) caml_sys_const_big_endian,
  (c_primitive) caml_sys_const_int_size,
  (c_primitive) caml_sys_const_max_wosize,
  (c_primitive) caml_sys_const_ostype_cygwin,
  (c_primitive) caml_sys_const_ostype_unix,
  (c_primitive) caml_sys_const_ostype_win32,
  (c_primitive) caml_sys_const_word_size,
  (c_primitive) caml_sys_executable_name,
  (c_primitive) caml_sys_exit,
  (c_primitive) caml_sys_file_exists,
  (c_primitive) caml_sys_get_argv,
  (c_primitive) caml_sys_get_config,
  (c_primitive) caml_sys_getcwd,
  (c_primitive) caml_sys_getenv,
  (c_primitive) caml_sys_is_directory,
  (c_primitive) caml_sys_is_regular_file,
  (c_primitive) caml_sys_isatty,
  (c_primitive) caml_sys_mkdir,
  (c_primitive) caml_sys_modify_argv,
  (c_primitive) caml_sys_open,
  (c_primitive) caml_sys_random_seed,
  (c_primitive) caml_sys_read_directory,
  (c_primitive) caml_sys_remove,
  (c_primitive) caml_sys_rename,
  (c_primitive) caml_sys_rmdir,
  (c_primitive) caml_sys_system_command,
  (c_primitive) caml_sys_time,
  (c_primitive) caml_sys_time_include_children,
  (c_primitive) caml_sys_unsafe_getenv,
  (c_primitive) caml_tan_float,
  (c_primitive) caml_tanh_float,
  (c_primitive) caml_terminfo_rows,
  (c_primitive) caml_trunc_float,
  (c_primitive) caml_update_dummy,
  (c_primitive) caml_weak_blit,
  (c_primitive) caml_weak_check,
  (c_primitive) caml_weak_create,
  (c_primitive) caml_weak_get,
  (c_primitive) caml_weak_get_copy,
  (c_primitive) caml_weak_set,
  (c_primitive) caml_xdg_defaults,
  (c_primitive) caml_zstd_initialize,
  0 };

const char * const caml_names_of_builtin_cprim[] = {
  "caml_abs_float",
  "caml_acos_float",
  "caml_acosh_float",
  "caml_add_float",
  "caml_alloc_dummy",
  "caml_alloc_dummy_float",
  "caml_alloc_dummy_function",
  "caml_alloc_dummy_infix",
  "caml_alloc_stack",
  "caml_array_append",
  "caml_array_blit",
  "caml_array_concat",
  "caml_array_fill",
  "caml_array_get",
  "caml_array_get_addr",
  "caml_array_set",
  "caml_array_set_addr",
  "caml_array_sub",
  "caml_array_unsafe_get",
  "caml_array_unsafe_set",
  "caml_asin_float",
  "caml_asinh_float",
  "caml_atan2_float",
  "caml_atan_float",
  "caml_atanh_float",
  "caml_atomic_cas",
  "caml_atomic_exchange",
  "caml_atomic_fetch_add",
  "caml_atomic_load",
  "caml_atomic_make_contended",
  "caml_ba_blit",
  "caml_ba_change_layout",
  "caml_ba_create",
  "caml_ba_dim",
  "caml_ba_dim_1",
  "caml_ba_dim_2",
  "caml_ba_dim_3",
  "caml_ba_fill",
  "caml_ba_get_1",
  "caml_ba_get_2",
  "caml_ba_get_3",
  "caml_ba_get_generic",
  "caml_ba_kind",
  "caml_ba_layout",
  "caml_ba_num_dims",
  "caml_ba_reshape",
  "caml_ba_set_1",
  "caml_ba_set_2",
  "caml_ba_set_3",
  "caml_ba_set_generic",
  "caml_ba_slice",
  "caml_ba_sub",
  "caml_ba_uint8_get16",
  "caml_ba_uint8_get32",
  "caml_ba_uint8_get64",
  "caml_ba_uint8_set16",
  "caml_ba_uint8_set32",
  "caml_ba_uint8_set64",
  "caml_backtrace_status",
  "caml_blake2_create",
  "caml_blake2_final",
  "caml_blake2_string",
  "caml_blake2_update",
  "caml_blit_bytes",
  "caml_blit_string",
  "caml_bswap16",
  "caml_bytes_compare",
  "caml_bytes_equal",
  "caml_bytes_get",
  "caml_bytes_get16",
  "caml_bytes_get32",
  "caml_bytes_get64",
  "caml_bytes_greaterequal",
  "caml_bytes_greaterthan",
  "caml_bytes_lessequal",
  "caml_bytes_lessthan",
  "caml_bytes_notequal",
  "caml_bytes_of_string",
  "caml_bytes_set",
  "caml_bytes_set16",
  "caml_bytes_set32",
  "caml_bytes_set64",
  "caml_cbrt_float",
  "caml_ceil_float",
  "caml_channel_descriptor",
  "caml_classify_float",
  "caml_compare",
  "caml_continuation_use",
  "caml_continuation_use_and_update_handler_noexc",
  "caml_continuation_use_noexc",
  "caml_convert_raw_backtrace",
  "caml_convert_raw_backtrace_slot",
  "caml_copysign_float",
  "caml_cos_float",
  "caml_cosh_float",
  "caml_create_bytes",
  "caml_create_string",
  "caml_div_float",
  "caml_domain_dls_compare_and_set",
  "caml_domain_dls_get",
  "caml_domain_dls_set",
  "caml_domain_spawn",
  "caml_drop_continuation",
  "caml_dynlink_add_primitive",
  "caml_dynlink_close_lib",
  "caml_dynlink_get_bytecode_sections",
  "caml_dynlink_get_current_libs",
  "caml_dynlink_lookup_symbol",
  "caml_dynlink_open_lib",
  "caml_ensure_stack_capacity",
  "caml_ephe_blit_data",
  "caml_ephe_blit_key",
  "caml_ephe_check_data",
  "caml_ephe_check_key",
  "caml_ephe_create",
  "caml_ephe_get_data",
  "caml_ephe_get_data_copy",
  "caml_ephe_get_key",
  "caml_ephe_get_key_copy",
  "caml_ephe_set_data",
  "caml_ephe_set_key",
  "caml_ephe_unset_data",
  "caml_ephe_unset_key",
  "caml_eq_float",
  "caml_equal",
  "caml_erf_float",
  "caml_erfc_float",
  "caml_exp2_float",
  "caml_exp_float",
  "caml_expm1_float",
  "caml_fill_bytes",
  "caml_fill_string",
  "caml_final_register",
  "caml_final_register_called_without_value",
  "caml_final_release",
  "caml_float_compare",
  "caml_float_of_int",
  "caml_float_of_string",
  "caml_floatarray_blit",
  "caml_floatarray_create",
  "caml_floatarray_get",
  "caml_floatarray_set",
  "caml_floatarray_unsafe_get",
  "caml_floatarray_unsafe_set",
  "caml_floor_float",
  "caml_fma_float",
  "caml_fmod_float",
  "caml_format_float",
  "caml_format_int",
  "caml_fresh_oo_id",
  "caml_frexp_float",
  "caml_gc_compaction",
  "caml_gc_counters",
  "caml_gc_full_major",
  "caml_gc_get",
  "caml_gc_major",
  "caml_gc_major_slice",
  "caml_gc_minor",
  "caml_gc_minor_words",
  "caml_gc_quick_stat",
  "caml_gc_set",
  "caml_gc_stat",
  "caml_ge_float",
  "caml_get_continuation_callstack",
  "caml_get_current_callstack",
  "caml_get_current_environment",
  "caml_get_exception_backtrace",
  "caml_get_exception_raw_backtrace",
  "caml_get_global_data",
  "caml_get_minor_free",
  "caml_get_public_method",
  "caml_greaterequal",
  "caml_greaterthan",
  "caml_gt_float",
  "caml_hash",
  "caml_hexstring_of_float",
  "caml_hypot_float",
  "caml_input_value",
  "caml_input_value_from_bytes",
  "caml_input_value_to_outside_heap",
  "caml_install_signal_handler",
  "caml_int32_add",
  "caml_int32_and",
  "caml_int32_bits_of_float",
  "caml_int32_bswap",
  "caml_int32_compare",
  "caml_int32_div",
  "caml_int32_float_of_bits",
  "caml_int32_format",
  "caml_int32_mod",
  "caml_int32_mul",
  "caml_int32_neg",
  "caml_int32_of_float",
  "caml_int32_of_int",
  "caml_int32_of_string",
  "caml_int32_or",
  "caml_int32_shift_left",
  "caml_int32_shift_right",
  "caml_int32_shift_right_unsigned",
  "caml_int32_sub",
  "caml_int32_to_float",
  "caml_int32_to_int",
  "caml_int32_xor",
  "caml_int64_add",
  "caml_int64_and",
  "caml_int64_bits_of_float",
  "caml_int64_bswap",
  "caml_int64_compare",
  "caml_int64_div",
  "caml_int64_float_of_bits",
  "caml_int64_format",
  "caml_int64_mod",
  "caml_int64_mul",
  "caml_int64_neg",
  "caml_int64_of_float",
  "caml_int64_of_int",
  "caml_int64_of_int32",
  "caml_int64_of_nativeint",
  "caml_int64_of_string",
  "caml_int64_or",
  "caml_int64_shift_left",
  "caml_int64_shift_right",
  "caml_int64_shift_right_unsigned",
  "caml_int64_sub",
  "caml_int64_to_float",
  "caml_int64_to_int",
  "caml_int64_to_int32",
  "caml_int64_to_nativeint",
  "caml_int64_xor",
  "caml_int_as_pointer",
  "caml_int_compare",
  "caml_int_of_float",
  "caml_int_of_string",
  "caml_invoke_traced_function",
  "caml_lazy_make_forward",
  "caml_lazy_read_result",
  "caml_lazy_reset_to_lazy",
  "caml_lazy_update_to_forcing",
  "caml_lazy_update_to_forward",
  "caml_ldexp_float",
  "caml_le_float",
  "caml_lessequal",
  "caml_lessthan",
  "caml_lex_engine",
  "caml_log10_float",
  "caml_log1p_float",
  "caml_log2_float",
  "caml_log_float",
  "caml_lt_float",
  "caml_lxm_next",
  "caml_make_array",
  "caml_make_float_vect",
  "caml_make_vect",
  "caml_marshal_data_size",
  "caml_md5_chan",
  "caml_md5_string",
  "caml_memprof_discard",
  "caml_memprof_start",
  "caml_memprof_stop",
  "caml_ml_bytes_length",
  "caml_ml_channel_size",
  "caml_ml_channel_size_64",
  "caml_ml_close_channel",
  "caml_ml_condition_broadcast",
  "caml_ml_condition_new",
  "caml_ml_condition_signal",
  "caml_ml_condition_wait",
  "caml_ml_debug_info_status",
  "caml_ml_domain_cpu_relax",
  "caml_ml_domain_id",
  "caml_ml_enable_runtime_warnings",
  "caml_ml_flush",
  "caml_ml_input",
  "caml_ml_input_bigarray",
  "caml_ml_input_char",
  "caml_ml_input_int",
  "caml_ml_input_scan_line",
  "caml_ml_is_binary_mode",
  "caml_ml_is_buffered",
  "caml_ml_mutex_lock",
  "caml_ml_mutex_new",
  "caml_ml_mutex_try_lock",
  "caml_ml_mutex_unlock",
  "caml_ml_open_descriptor_in",
  "caml_ml_open_descriptor_in_with_flags",
  "caml_ml_open_descriptor_out",
  "caml_ml_open_descriptor_out_with_flags",
  "caml_ml_out_channels_list",
  "caml_ml_output",
  "caml_ml_output_bigarray",
  "caml_ml_output_bytes",
  "caml_ml_output_char",
  "caml_ml_output_int",
  "caml_ml_pos_in",
  "caml_ml_pos_in_64",
  "caml_ml_pos_out",
  "caml_ml_pos_out_64",
  "caml_ml_runtime_events_are_active",
  "caml_ml_runtime_events_pause",
  "caml_ml_runtime_events_resume",
  "caml_ml_runtime_events_start",
  "caml_ml_runtime_warnings_enabled",
  "caml_ml_seek_in",
  "caml_ml_seek_in_64",
  "caml_ml_seek_out",
  "caml_ml_seek_out_64",
  "caml_ml_set_binary_mode",
  "caml_ml_set_buffered",
  "caml_ml_set_channel_name",
  "caml_ml_string_length",
  "caml_modf_float",
  "caml_mul_float",
  "caml_nativeint_add",
  "caml_nativeint_and",
  "caml_nativeint_bswap",
  "caml_nativeint_compare",
  "caml_nativeint_div",
  "caml_nativeint_format",
  "caml_nativeint_mod",
  "caml_nativeint_mul",
  "caml_nativeint_neg",
  "caml_nativeint_of_float",
  "caml_nativeint_of_int",
  "caml_nativeint_of_int32",
  "caml_nativeint_of_string",
  "caml_nativeint_or",
  "caml_nativeint_shift_left",
  "caml_nativeint_shift_right",
  "caml_nativeint_shift_right_unsigned",
  "caml_nativeint_sub",
  "caml_nativeint_to_float",
  "caml_nativeint_to_int",
  "caml_nativeint_to_int32",
  "caml_nativeint_xor",
  "caml_neg_float",
  "caml_neq_float",
  "caml_new_lex_engine",
  "caml_nextafter_float",
  "caml_notequal",
  "caml_obj_add_offset",
  "caml_obj_block",
  "caml_obj_compare_and_swap",
  "caml_obj_dup",
  "caml_obj_is_shared",
  "caml_obj_raw_field",
  "caml_obj_reachable_words",
  "caml_obj_set_raw_field",
  "caml_obj_tag",
  "caml_obj_with_tag",
  "caml_output_value",
  "caml_output_value_to_buffer",
  "caml_output_value_to_bytes",
  "caml_output_value_to_string",
  "caml_parse_engine",
  "caml_power_float",
  "caml_raw_backtrace_length",
  "caml_raw_backtrace_next_slot",
  "caml_raw_backtrace_slot",
  "caml_realloc_global",
  "caml_recommended_domain_count",
  "caml_record_backtrace",
  "caml_register_named_value",
  "caml_reify_bytecode",
  "caml_reset_afl_instrumentation",
  "caml_restore_raw_backtrace",
  "caml_round_float",
  "caml_runtime_events_user_register",
  "caml_runtime_events_user_write",
  "caml_runtime_parameters",
  "caml_runtime_variant",
  "caml_set_oo_id",
  "caml_set_parser_trace",
  "caml_signbit",
  "caml_signbit_float",
  "caml_sin_float",
  "caml_sinh_float",
  "caml_sqrt_float",
  "caml_static_release_bytecode",
  "caml_string_compare",
  "caml_string_equal",
  "caml_string_get",
  "caml_string_get16",
  "caml_string_get32",
  "caml_string_get64",
  "caml_string_greaterequal",
  "caml_string_greaterthan",
  "caml_string_hash",
  "caml_string_lessequal",
  "caml_string_lessthan",
  "caml_string_notequal",
  "caml_string_of_bytes",
  "caml_string_set",
  "caml_sub_float",
  "caml_sys_argv",
  "caml_sys_chdir",
  "caml_sys_close",
  "caml_sys_const_backend_type",
  "caml_sys_const_big_endian",
  "caml_sys_const_int_size",
  "caml_sys_const_max_wosize",
  "caml_sys_const_ostype_cygwin",
  "caml_sys_const_ostype_unix",
  "caml_sys_const_ostype_win32",
  "caml_sys_const_word_size",
  "caml_sys_executable_name",
  "caml_sys_exit",
  "caml_sys_file_exists",
  "caml_sys_get_argv",
  "caml_sys_get_config",
  "caml_sys_getcwd",
  "caml_sys_getenv",
  "caml_sys_is_directory",
  "caml_sys_is_regular_file",
  "caml_sys_isatty",
  "caml_sys_mkdir",
  "caml_sys_modify_argv",
  "caml_sys_open",
  "caml_sys_random_seed",
  "caml_sys_read_directory",
  "caml_sys_remove",
  "caml_sys_rename",
  "caml_sys_rmdir",
  "caml_sys_system_command",
  "caml_sys_time",
  "caml_sys_time_include_children",
  "caml_sys_unsafe_getenv",
  "caml_tan_float",
  "caml_tanh_float",
  "caml_terminfo_rows",
  "caml_trunc_float",
  "caml_update_dummy",
  "caml_weak_blit",
  "caml_weak_check",
  "caml_weak_create",
  "caml_weak_get",
  "caml_weak_get_copy",
  "caml_weak_set",
  "caml_xdg_defaults",
  "caml_zstd_initialize",
  0 };
