#[no_mangle]
pub extern "C-unwind" fn __apollo_inline_run_inline_28_3_0(__apollo_capture_0__raw: *const c_char) {
    let mut __apollo_capture_0 = unsafe { CStr::from_ptr(__apollo_capture_0__raw).to_string_lossy().into_owned() };
    println!("{}", __apollo_capture_0);
}
