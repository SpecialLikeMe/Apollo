
        #include "apo_stdlib_runtime.hpp"

namespace __apollo_inline_inline_108_5_0 {
        int sys__native_div_floor(int left, int right) { return __apo_stdlib::div_floor_i32(left, right); }
        int sys__native_mod_euc(int left, int right) { return __apo_stdlib::mod_euclid_i32(left, right); }
        int sys__native_saturating_add(int left, int right) { return __apo_stdlib::saturating_add_i32(left, right); }
        int sys__native_saturating_sub(int left, int right) { return __apo_stdlib::saturating_sub_i32(left, right); }
        int sys__native_saturating_mul(int left, int right) { return __apo_stdlib::saturating_mul_i32(left, right); }
        int sys__native_wrapping_add(int left, int right) { return __apo_stdlib::wrapping_add_i32(left, right); }
        int sys__native_wrapping_sub(int left, int right) { return __apo_stdlib::wrapping_sub_i32(left, right); }
        int sys__overflowing_add_value(int left, int right) { return __apo_stdlib::overflowing_add_value_i32(left, right); }
        int sys__overflowing_add_overflow(int left, int right) { return __apo_stdlib::overflowing_add_overflow_i32(left, right); }
        int sys__native_lcm(int left, int right) { return __apo_stdlib::lcm_i32(left, right); }
        int sys__native_signum(int value) { return __apo_stdlib::signum_i32(value); }
    
}
extern "C" int sys__native_div_floor(int left, int right) { return __apollo_inline_inline_108_5_0::sys__native_div_floor(left, right); }
extern "C" int sys__native_mod_euc(int left, int right) { return __apollo_inline_inline_108_5_0::sys__native_mod_euc(left, right); }
extern "C" int sys__native_saturating_add(int left, int right) { return __apollo_inline_inline_108_5_0::sys__native_saturating_add(left, right); }
extern "C" int sys__native_saturating_sub(int left, int right) { return __apollo_inline_inline_108_5_0::sys__native_saturating_sub(left, right); }
extern "C" int sys__native_saturating_mul(int left, int right) { return __apollo_inline_inline_108_5_0::sys__native_saturating_mul(left, right); }
extern "C" int sys__native_wrapping_add(int left, int right) { return __apollo_inline_inline_108_5_0::sys__native_wrapping_add(left, right); }
extern "C" int sys__native_wrapping_sub(int left, int right) { return __apollo_inline_inline_108_5_0::sys__native_wrapping_sub(left, right); }
extern "C" int sys__overflowing_add_value(int left, int right) { return __apollo_inline_inline_108_5_0::sys__overflowing_add_value(left, right); }
extern "C" int sys__overflowing_add_overflow(int left, int right) { return __apollo_inline_inline_108_5_0::sys__overflowing_add_overflow(left, right); }
extern "C" int sys__native_lcm(int left, int right) { return __apollo_inline_inline_108_5_0::sys__native_lcm(left, right); }
extern "C" int sys__native_signum(int value) { return __apollo_inline_inline_108_5_0::sys__native_signum(value); }
