
        #include "apo_std_object_runtime.hpp"

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
extern int sys__ctz(int value);
extern int sys__popcount(int value);
extern int sys__ffs(int value);
extern int sys__rotate_left(int value, int amount);
extern int sys__rotate_right(int value, int amount);
extern int sys__bswap(int value);
extern int sys__str_contains(const char* value, const char* sub);
extern int sys__str_starts_with(const char* value, const char* prefix);
extern int sys__str_ends_with(const char* value, const char* suffix);
extern int sys__str_find(const char* value, const char* sub);
extern int sys__str_rfind(const char* value, const char* sub);
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
extern int sys__native_term_is_tty();
namespace __apollo_inline_inline_878_5_5 {
        void* sys__native_vec_new() { return __apo_stdlib::vec_new(); }
        void* sys__native_vec_with_capacity(int capacity) { return __apo_stdlib::vec_with_capacity(capacity); }
        int sys__native_vec_len(void* value) { return __apo_stdlib::vec_len(value); }
        void sys__native_vec_push(void* value, const char* item) { __apo_stdlib::vec_push(value, __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_vec_pop(void* value) { return __apo_stdlib::vec_pop(value); }
        const char* sys__native_vec_get(void* value, int index) { return __apo_stdlib::vec_get(value, index); }
        void sys__native_vec_set(void* value, int index, const char* item) { __apo_stdlib::vec_set(value, index, __apo_stdlib::text_or_empty(item)); }
        void sys__native_vec_insert(void* value, int index, const char* item) { __apo_stdlib::vec_insert(value, index, __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_vec_remove(void* value, int index) { return __apo_stdlib::vec_remove(value, index); }
        void sys__native_vec_clear(void* value) { __apo_stdlib::vec_clear(value); }
        void sys__native_vec_truncate(void* value, int length) { __apo_stdlib::vec_truncate(value, length); }
        void sys__native_vec_reserve(void* value, int additional) { __apo_stdlib::vec_reserve(value, additional); }
        void sys__native_vec_shrink_to_fit(void* value) { __apo_stdlib::vec_shrink_to_fit(value); }
        const char* sys__native_vec_join(void* value, const char* delimiter) { return __apo_stdlib::vec_join(value, __apo_stdlib::view_or_empty(delimiter)); }
        int sys__native_vec_contains(void* value, const char* item) { return __apo_stdlib::vec_contains(value, __apo_stdlib::view_or_empty(item)); }

        void* sys__native_map_new() { return __apo_stdlib::map_new(); }
        void* sys__native_map_with_capacity(int capacity) { return __apo_stdlib::map_with_capacity(capacity); }
        int sys__native_map_len(void* value) { return __apo_stdlib::map_len(value); }
        void sys__native_map_insert(void* value, const char* key, const char* item) { __apo_stdlib::map_insert(value, __apo_stdlib::text_or_empty(key), __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_map_get(void* value, const char* key) { return __apo_stdlib::map_get(value, __apo_stdlib::view_or_empty(key)); }
        const char* sys__native_map_remove(void* value, const char* key) { return __apo_stdlib::map_remove(value, __apo_stdlib::view_or_empty(key)); }
        int sys__native_map_contains_key(void* value, const char* key) { return __apo_stdlib::map_contains_key(value, __apo_stdlib::view_or_empty(key)); }
        void sys__native_map_clear(void* value) { __apo_stdlib::map_clear(value); }
        const char* sys__native_map_keys(void* value, const char* delimiter) { return __apo_stdlib::map_keys(value, __apo_stdlib::view_or_empty(delimiter)); }
        const char* sys__native_map_values(void* value, const char* delimiter) { return __apo_stdlib::map_values(value, __apo_stdlib::view_or_empty(delimiter)); }
        const char* sys__native_map_entries(void* value, const char* delimiter) { return __apo_stdlib::map_entries(value, __apo_stdlib::view_or_empty(delimiter)); }

        void* sys__native_tmap_new() { return __apo_stdlib::tmap_new(); }
        void sys__native_tmap_insert(void* value, const char* key, const char* item) { __apo_stdlib::tmap_insert(value, __apo_stdlib::text_or_empty(key), __apo_stdlib::text_or_empty(item)); }
        const char* sys__native_tmap_remove(void* value, const char* key) { return __apo_stdlib::tmap_remove(value, __apo_stdlib::view_or_empty(key)); }
        const char* sys__native_tmap_first_key(void* value) { return __apo_stdlib::tmap_first_key(value); }
        const char* sys__native_tmap_last_key(void* value) { return __apo_stdlib::tmap_last_key(value); }
        const char* sys__native_tmap_floor_key(void* value, const char* key) { return __apo_stdlib::tmap_floor_key(value, __apo_stdlib::view_or_empty(key)); }
        const char* sys__native_tmap_ceiling_key(void* value, const char* key) { return __apo_stdlib::tmap_ceiling_key(value, __apo_stdlib::view_or_empty(key)); }

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
    
}
