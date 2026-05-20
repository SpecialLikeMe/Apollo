
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
extern int sys__native_fs_create_dir(const char* path);
extern int sys__native_fs_create_dir_all(const char* path);
extern int sys__native_fs_remove_file(const char* path);
extern int sys__native_fs_remove_dir(const char* path);
extern int sys__native_fs_remove_dir_all(const char* path);
extern int sys__native_fs_rename(const char* from, const char* to);
extern int sys__native_fs_copy(const char* from, const char* to);
extern int sys__native_fs_hard_link(const char* source, const char* destination);
extern int sys__native_fs_symlink(const char* source, const char* destination);
extern int sys__native_fs_exists(const char* path);
extern int sys__native_path_is_absolute(const char* path);
extern int sys__native_path_is_relative(const char* path);
extern int sys__native_env_set(const char* key, const char* value);
extern int sys__native_env_remove(const char* key);
extern int sys__native_set_current_dir(const char* path);
extern int sys__native_process_id();
extern int sys__native_cpu_count();
extern int sys__native_utf8_validate(const char* value);
extern int sys__native_utf8_char_count(const char* value);
namespace __apollo_inline_inline_1595_5_14 {
        const char* sys__native_datetime_now_utc() { return __apo_stdlib::datetime_now_utc(); }
        const char* sys__native_datetime_now_local() { return __apo_stdlib::datetime_now_local(); }
        int sys__native_datetime_year_local() { return __apo_stdlib::datetime_year_local(); }
        int sys__native_datetime_month_local() { return __apo_stdlib::datetime_month_local(); }
        int sys__native_datetime_day_local() { return __apo_stdlib::datetime_day_local(); }
        int sys__native_datetime_hour_local() { return __apo_stdlib::datetime_hour_local(); }
        int sys__native_datetime_minute_local() { return __apo_stdlib::datetime_minute_local(); }
        int sys__native_datetime_second_local() { return __apo_stdlib::datetime_second_local(); }
        int sys__native_monotonic_millis() { return __apo_stdlib::monotonic_millis(); }
    
}
extern "C" int sys__native_datetime_year_local() { return __apollo_inline_inline_1595_5_14::sys__native_datetime_year_local(); }
extern "C" int sys__native_datetime_month_local() { return __apollo_inline_inline_1595_5_14::sys__native_datetime_month_local(); }
extern "C" int sys__native_datetime_day_local() { return __apollo_inline_inline_1595_5_14::sys__native_datetime_day_local(); }
extern "C" int sys__native_datetime_hour_local() { return __apollo_inline_inline_1595_5_14::sys__native_datetime_hour_local(); }
extern "C" int sys__native_datetime_minute_local() { return __apollo_inline_inline_1595_5_14::sys__native_datetime_minute_local(); }
extern "C" int sys__native_datetime_second_local() { return __apollo_inline_inline_1595_5_14::sys__native_datetime_second_local(); }
extern "C" int sys__native_monotonic_millis() { return __apollo_inline_inline_1595_5_14::sys__native_monotonic_millis(); }
