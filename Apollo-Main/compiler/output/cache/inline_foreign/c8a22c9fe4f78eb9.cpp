
        #include "apo_stdlib_runtime.hpp"

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
namespace __apollo_inline_inline_565_5_2 {
        int sys__native_clz(int value) { return __apo_stdlib::clz_i32(value); }
        int sys__native_ctz(int value) { return __apo_stdlib::ctz_i32(value); }
        int sys__native_popcount(int value) { return __apo_stdlib::popcount_i32(value); }
        int sys__native_ffs(int value) { return __apo_stdlib::ffs_i32(value); }
        int sys__native_rotate_left(int value, int amount) { return __apo_stdlib::rotate_left_i32(value, amount); }
        int sys__native_rotate_right(int value, int amount) { return __apo_stdlib::rotate_right_i32(value, amount); }
        int sys__native_bswap(int value) { return __apo_stdlib::bswap_i32(value); }
    
}
extern "C" int sys__native_clz(int value) { return __apollo_inline_inline_565_5_2::sys__native_clz(value); }
extern "C" int sys__native_ctz(int value) { return __apollo_inline_inline_565_5_2::sys__native_ctz(value); }
extern "C" int sys__native_popcount(int value) { return __apollo_inline_inline_565_5_2::sys__native_popcount(value); }
extern "C" int sys__native_ffs(int value) { return __apollo_inline_inline_565_5_2::sys__native_ffs(value); }
extern "C" int sys__native_rotate_left(int value, int amount) { return __apollo_inline_inline_565_5_2::sys__native_rotate_left(value, amount); }
extern "C" int sys__native_rotate_right(int value, int amount) { return __apollo_inline_inline_565_5_2::sys__native_rotate_right(value, amount); }
extern "C" int sys__native_bswap(int value) { return __apollo_inline_inline_565_5_2::sys__native_bswap(value); }
