
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
namespace __apollo_inline_inline_698_5_7 {
        void* sys__file_open(const char* path, const char* mode) { return __apo_stdlib::file_open(__apo_stdlib::text_or_empty(path), __apo_stdlib::text_or_empty(mode)); }
        int sys__file_write(void* value, const char* text) { return __apo_stdlib::file_write(value, __apo_stdlib::view_or_empty(text)); }
        const char* sys__file_read_all(void* value) { return __apo_stdlib::file_read_all(value); }
        int sys__file_close(void* value) { return __apo_stdlib::file_close(value); }
        const char* sys__file_path(void* value) { return __apo_stdlib::file_path(value); }
        int sys__fs_create_dir(const char* path) { return __apo_stdlib::fs_create_dir(__apo_stdlib::view_or_empty(path)); }
        int sys__fs_create_dir_all(const char* path) { return __apo_stdlib::fs_create_dir_all(__apo_stdlib::view_or_empty(path)); }
        int sys__fs_remove_file(const char* path) { return __apo_stdlib::fs_remove_file(__apo_stdlib::view_or_empty(path)); }
        int sys__fs_remove_dir(const char* path) { return __apo_stdlib::fs_remove_dir(__apo_stdlib::view_or_empty(path)); }
        int sys__fs_remove_dir_all(const char* path) { return __apo_stdlib::fs_remove_dir_all(__apo_stdlib::view_or_empty(path)); }
        int sys__fs_rename(const char* from, const char* to) { return __apo_stdlib::fs_rename(__apo_stdlib::view_or_empty(from), __apo_stdlib::view_or_empty(to)); }
        int sys__fs_copy(const char* from, const char* to) { return __apo_stdlib::fs_copy(__apo_stdlib::view_or_empty(from), __apo_stdlib::view_or_empty(to)); }
        const char* sys__fs_read_dir(const char* path, const char* delimiter) { return __apo_stdlib::fs_read_dir(__apo_stdlib::view_or_empty(path), __apo_stdlib::view_or_empty(delimiter)); }
        int sys__fs_hard_link(const char* source, const char* destination) { return __apo_stdlib::fs_hard_link(__apo_stdlib::view_or_empty(source), __apo_stdlib::view_or_empty(destination)); }
        int sys__fs_exists(const char* path) { return __apo_stdlib::fs_exists(__apo_stdlib::view_or_empty(path)); }
        const char* sys__path_parent(const char* path) { return __apo_stdlib::path_parent(__apo_stdlib::view_or_empty(path)); }
        const char* sys__path_file_name(const char* path) { return __apo_stdlib::path_file_name(__apo_stdlib::view_or_empty(path)); }
        const char* sys__path_extension(const char* path) { return __apo_stdlib::path_extension(__apo_stdlib::view_or_empty(path)); }
        const char* sys__path_file_stem(const char* path) { return __apo_stdlib::path_file_stem(__apo_stdlib::view_or_empty(path)); }
        int sys__path_is_absolute(const char* path) { return __apo_stdlib::path_is_absolute(__apo_stdlib::view_or_empty(path)); }
        int sys__path_is_relative(const char* path) { return __apo_stdlib::path_is_relative(__apo_stdlib::view_or_empty(path)); }
        const char* sys__path_to_absolute(const char* path) { return __apo_stdlib::path_to_absolute(__apo_stdlib::view_or_empty(path)); }
        const char* sys__path_canonicalize(const char* path) { return __apo_stdlib::path_canonicalize(__apo_stdlib::view_or_empty(path)); }
    
}
extern "C" int sys__fs_create_dir(const char* path) { return __apollo_inline_inline_698_5_7::sys__fs_create_dir(path); }
extern "C" int sys__fs_create_dir_all(const char* path) { return __apollo_inline_inline_698_5_7::sys__fs_create_dir_all(path); }
extern "C" int sys__fs_remove_file(const char* path) { return __apollo_inline_inline_698_5_7::sys__fs_remove_file(path); }
extern "C" int sys__fs_remove_dir(const char* path) { return __apollo_inline_inline_698_5_7::sys__fs_remove_dir(path); }
extern "C" int sys__fs_remove_dir_all(const char* path) { return __apollo_inline_inline_698_5_7::sys__fs_remove_dir_all(path); }
extern "C" int sys__fs_rename(const char* from, const char* to) { return __apollo_inline_inline_698_5_7::sys__fs_rename(from, to); }
extern "C" int sys__fs_copy(const char* from, const char* to) { return __apollo_inline_inline_698_5_7::sys__fs_copy(from, to); }
extern "C" int sys__fs_hard_link(const char* source, const char* destination) { return __apollo_inline_inline_698_5_7::sys__fs_hard_link(source, destination); }
extern "C" int sys__fs_exists(const char* path) { return __apollo_inline_inline_698_5_7::sys__fs_exists(path); }
extern "C" int sys__path_is_absolute(const char* path) { return __apollo_inline_inline_698_5_7::sys__path_is_absolute(path); }
extern "C" int sys__path_is_relative(const char* path) { return __apollo_inline_inline_698_5_7::sys__path_is_relative(path); }
