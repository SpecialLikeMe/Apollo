
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
extern int sys__native_printf(const char* format);
extern int sys__native_printf_i32(const char* format, int value);
extern int sys__native_printf_f64(const char* format, double value);
extern int sys__native_printf_str(const char* format, const char* value);
extern int sys__native_printf_i32_i32(const char* format, int first, int second);
extern int sys__native_printf_i32_f64(const char* format, int first, double second);
extern int sys__native_printf_i32_str(const char* format, int first, const char* second);
extern int sys__native_printf_f64_i32(const char* format, double first, int second);
extern int sys__native_printf_f64_f64(const char* format, double first, double second);
extern int sys__native_printf_f64_str(const char* format, double first, const char* second);
extern int sys__native_printf_str_i32(const char* format, const char* first, int second);
extern int sys__native_printf_str_f64(const char* format, const char* first, double second);
extern int sys__native_printf_str_str(const char* format, const char* first, const char* second);
extern int sys__native_printf_i32_i32_i32(const char* format, int first, int second, int third);
extern int sys__native_printf_i32_i32_f64(const char* format, int first, int second, double third);
extern int sys__native_printf_i32_i32_str(const char* format, int first, int second, const char* third);
extern int sys__native_printf_i32_f64_i32(const char* format, int first, double second, int third);
extern int sys__native_printf_i32_f64_f64(const char* format, int first, double second, double third);
extern int sys__native_printf_i32_f64_str(const char* format, int first, double second, const char* third);
extern int sys__native_printf_i32_str_i32(const char* format, int first, const char* second, int third);
extern int sys__native_printf_i32_str_f64(const char* format, int first, const char* second, double third);
extern int sys__native_printf_i32_str_str(const char* format, int first, const char* second, const char* third);
extern int sys__native_printf_f64_i32_i32(const char* format, double first, int second, int third);
extern int sys__native_printf_f64_i32_f64(const char* format, double first, int second, double third);
extern int sys__native_printf_f64_i32_str(const char* format, double first, int second, const char* third);
extern int sys__native_printf_f64_f64_i32(const char* format, double first, double second, int third);
extern int sys__native_printf_f64_f64_f64(const char* format, double first, double second, double third);
extern int sys__native_printf_f64_f64_str(const char* format, double first, double second, const char* third);
extern int sys__native_printf_f64_str_i32(const char* format, double first, const char* second, int third);
extern int sys__native_printf_f64_str_f64(const char* format, double first, const char* second, double third);
extern int sys__native_printf_f64_str_str(const char* format, double first, const char* second, const char* third);
extern int sys__native_printf_str_i32_i32(const char* format, const char* first, int second, int third);
extern int sys__native_printf_str_i32_f64(const char* format, const char* first, int second, double third);
extern int sys__native_printf_str_i32_str(const char* format, const char* first, int second, const char* third);
extern int sys__native_printf_str_f64_i32(const char* format, const char* first, double second, int third);
extern int sys__native_printf_str_f64_f64(const char* format, const char* first, double second, double third);
extern int sys__native_printf_str_f64_str(const char* format, const char* first, double second, const char* third);
extern int sys__native_printf_str_str_i32(const char* format, const char* first, const char* second, int third);
extern int sys__native_printf_str_str_f64(const char* format, const char* first, const char* second, double third);
extern int sys__native_printf_str_str_str(const char* format, const char* first, const char* second, const char* third);
extern const char* sys__native_term_read_line();
extern int sys__native_term_is_tty();
extern int sys__native_term_columns();
extern int sys__native_term_rows();
namespace __apollo_inline_inline_2043_5_5 {
        void* sys__native_vec_new() { return __apo_stdlib::vec_new(); }
        void* sys__native_vec_with_capacity(int capacity) { return __apo_stdlib::vec_with_capacity(capacity); }
        int sys__native_vec_len(void* value) { return __apo_stdlib::vec_len(value); }
        void sys__native_vec_push(void* value, const char* item) { __apo_stdlib::vec_push(value, __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_vec_pop(void* value) { return __apo_stdlib::vec_pop(value); }
        const char* sys__native_vec_get(void* value, int index) { return __apo_stdlib::vec_get(value, index); }
        void sys__native_vec_set(void* value, int index, const char* item) { __apo_stdlib::vec_set(value, index, __apo_stdlib::text_or_empty(item)); }
        void sys__native_vec_insert(void* value, int index, const char* item) { __apo_stdlib::vec_insert(value, index, __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_vec_remove(void* value, int index) { return __apo_stdlib::vec_remove(value, index); }
        const char* sys__native_vec_swap_remove(void* value, int index) { return __apo_stdlib::vec_swap_remove(value, index); }
        void sys__native_vec_clear(void* value) { __apo_stdlib::vec_clear(value); }
        void sys__native_vec_truncate(void* value, int length) { __apo_stdlib::vec_truncate(value, length); }
        void sys__native_vec_reserve(void* value, int additional) { __apo_stdlib::vec_reserve(value, additional); }
        void sys__native_vec_shrink_to_fit(void* value) { __apo_stdlib::vec_shrink_to_fit(value); }
        void sys__native_vec_resize(void* value, int new_length, const char* item) { __apo_stdlib::vec_resize(value, new_length, __apo_stdlib::text_or_empty(item)); }
        void sys__native_vec_dedup(void* value) { __apo_stdlib::vec_dedup(value); }
        const char* sys__native_vec_join(void* value, const char* delimiter) { return __apo_stdlib::vec_join(value, __apo_stdlib::view_or_empty(delimiter)); }
        int sys__native_vec_contains(void* value, const char* item) { return __apo_stdlib::vec_contains(value, __apo_stdlib::view_or_empty(item)); }

        void* sys__native_map_new() { return __apo_stdlib::map_new(); }
        void* sys__native_map_with_capacity(int capacity) { return __apo_stdlib::map_with_capacity(capacity); }
        int sys__native_map_len(void* value) { return __apo_stdlib::map_len(value); }
        void sys__native_map_insert(void* value, const char* key, const char* item) { __apo_stdlib::map_insert(value, __apo_stdlib::text_or_empty(key), __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_map_get(void* value, const char* key) { return __apo_stdlib::map_get(value, __apo_stdlib::view_or_empty(key)); }
        const char* sys__native_map_get_mut(void* value, const char* key) { return __apo_stdlib::map_get_mut(value, __apo_stdlib::view_or_empty(key)); }
        const char* sys__native_map_remove(void* value, const char* key) { return __apo_stdlib::map_remove(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_map_contains_key(void* value, const char* key) { return __apo_stdlib::map_contains_key(value, __apo_stdlib::view_or_empty(key)); }
        void sys__native_map_clear(void* value) { __apo_stdlib::map_clear(value); }
        void sys__native_map_reserve(void* value, int capacity) { __apo_stdlib::map_reserve(value, capacity); }
        const char* sys__native_map_entry_or_insert(void* value, const char* key, const char* default_value) { return __apo_stdlib::map_entry_or_insert(value, __apo_stdlib::text_or_empty(key), __apo_stdlib::text_or_empty(default_value)); }
        void sys__native_map_rehash(void* value) { __apo_stdlib::map_rehash(value); }
        const char* sys__native_map_keys(void* value, const char* delimiter) { return __apo_stdlib::map_keys(value, __apo_stdlib::view_or_empty(delimiter)); }
        const char* sys__native_map_values(void* value, const char* delimiter) { return __apo_stdlib::map_values(value, __apo_stdlib::view_or_empty(delimiter)); }
        const char* sys__native_map_entries(void* value, const char* delimiter) { return __apo_stdlib::map_entries(value, __apo_stdlib::view_or_empty(delimiter)); }

        void* sys__native_tmap_new() { return __apo_stdlib::tmap_new(); }
        int sys__native_tmap_len(void* value) { return __apo_stdlib::tmap_len(value); }
        void sys__native_tmap_insert(void* value, const char* key, const char* item) { __apo_stdlib::tmap_insert(value, __apo_stdlib::text_or_empty(key), __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_tmap_get(void* value, const char* key) { return __apo_stdlib::tmap_get(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_tmap_contains_key(void* value, const char* key) { return __apo_stdlib::tmap_contains_key(value, __apo_stdlib::view_or_empty(key)); }
        const char* sys__native_tmap_remove(void* value, const char* key) { return __apo_stdlib::tmap_remove(value, __apo_stdlib::view_or_empty(key)); }
        const char* sys__native_tmap_first_key(void* value) { return __apo_stdlib::tmap_first_key(value); }
        const char* sys__native_tmap_last_key(void* value) { return __apo_stdlib::tmap_last_key(value); }
        const char* sys__native_tmap_floor_key(void* value, const char* key) { return __apo_stdlib::tmap_floor_key(value, __apo_stdlib::view_or_empty(key)); }
        const char* sys__native_tmap_ceiling_key(void* value, const char* key) { return __apo_stdlib::tmap_ceiling_key(value, __apo_stdlib::view_or_empty(key)); }
        void* sys__native_tmap_pop_first(void* value) { return __apo_stdlib::tmap_pop_first(value); }
        void* sys__native_tmap_pop_last(void* value) { return __apo_stdlib::tmap_pop_last(value); }
        void* sys__native_tmap_iter(void* value) { return __apo_stdlib::tmap_iter(value); }
        void* sys__native_tmap_range_iter(void* value, const char* start_key, const char* end_key) { return __apo_stdlib::tmap_range_iter(value, __apo_stdlib::view_or_empty(start_key), __apo_stdlib::view_or_empty(end_key)); }
        const char* sys__native_entry_key(void* value) { return __apo_stdlib::entry_key(value); }
        const char* sys__native_entry_value(void* value) { return __apo_stdlib::entry_value(value); }
        int sys__native_entry_iter_has_next(void* value) { return __apo_stdlib::entry_iter_has_next(value); }
        void* sys__native_entry_iter_next(void* value) { return __apo_stdlib::entry_iter_next(value); }

        void* sys__native_set_new() { return __apo_stdlib::set_new(); }
        int sys__native_set_insert(void* value, const char* item) { return __apo_stdlib::set_insert(value, __apo_stdlib::text_or_empty(item)); }
        int sys__native_set_remove(void* value, const char* item) { return __apo_stdlib::set_remove(value, __apo_stdlib::view_or_empty(item)); }
        int sys__native_set_contains(void* value, const char* item) { return __apo_stdlib::set_contains(value, __apo_stdlib::view_or_empty(item)); }
        int sys__native_set_len(void* value) { return __apo_stdlib::set_len(value); }
        void sys__native_set_clear(void* value) { __apo_stdlib::set_clear(value); }
        const char* sys__native_set_values(void* value, const char* delimiter) { return __apo_stdlib::set_values(value, __apo_stdlib::view_or_empty(delimiter)); }
        void* sys__native_set_union(void* left, void* right) { return __apo_stdlib::set_union(left, right); }
        void* sys__native_set_intersection(void* left, void* right) { return __apo_stdlib::set_intersection(left, right); }
        void* sys__native_set_difference(void* left, void* right) { return __apo_stdlib::set_difference(left, right); }
        void* sys__native_set_symmetric_difference(void* left, void* right) { return __apo_stdlib::set_symmetric_difference(left, right); }
        int sys__native_set_is_subset(void* left, void* right) { return __apo_stdlib::set_is_subset(left, right); }
        int sys__native_set_is_superset(void* left, void* right) { return __apo_stdlib::set_is_superset(left, right); }

        void* sys__native_queue_new() { return __apo_stdlib::queue_new(); }
        void sys__native_queue_enqueue(void* value, const char* item) { __apo_stdlib::queue_enqueue(value, __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_queue_dequeue(void* value) { return __apo_stdlib::queue_dequeue(value); }
        int sys__native_queue_len(void* value) { return __apo_stdlib::queue_len(value); }

        void* sys__native_deque_new() { return __apo_stdlib::deque_new(); }
        void sys__native_deque_push_front(void* value, const char* item) { __apo_stdlib::deque_push_front(value, __apo_stdlib::text_or_empty(item)); }
        void sys__native_deque_push_back(void* value, const char* item) { __apo_stdlib::deque_push_back(value, __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_deque_pop_front(void* value) { return __apo_stdlib::deque_pop_front(value); }
        const char* sys__native_deque_pop_back(void* value) { return __apo_stdlib::deque_pop_back(value); }
        int sys__native_deque_len(void* value) { return __apo_stdlib::deque_len(value); }

        void* sys__native_heap_new_max() { return __apo_stdlib::heap_new_max(); }
        void* sys__native_heap_new_min() { return __apo_stdlib::heap_new_min(); }
        void sys__native_heap_push(void* value, int item) { __apo_stdlib::heap_push(value, item); }
        int sys__native_heap_pop(void* value) { return __apo_stdlib::heap_pop(value); }
        int sys__native_heap_peek(void* value) { return __apo_stdlib::heap_peek(value); }
        int sys__native_heap_len(void* value) { return __apo_stdlib::heap_len(value); }

        void* sys__native_list_new() { return __apo_stdlib::list_new(); }
        void sys__native_list_push_front(void* value, const char* item) { __apo_stdlib::list_push_front(value, __apo_stdlib::text_or_empty(item)); }
        void sys__native_list_push_back(void* value, const char* item) { __apo_stdlib::list_push_back(value, __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_list_pop_front(void* value) { return __apo_stdlib::list_pop_front(value); }
        const char* sys__native_list_pop_back(void* value) { return __apo_stdlib::list_pop_back(value); }
        const char* sys__native_list_front(void* value) { return __apo_stdlib::list_front(value); }
        const char* sys__native_list_back(void* value) { return __apo_stdlib::list_back(value); }
        int sys__native_list_len(void* value) { return __apo_stdlib::list_len(value); }
        void sys__native_list_clear(void* value) { __apo_stdlib::list_clear(value); }
        const char* sys__native_list_values(void* value, const char* delimiter) { return __apo_stdlib::list_values(value, __apo_stdlib::view_or_empty(delimiter)); }

        void* sys__native_ring_buffer_new(int capacity) { return __apo_stdlib::ring_buffer_new(capacity); }
        void sys__native_ring_buffer_push_back(void* value, const char* item) { __apo_stdlib::ring_buffer_push_back(value, __apo_stdlib::text_or_empty(item)); }
        void sys__native_ring_buffer_push_front(void* value, const char* item) { __apo_stdlib::ring_buffer_push_front(value, __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_ring_buffer_pop_front(void* value) { return __apo_stdlib::ring_buffer_pop_front(value); }
        const char* sys__native_ring_buffer_pop_back(void* value) { return __apo_stdlib::ring_buffer_pop_back(value); }
        const char* sys__native_ring_buffer_front(void* value) { return __apo_stdlib::ring_buffer_front(value); }
        const char* sys__native_ring_buffer_back(void* value) { return __apo_stdlib::ring_buffer_back(value); }
        int sys__native_ring_buffer_len(void* value) { return __apo_stdlib::ring_buffer_len(value); }
        int sys__native_ring_buffer_capacity(void* value) { return __apo_stdlib::ring_buffer_capacity(value); }
        void sys__native_ring_buffer_clear(void* value) { __apo_stdlib::ring_buffer_clear(value); }
        const char* sys__native_ring_buffer_values(void* value, const char* delimiter) { return __apo_stdlib::ring_buffer_values(value, __apo_stdlib::view_or_empty(delimiter)); }

        void* sys__native_bitvec_new() { return __apo_stdlib::bitvec_new(); }
        void sys__native_bitvec_push(void* value, int bit) { __apo_stdlib::bitvec_push(value, bit); }
        int sys__native_bitvec_get(void* value, int index) { return __apo_stdlib::bitvec_get(value, index); }
        void sys__native_bitvec_set(void* value, int index, int bit) { __apo_stdlib::bitvec_set(value, index, bit); }
        int sys__native_bitvec_len(void* value) { return __apo_stdlib::bitvec_len(value); }
        int sys__native_bitvec_count_ones(void* value) { return __apo_stdlib::bitvec_count_ones(value); }
        void sys__native_bitvec_clear(void* value) { __apo_stdlib::bitvec_clear(value); }
        const char* sys__native_bitvec_text(void* value) { return __apo_stdlib::bitvec_text(value); }

        void* sys__native_multimap_new() { return __apo_stdlib::multimap_new(); }
        void sys__native_multimap_insert(void* value, const char* key, const char* item) { __apo_stdlib::multimap_insert(value, __apo_stdlib::text_or_empty(key), __apo_stdlib::text_or_empty(item)); }
        void* sys__native_multimap_get_all(void* value, const char* key) { return __apo_stdlib::multimap_get_all(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_multimap_remove_all(void* value, const char* key) { return __apo_stdlib::multimap_remove_all(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_multimap_contains_key(void* value, const char* key) { return __apo_stdlib::multimap_contains_key(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_multimap_len(void* value) { return __apo_stdlib::multimap_len(value); }
        void sys__native_multimap_clear(void* value) { __apo_stdlib::multimap_clear(value); }
        const char* sys__native_multimap_entries(void* value, const char* delimiter) { return __apo_stdlib::multimap_entries(value, __apo_stdlib::view_or_empty(delimiter)); }

        void* sys__native_weak_map_new() { return __apo_stdlib::weak_map_new(); }
        void sys__native_weak_map_insert(void* value, const char* key, const char* item) { __apo_stdlib::weak_map_insert(value, __apo_stdlib::text_or_empty(key), __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_weak_map_get(void* value, const char* key) { return __apo_stdlib::weak_map_get(value, __apo_stdlib::view_or_empty(key)); }
        const char* sys__native_weak_map_remove(void* value, const char* key) { return __apo_stdlib::weak_map_remove(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_weak_map_contains_key(void* value, const char* key) { return __apo_stdlib::weak_map_contains_key(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_weak_map_len(void* value) { return __apo_stdlib::weak_map_len(value); }
        void sys__native_weak_map_clear(void* value) { __apo_stdlib::weak_map_clear(value); }

        void* sys__native_lru_cache_new(int capacity) { return __apo_stdlib::lru_cache_new(capacity); }
        void sys__native_lru_cache_put(void* value, const char* key, const char* item) { __apo_stdlib::lru_cache_put(value, __apo_stdlib::text_or_empty(key), __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_lru_cache_get(void* value, const char* key) { return __apo_stdlib::lru_cache_get(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_lru_cache_contains_key(void* value, const char* key) { return __apo_stdlib::lru_cache_contains_key(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_lru_cache_len(void* value) { return __apo_stdlib::lru_cache_len(value); }
        void sys__native_lru_cache_clear(void* value) { __apo_stdlib::lru_cache_clear(value); }
        const char* sys__native_lru_cache_keys(void* value, const char* delimiter) { return __apo_stdlib::lru_cache_keys(value, __apo_stdlib::view_or_empty(delimiter)); }

        void* sys__native_enum_set_new() { return __apo_stdlib::enum_set_new(); }
        int sys__native_enum_set_insert(void* value, const char* item) { return __apo_stdlib::enum_set_insert(value, __apo_stdlib::text_or_empty(item)); }
        int sys__native_enum_set_remove(void* value, const char* item) { return __apo_stdlib::enum_set_remove(value, __apo_stdlib::view_or_empty(item)); }
        int sys__native_enum_set_contains(void* value, const char* item) { return __apo_stdlib::enum_set_contains(value, __apo_stdlib::view_or_empty(item)); }
        int sys__native_enum_set_len(void* value) { return __apo_stdlib::enum_set_len(value); }
        void sys__native_enum_set_clear(void* value) { __apo_stdlib::enum_set_clear(value); }
        const char* sys__native_enum_set_values(void* value, const char* delimiter) { return __apo_stdlib::enum_set_values(value, __apo_stdlib::view_or_empty(delimiter)); }

        void* sys__native_grid2d_new(int rows, int cols, const char* fill_value) { return __apo_stdlib::grid2d_new(rows, cols, __apo_stdlib::text_or_empty(fill_value)); }
        int sys__native_grid2d_rows(void* value) { return __apo_stdlib::grid2d_rows(value); }
        int sys__native_grid2d_cols(void* value) { return __apo_stdlib::grid2d_cols(value); }
        const char* sys__native_grid2d_get(void* value, int row, int col) { return __apo_stdlib::grid2d_get(value, row, col); }
        void sys__native_grid2d_set(void* value, int row, int col, const char* item) { __apo_stdlib::grid2d_set(value, row, col, __apo_stdlib::text_or_empty(item)); }
        void sys__native_grid2d_fill(void* value, const char* item) { __apo_stdlib::grid2d_fill(value, __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_grid2d_row_text(void* value, int row, const char* delimiter) { return __apo_stdlib::grid2d_row_text(value, row, __apo_stdlib::view_or_empty(delimiter)); }
    
}
extern "C" void* sys__native_vec_new() { return __apollo_inline_inline_2043_5_5::sys__native_vec_new(); }
extern "C" void* sys__native_vec_with_capacity(int capacity) { return __apollo_inline_inline_2043_5_5::sys__native_vec_with_capacity(capacity); }
extern "C" int sys__native_vec_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_vec_len(value); }
extern "C" const char* sys__native_vec_pop(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_vec_pop(value); }
extern "C" const char* sys__native_vec_get(void* value, int index) { return __apollo_inline_inline_2043_5_5::sys__native_vec_get(value, index); }
extern "C" const char* sys__native_vec_remove(void* value, int index) { return __apollo_inline_inline_2043_5_5::sys__native_vec_remove(value, index); }
extern "C" const char* sys__native_vec_swap_remove(void* value, int index) { return __apollo_inline_inline_2043_5_5::sys__native_vec_swap_remove(value, index); }
extern "C" const char* sys__native_vec_join(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_vec_join(value, delimiter); }
extern "C" int sys__native_vec_contains(void* value, const char* item) { return __apollo_inline_inline_2043_5_5::sys__native_vec_contains(value, item); }
extern "C" void* sys__native_map_new() { return __apollo_inline_inline_2043_5_5::sys__native_map_new(); }
extern "C" void* sys__native_map_with_capacity(int capacity) { return __apollo_inline_inline_2043_5_5::sys__native_map_with_capacity(capacity); }
extern "C" int sys__native_map_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_map_len(value); }
extern "C" const char* sys__native_map_get(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_map_get(value, key); }
extern "C" const char* sys__native_map_get_mut(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_map_get_mut(value, key); }
extern "C" const char* sys__native_map_remove(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_map_remove(value, key); }
extern "C" int sys__native_map_contains_key(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_map_contains_key(value, key); }
extern "C" const char* sys__native_map_entry_or_insert(void* value, const char* key, const char* default_value) { return __apollo_inline_inline_2043_5_5::sys__native_map_entry_or_insert(value, key, default_value); }
extern "C" const char* sys__native_map_keys(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_map_keys(value, delimiter); }
extern "C" const char* sys__native_map_values(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_map_values(value, delimiter); }
extern "C" const char* sys__native_map_entries(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_map_entries(value, delimiter); }
extern "C" void* sys__native_tmap_new() { return __apollo_inline_inline_2043_5_5::sys__native_tmap_new(); }
extern "C" int sys__native_tmap_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_len(value); }
extern "C" const char* sys__native_tmap_get(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_get(value, key); }
extern "C" int sys__native_tmap_contains_key(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_contains_key(value, key); }
extern "C" const char* sys__native_tmap_remove(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_remove(value, key); }
extern "C" const char* sys__native_tmap_first_key(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_first_key(value); }
extern "C" const char* sys__native_tmap_last_key(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_last_key(value); }
extern "C" const char* sys__native_tmap_floor_key(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_floor_key(value, key); }
extern "C" const char* sys__native_tmap_ceiling_key(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_ceiling_key(value, key); }
extern "C" void* sys__native_tmap_pop_first(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_pop_first(value); }
extern "C" void* sys__native_tmap_pop_last(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_pop_last(value); }
extern "C" void* sys__native_tmap_iter(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_iter(value); }
extern "C" void* sys__native_tmap_range_iter(void* value, const char* start_key, const char* end_key) { return __apollo_inline_inline_2043_5_5::sys__native_tmap_range_iter(value, start_key, end_key); }
extern "C" const char* sys__native_entry_key(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_entry_key(value); }
extern "C" const char* sys__native_entry_value(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_entry_value(value); }
extern "C" int sys__native_entry_iter_has_next(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_entry_iter_has_next(value); }
extern "C" void* sys__native_entry_iter_next(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_entry_iter_next(value); }
extern "C" void* sys__native_set_new() { return __apollo_inline_inline_2043_5_5::sys__native_set_new(); }
extern "C" int sys__native_set_insert(void* value, const char* item) { return __apollo_inline_inline_2043_5_5::sys__native_set_insert(value, item); }
extern "C" int sys__native_set_remove(void* value, const char* item) { return __apollo_inline_inline_2043_5_5::sys__native_set_remove(value, item); }
extern "C" int sys__native_set_contains(void* value, const char* item) { return __apollo_inline_inline_2043_5_5::sys__native_set_contains(value, item); }
extern "C" int sys__native_set_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_set_len(value); }
extern "C" const char* sys__native_set_values(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_set_values(value, delimiter); }
extern "C" void* sys__native_set_union(void* left, void* right) { return __apollo_inline_inline_2043_5_5::sys__native_set_union(left, right); }
extern "C" void* sys__native_set_intersection(void* left, void* right) { return __apollo_inline_inline_2043_5_5::sys__native_set_intersection(left, right); }
extern "C" void* sys__native_set_difference(void* left, void* right) { return __apollo_inline_inline_2043_5_5::sys__native_set_difference(left, right); }
extern "C" void* sys__native_set_symmetric_difference(void* left, void* right) { return __apollo_inline_inline_2043_5_5::sys__native_set_symmetric_difference(left, right); }
extern "C" int sys__native_set_is_subset(void* left, void* right) { return __apollo_inline_inline_2043_5_5::sys__native_set_is_subset(left, right); }
extern "C" int sys__native_set_is_superset(void* left, void* right) { return __apollo_inline_inline_2043_5_5::sys__native_set_is_superset(left, right); }
extern "C" void* sys__native_queue_new() { return __apollo_inline_inline_2043_5_5::sys__native_queue_new(); }
extern "C" const char* sys__native_queue_dequeue(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_queue_dequeue(value); }
extern "C" int sys__native_queue_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_queue_len(value); }
extern "C" void* sys__native_deque_new() { return __apollo_inline_inline_2043_5_5::sys__native_deque_new(); }
extern "C" const char* sys__native_deque_pop_front(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_deque_pop_front(value); }
extern "C" const char* sys__native_deque_pop_back(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_deque_pop_back(value); }
extern "C" int sys__native_deque_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_deque_len(value); }
extern "C" void* sys__native_heap_new_max() { return __apollo_inline_inline_2043_5_5::sys__native_heap_new_max(); }
extern "C" void* sys__native_heap_new_min() { return __apollo_inline_inline_2043_5_5::sys__native_heap_new_min(); }
extern "C" int sys__native_heap_pop(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_heap_pop(value); }
extern "C" int sys__native_heap_peek(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_heap_peek(value); }
extern "C" int sys__native_heap_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_heap_len(value); }
extern "C" void* sys__native_list_new() { return __apollo_inline_inline_2043_5_5::sys__native_list_new(); }
extern "C" const char* sys__native_list_pop_front(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_list_pop_front(value); }
extern "C" const char* sys__native_list_pop_back(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_list_pop_back(value); }
extern "C" const char* sys__native_list_front(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_list_front(value); }
extern "C" const char* sys__native_list_back(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_list_back(value); }
extern "C" int sys__native_list_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_list_len(value); }
extern "C" const char* sys__native_list_values(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_list_values(value, delimiter); }
extern "C" void* sys__native_ring_buffer_new(int capacity) { return __apollo_inline_inline_2043_5_5::sys__native_ring_buffer_new(capacity); }
extern "C" const char* sys__native_ring_buffer_pop_front(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_ring_buffer_pop_front(value); }
extern "C" const char* sys__native_ring_buffer_pop_back(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_ring_buffer_pop_back(value); }
extern "C" const char* sys__native_ring_buffer_front(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_ring_buffer_front(value); }
extern "C" const char* sys__native_ring_buffer_back(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_ring_buffer_back(value); }
extern "C" int sys__native_ring_buffer_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_ring_buffer_len(value); }
extern "C" int sys__native_ring_buffer_capacity(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_ring_buffer_capacity(value); }
extern "C" const char* sys__native_ring_buffer_values(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_ring_buffer_values(value, delimiter); }
extern "C" void* sys__native_bitvec_new() { return __apollo_inline_inline_2043_5_5::sys__native_bitvec_new(); }
extern "C" int sys__native_bitvec_get(void* value, int index) { return __apollo_inline_inline_2043_5_5::sys__native_bitvec_get(value, index); }
extern "C" int sys__native_bitvec_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_bitvec_len(value); }
extern "C" int sys__native_bitvec_count_ones(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_bitvec_count_ones(value); }
extern "C" const char* sys__native_bitvec_text(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_bitvec_text(value); }
extern "C" void* sys__native_multimap_new() { return __apollo_inline_inline_2043_5_5::sys__native_multimap_new(); }
extern "C" void* sys__native_multimap_get_all(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_multimap_get_all(value, key); }
extern "C" int sys__native_multimap_remove_all(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_multimap_remove_all(value, key); }
extern "C" int sys__native_multimap_contains_key(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_multimap_contains_key(value, key); }
extern "C" int sys__native_multimap_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_multimap_len(value); }
extern "C" const char* sys__native_multimap_entries(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_multimap_entries(value, delimiter); }
extern "C" void* sys__native_weak_map_new() { return __apollo_inline_inline_2043_5_5::sys__native_weak_map_new(); }
extern "C" const char* sys__native_weak_map_get(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_weak_map_get(value, key); }
extern "C" const char* sys__native_weak_map_remove(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_weak_map_remove(value, key); }
extern "C" int sys__native_weak_map_contains_key(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_weak_map_contains_key(value, key); }
extern "C" int sys__native_weak_map_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_weak_map_len(value); }
extern "C" void* sys__native_lru_cache_new(int capacity) { return __apollo_inline_inline_2043_5_5::sys__native_lru_cache_new(capacity); }
extern "C" const char* sys__native_lru_cache_get(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_lru_cache_get(value, key); }
extern "C" int sys__native_lru_cache_contains_key(void* value, const char* key) { return __apollo_inline_inline_2043_5_5::sys__native_lru_cache_contains_key(value, key); }
extern "C" int sys__native_lru_cache_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_lru_cache_len(value); }
extern "C" const char* sys__native_lru_cache_keys(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_lru_cache_keys(value, delimiter); }
extern "C" void* sys__native_enum_set_new() { return __apollo_inline_inline_2043_5_5::sys__native_enum_set_new(); }
extern "C" int sys__native_enum_set_insert(void* value, const char* item) { return __apollo_inline_inline_2043_5_5::sys__native_enum_set_insert(value, item); }
extern "C" int sys__native_enum_set_remove(void* value, const char* item) { return __apollo_inline_inline_2043_5_5::sys__native_enum_set_remove(value, item); }
extern "C" int sys__native_enum_set_contains(void* value, const char* item) { return __apollo_inline_inline_2043_5_5::sys__native_enum_set_contains(value, item); }
extern "C" int sys__native_enum_set_len(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_enum_set_len(value); }
extern "C" const char* sys__native_enum_set_values(void* value, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_enum_set_values(value, delimiter); }
extern "C" void* sys__native_grid2d_new(int rows, int cols, const char* fill_value) { return __apollo_inline_inline_2043_5_5::sys__native_grid2d_new(rows, cols, fill_value); }
extern "C" int sys__native_grid2d_rows(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_grid2d_rows(value); }
extern "C" int sys__native_grid2d_cols(void* value) { return __apollo_inline_inline_2043_5_5::sys__native_grid2d_cols(value); }
extern "C" const char* sys__native_grid2d_get(void* value, int row, int col) { return __apollo_inline_inline_2043_5_5::sys__native_grid2d_get(value, row, col); }
extern "C" const char* sys__native_grid2d_row_text(void* value, int row, const char* delimiter) { return __apollo_inline_inline_2043_5_5::sys__native_grid2d_row_text(value, row, delimiter); }
