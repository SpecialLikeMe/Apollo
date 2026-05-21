; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/edf3000aae5a70c1.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/edf3000aae5a70c1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN12__apo_stdlib14task_ready_f64Ed = comdat any

$_ZN12__apo_stdlib14task_await_strEPv = comdat any

$_ZN12__apo_stdlib11task_handleD2Ev = comdat any

$_ZN12__apo_stdlib11task_handleD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZTVN12__apo_stdlib11task_handleE = comdat any

$_ZTIN12__apo_stdlib11task_handleE = comdat any

$_ZTSN12__apo_stdlib11task_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

@_ZTVN12__apo_stdlib11task_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib11task_handleE, ptr @_ZN12__apo_stdlib11task_handleD2Ev, ptr @_ZN12__apo_stdlib11task_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib11task_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib11task_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib11task_handleE = linkonce_odr dso_local constant [30 x i8] c"N12__apo_stdlib11task_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN31__apollo_inline_inline_2368_5_926sys__native_task_ready_i32Ei(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %3, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11task_handleE, i64 16), ptr %2, align 8, !tbaa !12
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %7, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %8, align 8, !tbaa !18
  store i8 0, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 1, ptr %9, align 8, !tbaa !22
  store i32 1, ptr %4, align 4, !tbaa !26
  store i32 %0, ptr %5, align 8, !tbaa !27
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN31__apollo_inline_inline_2368_5_926sys__native_task_ready_strEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %4, ptr %2, align 8, !tbaa !14, !alias.scope !28
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %6, align 8, !tbaa !18, !alias.scope !28
  store i8 0, ptr %4, align 8, !tbaa !21, !alias.scope !28
  br label %24

7:                                                ; preds = %1
  %8 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15, !noalias !28
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ugt i64 %8, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #26
  unreachable

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %8, 1
  %15 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #25
  store ptr %15, ptr %2, align 8, !tbaa !31, !alias.scope !28
  store i64 %8, ptr %4, align 8, !tbaa !21, !alias.scope !28
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %15, %13 ], [ %4, %7 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %0, align 1, !tbaa !21, !noalias !28
  store i8 %19, ptr %17, align 1, !tbaa !21
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %0, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !18, !alias.scope !28
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !21
  br label %24

24:                                               ; preds = %5, %21
  %25 = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %26 unwind label %59

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 3, ptr %27, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11task_handleE, i64 16), ptr %25, align 8, !tbaa !12
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 12
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %29, align 8, !tbaa !27
  %30 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 40
  store ptr %31, ptr %30, align 8, !tbaa !14
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 32
  store i64 0, ptr %32, align 8, !tbaa !18
  store i8 0, ptr %31, align 8, !tbaa !21
  %33 = getelementptr inbounds nuw i8, ptr %25, i64 56
  store i8 1, ptr %33, align 8, !tbaa !22
  store i32 2, ptr %28, align 4, !tbaa !26
  %34 = load ptr, ptr %2, align 8, !tbaa !31
  %35 = icmp eq ptr %34, %4
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !18
  %39 = icmp ult i64 %38, 16
  call void @llvm.assume(i1 %39)
  switch i64 %38, label %42 [
    i64 0, label %43
    i64 1, label %40
  ]

40:                                               ; preds = %36
  %41 = load i8, ptr %34, align 1, !tbaa !21
  store i8 %41, ptr %31, align 1, !tbaa !21
  br label %43

42:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %34, i64 %38, i1 false)
  br label %43

43:                                               ; preds = %42, %40, %36
  store i64 %38, ptr %32, align 8, !tbaa !18
  %44 = getelementptr inbounds nuw i8, ptr %31, i64 %38
  store i8 0, ptr %44, align 1, !tbaa !21
  br label %50

45:                                               ; preds = %26
  store ptr %34, ptr %30, align 8, !tbaa !31
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !18
  %48 = icmp ult i64 %47, 9223372036854775807
  call void @llvm.assume(i1 %48)
  store i64 %47, ptr %32, align 8, !tbaa !18
  %49 = load i64, ptr %4, align 8, !tbaa !21
  store i64 %49, ptr %31, align 8, !tbaa !21
  store ptr %4, ptr %2, align 8, !tbaa !31
  br label %50

50:                                               ; preds = %45, %43
  %51 = phi ptr [ %34, %43 ], [ %4, %45 ]
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %52, align 8, !tbaa !18
  store i8 0, ptr %51, align 1, !tbaa !21
  %53 = load ptr, ptr %2, align 8, !tbaa !31
  %54 = icmp eq ptr %53, %4
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %4, align 8, !tbaa !21
  %57 = add i64 %56, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %57) #27
  br label %58

58:                                               ; preds = %50, %55
  ret ptr %25

59:                                               ; preds = %24
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %2, align 8, !tbaa !31
  %62 = icmp eq ptr %61, %4
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %4, align 8, !tbaa !21
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %65) #27
  br label %66

66:                                               ; preds = %59, %63
  resume { ptr, i32 } %60
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN31__apollo_inline_inline_2368_5_927sys__native_task_ready_boolEi(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %3, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11task_handleE, i64 16), ptr %2, align 8, !tbaa !12
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %7, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %8, align 8, !tbaa !18
  store i8 0, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 1, ptr %9, align 8, !tbaa !22
  store i32 3, ptr %4, align 4, !tbaa !26
  %10 = icmp ne i32 %0, 0
  %11 = zext i1 %10 to i32
  store i32 %11, ptr %5, align 8, !tbaa !27
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2368_5_926sys__native_task_ready_f64Ed(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib14task_ready_f64Ed(double noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14task_ready_f64Ed(double noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %4, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11task_handleE, i64 16), ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %6, align 8, !tbaa !27
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %8, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %9, align 8, !tbaa !18
  store i8 0, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 1, ptr %10, align 8, !tbaa !22
  store i32 4, ptr %5, align 4, !tbaa !26
  call void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @vsnprintf, i64 noundef 328, ptr noundef nonnull @.str.3, double noundef %0)
  %11 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16, !prof !32

13:                                               ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %14 unwind label %75

14:                                               ; preds = %13
  %15 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %16

16:                                               ; preds = %14, %1
  %17 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 64
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds i8, ptr %21, i64 -32
  %23 = icmp eq ptr %19, %22
  br i1 %23, label %45, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %25, ptr %19, align 8, !tbaa !14
  %26 = load ptr, ptr %2, align 8, !tbaa !31
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !18
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  %33 = add nuw nsw i64 %31, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %25, ptr noundef nonnull align 8 dereferenceable(1) %27, i64 %33, i1 false)
  br label %38

34:                                               ; preds = %24
  store ptr %26, ptr %19, align 8, !tbaa !31
  %35 = load i64, ptr %27, align 8, !tbaa !21
  store i64 %35, ptr %25, align 8, !tbaa !21
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %37 = load i64, ptr %36, align 8, !tbaa !18
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i64 [ %37, %34 ], [ %31, %29 ]
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %41 = icmp ult i64 %39, 9223372036854775807
  call void @llvm.assume(i1 %41)
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %39, ptr %42, align 8, !tbaa !18
  store ptr %27, ptr %2, align 8, !tbaa !31
  store i64 0, ptr %40, align 8, !tbaa !18
  store i8 0, ptr %27, align 8, !tbaa !21
  %43 = load ptr, ptr %18, align 8, !tbaa !33
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %44, ptr %18, align 8, !tbaa !33
  br label %48

45:                                               ; preds = %16
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %46 unwind label %75

46:                                               ; preds = %45
  %47 = load ptr, ptr %18, align 8, !tbaa !40, !noalias !41
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi ptr [ %44, %38 ], [ %47, %46 ]
  %50 = getelementptr inbounds nuw i8, ptr %17, i64 56
  %51 = load ptr, ptr %50, align 8, !tbaa !44, !noalias !41
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds nuw i8, ptr %17, i64 72
  %55 = load ptr, ptr %54, align 8, !tbaa !45, !noalias !41
  %56 = getelementptr inbounds i8, ptr %55, i64 -8
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 512
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi ptr [ %58, %53 ], [ %49, %48 ]
  %61 = getelementptr inbounds i8, ptr %60, i64 -32
  %62 = load ptr, ptr %61, align 8, !tbaa !31
  %63 = load i64, ptr %9, align 8, !tbaa !18
  %64 = icmp ult i64 %63, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %62) #15
  %66 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef %63, ptr noundef nonnull %62, i64 noundef %65)
          to label %67 unwind label %75

67:                                               ; preds = %59
  %68 = load ptr, ptr %2, align 8, !tbaa !31
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i64, ptr %69, align 8, !tbaa !21
  %73 = add i64 %72, 1
  call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #27
  br label %74

74:                                               ; preds = %67, %71
  ret ptr %3

75:                                               ; preds = %59, %45, %13
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = load ptr, ptr %2, align 8, !tbaa !31
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i64, ptr %78, align 8, !tbaa !21
  %82 = add i64 %81, 1
  call void @_ZdlPvm(ptr noundef %77, i64 noundef %82) #27
  br label %83

83:                                               ; preds = %75, %80
  resume { ptr, i32 } %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2368_5_921sys__native_task_doneEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = load i8, ptr %8, align 8, !tbaa !22, !range !47, !noundef !48
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2368_5_926sys__native_task_await_i32EPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load i32, ptr %12, align 8, !tbaa !27
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2368_5_926sys__native_task_await_strEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib14task_await_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14task_await_strEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !9
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %14, ptr %2, align 8, !tbaa !14
  %15 = load ptr, ptr %13, align 8, !tbaa !31
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8, !tbaa !18
  %18 = icmp ult i64 %17, 9223372036854775807
  call void @llvm.assume(i1 %18)
  %19 = icmp samesign ugt i64 %17, 15
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = add nuw nsw i64 %17, 1
  %22 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %21) #25
  store ptr %22, ptr %2, align 8, !tbaa !31
  store i64 %17, ptr %14, align 8, !tbaa !21
  br label %29

23:                                               ; preds = %12
  %24 = icmp eq i64 %17, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = add nuw nsw i64 %17, 1
  br label %29

27:                                               ; preds = %23
  %28 = load i8, ptr %15, align 1, !tbaa !21
  store i8 %28, ptr %14, align 8, !tbaa !21
  br label %32

29:                                               ; preds = %25, %20
  %30 = phi i64 [ %26, %25 ], [ %21, %20 ]
  %31 = phi ptr [ %14, %25 ], [ %22, %20 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull align 1 dereferenceable(1) %15, i64 %30, i1 false)
  br label %32

32:                                               ; preds = %27, %29
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %17, ptr %33, align 8, !tbaa !18
  br label %37

34:                                               ; preds = %4, %1, %8
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %35, ptr %2, align 8, !tbaa !14
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %36, align 8, !tbaa !18
  store i8 0, ptr %35, align 8, !tbaa !21
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i1 [ false, %32 ], [ true, %34 ]
  %39 = phi i1 [ true, %32 ], [ false, %34 ]
  %40 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45, !prof !32

42:                                               ; preds = %37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %43 unwind label %108

43:                                               ; preds = %42
  %44 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %45

45:                                               ; preds = %43, %37
  %46 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %48 = load ptr, ptr %47, align 8, !tbaa !33
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = icmp eq ptr %48, %51
  br i1 %52, label %74, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %54, ptr %48, align 8, !tbaa !14
  %55 = load ptr, ptr %2, align 8, !tbaa !31
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !18
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  %62 = add nuw nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %56, i64 %62, i1 false)
  br label %67

63:                                               ; preds = %53
  store ptr %55, ptr %48, align 8, !tbaa !31
  %64 = load i64, ptr %56, align 8, !tbaa !21
  store i64 %64, ptr %54, align 8, !tbaa !21
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %66 = load i64, ptr %65, align 8, !tbaa !18
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i64 [ %66, %63 ], [ %60, %58 ]
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = icmp ult i64 %68, 9223372036854775807
  call void @llvm.assume(i1 %70)
  %71 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %68, ptr %71, align 8, !tbaa !18
  store ptr %56, ptr %2, align 8, !tbaa !31
  store i64 0, ptr %69, align 8, !tbaa !18
  store i8 0, ptr %56, align 8, !tbaa !21
  %72 = load ptr, ptr %47, align 8, !tbaa !33
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 32
  store ptr %73, ptr %47, align 8, !tbaa !33
  br label %77

74:                                               ; preds = %45
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %46, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %75 unwind label %108

75:                                               ; preds = %74
  %76 = load ptr, ptr %47, align 8, !tbaa !40, !noalias !49
  br label %77

77:                                               ; preds = %75, %67
  %78 = phi ptr [ %73, %67 ], [ %76, %75 ]
  %79 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %80 = load ptr, ptr %79, align 8, !tbaa !44, !noalias !49
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = getelementptr inbounds nuw i8, ptr %46, i64 72
  %84 = load ptr, ptr %83, align 8, !tbaa !45, !noalias !49
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 512
  br label %88

88:                                               ; preds = %82, %77
  %89 = phi ptr [ %87, %82 ], [ %78, %77 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 -32
  %91 = load ptr, ptr %90, align 8, !tbaa !31
  br i1 %38, label %92, label %99

92:                                               ; preds = %88
  %93 = load ptr, ptr %2, align 8, !tbaa !31
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i64, ptr %94, align 8, !tbaa !21
  %98 = add i64 %97, 1
  call void @_ZdlPvm(ptr noundef %93, i64 noundef %98) #27
  br label %99

99:                                               ; preds = %92, %96, %88
  br i1 %39, label %100, label %107

100:                                              ; preds = %99
  %101 = load ptr, ptr %2, align 8, !tbaa !31
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i64, ptr %102, align 8, !tbaa !21
  %106 = add i64 %105, 1
  call void @_ZdlPvm(ptr noundef %101, i64 noundef %106) #27
  br label %107

107:                                              ; preds = %100, %104, %99
  ret ptr %91

108:                                              ; preds = %74, %42
  %109 = landingpad { ptr, i32 }
          cleanup
  br i1 %38, label %110, label %117

110:                                              ; preds = %108
  %111 = load ptr, ptr %2, align 8, !tbaa !31
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i64, ptr %112, align 8, !tbaa !21
  %116 = add i64 %115, 1
  call void @_ZdlPvm(ptr noundef %111, i64 noundef %116) #27
  br label %117

117:                                              ; preds = %110, %114, %108
  br i1 %39, label %118, label %125

118:                                              ; preds = %117
  %119 = load ptr, ptr %2, align 8, !tbaa !31
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i64, ptr %120, align 8, !tbaa !21
  %124 = add i64 %123, 1
  call void @_ZdlPvm(ptr noundef %119, i64 noundef %124) #27
  br label %125

125:                                              ; preds = %118, %122, %117
  resume { ptr, i32 } %109
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2368_5_927sys__native_task_await_boolEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load i32, ptr %12, align 8, !tbaa !27
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn uwtable
define dso_local noundef double @_ZN31__apollo_inline_inline_2368_5_926sys__native_task_await_f64EPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = tail call double @strtod(ptr noundef captures(none) %13, ptr noundef null) #15
  br label %15

15:                                               ; preds = %1, %3, %7, %11
  %16 = phi double [ %14, %11 ], [ 0.000000e+00, %7 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %3 ]
  ret double %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2368_5_923sys__native_task_is_i32EPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2368_5_923sys__native_task_is_strEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2368_5_924sys__native_task_is_boolEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 3
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2368_5_923sys__native_task_is_f64EPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 4
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_task_ready_i32(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %3, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11task_handleE, i64 16), ptr %2, align 8, !tbaa !12
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %7, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %8, align 8, !tbaa !18
  store i8 0, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 1, ptr %9, align 8, !tbaa !22
  store i32 1, ptr %4, align 4, !tbaa !26
  store i32 %0, ptr %5, align 8, !tbaa !27
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_task_ready_str(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN31__apollo_inline_inline_2368_5_926sys__native_task_ready_strEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_task_ready_bool(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %3, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11task_handleE, i64 16), ptr %2, align 8, !tbaa !12
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %7, ptr %6, align 8, !tbaa !14
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %8, align 8, !tbaa !18
  store i8 0, ptr %7, align 8, !tbaa !21
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 1, ptr %9, align 8, !tbaa !22
  store i32 3, ptr %4, align 4, !tbaa !26
  %10 = icmp ne i32 %0, 0
  %11 = zext i1 %10 to i32
  store i32 %11, ptr %5, align 8, !tbaa !27
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_task_ready_f64(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib14task_ready_f64Ed(double noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_task_done(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = load i8, ptr %8, align 8, !tbaa !22, !range !47, !noundef !48
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_task_await_i32(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load i32, ptr %12, align 8, !tbaa !27
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_task_await_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib14task_await_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_task_await_bool(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load i32, ptr %12, align 8, !tbaa !27
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn uwtable
define dso_local double @sys__native_task_await_f64(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = tail call double @strtod(ptr noundef captures(none) %13, ptr noundef null) #15
  br label %15

15:                                               ; preds = %1, %3, %7, %11
  %16 = phi double [ %14, %11 ], [ 0.000000e+00, %7 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %3 ]
  ret double %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_task_is_i32(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_task_is_str(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_task_is_bool(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 3
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_task_is_f64(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 4
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11task_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !21
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #27
  br label %9

9:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11task_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !21
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #27
  br label %9

9:                                                ; preds = %1, %6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #27
  ret void
}

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::_Deque_iterator", align 16
  %3 = alloca %"struct.std::_Deque_iterator", align 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !46, !noalias !52
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !46
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !55, !noalias !52
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !55
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !46, !noalias !56
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !46
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !55, !noalias !56
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !55
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !60
  %21 = load ptr, ptr %9, align 8, !tbaa !61
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #27
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !62

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !59
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !64
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #27
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #28
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !64
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !65

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25
  store ptr %12, ptr %0, align 8, !tbaa !59
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !46
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !66

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #15
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #27
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !62

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #29
          to label %40 unwind label %35

35:                                               ; preds = %34
  %36 = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %41 unwind label %37

37:                                               ; preds = %35
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #28
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #15
  %44 = load ptr, ptr %0, align 8, !tbaa !59
  %45 = load i64, ptr %6, align 8, !tbaa !64
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #29
          to label %69 unwind label %47

47:                                               ; preds = %41
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %49 unwind label %66

49:                                               ; preds = %47
  resume { ptr, i32 } %48

50:                                               ; preds = %21
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %15, ptr %52, align 8, !tbaa !45
  %53 = load ptr, ptr %15, align 8, !tbaa !46
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !44
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !67
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !45
  %60 = load ptr, ptr %58, align 8, !tbaa !46
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !44
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !67
  store ptr %53, ptr %51, align 8, !tbaa !68
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !33
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #28
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !45
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !45
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !40
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !21
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #27
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !31
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !21
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #27
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !31
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !21
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #27
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !31
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !21
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #27
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !31
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !21
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #27
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !31
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !21
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #27
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !31
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !21
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #27
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !31
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !21
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #27
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !31
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !21
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #27
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !31
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !21
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #27
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !31
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !21
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #27
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !31
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !21
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #27
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !31
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !21
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #27
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !31
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !21
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #27
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !31
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !21
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #27
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !31
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !21
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #27
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !45
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !69

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !67
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !31
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !21
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #27
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !70

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !44
  %168 = load ptr, ptr %2, align 8, !tbaa !40
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !31
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !21
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #27
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !70

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !40
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !31
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !21
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #27
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !70

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !40
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = load ptr, ptr %4, align 8, !tbaa !40
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 5
  %32 = add nsw i64 %24, %31
  %33 = icmp ult i64 %32, 576460752303423488
  tail call void @llvm.assume(i1 %33)
  %34 = icmp eq i64 %32, 576460752303423487
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #26
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !64
  %39 = load ptr, ptr %0, align 8, !tbaa !59
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !61
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !46
  %51 = load ptr, ptr %3, align 8, !tbaa !33
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !14
  %53 = load ptr, ptr %1, align 8, !tbaa !31
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !18
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !31
  %62 = load i64, ptr %54, align 8, !tbaa !21
  store i64 %62, ptr %52, align 8, !tbaa !21
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !18
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !18
  store ptr %54, ptr %1, align 8, !tbaa !31
  store i64 0, ptr %64, align 8, !tbaa !18
  store i8 0, ptr %54, align 8, !tbaa !21
  %68 = load ptr, ptr %5, align 8, !tbaa !61
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !45
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  store ptr %70, ptr %18, align 8, !tbaa !44
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !67
  store ptr %70, ptr %3, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !64
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !59
  %20 = sub i64 %15, %13
  %21 = lshr i64 %20, 1
  %22 = getelementptr inbounds nuw ptr, ptr %19, i64 %21
  %23 = select i1 %2, i64 %1, i64 0
  %24 = getelementptr inbounds nuw ptr, ptr %22, i64 %23
  %25 = icmp ult ptr %24, %7
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br i1 %25, label %27, label %36

27:                                               ; preds = %18
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %28, %9
  %30 = icmp sgt i64 %29, 8
  br i1 %30, label %31, label %32, !prof !71

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !46
  store ptr %35, ptr %24, align 8, !tbaa !46
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !72

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !46
  store ptr %48, ptr %42, align 8, !tbaa !46
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #25
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !71

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !46
  store ptr %69, ptr %60, align 8, !tbaa !46
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !59
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #27
  store ptr %55, ptr %0, align 8, !tbaa !59
  store i64 %52, ptr %14, align 8, !tbaa !64
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !45
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !44
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !67
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !45
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !44
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8, i64 %2, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.va_start.p0(ptr nonnull %5)
  %7 = call noundef i32 %1(ptr noundef nonnull %6, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %5)
  call void @llvm.va_end.p0(ptr nonnull %5)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %9, ptr %0, align 8, !tbaa !14
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %10, align 8, !tbaa !18
  %11 = icmp ugt i32 %7, 15
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = icmp slt i32 %7, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #26
  unreachable

15:                                               ; preds = %12
  %16 = add nuw nsw i64 %8, 1
  %17 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #25
  store ptr %17, ptr %0, align 8, !tbaa !31
  store i64 %8, ptr %9, align 8, !tbaa !21
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi ptr [ %17, %15 ], [ %9, %4 ]
  switch i32 %7, label %22 [
    i32 1, label %20
    i32 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %6, align 16, !tbaa !21
  store i8 %21, ptr %19, align 1, !tbaa !21
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 16 %6, i64 %8, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  store i64 %8, ptr %10, align 8, !tbaa !18
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 %8
  store i8 0, ptr %24, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !18
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, 9223372036854775806
  %10 = sub i64 %9, %7
  %11 = icmp ult i64 %10, %4
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

13:                                               ; preds = %5
  %14 = sub i64 %4, %2
  %15 = add i64 %14, %7
  %16 = load ptr, ptr %0, align 8, !tbaa !31
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = icmp samesign ult i64 %7, 16
  tail call void @llvm.assume(i1 %20)
  br label %21

21:                                               ; preds = %13, %19
  %22 = load i64, ptr %17, align 8
  %23 = select i1 %18, i64 15, i64 %22
  %24 = icmp samesign ugt i64 %23, 14
  tail call void @llvm.assume(i1 %24)
  %25 = icmp ult i64 %23, 9223372036854775807
  tail call void @llvm.assume(i1 %25)
  %26 = icmp ugt i64 %15, %23
  br i1 %26, label %51, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds nuw i8, ptr %16, i64 %1
  %29 = add i64 %2, %1
  %30 = sub i64 %7, %29
  %31 = icmp ult ptr %3, %16
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 %7
  %33 = icmp ult ptr %32, %3
  %34 = select i1 %31, i1 true, i1 %33, !prof !73
  br i1 %34, label %35, label %50, !prof !73

35:                                               ; preds = %27
  %36 = icmp eq i64 %7, %29
  %37 = icmp eq i64 %2, %4
  %38 = or i1 %37, %36
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %28, i64 %4
  %41 = getelementptr inbounds nuw i8, ptr %28, i64 %2
  %42 = icmp eq i64 %30, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i8, ptr %41, align 1, !tbaa !21
  store i8 %44, ptr %40, align 1, !tbaa !21
  br label %46

45:                                               ; preds = %39
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %40, ptr align 1 %41, i64 %30, i1 false)
  br label %46

46:                                               ; preds = %45, %43, %35
  switch i64 %4, label %49 [
    i64 0, label %52
    i64 1, label %47
  ]

47:                                               ; preds = %46
  %48 = load i8, ptr %3, align 1, !tbaa !21
  store i8 %48, ptr %28, align 1, !tbaa !21
  br label %52

49:                                               ; preds = %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %3, i64 %4, i1 false)
  br label %52

50:                                               ; preds = %27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %28, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %30) #30
  br label %52

51:                                               ; preds = %21
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %52

52:                                               ; preds = %46, %49, %47, %50, %51
  store i64 %15, ptr %6, align 8, !tbaa !18
  %53 = load ptr, ptr %0, align 8, !tbaa !31
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 %15
  store i8 0, ptr %54, align 1, !tbaa !21
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !18
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, %1
  %10 = sub i64 %7, %9
  %11 = sub i64 %4, %2
  %12 = add i64 %11, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !31
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = icmp samesign ult i64 %7, 16
  tail call void @llvm.assume(i1 %17)
  br label %18

18:                                               ; preds = %5, %16
  %19 = load i64, ptr %14, align 8
  %20 = select i1 %15, i64 15, i64 %19
  %21 = icmp samesign ugt i64 %20, 14
  tail call void @llvm.assume(i1 %21)
  %22 = icmp ult i64 %20, 9223372036854775807
  tail call void @llvm.assume(i1 %22)
  %23 = icmp ugt i64 %12, 9223372036854775806
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #26
  unreachable

25:                                               ; preds = %18
  %26 = icmp samesign ugt i64 %12, %20
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = shl nuw i64 %20, 1
  %29 = icmp ult i64 %12, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i64 @llvm.umin.i64(i64 %28, i64 9223372036854775806)
  br label %32

32:                                               ; preds = %25, %27, %30
  %33 = phi i64 [ %31, %30 ], [ %12, %27 ], [ %12, %25 ]
  %34 = add nuw nsw i64 %33, 1
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #25
  switch i64 %1, label %38 [
    i64 0, label %39
    i64 1, label %36
  ]

36:                                               ; preds = %32
  %37 = load i8, ptr %13, align 1, !tbaa !21
  store i8 %37, ptr %35, align 1, !tbaa !21
  br label %39

38:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr align 1 %13, i64 %1, i1 false)
  br label %39

39:                                               ; preds = %32, %38, %36
  %40 = icmp ne ptr %3, null
  %41 = icmp ne i64 %4, 0
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %1
  %45 = icmp eq i64 %4, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i8, ptr %3, align 1, !tbaa !21
  store i8 %47, ptr %44, align 1, !tbaa !21
  br label %49

48:                                               ; preds = %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %44, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %49

49:                                               ; preds = %48, %46, %39
  %50 = icmp eq i64 %7, %9
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %35, i64 %1
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %4
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 %1
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 %2
  %56 = icmp eq i64 %10, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i8, ptr %55, align 1, !tbaa !21
  store i8 %58, ptr %53, align 1, !tbaa !21
  br label %60

59:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %53, ptr align 1 %55, i64 %10, i1 false)
  br label %60

60:                                               ; preds = %59, %57, %49
  br i1 %15, label %61, label %63

61:                                               ; preds = %60
  %62 = icmp samesign ult i64 %7, 16
  tail call void @llvm.assume(i1 %62)
  br label %65

63:                                               ; preds = %60
  %64 = add i64 %19, 1
  tail call void @_ZdlPvm(ptr noundef %13, i64 noundef %64) #27
  br label %65

65:                                               ; preds = %61, %63
  store ptr %35, ptr %0, align 8, !tbaa !31
  store i64 %33, ptr %14, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nounwind sspstrong willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { cold noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 22.1.5"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !11, i64 8}
!11 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !20, i64 8, !7, i64 16}
!20 = !{!"long", !7, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !25, i64 56}
!23 = !{!"_ZTSN12__apo_stdlib11task_handleE", !10, i64 0, !24, i64 12, !6, i64 16, !19, i64 24, !25, i64 56}
!24 = !{!"_ZTSN12__apo_stdlib15task_value_kindE", !7, i64 0}
!25 = !{!"bool", !7, i64 0}
!26 = !{!23, !24, i64 12}
!27 = !{!23, !6, i64 16}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!30 = distinct !{!30, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!31 = !{!19, !16, i64 0}
!32 = !{!"branch_weights", i32 1, i32 1023}
!33 = !{!34, !38, i64 48}
!34 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !35, i64 0, !20, i64 8, !37, i64 16, !37, i64 48}
!35 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0}
!36 = !{!"any p2 pointer", !17, i64 0}
!37 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !38, i64 0, !38, i64 8, !38, i64 16, !35, i64 24}
!38 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!39 = !{!34, !38, i64 64}
!40 = !{!37, !38, i64 0}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!43 = distinct !{!43, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!44 = !{!37, !38, i64 8}
!45 = !{!37, !35, i64 24}
!46 = !{!38, !38, i64 0}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!51 = distinct !{!51, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!54 = distinct !{!54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!55 = !{!17, !17, i64 0}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!58 = distinct !{!58, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!59 = !{!34, !35, i64 0}
!60 = !{!34, !35, i64 40}
!61 = !{!34, !35, i64 72}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!34, !20, i64 8}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = distinct !{!66, !63}
!67 = !{!37, !38, i64 16}
!68 = !{!34, !38, i64 16}
!69 = distinct !{!69, !63}
!70 = distinct !{!70, !63}
!71 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!72 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!73 = !{!"branch_weights", i32 -2146410, i32 2146410}
