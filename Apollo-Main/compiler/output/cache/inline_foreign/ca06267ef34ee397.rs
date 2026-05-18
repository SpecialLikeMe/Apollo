mod apollo_inline_inline_2_5_0 {
#![allow(dead_code)]
pub fn four() -> i32 { 4 }
pub static mut foreign_value: i32 = 7;
}
#[no_mangle]
pub extern "C-unwind" fn four() -> i32 { return apollo_inline_inline_2_5_0::four(); }
#[no_mangle]
pub extern "C-unwind" fn __apollo_inline_get_inline_2_5_0_foreign_value() -> *mut i32 { std::ptr::addr_of_mut!(apollo_inline_inline_2_5_0::foreign_value) }
