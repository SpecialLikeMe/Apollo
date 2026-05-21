
        #include "apo_stdlib_runtime.hpp"
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
namespace __apollo_inline_inline_779_5_3 {
        int sys__native_str_len(const char* value) { return static_cast<int>(__apo_stdlib::view_or_empty(value).size()); }
        const char* sys__native_str_concat(const char* left, const char* right) { return __apo_stdlib::store_string(__apo_stdlib::text_or_empty(left) + __apo_stdlib::text_or_empty(right)); }
        const char* sys__native_str_trim(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::trim_copy(__apo_stdlib::view_or_empty(value))); }
        const char* sys__native_str_trim_start(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::trim_start_copy(__apo_stdlib::view_or_empty(value))); }
        const char* sys__native_str_trim_end(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::trim_end_copy(__apo_stdlib::view_or_empty(value))); }
        const char* sys__native_str_lowercase(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::lowercase_ascii_copy(__apo_stdlib::text_or_empty(value))); }
        const char* sys__native_str_uppercase(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::uppercase_ascii_copy(__apo_stdlib::text_or_empty(value))); }
        const char* sys__native_str_titlecase(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::titlecase_ascii_copy(__apo_stdlib::text_or_empty(value))); }
        int sys__native_str_contains(const char* value, const char* sub) { return __apo_stdlib::text_or_empty(value).find(__apo_stdlib::text_or_empty(sub)) == std::string::npos ? 0 : 1; }
        int sys__native_str_starts_with(const char* value, const char* prefix) { return __apo_stdlib::view_or_empty(value).starts_with(__apo_stdlib::view_or_empty(prefix)) ? 1 : 0; }
        int sys__native_str_ends_with(const char* value, const char* suffix) { return __apo_stdlib::view_or_empty(value).ends_with(__apo_stdlib::view_or_empty(suffix)) ? 1 : 0; }
        int sys__native_str_find(const char* value, const char* sub) {
            const std::size_t match = __apo_stdlib::text_or_empty(value).find(__apo_stdlib::text_or_empty(sub));
            return match == std::string::npos ? -1 : static_cast<int>(match);
        }
        int sys__native_str_rfind(const char* value, const char* sub) {
            const std::size_t match = __apo_stdlib::text_or_empty(value).rfind(__apo_stdlib::text_or_empty(sub));
            return match == std::string::npos ? -1 : static_cast<int>(match);
        }
        const char* sys__native_str_replace(const char* value, const char* old_text, const char* new_text) {
            return __apo_stdlib::store_string(__apo_stdlib::replace_n_copy(__apo_stdlib::text_or_empty(value), __apo_stdlib::view_or_empty(old_text), __apo_stdlib::view_or_empty(new_text), -1));
        }
        const char* sys__native_str_replace_n(const char* value, const char* old_text, const char* new_text, int count) {
            return __apo_stdlib::store_string(__apo_stdlib::replace_n_copy(__apo_stdlib::text_or_empty(value), __apo_stdlib::view_or_empty(old_text), __apo_stdlib::view_or_empty(new_text), count));
        }
        const char* sys__native_str_reverse(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::reverse_copy(__apo_stdlib::text_or_empty(value))); }
        const char* sys__native_str_repeat(const char* value, int count) {
            std::string out;
            if (count > 0) {
                const std::string text = __apo_stdlib::text_or_empty(value);
                for (int index = 0; index < count; ++index) {
                    out += text;
                }
            }
            return __apo_stdlib::store_string(std::move(out));
        }
        const char* sys__native_str_pad_left(const char* value, int target_len, const char* fill) {
            std::string text = __apo_stdlib::text_or_empty(value);
            const char pad = __apo_stdlib::pad_char(__apo_stdlib::view_or_empty(fill));
            while (static_cast<int>(text.size()) < target_len) {
                text.insert(text.begin(), pad);
            }
            return __apo_stdlib::store_string(std::move(text));
        }
        const char* sys__native_str_pad_right(const char* value, int target_len, const char* fill) {
            std::string text = __apo_stdlib::text_or_empty(value);
            const char pad = __apo_stdlib::pad_char(__apo_stdlib::view_or_empty(fill));
            while (static_cast<int>(text.size()) < target_len) {
                text.push_back(pad);
            }
            return __apo_stdlib::store_string(std::move(text));
        }
        const char* sys__native_str_substring(const char* value, int start, int len) {
            const std::string text = __apo_stdlib::text_or_empty(value);
            if (start < 0 || len <= 0 || start >= static_cast<int>(text.size())) {
                return __apo_stdlib::store_string("");
            }
            return __apo_stdlib::store_string(text.substr(static_cast<std::size_t>(start), static_cast<std::size_t>(len)));
        }
        int sys__native_str_cmp(const char* left, const char* right) { return __apo_stdlib::compare_strings(__apo_stdlib::view_or_empty(left), __apo_stdlib::view_or_empty(right)); }
        int sys__native_str_casecmp(const char* left, const char* right) { return __apo_stdlib::compare_strings_casefold_ascii(__apo_stdlib::view_or_empty(left), __apo_stdlib::view_or_empty(right)); }
        void* sys__native_str_split(const char* value, const char* delimiter) { return __apo_stdlib::str_split_handle(__apo_stdlib::view_or_empty(value), __apo_stdlib::view_or_empty(delimiter), -1); }
        void* sys__native_str_split_n(const char* value, const char* delimiter, int max_parts) { return __apo_stdlib::str_split_handle(__apo_stdlib::view_or_empty(value), __apo_stdlib::view_or_empty(delimiter), max_parts); }
        void* sys__native_str_split_lines(const char* value) { return __apo_stdlib::str_split_lines_handle(__apo_stdlib::view_or_empty(value)); }
        long sys__native_parse_int(const char* value, int base) {
            const std::string text = __apo_stdlib::trim_copy(__apo_stdlib::view_or_empty(value));
            if (text.empty()) { return 0; }
            char* end = nullptr;
            const int normalized_base = base == 0 ? 0 : (base < 2 || base > 36 ? 10 : base);
            return std::strtol(text.c_str(), &end, normalized_base);
        }
        int sys__native_parse_bool(const char* value) { return __apo_stdlib::parse_bool_ascii(__apo_stdlib::view_or_empty(value)); }
        double sys__native_parse_float(const char* value) {
            const std::string text = __apo_stdlib::trim_copy(__apo_stdlib::view_or_empty(value));
            if (text.empty()) { return 0.0; }
            char* end = nullptr;
            return std::strtod(text.c_str(), &end);
        }
        int sys__native_is_alpha(const char* value) { return std::isalpha(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__native_is_digit(const char* value) { return std::isdigit(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__native_is_alnum(const char* value) { return std::isalnum(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__native_is_whitespace(const char* value) { return std::isspace(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__native_is_control(const char* value) { return std::iscntrl(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__native_is_punctuation(const char* value) { return std::ispunct(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__native_is_graph(const char* value) { return std::isgraph(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__native_is_print(const char* value) { return std::isprint(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__native_is_hex_digit(const char* value) { return std::isxdigit(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__native_is_ascii(const char* value) { return __apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value)) <= 0x7F ? 1 : 0; }
    
}
extern "C" int sys__native_str_len(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_str_len(value); }
extern "C" const char* sys__native_str_concat(const char* left, const char* right) { return __apollo_inline_inline_779_5_3::sys__native_str_concat(left, right); }
extern "C" const char* sys__native_str_trim(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_str_trim(value); }
extern "C" const char* sys__native_str_trim_start(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_str_trim_start(value); }
extern "C" const char* sys__native_str_trim_end(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_str_trim_end(value); }
extern "C" const char* sys__native_str_lowercase(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_str_lowercase(value); }
extern "C" const char* sys__native_str_uppercase(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_str_uppercase(value); }
extern "C" const char* sys__native_str_titlecase(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_str_titlecase(value); }
extern "C" int sys__native_str_contains(const char* value, const char* sub) { return __apollo_inline_inline_779_5_3::sys__native_str_contains(value, sub); }
extern "C" int sys__native_str_starts_with(const char* value, const char* prefix) { return __apollo_inline_inline_779_5_3::sys__native_str_starts_with(value, prefix); }
extern "C" int sys__native_str_ends_with(const char* value, const char* suffix) { return __apollo_inline_inline_779_5_3::sys__native_str_ends_with(value, suffix); }
extern "C" int sys__native_str_find(const char* value, const char* sub) { return __apollo_inline_inline_779_5_3::sys__native_str_find(value, sub); }
extern "C" int sys__native_str_rfind(const char* value, const char* sub) { return __apollo_inline_inline_779_5_3::sys__native_str_rfind(value, sub); }
extern "C" const char* sys__native_str_replace(const char* value, const char* old_text, const char* new_text) { return __apollo_inline_inline_779_5_3::sys__native_str_replace(value, old_text, new_text); }
extern "C" const char* sys__native_str_replace_n(const char* value, const char* old_text, const char* new_text, int count) { return __apollo_inline_inline_779_5_3::sys__native_str_replace_n(value, old_text, new_text, count); }
extern "C" const char* sys__native_str_reverse(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_str_reverse(value); }
extern "C" const char* sys__native_str_repeat(const char* value, int count) { return __apollo_inline_inline_779_5_3::sys__native_str_repeat(value, count); }
extern "C" const char* sys__native_str_pad_left(const char* value, int target_len, const char* fill) { return __apollo_inline_inline_779_5_3::sys__native_str_pad_left(value, target_len, fill); }
extern "C" const char* sys__native_str_pad_right(const char* value, int target_len, const char* fill) { return __apollo_inline_inline_779_5_3::sys__native_str_pad_right(value, target_len, fill); }
extern "C" const char* sys__native_str_substring(const char* value, int start, int len) { return __apollo_inline_inline_779_5_3::sys__native_str_substring(value, start, len); }
extern "C" int sys__native_str_cmp(const char* left, const char* right) { return __apollo_inline_inline_779_5_3::sys__native_str_cmp(left, right); }
extern "C" int sys__native_str_casecmp(const char* left, const char* right) { return __apollo_inline_inline_779_5_3::sys__native_str_casecmp(left, right); }
extern "C" void* sys__native_str_split(const char* value, const char* delimiter) { return __apollo_inline_inline_779_5_3::sys__native_str_split(value, delimiter); }
extern "C" void* sys__native_str_split_n(const char* value, const char* delimiter, int max_parts) { return __apollo_inline_inline_779_5_3::sys__native_str_split_n(value, delimiter, max_parts); }
extern "C" void* sys__native_str_split_lines(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_str_split_lines(value); }
extern "C" long sys__native_parse_int(const char* value, int base) { return __apollo_inline_inline_779_5_3::sys__native_parse_int(value, base); }
extern "C" int sys__native_parse_bool(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_parse_bool(value); }
extern "C" double sys__native_parse_float(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_parse_float(value); }
extern "C" int sys__native_is_alpha(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_alpha(value); }
extern "C" int sys__native_is_digit(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_digit(value); }
extern "C" int sys__native_is_alnum(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_alnum(value); }
extern "C" int sys__native_is_whitespace(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_whitespace(value); }
extern "C" int sys__native_is_control(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_control(value); }
extern "C" int sys__native_is_punctuation(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_punctuation(value); }
extern "C" int sys__native_is_graph(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_graph(value); }
extern "C" int sys__native_is_print(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_print(value); }
extern "C" int sys__native_is_hex_digit(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_hex_digit(value); }
extern "C" int sys__native_is_ascii(const char* value) { return __apollo_inline_inline_779_5_3::sys__native_is_ascii(value); }
