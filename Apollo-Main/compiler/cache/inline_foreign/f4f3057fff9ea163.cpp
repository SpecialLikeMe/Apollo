
        #include "../../runtime_support/apo_stdlib_runtime.hpp"

extern int sys__mod_euc(int left, int right);
extern int sys__saturating_add(int left, int right);
extern int sys__saturating_sub(int left, int right);
extern int sys__saturating_mul(int left, int right);
extern int sys__wrapping_add(int left, int right);
extern int sys__wrapping_sub(int left, int right);
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
extern int sys__isnan(double value);
extern int sys__isinf(double value);
extern int sys__isfinite(double value);
extern int sys__isnormal(double value);
extern double sys__signum_f64(double value);
namespace __apollo_inline_inline_251_5_2 {
        int sys__clz(int value) { return __apo_stdlib::clz_i32(value); }
        int sys__ctz(int value) { return __apo_stdlib::ctz_i32(value); }
        int sys__popcount(int value) { return __apo_stdlib::popcount_i32(value); }
        int sys__ffs(int value) { return __apo_stdlib::ffs_i32(value); }
        int sys__rotate_left(int value, int amount) { return __apo_stdlib::rotate_left_i32(value, amount); }
        int sys__rotate_right(int value, int amount) { return __apo_stdlib::rotate_right_i32(value, amount); }
        int sys__bswap(int value) { return __apo_stdlib::bswap_i32(value); }
    
}
extern "C" int sys__ctz(int value) { return __apollo_inline_inline_251_5_2::sys__ctz(value); }
extern "C" int sys__popcount(int value) { return __apollo_inline_inline_251_5_2::sys__popcount(value); }
extern "C" int sys__ffs(int value) { return __apollo_inline_inline_251_5_2::sys__ffs(value); }
extern "C" int sys__rotate_left(int value, int amount) { return __apollo_inline_inline_251_5_2::sys__rotate_left(value, amount); }
extern "C" int sys__rotate_right(int value, int amount) { return __apollo_inline_inline_251_5_2::sys__rotate_right(value, amount); }
extern "C" int sys__bswap(int value) { return __apollo_inline_inline_251_5_2::sys__bswap(value); }
