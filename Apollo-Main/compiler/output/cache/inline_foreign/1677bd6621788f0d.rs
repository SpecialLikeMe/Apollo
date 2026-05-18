use std::os::raw::c_char;
extern "C" {
    fn printf(format: *const c_char, ...) -> i32;
}
#[no_mangle]
pub extern "C-unwind" fn __apollo_inline_run_inline_28_3_0(__apollo_capture_0: *const c_char) {
    unsafe { printf(b"%s\n\0".as_ptr() as *const c_char, __apollo_capture_0); }
}
