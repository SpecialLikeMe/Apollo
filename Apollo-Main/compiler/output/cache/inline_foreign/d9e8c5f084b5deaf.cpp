
        #include "apo_std_object_runtime.hpp"

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
namespace __apollo_inline_inline_529_5_4 {
        void sys__native_term_print_raw(const char* value) { __apo_stdlib::term_print_raw(__apo_stdlib::view_or_empty(value)); }
        void sys__native_term_println_raw(const char* value) { __apo_stdlib::term_println_raw(__apo_stdlib::view_or_empty(value)); }
        const char* sys__native_term_read_line() { return __apo_stdlib::term_read_line(); }
        int sys__native_term_is_tty() { return __apo_stdlib::term_is_tty(); }
        void sys__native_term_clear() { __apo_stdlib::term_clear(); }
        void sys__native_term_set_cursor(int column, int row) { __apo_stdlib::term_set_cursor(column, row); }
        void sys__native_term_show_cursor() { __apo_stdlib::term_show_cursor(); }
        void sys__native_term_hide_cursor() { __apo_stdlib::term_hide_cursor(); }
        void sys__native_term_set_color_fg(int color) { __apo_stdlib::term_set_color_fg(color); }
        void sys__native_term_set_color_bg(int color) { __apo_stdlib::term_set_color_bg(color); }
        void sys__native_term_set_style(const char* style) { __apo_stdlib::term_set_style(__apo_stdlib::view_or_empty(style)); }
        void sys__native_term_reset() { __apo_stdlib::term_reset(); }
        void sys__native_log_info(const char* value) { __apo_stdlib::log_info(__apo_stdlib::view_or_empty(value)); }
        void sys__native_log_warn(const char* value) { __apo_stdlib::log_warn(__apo_stdlib::view_or_empty(value)); }
        void sys__native_log_error(const char* value) { __apo_stdlib::log_error(__apo_stdlib::view_or_empty(value)); }
        void sys__native_log_debug(const char* value) { __apo_stdlib::log_debug(__apo_stdlib::view_or_empty(value)); }
        void sys__native_log_trace(const char* value) { __apo_stdlib::log_trace(__apo_stdlib::view_or_empty(value)); }
    
}
extern "C" const char* sys__native_term_read_line() { return __apollo_inline_inline_529_5_4::sys__native_term_read_line(); }
extern "C" int sys__native_term_is_tty() { return __apollo_inline_inline_529_5_4::sys__native_term_is_tty(); }
