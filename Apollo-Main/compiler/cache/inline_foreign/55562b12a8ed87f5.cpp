
        #include "../../runtime_support/apo_stdlib_runtime.hpp"

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
namespace __apollo_inline_inline_342_5_3 {
        int sys__str_len(const char* value) { return static_cast<int>(__apo_stdlib::view_or_empty(value).size()); }
        const char* sys__str_concat(const char* left, const char* right) { return __apo_stdlib::store_string(__apo_stdlib::text_or_empty(left) + __apo_stdlib::text_or_empty(right)); }
        const char* sys__str_trim(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::trim_copy(__apo_stdlib::view_or_empty(value))); }
        const char* sys__str_trim_start(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::trim_start_copy(__apo_stdlib::view_or_empty(value))); }
        const char* sys__str_trim_end(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::trim_end_copy(__apo_stdlib::view_or_empty(value))); }
        const char* sys__str_lowercase(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::lowercase_ascii_copy(__apo_stdlib::text_or_empty(value))); }
        const char* sys__str_uppercase(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::uppercase_ascii_copy(__apo_stdlib::text_or_empty(value))); }
        const char* sys__str_titlecase(const char* value) { return __apo_stdlib::store_string(__apo_stdlib::titlecase_ascii_copy(__apo_stdlib::text_or_empty(value))); }
        int sys__str_contains(const char* value, const char* sub) { return __apo_stdlib::text_or_empty(value).find(__apo_stdlib::text_or_empty(sub)) == std::string::npos ? 0 : 1; }
        int sys__str_starts_with(const char* value, const char* prefix) { return __apo_stdlib::view_or_empty(value).starts_with(__apo_stdlib::view_or_empty(prefix)) ? 1 : 0; }
        int sys__str_ends_with(const char* value, const char* suffix) { return __apo_stdlib::view_or_empty(value).ends_with(__apo_stdlib::view_or_empty(suffix)) ? 1 : 0; }
        int sys__str_find(const char* value, const char* sub) {
            const std::size_t match = __apo_stdlib::text_or_empty(value).find(__apo_stdlib::text_or_empty(sub));
            return match == std::string::npos ? -1 : static_cast<int>(match);
        }
        int sys__str_rfind(const char* value, const char* sub) {
            const std::size_t match = __apo_stdlib::text_or_empty(value).rfind(__apo_stdlib::text_or_empty(sub));
            return match == std::string::npos ? -1 : static_cast<int>(match);
        }
        const char* sys__str_replace(const char* value, const char* old_text, const char* new_text) {
            return __apo_stdlib::store_string(__apo_stdlib::replace_n_copy(__apo_stdlib::text_or_empty(value), __apo_stdlib::view_or_empty(old_text), __apo_stdlib::view_or_empty(new_text), -1));
        }
        const char* sys__str_replace_n(const char* value, const char* old_text, const char* new_text, int count) {
            return __apo_stdlib::store_string(__apo_stdlib::replace_n_copy(__apo_stdlib::text_or_empty(value), __apo_stdlib::view_or_empty(old_text), __apo_stdlib::view_or_empty(new_text), count));
        }
        const char* sys__str_repeat(const char* value, int count) {
            std::string out;
            if (count > 0) {
                const std::string text = __apo_stdlib::text_or_empty(value);
                for (int index = 0; index < count; ++index) {
                    out += text;
                }
            }
            return __apo_stdlib::store_string(std::move(out));
        }
        const char* sys__str_pad_left(const char* value, int target_len, const char* fill) {
            std::string text = __apo_stdlib::text_or_empty(value);
            const char pad = __apo_stdlib::pad_char(__apo_stdlib::view_or_empty(fill));
            while (static_cast<int>(text.size()) < target_len) {
                text.insert(text.begin(), pad);
            }
            return __apo_stdlib::store_string(std::move(text));
        }
        const char* sys__str_pad_right(const char* value, int target_len, const char* fill) {
            std::string text = __apo_stdlib::text_or_empty(value);
            const char pad = __apo_stdlib::pad_char(__apo_stdlib::view_or_empty(fill));
            while (static_cast<int>(text.size()) < target_len) {
                text.push_back(pad);
            }
            return __apo_stdlib::store_string(std::move(text));
        }
        const char* sys__str_substring(const char* value, int start, int len) {
            const std::string text = __apo_stdlib::text_or_empty(value);
            if (start < 0 || len <= 0 || start >= static_cast<int>(text.size())) {
                return __apo_stdlib::store_string("");
            }
            return __apo_stdlib::store_string(text.substr(static_cast<std::size_t>(start), static_cast<std::size_t>(len)));
        }
        int sys__str_cmp(const char* left, const char* right) { return __apo_stdlib::compare_strings(__apo_stdlib::view_or_empty(left), __apo_stdlib::view_or_empty(right)); }
        int sys__str_casecmp(const char* left, const char* right) { return __apo_stdlib::compare_strings_casefold_ascii(__apo_stdlib::view_or_empty(left), __apo_stdlib::view_or_empty(right)); }
        long sys__parse_int(const char* value, int base) {
            const std::string text = __apo_stdlib::trim_copy(__apo_stdlib::view_or_empty(value));
            if (text.empty()) { return 0; }
            char* end = nullptr;
            const int normalized_base = base == 0 ? 0 : (base < 2 || base > 36 ? 10 : base);
            return std::strtol(text.c_str(), &end, normalized_base);
        }
        double sys__parse_float(const char* value) {
            const std::string text = __apo_stdlib::trim_copy(__apo_stdlib::view_or_empty(value));
            if (text.empty()) { return 0.0; }
            char* end = nullptr;
            return std::strtod(text.c_str(), &end);
        }
        int sys__is_alpha(const char* value) { return std::isalpha(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__is_digit(const char* value) { return std::isdigit(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__is_alnum(const char* value) { return std::isalnum(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__is_whitespace(const char* value) { return std::isspace(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__is_control(const char* value) { return std::iscntrl(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__is_punctuation(const char* value) { return std::ispunct(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__is_graph(const char* value) { return std::isgraph(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__is_print(const char* value) { return std::isprint(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__is_hex_digit(const char* value) { return std::isxdigit(__apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value))) != 0 ? 1 : 0; }
        int sys__is_ascii(const char* value) { return __apo_stdlib::first_byte(__apo_stdlib::view_or_empty(value)) <= 0x7F ? 1 : 0; }
    
}
extern "C" int sys__str_contains(const char* value, const char* sub) { return __apollo_inline_inline_342_5_3::sys__str_contains(value, sub); }
extern "C" int sys__str_starts_with(const char* value, const char* prefix) { return __apollo_inline_inline_342_5_3::sys__str_starts_with(value, prefix); }
extern "C" int sys__str_ends_with(const char* value, const char* suffix) { return __apollo_inline_inline_342_5_3::sys__str_ends_with(value, suffix); }
extern "C" int sys__str_find(const char* value, const char* sub) { return __apollo_inline_inline_342_5_3::sys__str_find(value, sub); }
extern "C" int sys__str_rfind(const char* value, const char* sub) { return __apollo_inline_inline_342_5_3::sys__str_rfind(value, sub); }
extern "C" int sys__str_cmp(const char* left, const char* right) { return __apollo_inline_inline_342_5_3::sys__str_cmp(left, right); }
extern "C" int sys__str_casecmp(const char* left, const char* right) { return __apollo_inline_inline_342_5_3::sys__str_casecmp(left, right); }
extern "C" long sys__parse_int(const char* value, int base) { return __apollo_inline_inline_342_5_3::sys__parse_int(value, base); }
extern "C" double sys__parse_float(const char* value) { return __apollo_inline_inline_342_5_3::sys__parse_float(value); }
extern "C" int sys__is_alpha(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_alpha(value); }
extern "C" int sys__is_digit(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_digit(value); }
extern "C" int sys__is_alnum(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_alnum(value); }
extern "C" int sys__is_whitespace(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_whitespace(value); }
extern "C" int sys__is_control(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_control(value); }
extern "C" int sys__is_punctuation(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_punctuation(value); }
extern "C" int sys__is_graph(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_graph(value); }
extern "C" int sys__is_print(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_print(value); }
extern "C" int sys__is_hex_digit(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_hex_digit(value); }
extern "C" int sys__is_ascii(const char* value) { return __apollo_inline_inline_342_5_3::sys__is_ascii(value); }
