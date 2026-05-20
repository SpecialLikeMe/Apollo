
        #include "../../runtime_support/apo_stdlib_runtime.hpp"

namespace __apollo_inline_inline_75_5_0 {
        int sys__div_floor(int left, int right) { return __apo_stdlib::div_floor_i32(left, right); }
        int sys__mod_euc(int left, int right) { return __apo_stdlib::mod_euclid_i32(left, right); }
        int sys__saturating_add(int left, int right) { return __apo_stdlib::saturating_add_i32(left, right); }
        int sys__saturating_sub(int left, int right) { return __apo_stdlib::saturating_sub_i32(left, right); }
        int sys__saturating_mul(int left, int right) { return __apo_stdlib::saturating_mul_i32(left, right); }
        int sys__wrapping_add(int left, int right) { return __apo_stdlib::wrapping_add_i32(left, right); }
        int sys__wrapping_sub(int left, int right) { return __apo_stdlib::wrapping_sub_i32(left, right); }
        int sys__overflowing_add_value(int left, int right) { return __apo_stdlib::overflowing_add_value_i32(left, right); }
        int sys__overflowing_add_overflow(int left, int right) { return __apo_stdlib::overflowing_add_overflow_i32(left, right); }
        int sys__lcm(int left, int right) { return __apo_stdlib::lcm_i32(left, right); }
        int sys__signum(int value) { return __apo_stdlib::signum_i32(value); }
    
}
extern "C" int sys__mod_euc(int left, int right) { return __apollo_inline_inline_75_5_0::sys__mod_euc(left, right); }
extern "C" int sys__saturating_add(int left, int right) { return __apollo_inline_inline_75_5_0::sys__saturating_add(left, right); }
extern "C" int sys__saturating_sub(int left, int right) { return __apollo_inline_inline_75_5_0::sys__saturating_sub(left, right); }
extern "C" int sys__saturating_mul(int left, int right) { return __apollo_inline_inline_75_5_0::sys__saturating_mul(left, right); }
extern "C" int sys__wrapping_add(int left, int right) { return __apollo_inline_inline_75_5_0::sys__wrapping_add(left, right); }
extern "C" int sys__wrapping_sub(int left, int right) { return __apollo_inline_inline_75_5_0::sys__wrapping_sub(left, right); }
extern "C" int sys__overflowing_add_value(int left, int right) { return __apollo_inline_inline_75_5_0::sys__overflowing_add_value(left, right); }
extern "C" int sys__overflowing_add_overflow(int left, int right) { return __apollo_inline_inline_75_5_0::sys__overflowing_add_overflow(left, right); }
extern "C" int sys__lcm(int left, int right) { return __apollo_inline_inline_75_5_0::sys__lcm(left, right); }
extern "C" int sys__signum(int value) { return __apollo_inline_inline_75_5_0::sys__signum(value); }
