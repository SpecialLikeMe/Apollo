
        #include "apo_std_object_runtime.hpp"

extern int sys__native_div_floor(int left, int right);
extern int sys__native_mod_euc(int left, int right);
extern int sys__native_saturating_add(int left, int right);
extern int sys__native_saturating_sub(int left, int right);
extern int sys__native_saturating_mul(int left, int right);
extern int sys__native_wrapping_add(int left, int right);
extern int sys__native_wrapping_sub(int left, int right);
extern int sys__overflowing_add_value(int left, int right);
extern int sys__overflowing_add_overflow(int left, int right);
extern int sys__native_lcm(int left, int right);
extern int sys__native_signum(int value);
extern double sys__native_abs_f64(double value);
extern double sys__native_ceil(double value);
extern double sys__native_floor(double value);
extern double sys__native_round(double value);
extern double sys__native_trunc(double value);
extern double sys__native_sqrt(double value);
extern double sys__native_cbrt(double value);
extern double sys__native_hypot(double left, double right);
extern double sys__native_sin(double value);
extern double sys__native_cos(double value);
extern double sys__native_tan(double value);
extern double sys__native_asin(double value);
extern double sys__native_acos(double value);
extern double sys__native_atan(double value);
extern double sys__native_atan2(double left, double right);
extern double sys__native_sinh(double value);
extern double sys__native_cosh(double value);
extern double sys__native_tanh(double value);
extern double sys__native_asinh(double value);
extern double sys__native_acosh(double value);
extern double sys__native_atanh(double value);
extern double sys__native_exp(double value);
extern double sys__native_exp2(double value);
extern double sys__native_expm1(double value);
extern double sys__native_log(double value);
extern double sys__native_log2(double value);
extern double sys__native_log10(double value);
extern double sys__native_log1p(double value);
extern double sys__native_pow(double left, double right);
extern double sys__native_fma(double x, double y, double z);
extern double sys__native_copysign(double x, double y);
extern double sys__native_nextafter(double x, double y);
extern double sys__native_ldexp(double value, int exponent);
extern double sys__frexp_fraction(double value);
extern int sys__frexp_exponent(double value);
extern double sys__modf_fraction(double value);
extern double sys__modf_integral(double value);
extern int sys__native_isnan(double value);
extern int sys__native_isinf(double value);
extern int sys__native_isfinite(double value);
extern int sys__native_isnormal(double value);
extern double sys__native_signum_f64(double value);
extern int sys__native_clz(int value);
extern int sys__native_ctz(int value);
extern int sys__native_popcount(int value);
extern int sys__native_ffs(int value);
extern int sys__native_rotate_left(int value, int amount);
extern int sys__native_rotate_right(int value, int amount);
extern int sys__native_bswap(int value);
extern int sys__native_str_len(const char* value);
extern const char* sys__native_str_concat(const char* left, const char* right);
extern const char* sys__native_str_trim(const char* value);
extern const char* sys__native_str_trim_start(const char* value);
extern const char* sys__native_str_trim_end(const char* value);
extern const char* sys__native_str_lowercase(const char* value);
extern const char* sys__native_str_uppercase(const char* value);
extern const char* sys__native_str_titlecase(const char* value);
extern int sys__native_str_contains(const char* value, const char* sub);
extern int sys__native_str_starts_with(const char* value, const char* prefix);
extern int sys__native_str_ends_with(const char* value, const char* suffix);
extern int sys__native_str_find(const char* value, const char* sub);
extern int sys__native_str_rfind(const char* value, const char* sub);
extern const char* sys__native_str_replace(const char* value, const char* old_text, const char* new_text);
extern const char* sys__native_str_replace_n(const char* value, const char* old_text, const char* new_text, int count);
extern const char* sys__native_str_reverse(const char* value);
extern const char* sys__native_str_repeat(const char* value, int count);
extern const char* sys__native_str_pad_left(const char* value, int target_len, const char* fill);
extern const char* sys__native_str_pad_right(const char* value, int target_len, const char* fill);
extern const char* sys__native_str_substring(const char* value, int start, int len);
extern int sys__native_str_cmp(const char* left, const char* right);
extern int sys__native_str_casecmp(const char* left, const char* right);
extern void* sys__native_str_split(const char* value, const char* delimiter);
extern void* sys__native_str_split_n(const char* value, const char* delimiter, int max_parts);
extern void* sys__native_str_split_lines(const char* value);
extern long sys__native_parse_int(const char* value, int base);
extern int sys__native_parse_bool(const char* value);
extern double sys__native_parse_float(const char* value);
extern int sys__native_is_alpha(const char* value);
extern int sys__native_is_digit(const char* value);
extern int sys__native_is_alnum(const char* value);
extern int sys__native_is_whitespace(const char* value);
extern int sys__native_is_control(const char* value);
extern int sys__native_is_punctuation(const char* value);
extern int sys__native_is_graph(const char* value);
extern int sys__native_is_print(const char* value);
extern int sys__native_is_hex_digit(const char* value);
extern int sys__native_is_ascii(const char* value);
extern const char* sys__native_term_read_line();
extern int sys__native_term_is_tty();
extern int sys__native_term_columns();
extern int sys__native_term_rows();
extern void* sys__native_vec_new();
extern void* sys__native_vec_with_capacity(int capacity);
extern int sys__native_vec_len(void* value);
extern const char* sys__native_vec_pop(void* value);
extern const char* sys__native_vec_get(void* value, int index);
extern const char* sys__native_vec_remove(void* value, int index);
extern const char* sys__native_vec_swap_remove(void* value, int index);
extern const char* sys__native_vec_join(void* value, const char* delimiter);
extern int sys__native_vec_contains(void* value, const char* item);
extern void* sys__native_map_new();
extern void* sys__native_map_with_capacity(int capacity);
extern int sys__native_map_len(void* value);
extern const char* sys__native_map_get(void* value, const char* key);
extern const char* sys__native_map_get_mut(void* value, const char* key);
extern const char* sys__native_map_remove(void* value, const char* key);
extern int sys__native_map_contains_key(void* value, const char* key);
extern const char* sys__native_map_entry_or_insert(void* value, const char* key, const char* default_value);
extern const char* sys__native_map_keys(void* value, const char* delimiter);
extern const char* sys__native_map_values(void* value, const char* delimiter);
extern const char* sys__native_map_entries(void* value, const char* delimiter);
extern void* sys__native_tmap_new();
extern int sys__native_tmap_len(void* value);
extern const char* sys__native_tmap_get(void* value, const char* key);
extern int sys__native_tmap_contains_key(void* value, const char* key);
extern const char* sys__native_tmap_remove(void* value, const char* key);
extern const char* sys__native_tmap_first_key(void* value);
extern const char* sys__native_tmap_last_key(void* value);
extern const char* sys__native_tmap_floor_key(void* value, const char* key);
extern const char* sys__native_tmap_ceiling_key(void* value, const char* key);
extern void* sys__native_tmap_pop_first(void* value);
extern void* sys__native_tmap_pop_last(void* value);
extern void* sys__native_tmap_iter(void* value);
extern void* sys__native_tmap_range_iter(void* value, const char* start_key, const char* end_key);
extern const char* sys__native_entry_key(void* value);
extern const char* sys__native_entry_value(void* value);
extern int sys__native_entry_iter_has_next(void* value);
extern void* sys__native_entry_iter_next(void* value);
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
extern void* sys__native_list_new();
extern const char* sys__native_list_pop_front(void* value);
extern const char* sys__native_list_pop_back(void* value);
extern const char* sys__native_list_front(void* value);
extern const char* sys__native_list_back(void* value);
extern int sys__native_list_len(void* value);
extern const char* sys__native_list_values(void* value, const char* delimiter);
extern void* sys__native_ring_buffer_new(int capacity);
extern const char* sys__native_ring_buffer_pop_front(void* value);
extern const char* sys__native_ring_buffer_pop_back(void* value);
extern const char* sys__native_ring_buffer_front(void* value);
extern const char* sys__native_ring_buffer_back(void* value);
extern int sys__native_ring_buffer_len(void* value);
extern int sys__native_ring_buffer_capacity(void* value);
extern const char* sys__native_ring_buffer_values(void* value, const char* delimiter);
extern void* sys__native_bitvec_new();
extern int sys__native_bitvec_get(void* value, int index);
extern int sys__native_bitvec_len(void* value);
extern int sys__native_bitvec_count_ones(void* value);
extern const char* sys__native_bitvec_text(void* value);
extern void* sys__native_multimap_new();
extern void* sys__native_multimap_get_all(void* value, const char* key);
extern int sys__native_multimap_remove_all(void* value, const char* key);
extern int sys__native_multimap_contains_key(void* value, const char* key);
extern int sys__native_multimap_len(void* value);
extern const char* sys__native_multimap_entries(void* value, const char* delimiter);
extern void* sys__native_weak_map_new();
extern const char* sys__native_weak_map_get(void* value, const char* key);
extern const char* sys__native_weak_map_remove(void* value, const char* key);
extern int sys__native_weak_map_contains_key(void* value, const char* key);
extern int sys__native_weak_map_len(void* value);
extern void* sys__native_lru_cache_new(int capacity);
extern const char* sys__native_lru_cache_get(void* value, const char* key);
extern int sys__native_lru_cache_contains_key(void* value, const char* key);
extern int sys__native_lru_cache_len(void* value);
extern const char* sys__native_lru_cache_keys(void* value, const char* delimiter);
extern void* sys__native_enum_set_new();
extern int sys__native_enum_set_insert(void* value, const char* item);
extern int sys__native_enum_set_remove(void* value, const char* item);
extern int sys__native_enum_set_contains(void* value, const char* item);
extern int sys__native_enum_set_len(void* value);
extern const char* sys__native_enum_set_values(void* value, const char* delimiter);
extern void* sys__native_grid2d_new(int rows, int cols, const char* fill_value);
extern int sys__native_grid2d_rows(void* value);
extern int sys__native_grid2d_cols(void* value);
extern const char* sys__native_grid2d_get(void* value, int row, int col);
extern const char* sys__native_grid2d_row_text(void* value, int row, const char* delimiter);
extern void* sys__native_buffer();
extern const char* sys__native_buffer_text(void* value);
namespace __apollo_inline_inline_2060_5_7 {
        void* sys__native_file_open(const char* path, const char* mode) { return __apo_stdlib::file_open(__apo_stdlib::text_or_empty(path), __apo_stdlib::text_or_empty(mode)); }
        void* sys__native_file_create(const char* path) { return __apo_stdlib::file_create(__apo_stdlib::text_or_empty(path)); }
        int sys__native_file_write(void* value, const char* text) { return __apo_stdlib::file_write(value, __apo_stdlib::view_or_empty(text)); }
        const char* sys__native_file_read_all(void* value) { return __apo_stdlib::file_read_all(value); }
        int sys__native_file_close(void* value) { return __apo_stdlib::file_close(value); }
        const char* sys__native_file_path(void* value) { return __apo_stdlib::file_path(value); }
        int sys__native_file_sync_all(void* value) { return __apo_stdlib::file_sync_all(value); }
        int sys__native_file_sync_data(void* value) { return __apo_stdlib::file_sync_data(value); }
        int sys__native_file_set_len(void* value, long size) { return __apo_stdlib::file_set_len(value, size); }
        void* sys__native_file_metadata(void* value) { return __apo_stdlib::file_metadata(value); }
        long sys__native_meta_size(void* value) { return __apo_stdlib::metadata_size(value); }
        const char* sys__native_meta_modified(void* value) { return __apo_stdlib::metadata_modified(value); }
        const char* sys__native_meta_accessed(void* value) { return __apo_stdlib::metadata_accessed(value); }
        const char* sys__native_meta_created(void* value) { return __apo_stdlib::metadata_created(value); }
        int sys__native_meta_is_dir(void* value) { return __apo_stdlib::metadata_is_dir(value); }
        int sys__native_meta_is_file(void* value) { return __apo_stdlib::metadata_is_file(value); }
        int sys__native_perm_readonly(void* value) { return __apo_stdlib::metadata_permissions_readonly(value); }
        int sys__native_fs_create_dir(const char* path) { return __apo_stdlib::fs_create_dir(__apo_stdlib::view_or_empty(path)); }
        int sys__native_fs_create_dir_all(const char* path) { return __apo_stdlib::fs_create_dir_all(__apo_stdlib::view_or_empty(path)); }
        int sys__native_fs_remove_file(const char* path) { return __apo_stdlib::fs_remove_file(__apo_stdlib::view_or_empty(path)); }
        int sys__native_fs_remove_dir(const char* path) { return __apo_stdlib::fs_remove_dir(__apo_stdlib::view_or_empty(path)); }
        int sys__native_fs_remove_dir_all(const char* path) { return __apo_stdlib::fs_remove_dir_all(__apo_stdlib::view_or_empty(path)); }
        int sys__native_fs_rename(const char* from, const char* to) { return __apo_stdlib::fs_rename(__apo_stdlib::view_or_empty(from), __apo_stdlib::view_or_empty(to)); }
        int sys__native_fs_copy(const char* from, const char* to) { return __apo_stdlib::fs_copy(__apo_stdlib::view_or_empty(from), __apo_stdlib::view_or_empty(to)); }
        const char* sys__native_fs_read_dir(const char* path, const char* delimiter) { return __apo_stdlib::fs_read_dir(__apo_stdlib::view_or_empty(path), __apo_stdlib::view_or_empty(delimiter)); }
        int sys__native_fs_hard_link(const char* source, const char* destination) { return __apo_stdlib::fs_hard_link(__apo_stdlib::view_or_empty(source), __apo_stdlib::view_or_empty(destination)); }
        int sys__native_fs_symlink(const char* source, const char* destination) { return __apo_stdlib::fs_symlink(__apo_stdlib::view_or_empty(source), __apo_stdlib::view_or_empty(destination)); }
        const char* sys__native_fs_read_link(const char* path) { return __apo_stdlib::fs_read_link(__apo_stdlib::view_or_empty(path)); }
        int sys__native_fs_exists(const char* path) { return __apo_stdlib::fs_exists(__apo_stdlib::view_or_empty(path)); }
        const char* sys__native_path_parent(const char* path) { return __apo_stdlib::path_parent(__apo_stdlib::view_or_empty(path)); }
        const char* sys__native_path_file_name(const char* path) { return __apo_stdlib::path_file_name(__apo_stdlib::view_or_empty(path)); }
        const char* sys__native_path_extension(const char* path) { return __apo_stdlib::path_extension(__apo_stdlib::view_or_empty(path)); }
        const char* sys__native_path_file_stem(const char* path) { return __apo_stdlib::path_file_stem(__apo_stdlib::view_or_empty(path)); }
        int sys__native_path_is_absolute(const char* path) { return __apo_stdlib::path_is_absolute(__apo_stdlib::view_or_empty(path)); }
        int sys__native_path_is_relative(const char* path) { return __apo_stdlib::path_is_relative(__apo_stdlib::view_or_empty(path)); }
        const char* sys__native_path_to_absolute(const char* path) { return __apo_stdlib::path_to_absolute(__apo_stdlib::view_or_empty(path)); }
        const char* sys__native_path_canonicalize(const char* path) { return __apo_stdlib::path_canonicalize(__apo_stdlib::view_or_empty(path)); }
        const char* sys__native_path_components(const char* path, const char* delimiter) { return __apo_stdlib::path_components(__apo_stdlib::view_or_empty(path), __apo_stdlib::view_or_empty(delimiter)); }
    
}
extern "C" void* sys__native_file_open(const char* path, const char* mode) { return __apollo_inline_inline_2060_5_7::sys__native_file_open(path, mode); }
extern "C" void* sys__native_file_create(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_file_create(path); }
extern "C" int sys__native_file_write(void* value, const char* text) { return __apollo_inline_inline_2060_5_7::sys__native_file_write(value, text); }
extern "C" const char* sys__native_file_read_all(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_file_read_all(value); }
extern "C" int sys__native_file_close(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_file_close(value); }
extern "C" const char* sys__native_file_path(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_file_path(value); }
extern "C" int sys__native_file_sync_all(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_file_sync_all(value); }
extern "C" int sys__native_file_sync_data(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_file_sync_data(value); }
extern "C" int sys__native_file_set_len(void* value, long size) { return __apollo_inline_inline_2060_5_7::sys__native_file_set_len(value, size); }
extern "C" void* sys__native_file_metadata(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_file_metadata(value); }
extern "C" long sys__native_meta_size(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_meta_size(value); }
extern "C" const char* sys__native_meta_modified(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_meta_modified(value); }
extern "C" const char* sys__native_meta_accessed(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_meta_accessed(value); }
extern "C" const char* sys__native_meta_created(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_meta_created(value); }
extern "C" int sys__native_meta_is_dir(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_meta_is_dir(value); }
extern "C" int sys__native_meta_is_file(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_meta_is_file(value); }
extern "C" int sys__native_perm_readonly(void* value) { return __apollo_inline_inline_2060_5_7::sys__native_perm_readonly(value); }
extern "C" int sys__native_fs_create_dir(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_fs_create_dir(path); }
extern "C" int sys__native_fs_create_dir_all(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_fs_create_dir_all(path); }
extern "C" int sys__native_fs_remove_file(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_fs_remove_file(path); }
extern "C" int sys__native_fs_remove_dir(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_fs_remove_dir(path); }
extern "C" int sys__native_fs_remove_dir_all(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_fs_remove_dir_all(path); }
extern "C" int sys__native_fs_rename(const char* from, const char* to) { return __apollo_inline_inline_2060_5_7::sys__native_fs_rename(from, to); }
extern "C" int sys__native_fs_copy(const char* from, const char* to) { return __apollo_inline_inline_2060_5_7::sys__native_fs_copy(from, to); }
extern "C" const char* sys__native_fs_read_dir(const char* path, const char* delimiter) { return __apollo_inline_inline_2060_5_7::sys__native_fs_read_dir(path, delimiter); }
extern "C" int sys__native_fs_hard_link(const char* source, const char* destination) { return __apollo_inline_inline_2060_5_7::sys__native_fs_hard_link(source, destination); }
extern "C" int sys__native_fs_symlink(const char* source, const char* destination) { return __apollo_inline_inline_2060_5_7::sys__native_fs_symlink(source, destination); }
extern "C" const char* sys__native_fs_read_link(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_fs_read_link(path); }
extern "C" int sys__native_fs_exists(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_fs_exists(path); }
extern "C" const char* sys__native_path_parent(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_path_parent(path); }
extern "C" const char* sys__native_path_file_name(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_path_file_name(path); }
extern "C" const char* sys__native_path_extension(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_path_extension(path); }
extern "C" const char* sys__native_path_file_stem(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_path_file_stem(path); }
extern "C" int sys__native_path_is_absolute(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_path_is_absolute(path); }
extern "C" int sys__native_path_is_relative(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_path_is_relative(path); }
extern "C" const char* sys__native_path_to_absolute(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_path_to_absolute(path); }
extern "C" const char* sys__native_path_canonicalize(const char* path) { return __apollo_inline_inline_2060_5_7::sys__native_path_canonicalize(path); }
extern "C" const char* sys__native_path_components(const char* path, const char* delimiter) { return __apollo_inline_inline_2060_5_7::sys__native_path_components(path, delimiter); }
