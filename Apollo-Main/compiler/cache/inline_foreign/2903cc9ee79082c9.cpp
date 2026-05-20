
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
namespace __apollo_inline_inline_193_5_1 {
        double sys__abs_f64(double value) { return std::fabs(value); }
        double sys__ceil(double value) { return std::ceil(value); }
        double sys__floor(double value) { return std::floor(value); }
        double sys__round(double value) { return std::round(value); }
        double sys__trunc(double value) { return std::trunc(value); }
        double sys__sqrt(double value) { return std::sqrt(value); }
        double sys__cbrt(double value) { return std::cbrt(value); }
        double sys__hypot(double left, double right) { return std::hypot(left, right); }
        double sys__sin(double value) { return std::sin(value); }
        double sys__cos(double value) { return std::cos(value); }
        double sys__tan(double value) { return std::tan(value); }
        double sys__asin(double value) { return std::asin(value); }
        double sys__acos(double value) { return std::acos(value); }
        double sys__atan(double value) { return std::atan(value); }
        double sys__atan2(double left, double right) { return std::atan2(left, right); }
        double sys__sinh(double value) { return std::sinh(value); }
        double sys__cosh(double value) { return std::cosh(value); }
        double sys__tanh(double value) { return std::tanh(value); }
        double sys__asinh(double value) { return std::asinh(value); }
        double sys__acosh(double value) { return std::acosh(value); }
        double sys__atanh(double value) { return std::atanh(value); }
        double sys__exp(double value) { return std::exp(value); }
        double sys__exp2(double value) { return std::exp2(value); }
        double sys__expm1(double value) { return std::expm1(value); }
        double sys__log(double value) { return std::log(value); }
        double sys__log2(double value) { return std::log2(value); }
        double sys__log10(double value) { return std::log10(value); }
        double sys__log1p(double value) { return std::log1p(value); }
        double sys__pow(double left, double right) { return std::pow(left, right); }
        double sys__fma(double x, double y, double z) { return std::fma(x, y, z); }
        double sys__copysign(double x, double y) { return std::copysign(x, y); }
        double sys__nextafter(double x, double y) { return std::nextafter(x, y); }
        double sys__ldexp(double value, int exponent) { return std::ldexp(value, exponent); }
        double sys__frexp_fraction(double value) { return __apo_stdlib::frexp_fraction_f64(value); }
        int sys__frexp_exponent(double value) { return __apo_stdlib::frexp_exponent_f64(value); }
        double sys__modf_fraction(double value) { return __apo_stdlib::modf_fraction_f64(value); }
        double sys__modf_integral(double value) { return __apo_stdlib::modf_integral_f64(value); }
        int sys__isnan(double value) { return std::isnan(value) ? 1 : 0; }
        int sys__isinf(double value) { return std::isinf(value) ? 1 : 0; }
        int sys__isfinite(double value) { return std::isfinite(value) ? 1 : 0; }
        int sys__isnormal(double value) { return std::isnormal(value) ? 1 : 0; }
        double sys__signum_f64(double value) { return __apo_stdlib::signum_f64(value); }
    
}
extern "C" double sys__ceil(double value) { return __apollo_inline_inline_193_5_1::sys__ceil(value); }
extern "C" double sys__floor(double value) { return __apollo_inline_inline_193_5_1::sys__floor(value); }
extern "C" double sys__round(double value) { return __apollo_inline_inline_193_5_1::sys__round(value); }
extern "C" double sys__trunc(double value) { return __apollo_inline_inline_193_5_1::sys__trunc(value); }
extern "C" double sys__sqrt(double value) { return __apollo_inline_inline_193_5_1::sys__sqrt(value); }
extern "C" double sys__cbrt(double value) { return __apollo_inline_inline_193_5_1::sys__cbrt(value); }
extern "C" double sys__hypot(double left, double right) { return __apollo_inline_inline_193_5_1::sys__hypot(left, right); }
extern "C" double sys__sin(double value) { return __apollo_inline_inline_193_5_1::sys__sin(value); }
extern "C" double sys__cos(double value) { return __apollo_inline_inline_193_5_1::sys__cos(value); }
extern "C" double sys__tan(double value) { return __apollo_inline_inline_193_5_1::sys__tan(value); }
extern "C" double sys__asin(double value) { return __apollo_inline_inline_193_5_1::sys__asin(value); }
extern "C" double sys__acos(double value) { return __apollo_inline_inline_193_5_1::sys__acos(value); }
extern "C" double sys__atan(double value) { return __apollo_inline_inline_193_5_1::sys__atan(value); }
extern "C" double sys__atan2(double left, double right) { return __apollo_inline_inline_193_5_1::sys__atan2(left, right); }
extern "C" double sys__sinh(double value) { return __apollo_inline_inline_193_5_1::sys__sinh(value); }
extern "C" double sys__cosh(double value) { return __apollo_inline_inline_193_5_1::sys__cosh(value); }
extern "C" double sys__tanh(double value) { return __apollo_inline_inline_193_5_1::sys__tanh(value); }
extern "C" double sys__asinh(double value) { return __apollo_inline_inline_193_5_1::sys__asinh(value); }
extern "C" double sys__acosh(double value) { return __apollo_inline_inline_193_5_1::sys__acosh(value); }
extern "C" double sys__atanh(double value) { return __apollo_inline_inline_193_5_1::sys__atanh(value); }
extern "C" double sys__exp(double value) { return __apollo_inline_inline_193_5_1::sys__exp(value); }
extern "C" double sys__exp2(double value) { return __apollo_inline_inline_193_5_1::sys__exp2(value); }
extern "C" double sys__expm1(double value) { return __apollo_inline_inline_193_5_1::sys__expm1(value); }
extern "C" double sys__log(double value) { return __apollo_inline_inline_193_5_1::sys__log(value); }
extern "C" double sys__log2(double value) { return __apollo_inline_inline_193_5_1::sys__log2(value); }
extern "C" double sys__log10(double value) { return __apollo_inline_inline_193_5_1::sys__log10(value); }
extern "C" double sys__log1p(double value) { return __apollo_inline_inline_193_5_1::sys__log1p(value); }
extern "C" double sys__pow(double left, double right) { return __apollo_inline_inline_193_5_1::sys__pow(left, right); }
extern "C" double sys__fma(double x, double y, double z) { return __apollo_inline_inline_193_5_1::sys__fma(x, y, z); }
extern "C" double sys__copysign(double x, double y) { return __apollo_inline_inline_193_5_1::sys__copysign(x, y); }
extern "C" double sys__nextafter(double x, double y) { return __apollo_inline_inline_193_5_1::sys__nextafter(x, y); }
extern "C" double sys__ldexp(double value, int exponent) { return __apollo_inline_inline_193_5_1::sys__ldexp(value, exponent); }
extern "C" double sys__frexp_fraction(double value) { return __apollo_inline_inline_193_5_1::sys__frexp_fraction(value); }
extern "C" int sys__frexp_exponent(double value) { return __apollo_inline_inline_193_5_1::sys__frexp_exponent(value); }
extern "C" double sys__modf_fraction(double value) { return __apollo_inline_inline_193_5_1::sys__modf_fraction(value); }
extern "C" double sys__modf_integral(double value) { return __apollo_inline_inline_193_5_1::sys__modf_integral(value); }
extern "C" int sys__isnan(double value) { return __apollo_inline_inline_193_5_1::sys__isnan(value); }
extern "C" int sys__isinf(double value) { return __apollo_inline_inline_193_5_1::sys__isinf(value); }
extern "C" int sys__isfinite(double value) { return __apollo_inline_inline_193_5_1::sys__isfinite(value); }
extern "C" int sys__isnormal(double value) { return __apollo_inline_inline_193_5_1::sys__isnormal(value); }
extern "C" double sys__signum_f64(double value) { return __apollo_inline_inline_193_5_1::sys__signum_f64(value); }
