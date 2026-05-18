; ModuleID = 'apollo_inline_inline_28_3_0.f691f64e95a20b35-cgu.0'
source_filename = "apollo_inline_inline_28_3_0.f691f64e95a20b35-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-gnu"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { ptr, [1 x i64] }

@alloc_71119db2a016437e3c959b28130bffe4 = private unnamed_addr constant [115 x i8] c"C:\\Users\\devon\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib/rustlib/src/rust\\library\\core\\src\\ffi\\c_str.rs\00", align 1
@alloc_8273d6ce7e2da5a37b6b1a7a1def057f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_71119db2a016437e3c959b28130bffe4, [16 x i8] c"r\00\00\00\00\00\00\00\08\01\00\006\00\00\00" }>, align 8
@alloc_bd3468a7b96187f70c1ce98a3e7a63bf = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant [42 x i8] c"is_aligned_to: align is not a power-of-two", align 1
@alloc_15d4208fe2e63bead71eaa053b8776c8 = private unnamed_addr constant [119 x i8] c"C:\\Users\\devon\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib/rustlib/src/rust\\library\\core\\src\\ptr\\const_ptr.rs\00", align 1
@alloc_d81255f358827678a1226daf9b7c6b04 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_15d4208fe2e63bead71eaa053b8776c8, [16 x i8] c"v\00\00\00\00\00\00\00^\05\00\00\0D\00\00\00" }>, align 8
@alloc_64e308ef4babfeb8b6220184de794a17 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_1189345d0effeabcbb7364d05d1a0760 = private unnamed_addr constant [115 x i8] c"C:\\Users\\devon\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib/rustlib/src/rust\\library\\core\\src\\ub_checks.rs\00", align 1
@alloc_e91378d88dd2bd4d8b4f1aac55975ddb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_1189345d0effeabcbb7364d05d1a0760, [16 x i8] c"r\00\00\00\00\00\00\00\94\00\00\006\00\00\00" }>, align 8
@alloc_a28e8c8fd5088943a8b5d44af697ff83 = private unnamed_addr constant [279 x i8] c"unsafe precondition(s) violated: slice::from_raw_parts requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize", align 1
@alloc_57d70e9d94c65ecfc15225d29a5ed72b = private unnamed_addr constant [198 x i8] c"unsafe precondition(s) violated: Vec::set_len requires that new_len <= capacity()\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_fd4f3ef90f81956497b8e68aaf64278d = private unnamed_addr constant [118 x i8] c"C:\\Users\\devon\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib/rustlib/src/rust\\library\\alloc\\src\\raw_vec\\mod.rs\00", align 1
@alloc_3568f28a2a8659a5dcd0a19c05564057 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_fd4f3ef90f81956497b8e68aaf64278d, [16 x i8] c"u\00\00\00\00\00\00\00\A6\01\00\00\15\00\00\00" }>, align 8
@alloc_b985446e1b2ab178480e52e9d13c024e = private unnamed_addr constant [113 x i8] c"C:\\Users\\devon\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib/rustlib/src/rust\\library\\core\\src\\ptr\\mod.rs\00", align 1
@alloc_662b062909366f2a96a61ae563efe869 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b985446e1b2ab178480e52e9d13c024e, [16 x i8] c"p\00\00\00\00\00\00\00\0F\02\00\00\05\00\00\00" }>, align 8
@alloc_b68b324862d4a707980ced70edb1ece9 = private unnamed_addr constant [114 x i8] c"C:\\Users\\devon\\.rustup\\toolchains\\stable-x86_64-pc-windows-msvc\\lib/rustlib/src/rust\\library\\alloc\\src\\vec\\mod.rs\00", align 1
@alloc_dee255d5e256c7b1b0c8dbc072f126b2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b68b324862d4a707980ced70edb1ece9, [16 x i8] c"q\00\00\00\00\00\00\004\08\00\00\09\00\00\00" }>, align 8
@alloc_61247b90e1706a3f65e71312b599d3d1 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1

; core::intrinsics::cold_path
; Function Attrs: cold nounwind uwtable
define internal void @_ZN4core10intrinsics9cold_path17hc75ef80efd73e864E() unnamed_addr #0 {
start:
  ret void
}

; core::ffi::c_str::CStr::from_ptr
; Function Attrs: inlinehint nounwind uwtable
define internal { ptr, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17h0a56f7b1db71a7adE(ptr %ptr) unnamed_addr #1 {
start:
  %len = call i64 @strlen(ptr %ptr) #7
  %len1 = add i64 %len, 1
  br label %bb2

bb2:                                              ; preds = %start
; call core::slice::raw::from_raw_parts::precondition_check
  call void @_ZN4core5slice3raw14from_raw_parts18precondition_check17ha35cd3428e24a2ceE(ptr %ptr, i64 1, i64 1, i64 %len1, ptr align 8 @alloc_8273d6ce7e2da5a37b6b1a7a1def057f) #8
  br label %bb4

bb4:                                              ; preds = %bb2
  %0 = insertvalue { ptr, i64 } poison, ptr %ptr, 0
  %1 = insertvalue { ptr, i64 } %0, i64 %len1, 1
  ret { ptr, i64 } %1
}

; core::fmt::rt::Argument::new_display
; Function Attrs: inlinehint nounwind uwtable
define void @_ZN4core3fmt2rt8Argument11new_display17hab5ebffe6c6570f5E(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #1 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %_2, align 8
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17ha9f76b32f22ac2b6E", ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false)
  ret void
}

; core::fmt::Arguments::new
; Function Attrs: inlinehint nounwind uwtable
define { ptr, ptr } @_ZN4core3fmt9Arguments3new17h66aea23cae420a87E(ptr align 1 %template, ptr align 8 %args) unnamed_addr #1 {
start:
  %0 = insertvalue { ptr, ptr } poison, ptr %template, 0
  %1 = insertvalue { ptr, ptr } %0, ptr %args, 1
  ret { ptr, ptr } %1
}

; core::ptr::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17he445c2ad99fd01e9E(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count, ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %zero_size = alloca [1 x i8], align 1
  %1 = icmp eq i64 %count, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, ptr %zero_size, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %2 = icmp eq i64 %size, 0
  %3 = zext i1 %2 to i8
  store i8 %3, ptr %zero_size, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, ptr %zero_size, align 1
  %is_zst = trunc nuw i8 %4 to i1
; call core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_15 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hac11417e2f9b4979E"(ptr %src, i64 %align) #8
  br i1 %_15, label %bb11, label %bb12

bb12:                                             ; preds = %bb3
  br label %bb7

bb11:                                             ; preds = %bb3
  br i1 %is_zst, label %bb13, label %bb14

bb7:                                              ; preds = %bb14, %bb12
  br label %bb8

bb14:                                             ; preds = %bb11
  %_17 = ptrtoint ptr %src to i64
  %_16 = icmp eq i64 %_17, 0
  %_8 = xor i1 %_16, true
  br i1 %_8, label %bb4, label %bb7

bb13:                                             ; preds = %bb11
  br label %bb4

bb4:                                              ; preds = %bb13, %bb14
; call core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_18 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hac11417e2f9b4979E"(ptr %dst, i64 %align) #8
  br i1 %_18, label %bb16, label %bb17

bb8:                                              ; preds = %bb6, %bb7
  br label %bb9

bb17:                                             ; preds = %bb4
  br label %bb6

bb16:                                             ; preds = %bb4
  %5 = load i8, ptr %zero_size, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb18, label %bb19

bb6:                                              ; preds = %bb19, %bb17
  br label %bb8

bb19:                                             ; preds = %bb16
  %_20 = ptrtoint ptr %dst to i64
  %_19 = icmp eq i64 %_20, 0
  %_10 = xor i1 %_19, true
  br i1 %_10, label %bb5, label %bb6

bb18:                                             ; preds = %bb16
  br label %bb5

bb5:                                              ; preds = %bb18, %bb19
; call core::ub_checks::maybe_is_nonoverlapping::runtime
  %_6 = call zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17ha2aa19a591d02a51E(ptr %src, ptr %dst, i64 %size, i64 %count) #8
  br i1 %_6, label %bb10, label %bb9

bb9:                                              ; preds = %bb5, %bb8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hc9db67dc84c0bcd1E(ptr @alloc_bd3468a7b96187f70c1ce98a3e7a63bf, ptr inttoptr (i64 567 to ptr), i1 zeroext false, ptr align 8 %0) #9
  unreachable

bb10:                                             ; preds = %bb5
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nounwind uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hae72884d45fe0c83E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5b0e862623552422E"(ptr align 8 %_1) #7
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nounwind uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5b0e862623552422E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9dcdfe3602323b3E"(ptr align 8 %_1) #7
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hfa166b2a8a2f3b55E"(ptr align 8 %_1) #7
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nounwind uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hfa166b2a8a2f3b55E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4e460694c7ca4b3E"(ptr align 8 %_1) #7
  ret void
}

; core::ptr::const_ptr::<impl *const T>::is_aligned_to
; Function Attrs: inlinehint nounwind uwtable
define zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hac11417e2f9b4979E"(ptr %self, i64 %align) unnamed_addr #1 {
start:
  %0 = alloca [4 x i8], align 4
  %1 = call i64 @llvm.ctpop.i64(i64 %align)
  %2 = trunc i64 %1 to i32
  store i32 %2, ptr %0, align 4
  %_8 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %_8, 1
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %_6 = ptrtoint ptr %self to i64
  %_7 = sub i64 %align, 1
  %_5 = and i64 %_6, %_7
  %_0 = icmp eq i64 %_5, 0
  ret i1 %_0

bb2:                                              ; preds = %start
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h4b08ac2439ede328E(ptr @alloc_fad0cd83b7d1858a846a172eb260e593, ptr inttoptr (i64 85 to ptr), ptr align 8 @alloc_d81255f358827678a1226daf9b7c6b04) #9
  unreachable
}

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core4hint16assert_unchecked18precondition_check17hba7b2a6fe4a6f064E(i1 zeroext %cond, ptr align 8 %0) unnamed_addr #1 {
start:
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hc9db67dc84c0bcd1E(ptr @alloc_64e308ef4babfeb8b6220184de794a17, ptr inttoptr (i64 443 to ptr), i1 zeroext false, ptr align 8 %0) #9
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::slice::raw::from_raw_parts::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core5slice3raw14from_raw_parts18precondition_check17ha35cd3428e24a2ceE(ptr %data, i64 %size, i64 %align, i64 %len, ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %max_len = alloca [8 x i8], align 8
; call core::ptr::const_ptr::<impl *const T>::is_aligned_to
  %_11 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13is_aligned_to17hac11417e2f9b4979E"(ptr %data, i64 %align) #8
  br i1 %_11, label %bb6, label %bb7

bb7:                                              ; preds = %start
  br label %bb4

bb6:                                              ; preds = %start
  %_13 = ptrtoint ptr %data to i64
  %_12 = icmp eq i64 %_13, 0
  %_5 = xor i1 %_12, true
  br i1 %_5, label %bb1, label %bb4

bb4:                                              ; preds = %bb6, %bb7
  br label %bb5

bb1:                                              ; preds = %bb6
  %_15 = icmp eq i64 %size, 0
  %1 = icmp eq i64 %size, 0
  br i1 %1, label %bb9, label %bb10

bb5:                                              ; preds = %bb3, %bb4
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hc9db67dc84c0bcd1E(ptr @alloc_a28e8c8fd5088943a8b5d44af697ff83, ptr inttoptr (i64 559 to ptr), i1 zeroext false, ptr align 8 %0) #9
  unreachable

bb9:                                              ; preds = %bb1
  store i64 -1, ptr %max_len, align 8
  br label %bb12

bb10:                                             ; preds = %bb1
  br i1 %_15, label %panic, label %bb11

bb12:                                             ; preds = %bb11, %bb9
  %2 = load i64, ptr %max_len, align 8
  %_7 = icmp ule i64 %len, %2
  br i1 %_7, label %bb2, label %bb3

bb11:                                             ; preds = %bb10
  %3 = udiv i64 9223372036854775807, %size
  store i64 %3, ptr %max_len, align 8
  br label %bb12

panic:                                            ; preds = %bb10
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h023b3a51d72ebab5E(ptr align 8 @alloc_e91378d88dd2bd4d8b4f1aac55975ddb) #9
  unreachable

bb3:                                              ; preds = %bb12
  br label %bb5

bb2:                                              ; preds = %bb12
  ret void
}

; core::ub_checks::maybe_is_nonoverlapping::runtime
; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17ha2aa19a591d02a51E(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #1 {
start:
  %diff = alloca [8 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %src_usize = ptrtoint ptr %src to i64
  %dst_usize = ptrtoint ptr %dst to i64
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %size, i64 %count)
  %_13.0 = extractvalue { i64, i1 } %0, 0
  %_13.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_13.1, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %_13.0, ptr %1, align 8
  store i64 1, ptr %_9, align 8
  %2 = getelementptr inbounds i8, ptr %_9, i64 8
  %size1 = load i64, ptr %2, align 8
  %_21 = icmp ult i64 %src_usize, %dst_usize
  br i1 %_21, label %bb4, label %bb5

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h9b7996cf34f27a24E(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #9
  unreachable

bb5:                                              ; preds = %bb3
  %3 = sub i64 %src_usize, %dst_usize
  store i64 %3, ptr %diff, align 8
  br label %bb6

bb4:                                              ; preds = %bb3
  %4 = sub i64 %dst_usize, %src_usize
  store i64 %4, ptr %diff, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %5 = load i64, ptr %diff, align 8
  %_0 = icmp uge i64 %5, %size1
  ret i1 %_0
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he5ce6e543322eef8E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %bytes = alloca [24 x i8], align 8
; call <T as alloc::slice::<impl [T]>::to_vec_in::ConvertVec>::to_vec
  call void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd784ea999008583aE"(ptr sret([24 x i8]) align 8 %bytes, ptr align 1 %self.0, i64 %self.1) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %bytes, i64 24, i1 false)
  ret void
}

; alloc::vec::Vec<T,A>::set_len::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len18precondition_check17hc8e15b0021593ec0E"(i64 %new_len, i64 %capacity, ptr align 8 %0) unnamed_addr #1 {
start:
  %_3 = icmp ule i64 %new_len, %capacity
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17hc9db67dc84c0bcd1E(ptr @alloc_57d70e9d94c65ecfc15225d29a5ed72b, ptr inttoptr (i64 397 to ptr), i1 zeroext false, ptr align 8 %0) #9
  unreachable

bb1:                                              ; preds = %start
  ret void
}

; alloc::borrow::Cow<B>::into_owned
; Function Attrs: nounwind uwtable
define void @"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h837450dd8da1b7cdE"(ptr sret([24 x i8]) align 8 %owned, ptr align 8 %self) unnamed_addr #2 {
start:
  %0 = load i64, ptr %self, align 8
  %1 = icmp eq i64 %0, -9223372036854775808
  %_2 = select i1 %1, i64 0, i64 1
  %2 = trunc nuw i64 %_2 to i1
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %start
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %owned, ptr align 8 %self, i64 24, i1 false)
  br label %bb4

bb3:                                              ; preds = %start
  %3 = getelementptr inbounds i8, ptr %self, i64 8
  %borrowed.0 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %borrowed.1 = load i64, ptr %4, align 8
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he5ce6e543322eef8E"(ptr sret([24 x i8]) align 8 %owned, ptr align 1 %borrowed.0, i64 %borrowed.1) #8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  ret void

bb1:                                              ; No predecessors!
  unreachable
}

; alloc::raw_vec::RawVecInner<A>::with_capacity_in
; Function Attrs: inlinehint nounwind uwtable
define { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h112a25ce6b2f33d6E"(i64 %capacity, i64 %elem_layout.0, i64 %elem_layout.1) unnamed_addr #1 {
start:
  %self = alloca [8 x i8], align 8
  %_4 = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17ha73933f88507acc9E"(ptr sret([24 x i8]) align 8 %_4, i64 %capacity, i1 zeroext false, i64 %elem_layout.0, i64 %elem_layout.1) #7
  %_5 = load i64, ptr %_4, align 8
  %0 = trunc nuw i64 %_5 to i1
  br i1 %0, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_4, i64 8
  %err.0 = load i64, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %err.1 = load i64, ptr %2, align 8
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17haca4b902cb37eae6E(i64 %err.0, i64 %err.1) #10
  unreachable

bb4:                                              ; preds = %start
  %3 = getelementptr inbounds i8, ptr %_4, i64 8
  %this.0 = load i64, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %this.1 = load ptr, ptr %4, align 8
  %5 = icmp eq i64 %elem_layout.1, 0
  br i1 %5, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  store i64 -1, ptr %self, align 8
  br label %bb5

bb7:                                              ; preds = %bb4
  store i64 %this.0, ptr %self, align 8
  br label %bb5

bb5:                                              ; preds = %bb7, %bb6
  %6 = load i64, ptr %self, align 8
  %_11 = sub i64 %6, 0
  %_7 = icmp ugt i64 %capacity, %_11
  %cond = xor i1 %_7, true
  br label %bb8

bb8:                                              ; preds = %bb5
; call core::hint::assert_unchecked::precondition_check
  call void @_ZN4core4hint16assert_unchecked18precondition_check17hba7b2a6fe4a6f064E(i1 zeroext %cond, ptr align 8 @alloc_3568f28a2a8659a5dcd0a19c05564057) #8
  br label %bb9

bb9:                                              ; preds = %bb8
  %7 = insertvalue { i64, ptr } poison, i64 %this.0, 0
  %8 = insertvalue { i64, ptr } %7, ptr %this.1, 1
  ret { i64, ptr } %8

bb2:                                              ; No predecessors!
  unreachable
}

; <alloc::string::String as core::fmt::Display>::fmt
; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17ha9f76b32f22ac2b6E"(ptr align 8 %self, ptr align 8 %f) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_8 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %_7 = load i64, ptr %1, align 8
; call <str as core::fmt::Display>::fmt
  %_0 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hdf999d917822e32cE"(ptr align 1 %_8, i64 %_7, ptr align 8 %f) #7
  ret i1 %_0
}

; <T as alloc::slice::<impl [T]>::to_vec_in::ConvertVec>::to_vec
; Function Attrs: inlinehint nounwind uwtable
define void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd784ea999008583aE"(ptr sret([24 x i8]) align 8 %v, ptr align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %_16 = alloca [8 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::with_capacity_in
  %0 = call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h112a25ce6b2f33d6E"(i64 %s.1, i64 1, i64 1) #8
  %_9.0 = extractvalue { i64, ptr } %0, 0
  %_9.1 = extractvalue { i64, ptr } %0, 1
  store i64 %_9.0, ptr %v, align 8
  %1 = getelementptr inbounds i8, ptr %v, i64 8
  store ptr %_9.1, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %v, i64 8
  %_11 = load ptr, ptr %3, align 8
  br label %bb2

bb2:                                              ; preds = %start
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17he445c2ad99fd01e9E(ptr %s.0, ptr %_11, i64 1, i64 1, i64 %s.1, ptr align 8 @alloc_662b062909366f2a96a61ae563efe869) #8
  br label %bb4

bb4:                                              ; preds = %bb2
  %4 = mul i64 %s.1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_11, ptr align 1 %s.0, i64 %4, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb10

bb10:                                             ; preds = %bb5
  %self = load i64, ptr %v, align 8
  store i64 %self, ptr %_16, align 8
  br label %bb8

bb8:                                              ; preds = %bb10
  %5 = load i64, ptr %_16, align 8
; call alloc::vec::Vec<T,A>::set_len::precondition_check
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len18precondition_check17hc8e15b0021593ec0E"(i64 %s.1, i64 %5, ptr align 8 @alloc_dee255d5e256c7b1b0c8dbc072f126b2) #8
  br label %bb7

bb7:                                              ; preds = %bb8
  %6 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 %s.1, ptr %6, align 8
  ret void

bb9:                                              ; No predecessors!
  unreachable
}

; Function Attrs: nounwind uwtable
define void @__apollo_inline_run_inline_28_3_0(ptr %__apollo_capture_0__raw) unnamed_addr #2 {
start:
  %_10 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %__apollo_capture_0 = alloca [24 x i8], align 8
; call core::ffi::c_str::CStr::from_ptr
  %0 = call { ptr, i64 } @_ZN4core3ffi5c_str4CStr8from_ptr17h0a56f7b1db71a7adE(ptr %__apollo_capture_0__raw) #8
  %_4.0 = extractvalue { ptr, i64 } %0, 0
  %_4.1 = extractvalue { ptr, i64 } %0, 1
; call alloc::ffi::c_str::<impl core::ffi::c_str::CStr>::to_string_lossy
  call void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17ha1be3c9d6f7ab383E"(ptr sret([24 x i8]) align 8 %_3, ptr align 1 %_4.0, i64 %_4.1) #7
; call alloc::borrow::Cow<B>::into_owned
  call void @"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h837450dd8da1b7cdE"(ptr sret([24 x i8]) align 8 %__apollo_capture_0, ptr align 8 %_3) #7
; call core::fmt::rt::Argument::new_display
  call void @_ZN4core3fmt2rt8Argument11new_display17hab5ebffe6c6570f5E(ptr sret([16 x i8]) align 8 %_10, ptr align 8 %__apollo_capture_0) #8
  %1 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %_10, i64 16, i1 false)
; call core::fmt::Arguments::new
  %2 = call { ptr, ptr } @_ZN4core3fmt9Arguments3new17h66aea23cae420a87E(ptr align 1 @alloc_61247b90e1706a3f65e71312b599d3d1, ptr align 8 %args) #8
  %_6.0 = extractvalue { ptr, ptr } %2, 0
  %_6.1 = extractvalue { ptr, ptr } %2, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h15c65bf3c843494aE(ptr %_6.0, ptr %_6.1) #7
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hae72884d45fe0c83E"(ptr align 8 %__apollo_capture_0) #7
  ret void
}

; Function Attrs: nounwind uwtable
declare i64 @strlen(ptr) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare i32 @rust_eh_personality(ptr, ptr, ptr, ptr) unnamed_addr #2

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17hc9db67dc84c0bcd1E(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #4

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha9dcdfe3602323b3E"(ptr align 8) unnamed_addr #2

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4e460694c7ca4b3E"(ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking9panic_fmt17h4b08ac2439ede328E(ptr, ptr, ptr align 8) unnamed_addr #4

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h023b3a51d72ebab5E(ptr align 8) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h9b7996cf34f27a24E(ptr align 1, i64) unnamed_addr #4

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nounwind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17ha73933f88507acc9E"(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #2

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nounwind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17haca4b902cb37eae6E(i64, i64) unnamed_addr #6

; <str as core::fmt::Display>::fmt
; Function Attrs: nounwind uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hdf999d917822e32cE"(ptr align 1, i64, ptr align 8) unnamed_addr #2

; alloc::ffi::c_str::<impl core::ffi::c_str::CStr>::to_string_lossy
; Function Attrs: nounwind uwtable
declare void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17ha1be3c9d6f7ab383E"(ptr sret([24 x i8]) align 8, ptr align 1, i64) unnamed_addr #2

; std::io::stdio::_print
; Function Attrs: nounwind uwtable
declare void @_ZN3std2io5stdio6_print17h15c65bf3c843494aE(ptr, ptr) unnamed_addr #2

attributes #0 = { cold nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #1 = { inlinehint nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #2 = { nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noinline noreturn nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold minsize noreturn nounwind optsize uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #7 = { nounwind }
attributes #8 = { inlinehint nounwind }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.94.1 (e408947bf 2026-03-25)"}
