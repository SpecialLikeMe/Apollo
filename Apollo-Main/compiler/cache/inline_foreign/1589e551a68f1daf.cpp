
        #include "../../runtime_support/apo_std_object_runtime.hpp"

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
extern int sys__term_is_tty();
extern int sys__fs_create_dir(const char* path);
extern int sys__fs_create_dir_all(const char* path);
extern int sys__fs_remove_file(const char* path);
extern int sys__fs_remove_dir(const char* path);
extern int sys__fs_remove_dir_all(const char* path);
extern int sys__fs_rename(const char* from, const char* to);
extern int sys__fs_copy(const char* from, const char* to);
extern int sys__fs_hard_link(const char* source, const char* destination);
extern int sys__fs_exists(const char* path);
extern int sys__path_is_absolute(const char* path);
extern int sys__path_is_relative(const char* path);
namespace __apollo_inline_inline_766_5_10 {
        int sys__host_is_windows() { return __apo_stdlib::host_is_windows(); }
        const char* sys__path_separator() { return __apo_stdlib::path_separator(); }
        const char* sys__exe_suffix() { return __apo_stdlib::exe_suffix(); }
        const char* sys__env_get(const char* key) { return __apo_stdlib::env_get(__apo_stdlib::view_or_empty(key)); }
        int sys__env_set(const char* key, const char* value) { return __apo_stdlib::env_set(__apo_stdlib::view_or_empty(key), __apo_stdlib::view_or_empty(value)); }
        int sys__env_remove(const char* key) { return __apo_stdlib::env_remove(__apo_stdlib::view_or_empty(key)); }
        const char* sys__current_dir() { return __apo_stdlib::current_dir(); }
        int sys__set_current_dir(const char* path) { return __apo_stdlib::set_current_dir(__apo_stdlib::view_or_empty(path)); }
        const char* sys__executable_path() { return __apo_stdlib::executable_path(); }
        int sys__process_id() { return __apo_stdlib::process_id(); }
        int sys__cpu_count() { return __apo_stdlib::cpu_count(); }
        const char* sys__host_name() { return __apo_stdlib::host_name(); }
        const char* sys__temp_dir() { return __apo_stdlib::temp_dir(); }
        const char* sys__path_join(const char* left, const char* right) { return __apo_stdlib::path_join(__apo_stdlib::view_or_empty(left), __apo_stdlib::view_or_empty(right)); }
        void sys__sleep_ms(int value) { __apo_stdlib::sleep_ms(value); }
    
}
extern "C" int sys__env_set(const char* key, const char* value) { return __apollo_inline_inline_766_5_10::sys__env_set(key, value); }
extern "C" int sys__env_remove(const char* key) { return __apollo_inline_inline_766_5_10::sys__env_remove(key); }
extern "C" int sys__set_current_dir(const char* path) { return __apollo_inline_inline_766_5_10::sys__set_current_dir(path); }
extern "C" int sys__process_id() { return __apollo_inline_inline_766_5_10::sys__process_id(); }
extern "C" int sys__cpu_count() { return __apollo_inline_inline_766_5_10::sys__cpu_count(); }
