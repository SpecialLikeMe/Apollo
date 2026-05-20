
        #include "apo_stdlib_runtime.hpp"

extern int sys__div_floor(int left, int right);
extern int sys__mod_euc(int left, int right);
extern int sys__saturating_add(int left, int right);
extern int sys__saturating_sub(int left, int right);
extern int sys__saturating_mul(int left, int right);
extern int sys__wrapping_add(int left, int right);
extern int sys__wrapping_sub(int left, int right);
extern int sys__overflowing_add_value(int left, int right);
extern int sys__overflowing_add_overflow(int left, int right);
extern int sys__lcm(int left, int right);
extern int sys__signum(int value);
extern double sys__abs_f64(double value);
extern double sys__ceil(double value);
extern double sys__floor(double value);
extern double sys__round(double value);
extern double sys__trunc(double value);
extern double sys__sqrt(double value);
extern double sys__cbrt(double value);
extern double sys__hypot(double left, double right);
extern double sys__sin(double value);
extern double sys__cos(double value);
extern double sys__tan(double value);
extern double sys__asin(double value);
extern double sys__acos(double value);
extern double sys__atan(double value);
extern double sys__atan2(double left, double right);
extern double sys__sinh(double value);
extern double sys__cosh(double value);
extern double sys__tanh(double value);
extern double sys__asinh(double value);
extern double sys__acosh(double value);
extern double sys__atanh(double value);
extern double sys__exp(double value);
extern double sys__exp2(double value);
extern double sys__expm1(double value);
extern double sys__log(double value);
extern double sys__log2(double value);
extern double sys__log10(double value);
extern double sys__log1p(double value);
extern double sys__pow(double left, double right);
extern double sys__fma(double x, double y, double z);
extern double sys__copysign(double x, double y);
extern double sys__nextafter(double x, double y);
extern double sys__ldexp(double value, int exponent);
extern double sys__frexp_fraction(double value);
extern int sys__frexp_exponent(double value);
extern double sys__modf_fraction(double value);
extern double sys__modf_integral(double value);
extern int sys__isnan(double value);
extern int sys__isinf(double value);
extern int sys__isfinite(double value);
extern int sys__isnormal(double value);
extern double sys__signum_f64(double value);
extern int sys__clz(int value);
extern int sys__ctz(int value);
extern int sys__popcount(int value);
extern int sys__ffs(int value);
extern int sys__rotate_left(int value, int amount);
extern int sys__rotate_right(int value, int amount);
extern int sys__bswap(int value);
extern int sys__str_len(const char* value);
extern const char* sys__str_concat(const char* left, const char* right);
extern const char* sys__str_trim(const char* value);
extern const char* sys__str_trim_start(const char* value);
extern const char* sys__str_trim_end(const char* value);
extern const char* sys__str_lowercase(const char* value);
extern const char* sys__str_uppercase(const char* value);
extern const char* sys__str_titlecase(const char* value);
extern int sys__str_contains(const char* value, const char* sub);
extern int sys__str_starts_with(const char* value, const char* prefix);
extern int sys__str_ends_with(const char* value, const char* suffix);
extern int sys__str_find(const char* value, const char* sub);
extern int sys__str_rfind(const char* value, const char* sub);
extern const char* sys__str_replace(const char* value, const char* old_text, const char* new_text);
extern const char* sys__str_replace_n(const char* value, const char* old_text, const char* new_text, int count);
extern const char* sys__str_repeat(const char* value, int count);
extern const char* sys__str_pad_left(const char* value, int target_len, const char* fill);
extern const char* sys__str_pad_right(const char* value, int target_len, const char* fill);
extern const char* sys__str_substring(const char* value, int start, int len);
extern int sys__str_cmp(const char* left, const char* right);
extern int sys__str_casecmp(const char* left, const char* right);
extern long sys__parse_int(const char* value, int base);
extern double sys__parse_float(const char* value);
extern int sys__is_alpha(const char* value);
extern int sys__is_digit(const char* value);
extern int sys__is_alnum(const char* value);
extern int sys__is_whitespace(const char* value);
extern int sys__is_control(const char* value);
extern int sys__is_punctuation(const char* value);
extern int sys__is_graph(const char* value);
extern int sys__is_print(const char* value);
extern int sys__is_hex_digit(const char* value);
extern int sys__is_ascii(const char* value);
extern const char* sys__native_term_read_line();
extern int sys__native_term_is_tty();
extern void* sys__native_vec_new();
extern void* sys__native_vec_with_capacity(int capacity);
extern int sys__native_vec_len(void* value);
extern const char* sys__native_vec_pop(void* value);
extern const char* sys__native_vec_get(void* value, int index);
extern const char* sys__native_vec_remove(void* value, int index);
extern const char* sys__native_vec_join(void* value, const char* delimiter);
extern int sys__native_vec_contains(void* value, const char* item);
extern void* sys__native_map_new();
extern void* sys__native_map_with_capacity(int capacity);
extern int sys__native_map_len(void* value);
extern const char* sys__native_map_get(void* value, const char* key);
extern const char* sys__native_map_remove(void* value, const char* key);
extern int sys__native_map_contains_key(void* value, const char* key);
extern const char* sys__native_map_keys(void* value, const char* delimiter);
extern const char* sys__native_map_values(void* value, const char* delimiter);
extern const char* sys__native_map_entries(void* value, const char* delimiter);
extern void* sys__native_tmap_new();
extern const char* sys__native_tmap_remove(void* value, const char* key);
extern const char* sys__native_tmap_first_key(void* value);
extern const char* sys__native_tmap_last_key(void* value);
extern const char* sys__native_tmap_floor_key(void* value, const char* key);
extern const char* sys__native_tmap_ceiling_key(void* value, const char* key);
extern void* sys__native_set_new();
extern int sys__native_set_insert(void* value, const char* item);
extern int sys__native_set_remove(void* value, const char* item);
extern int sys__native_set_contains(void* value, const char* item);
extern int sys__native_set_len(void* value);
extern const char* sys__native_set_values(void* value, const char* delimiter);
extern void* sys__native_set_union(void* left, void* right);
extern void* sys__native_set_intersection(void* left, void* right);
extern void* sys__native_set_difference(void* left, void* right);
extern void* sys__native_set_symmetric_difference(void* left, void* right);
extern int sys__native_set_is_subset(void* left, void* right);
extern int sys__native_set_is_superset(void* left, void* right);
extern void* sys__native_queue_new();
extern const char* sys__native_queue_dequeue(void* value);
extern int sys__native_queue_len(void* value);
extern void* sys__native_deque_new();
extern const char* sys__native_deque_pop_front(void* value);
extern const char* sys__native_deque_pop_back(void* value);
extern int sys__native_deque_len(void* value);
extern void* sys__native_heap_new_max();
extern void* sys__native_heap_new_min();
extern int sys__native_heap_pop(void* value);
extern int sys__native_heap_peek(void* value);
extern int sys__native_heap_len(void* value);
extern void* sys__native_buffer();
extern const char* sys__native_buffer_text(void* value);
extern void* sys__native_file_open(const char* path, const char* mode);
extern void* sys__native_file_create(const char* path);
extern int sys__native_file_write(void* value, const char* text);
extern const char* sys__native_file_read_all(void* value);
extern int sys__native_file_close(void* value);
extern const char* sys__native_file_path(void* value);
extern int sys__native_file_sync_all(void* value);
extern int sys__native_file_sync_data(void* value);
extern int sys__native_file_set_len(void* value, long size);
extern void* sys__native_file_metadata(void* value);
extern long sys__native_meta_size(void* value);
extern const char* sys__native_meta_modified(void* value);
extern const char* sys__native_meta_accessed(void* value);
extern const char* sys__native_meta_created(void* value);
extern int sys__native_meta_is_dir(void* value);
extern int sys__native_meta_is_file(void* value);
extern int sys__native_perm_readonly(void* value);
extern int sys__native_fs_create_dir(const char* path);
extern int sys__native_fs_create_dir_all(const char* path);
extern int sys__native_fs_remove_file(const char* path);
extern int sys__native_fs_remove_dir(const char* path);
extern int sys__native_fs_remove_dir_all(const char* path);
extern int sys__native_fs_rename(const char* from, const char* to);
extern int sys__native_fs_copy(const char* from, const char* to);
extern const char* sys__native_fs_read_dir(const char* path, const char* delimiter);
extern int sys__native_fs_hard_link(const char* source, const char* destination);
extern int sys__native_fs_symlink(const char* source, const char* destination);
extern const char* sys__native_fs_read_link(const char* path);
extern int sys__native_fs_exists(const char* path);
extern const char* sys__native_path_parent(const char* path);
extern const char* sys__native_path_file_name(const char* path);
extern const char* sys__native_path_extension(const char* path);
extern const char* sys__native_path_file_stem(const char* path);
extern int sys__native_path_is_absolute(const char* path);
extern int sys__native_path_is_relative(const char* path);
extern const char* sys__native_path_to_absolute(const char* path);
extern const char* sys__native_path_canonicalize(const char* path);
extern const char* sys__native_path_components(const char* path, const char* delimiter);
extern void* sys__native_process_spawn(const char* command);
extern int sys__native_process_wait(void* value);
extern int sys__native_process_try_wait(void* value);
extern int sys__native_process_exit_code(void* value);
extern int sys__native_process_completed(void* value);
extern const char* sys__native_process_command(void* value);
extern void* sys__native_task_ready_i32(int value);
extern void* sys__native_task_ready_str(const char* value);
extern void* sys__native_task_ready_bool(int value);
extern void* sys__native_task_ready_f64(double value);
extern int sys__native_task_done(void* value);
extern int sys__native_task_await_i32(void* value);
extern const char* sys__native_task_await_str(void* value);
extern int sys__native_task_await_bool(void* value);
extern double sys__native_task_await_f64(void* value);
extern int sys__native_task_is_i32(void* value);
extern int sys__native_task_is_str(void* value);
extern int sys__native_task_is_bool(void* value);
extern int sys__native_task_is_f64(void* value);
extern int sys__native_host_is_windows();
extern const char* sys__native_path_separator();
extern const char* sys__native_exe_suffix();
extern const char* sys__native_env_get(const char* key);
extern int sys__native_env_set(const char* key, const char* value);
extern int sys__native_env_remove(const char* key);
extern const char* sys__native_current_dir();
extern int sys__native_set_current_dir(const char* path);
extern const char* sys__native_executable_path();
extern int sys__native_process_id();
extern int sys__native_cpu_count();
extern const char* sys__native_host_name();
extern const char* sys__native_temp_dir();
extern const char* sys__native_path_join(const char* left, const char* right);
namespace __apollo_inline_inline_1462_5_11 {
        int sys__native_ascii_validate(const char* value) { return __apo_stdlib::ascii_validate(__apo_stdlib::view_or_empty(value)); }
        int sys__native_utf8_validate(const char* value) { return __apo_stdlib::utf8_validate(__apo_stdlib::view_or_empty(value)); }
        int sys__native_utf8_char_count(const char* value) { return __apo_stdlib::utf8_char_count(__apo_stdlib::view_or_empty(value)); }
        const char* sys__native_hex_encode(const char* value) { return __apo_stdlib::hex_encode(__apo_stdlib::view_or_empty(value)); }
        const char* sys__native_hex_decode(const char* value) { return __apo_stdlib::hex_decode(__apo_stdlib::view_or_empty(value)); }
        const char* sys__native_url_encode(const char* value) { return __apo_stdlib::url_encode(__apo_stdlib::view_or_empty(value)); }
        const char* sys__native_url_decode(const char* value) { return __apo_stdlib::url_decode(__apo_stdlib::view_or_empty(value)); }
        const char* sys__native_base64_encode(const char* value) { return __apo_stdlib::base64_encode(__apo_stdlib::view_or_empty(value)); }
        const char* sys__native_base64_decode(const char* value) { return __apo_stdlib::base64_decode(__apo_stdlib::view_or_empty(value)); }
    
}
extern "C" int sys__native_ascii_validate(const char* value) { return __apollo_inline_inline_1462_5_11::sys__native_ascii_validate(value); }
extern "C" int sys__native_utf8_validate(const char* value) { return __apollo_inline_inline_1462_5_11::sys__native_utf8_validate(value); }
extern "C" int sys__native_utf8_char_count(const char* value) { return __apollo_inline_inline_1462_5_11::sys__native_utf8_char_count(value); }
extern "C" const char* sys__native_hex_encode(const char* value) { return __apollo_inline_inline_1462_5_11::sys__native_hex_encode(value); }
extern "C" const char* sys__native_hex_decode(const char* value) { return __apollo_inline_inline_1462_5_11::sys__native_hex_decode(value); }
extern "C" const char* sys__native_url_encode(const char* value) { return __apollo_inline_inline_1462_5_11::sys__native_url_encode(value); }
extern "C" const char* sys__native_url_decode(const char* value) { return __apollo_inline_inline_1462_5_11::sys__native_url_decode(value); }
extern "C" const char* sys__native_base64_encode(const char* value) { return __apollo_inline_inline_1462_5_11::sys__native_base64_encode(value); }
extern "C" const char* sys__native_base64_decode(const char* value) { return __apollo_inline_inline_1462_5_11::sys__native_base64_decode(value); }
