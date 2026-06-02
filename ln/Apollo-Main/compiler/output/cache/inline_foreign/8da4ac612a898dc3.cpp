
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
namespace __apollo_inline_inline_612_5_1 {
        double sys__native_abs_f64(double value) { return std::fabs(value); }
        double sys__native_ceil(double value) { return std::ceil(value); }
        double sys__native_floor(double value) { return std::floor(value); }
        double sys__native_round(double value) { return std::round(value); }
        double sys__native_trunc(double value) { return std::trunc(value); }
        double sys__native_sqrt(double value) { return std::sqrt(value); }
        double sys__native_cbrt(double value) { return std::cbrt(value); }
        double sys__native_hypot(double left, double right) { return std::hypot(left, right); }
        double sys__native_sin(double value) { return std::sin(value); }
        double sys__native_cos(double value) { return std::cos(value); }
        double sys__native_tan(double value) { return std::tan(value); }
        double sys__native_asin(double value) { return std::asin(value); }
        double sys__native_acos(double value) { return std::acos(value); }
        double sys__native_atan(double value) { return std::atan(value); }
        double sys__native_atan2(double left, double right) { return std::atan2(left, right); }
        double sys__native_sinh(double value) { return std::sinh(value); }
        double sys__native_cosh(double value) { return std::cosh(value); }
        double sys__native_tanh(double value) { return std::tanh(value); }
        double sys__native_asinh(double value) { return std::asinh(value); }
        double sys__native_acosh(double value) { return std::acosh(value); }
        double sys__native_atanh(double value) { return std::atanh(value); }
        double sys__native_exp(double value) { return std::exp(value); }
        double sys__native_exp2(double value) { return std::exp2(value); }
        double sys__native_expm1(double value) { return std::expm1(value); }
        double sys__native_log(double value) { return std::log(value); }
        double sys__native_log2(double value) { return std::log2(value); }
        double sys__native_log10(double value) { return std::log10(value); }
        double sys__native_log1p(double value) { return std::log1p(value); }
        double sys__native_pow(double left, double right) { return std::pow(left, right); }
        double sys__native_fma(double x, double y, double z) { return std::fma(x, y, z); }
        double sys__native_copysign(double x, double y) { return std::copysign(x, y); }
        double sys__native_nextafter(double x, double y) { return std::nextafter(x, y); }
        double sys__native_ldexp(double value, int exponent) { return std::ldexp(value, exponent); }
        double sys__frexp_fraction(double value) { return __apo_stdlib::frexp_fraction_f64(value); }
        int sys__frexp_exponent(double value) { return __apo_stdlib::frexp_exponent_f64(value); }
        double sys__modf_fraction(double value) { return __apo_stdlib::modf_fraction_f64(value); }
        double sys__modf_integral(double value) { return __apo_stdlib::modf_integral_f64(value); }
        int sys__native_isnan(double value) { return std::isnan(value) ? 1 : 0; }
        int sys__native_isinf(double value) { return std::isinf(value) ? 1 : 0; }
        int sys__native_isfinite(double value) { return std::isfinite(value) ? 1 : 0; }
        int sys__native_isnormal(double value) { return std::isnormal(value) ? 1 : 0; }
        double sys__native_signum_f64(double value) { return __apo_stdlib::signum_f64(value); }
    
}
extern "C" double sys__native_abs_f64(double value) { return __apollo_inline_inline_612_5_1::sys__native_abs_f64(value); }
extern "C" double sys__native_ceil(double value) { return __apollo_inline_inline_612_5_1::sys__native_ceil(value); }
extern "C" double sys__native_floor(double value) { return __apollo_inline_inline_612_5_1::sys__native_floor(value); }
extern "C" double sys__native_round(double value) { return __apollo_inline_inline_612_5_1::sys__native_round(value); }
extern "C" double sys__native_trunc(double value) { return __apollo_inline_inline_612_5_1::sys__native_trunc(value); }
extern "C" double sys__native_sqrt(double value) { return __apollo_inline_inline_612_5_1::sys__native_sqrt(value); }
extern "C" double sys__native_cbrt(double value) { return __apollo_inline_inline_612_5_1::sys__native_cbrt(value); }
extern "C" double sys__native_hypot(double left, double right) { return __apollo_inline_inline_612_5_1::sys__native_hypot(left, right); }
extern "C" double sys__native_sin(double value) { return __apollo_inline_inline_612_5_1::sys__native_sin(value); }
extern "C" double sys__native_cos(double value) { return __apollo_inline_inline_612_5_1::sys__native_cos(value); }
extern "C" double sys__native_tan(double value) { return __apollo_inline_inline_612_5_1::sys__native_tan(value); }
extern "C" double sys__native_asin(double value) { return __apollo_inline_inline_612_5_1::sys__native_asin(value); }
extern "C" double sys__native_acos(double value) { return __apollo_inline_inline_612_5_1::sys__native_acos(value); }
extern "C" double sys__native_atan(double value) { return __apollo_inline_inline_612_5_1::sys__native_atan(value); }
extern "C" double sys__native_atan2(double left, double right) { return __apollo_inline_inline_612_5_1::sys__native_atan2(left, right); }
extern "C" double sys__native_sinh(double value) { return __apollo_inline_inline_612_5_1::sys__native_sinh(value); }
extern "C" double sys__native_cosh(double value) { return __apollo_inline_inline_612_5_1::sys__native_cosh(value); }
extern "C" double sys__native_tanh(double value) { return __apollo_inline_inline_612_5_1::sys__native_tanh(value); }
extern "C" double sys__native_asinh(double value) { return __apollo_inline_inline_612_5_1::sys__native_asinh(value); }
extern "C" double sys__native_acosh(double value) { return __apollo_inline_inline_612_5_1::sys__native_acosh(value); }
extern "C" double sys__native_atanh(double value) { return __apollo_inline_inline_612_5_1::sys__native_atanh(value); }
extern "C" double sys__native_exp(double value) { return __apollo_inline_inline_612_5_1::sys__native_exp(value); }
extern "C" double sys__native_exp2(double value) { return __apollo_inline_inline_612_5_1::sys__native_exp2(value); }
extern "C" double sys__native_expm1(double value) { return __apollo_inline_inline_612_5_1::sys__native_expm1(value); }
extern "C" double sys__native_log(double value) { return __apollo_inline_inline_612_5_1::sys__native_log(value); }
extern "C" double sys__native_log2(double value) { return __apollo_inline_inline_612_5_1::sys__native_log2(value); }
extern "C" double sys__native_log10(double value) { return __apollo_inline_inline_612_5_1::sys__native_log10(value); }
extern "C" double sys__native_log1p(double value) { return __apollo_inline_inline_612_5_1::sys__native_log1p(value); }
extern "C" double sys__native_pow(double left, double right) { return __apollo_inline_inline_612_5_1::sys__native_pow(left, right); }
extern "C" double sys__native_fma(double x, double y, double z) { return __apollo_inline_inline_612_5_1::sys__native_fma(x, y, z); }
extern "C" double sys__native_copysign(double x, double y) { return __apollo_inline_inline_612_5_1::sys__native_copysign(x, y); }
extern "C" double sys__native_nextafter(double x, double y) { return __apollo_inline_inline_612_5_1::sys__native_nextafter(x, y); }
extern "C" double sys__native_ldexp(double value, int exponent) { return __apollo_inline_inline_612_5_1::sys__native_ldexp(value, exponent); }
extern "C" double sys__frexp_fraction(double value) { return __apollo_inline_inline_612_5_1::sys__frexp_fraction(value); }
extern "C" int sys__frexp_exponent(double value) { return __apollo_inline_inline_612_5_1::sys__frexp_exponent(value); }
extern "C" double sys__modf_fraction(double value) { return __apollo_inline_inline_612_5_1::sys__modf_fraction(value); }
extern "C" double sys__modf_integral(double value) { return __apollo_inline_inline_612_5_1::sys__modf_integral(value); }
extern "C" int sys__native_isnan(double value) { return __apollo_inline_inline_612_5_1::sys__native_isnan(value); }
extern "C" int sys__native_isinf(double value) { return __apollo_inline_inline_612_5_1::sys__native_isinf(value); }
extern "C" int sys__native_isfinite(double value) { return __apollo_inline_inline_612_5_1::sys__native_isfinite(value); }
extern "C" int sys__native_isnormal(double value) { return __apollo_inline_inline_612_5_1::sys__native_isnormal(value); }
extern "C" double sys__native_signum_f64(double value) { return __apollo_inline_inline_612_5_1::sys__native_signum_f64(value); }
