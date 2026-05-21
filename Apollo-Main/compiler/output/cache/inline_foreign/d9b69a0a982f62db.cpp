
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
namespace __apollo_inline_inline_990_5_4 {
        void sys__native_term_print_raw(const char* value) { __apo_stdlib::term_print_raw(__apo_stdlib::view_or_empty(value)); }
        void sys__native_term_println_raw(const char* value) { __apo_stdlib::term_println_raw(__apo_stdlib::view_or_empty(value)); }
        const char* sys__native_term_read_line() { return __apo_stdlib::term_read_line(); }
        int sys__native_term_is_tty() { return __apo_stdlib::term_is_tty(); }
        int sys__native_term_columns() { return __apo_stdlib::term_columns(); }
        int sys__native_term_rows() { return __apo_stdlib::term_rows(); }
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
extern "C" const char* sys__native_term_read_line() { return __apollo_inline_inline_990_5_4::sys__native_term_read_line(); }
extern "C" int sys__native_term_is_tty() { return __apollo_inline_inline_990_5_4::sys__native_term_is_tty(); }
extern "C" int sys__native_term_columns() { return __apollo_inline_inline_990_5_4::sys__native_term_columns(); }
extern "C" int sys__native_term_rows() { return __apollo_inline_inline_990_5_4::sys__native_term_rows(); }
