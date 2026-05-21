; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/559d17bf1be727ab.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/559d17bf1be727ab.cpp"
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
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.7" }
%"struct.std::_Head_base.7" = type { ptr }
%"class.std::allocator" = type { i8 }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.std::array" = type { [256 x i8] }
%struct.timespec = type { i64, i64 }

$_ZN12__apo_stdlib14path_separatorEv = comdat any

$_ZN12__apo_stdlib10exe_suffixEv = comdat any

$_ZN12__apo_stdlib7env_getESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib7env_setESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$_ZN12__apo_stdlib11current_dirEv = comdat any

$_ZN12__apo_stdlib15executable_pathEv = comdat any

$_ZN12__apo_stdlib9host_nameEv = comdat any

$_ZN12__apo_stdlib8temp_dirEv = comdat any

$_ZN12__apo_stdlib9path_joinESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2452_5_1027sys__native_host_is_windowsEv() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1026sys__native_path_separatorEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib14path_separatorEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_separatorEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !9
  store i8 47, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !13
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !17

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %59

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !9
  %20 = load ptr, ptr %1, align 8, !tbaa !25
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !14
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !25
  %27 = load i64, ptr %2, align 8, !tbaa !13
  store i64 %27, ptr %19, align 8, !tbaa !13
  %28 = load i64, ptr %3, align 8, !tbaa !14
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !14
  store ptr %2, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %3, align 8, !tbaa !14
  store i8 0, ptr %2, align 8, !tbaa !13
  %33 = load ptr, ptr %12, align 8, !tbaa !18
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !18
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %59

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !26, !noalias !27
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !30, !noalias !27
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !31, !noalias !27
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !32
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = load ptr, ptr %1, align 8, !tbaa !25
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i64, ptr %2, align 8, !tbaa !13
  %57 = add i64 %56, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %57) #24
  br label %58

58:                                               ; preds = %49, %55
  ret ptr %52

59:                                               ; preds = %35, %7
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %1, align 8, !tbaa !25
  %62 = icmp eq ptr %61, %2
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %2, align 8, !tbaa !13
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %65) #24
  br label %66

66:                                               ; preds = %59, %63
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1022sys__native_exe_suffixEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib10exe_suffixEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10exe_suffixEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !9
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %3, align 8, !tbaa !14
  store i8 0, ptr %2, align 8, !tbaa !13
  %4 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !17

6:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %7 unwind label %58

7:                                                ; preds = %6
  %8 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = getelementptr inbounds i8, ptr %14, i64 -32
  %16 = icmp eq ptr %12, %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %18, ptr %12, align 8, !tbaa !9
  %19 = load ptr, ptr %1, align 8, !tbaa !25
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, ptr %3, align 8, !tbaa !14
  %23 = icmp ult i64 %22, 16
  call void @llvm.assume(i1 %23)
  %24 = add nuw nsw i64 %22, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %24, i1 false)
  br label %28

25:                                               ; preds = %17
  store ptr %19, ptr %12, align 8, !tbaa !25
  %26 = load i64, ptr %2, align 8, !tbaa !13
  store i64 %26, ptr %18, align 8, !tbaa !13
  %27 = load i64, ptr %3, align 8, !tbaa !14
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i64 [ %27, %25 ], [ %22, %21 ]
  %30 = icmp ult i64 %29, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %29, ptr %31, align 8, !tbaa !14
  store ptr %2, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %3, align 8, !tbaa !14
  store i8 0, ptr %2, align 8, !tbaa !13
  %32 = load ptr, ptr %11, align 8, !tbaa !18
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr %33, ptr %11, align 8, !tbaa !18
  br label %37

34:                                               ; preds = %9
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %35 unwind label %58

35:                                               ; preds = %34
  %36 = load ptr, ptr %11, align 8, !tbaa !26, !noalias !33
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi ptr [ %33, %28 ], [ %36, %35 ]
  %39 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %40 = load ptr, ptr %39, align 8, !tbaa !30, !noalias !33
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %44 = load ptr, ptr %43, align 8, !tbaa !31, !noalias !33
  %45 = getelementptr inbounds i8, ptr %44, i64 -8
  %46 = load ptr, ptr %45, align 8, !tbaa !32
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 512
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi ptr [ %47, %42 ], [ %38, %37 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = load ptr, ptr %50, align 8, !tbaa !25
  %52 = load ptr, ptr %1, align 8, !tbaa !25
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i64, ptr %2, align 8, !tbaa !13
  %56 = add i64 %55, 1
  call void @_ZdlPvm(ptr noundef %52, i64 noundef %56) #24
  br label %57

57:                                               ; preds = %48, %54
  ret ptr %51

58:                                               ; preds = %34, %6
  %59 = landingpad { ptr, i32 }
          cleanup
  %60 = load ptr, ptr %1, align 8, !tbaa !25
  %61 = icmp eq ptr %60, %2
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i64, ptr %2, align 8, !tbaa !13
  %64 = add i64 %63, 1
  call void @_ZdlPvm(ptr noundef %60, i64 noundef %64) #24
  br label %65

65:                                               ; preds = %58, %62
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1019sys__native_env_getEPKc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib7env_getESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib7env_getESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !9
  %6 = icmp eq ptr %1, null
  %7 = icmp ne i64 %0, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

10:                                               ; preds = %2
  %11 = icmp ugt i64 %0, 15
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = icmp ugt i64 %0, 9223372036854775806
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

15:                                               ; preds = %12
  %16 = add nuw nsw i64 %0, 1
  %17 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #26
  store ptr %17, ptr %3, align 8, !tbaa !25
  store i64 %0, ptr %5, align 8, !tbaa !13
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ %5, %10 ]
  switch i64 %0, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %1, align 1, !tbaa !13
  store i8 %21, ptr %19, align 1, !tbaa !13
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %1, i64 %0, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %0, ptr %24, align 8, !tbaa !14
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %0
  store i8 0, ptr %25, align 1, !tbaa !13
  %26 = load i64, ptr %24, align 8, !tbaa !14
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8, !tbaa !25
  %30 = call ptr @getenv(ptr noundef %29) #5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %33, ptr %4, align 8, !tbaa !9
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #5
  %35 = icmp ugt i64 %34, 15
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = icmp ugt i64 %34, 9223372036854775806
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %39 unwind label %121

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %34, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #26
          to label %43 unwind label %121

43:                                               ; preds = %40
  store ptr %42, ptr %4, align 8, !tbaa !25
  store i64 %34, ptr %33, align 8, !tbaa !13
  br label %44

44:                                               ; preds = %43, %32
  %45 = phi ptr [ %42, %43 ], [ %33, %32 ]
  switch i64 %34, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %30, align 1, !tbaa !13
  store i8 %47, ptr %45, align 1, !tbaa !13
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr nonnull align 1 %30, i64 %34, i1 false)
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %34, ptr %50, align 8, !tbaa !14
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 %34
  store i8 0, ptr %51, align 1, !tbaa !13
  br label %55

52:                                               ; preds = %23, %28
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %53, ptr %4, align 8, !tbaa !9
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %54, align 8, !tbaa !14
  store i8 0, ptr %53, align 8, !tbaa !13
  br label %55

55:                                               ; preds = %49, %52
  %56 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %61, !prof !17

58:                                               ; preds = %55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %59 unwind label %123

59:                                               ; preds = %58
  %60 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %61

61:                                               ; preds = %59, %55
  %62 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 48
  %64 = load ptr, ptr %63, align 8, !tbaa !18
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 64
  %66 = load ptr, ptr %65, align 8, !tbaa !24
  %67 = getelementptr inbounds i8, ptr %66, i64 -32
  %68 = icmp eq ptr %64, %67
  br i1 %68, label %90, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 16
  store ptr %70, ptr %64, align 8, !tbaa !9
  %71 = load ptr, ptr %4, align 8, !tbaa !25
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %76 = load i64, ptr %75, align 8, !tbaa !14
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  %78 = add nuw nsw i64 %76, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %70, ptr noundef nonnull align 8 dereferenceable(1) %72, i64 %78, i1 false)
  br label %83

79:                                               ; preds = %69
  store ptr %71, ptr %64, align 8, !tbaa !25
  %80 = load i64, ptr %72, align 8, !tbaa !13
  store i64 %80, ptr %70, align 8, !tbaa !13
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %82 = load i64, ptr %81, align 8, !tbaa !14
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi i64 [ %82, %79 ], [ %76, %74 ]
  %85 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %86 = icmp ult i64 %84, 9223372036854775807
  call void @llvm.assume(i1 %86)
  %87 = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %84, ptr %87, align 8, !tbaa !14
  store ptr %72, ptr %4, align 8, !tbaa !25
  store i64 0, ptr %85, align 8, !tbaa !14
  store i8 0, ptr %72, align 8, !tbaa !13
  %88 = load ptr, ptr %63, align 8, !tbaa !18
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 32
  store ptr %89, ptr %63, align 8, !tbaa !18
  br label %93

90:                                               ; preds = %61
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %62, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %91 unwind label %123

91:                                               ; preds = %90
  %92 = load ptr, ptr %63, align 8, !tbaa !26, !noalias !36
  br label %93

93:                                               ; preds = %91, %83
  %94 = phi ptr [ %89, %83 ], [ %92, %91 ]
  %95 = getelementptr inbounds nuw i8, ptr %62, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !30, !noalias !36
  %97 = icmp eq ptr %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = getelementptr inbounds nuw i8, ptr %62, i64 72
  %100 = load ptr, ptr %99, align 8, !tbaa !31, !noalias !36
  %101 = getelementptr inbounds i8, ptr %100, i64 -8
  %102 = load ptr, ptr %101, align 8, !tbaa !32
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 512
  br label %104

104:                                              ; preds = %98, %93
  %105 = phi ptr [ %103, %98 ], [ %94, %93 ]
  %106 = getelementptr inbounds i8, ptr %105, i64 -32
  %107 = load ptr, ptr %106, align 8, !tbaa !25
  %108 = load ptr, ptr %4, align 8, !tbaa !25
  %109 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load i64, ptr %109, align 8, !tbaa !13
  %113 = add i64 %112, 1
  call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #24
  br label %114

114:                                              ; preds = %104, %111
  %115 = load ptr, ptr %3, align 8, !tbaa !25
  %116 = icmp eq ptr %115, %5
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i64, ptr %5, align 8, !tbaa !13
  %119 = add i64 %118, 1
  call void @_ZdlPvm(ptr noundef %115, i64 noundef %119) #24
  br label %120

120:                                              ; preds = %114, %117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %107

121:                                              ; preds = %38, %40
  %122 = landingpad { ptr, i32 }
          cleanup
  br label %131

123:                                              ; preds = %90, %58
  %124 = landingpad { ptr, i32 }
          cleanup
  %125 = load ptr, ptr %4, align 8, !tbaa !25
  %126 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i64, ptr %126, align 8, !tbaa !13
  %130 = add i64 %129, 1
  call void @_ZdlPvm(ptr noundef %125, i64 noundef %130) #24
  br label %131

131:                                              ; preds = %123, %128, %121
  %132 = phi { ptr, i32 } [ %122, %121 ], [ %124, %128 ], [ %124, %123 ]
  %133 = load ptr, ptr %3, align 8, !tbaa !25
  %134 = icmp eq ptr %133, %5
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i64, ptr %5, align 8, !tbaa !13
  %137 = add i64 %136, 1
  call void @_ZdlPvm(ptr noundef %133, i64 noundef %137) #24
  br label %138

138:                                              ; preds = %131, %135
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  resume { ptr, i32 } %132
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2452_5_1019sys__native_env_setEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib7env_setESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib7env_setESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %7, ptr %5, align 8, !tbaa !9
  %8 = icmp eq ptr %1, null
  %9 = icmp ne i64 %0, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

12:                                               ; preds = %4
  %13 = icmp ugt i64 %0, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = icmp ugt i64 %0, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %0, 1
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #26
  store ptr %19, ptr %5, align 8, !tbaa !25
  store i64 %0, ptr %7, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %0, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %1, align 1, !tbaa !13
  store i8 %23, ptr %21, align 1, !tbaa !13
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %1, i64 %0, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %0
  store i8 0, ptr %27, align 1, !tbaa !13
  %28 = load ptr, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %29 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %29, ptr %6, align 8, !tbaa !9
  %30 = icmp eq ptr %3, null
  %31 = icmp ne i64 %2, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %34 unwind label %69

34:                                               ; preds = %33
  unreachable

35:                                               ; preds = %25
  %36 = icmp ugt i64 %2, 15
  br i1 %36, label %37, label %45

37:                                               ; preds = %35
  %38 = icmp ugt i64 %2, 9223372036854775806
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %40 unwind label %69

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %37
  %42 = add nuw nsw i64 %2, 1
  %43 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %42) #26
          to label %44 unwind label %69

44:                                               ; preds = %41
  store ptr %43, ptr %6, align 8, !tbaa !25
  store i64 %2, ptr %29, align 8, !tbaa !13
  br label %45

45:                                               ; preds = %44, %35
  %46 = phi ptr [ %43, %44 ], [ %29, %35 ]
  switch i64 %2, label %49 [
    i64 1, label %47
    i64 0, label %50
  ]

47:                                               ; preds = %45
  %48 = load i8, ptr %3, align 1, !tbaa !13
  store i8 %48, ptr %46, align 1, !tbaa !13
  br label %50

49:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %3, i64 %2, i1 false)
  br label %50

50:                                               ; preds = %49, %47, %45
  %51 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %51, align 8, !tbaa !14
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 %2
  store i8 0, ptr %52, align 1, !tbaa !13
  %53 = load ptr, ptr %6, align 8, !tbaa !25
  %54 = call i32 @setenv(ptr noundef %28, ptr noundef %53, i32 noundef 1) #5
  %55 = load ptr, ptr %6, align 8, !tbaa !25
  %56 = icmp eq ptr %55, %29
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i64, ptr %29, align 8, !tbaa !13
  %59 = add i64 %58, 1
  call void @_ZdlPvm(ptr noundef %55, i64 noundef %59) #24
  br label %60

60:                                               ; preds = %50, %57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %61 = load ptr, ptr %5, align 8, !tbaa !25
  %62 = icmp eq ptr %61, %7
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i64, ptr %7, align 8, !tbaa !13
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %65) #24
  br label %66

66:                                               ; preds = %60, %63
  %67 = icmp eq i32 %54, 0
  %68 = zext i1 %67 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret i32 %68

69:                                               ; preds = %41, %39, %33
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %71 = load ptr, ptr %5, align 8, !tbaa !25
  %72 = icmp eq ptr %71, %7
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i64, ptr %7, align 8, !tbaa !13
  %75 = add i64 %74, 1
  call void @_ZdlPvm(ptr noundef %71, i64 noundef %75) #24
  br label %76

76:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  resume { ptr, i32 } %70
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2452_5_1022sys__native_env_removeEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %5, ptr %2, align 8, !tbaa !9
  br label %21

6:                                                ; preds = %1
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %8, ptr %2, align 8, !tbaa !9
  %9 = icmp ugt i64 %7, 15
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = icmp ugt i64 %7, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %7, 1
  %15 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #26
  store ptr %15, ptr %2, align 8, !tbaa !25
  store i64 %7, ptr %8, align 8, !tbaa !13
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %15, %13 ], [ %8, %6 ]
  switch i64 %7, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %0, align 1, !tbaa !13
  store i8 %19, ptr %17, align 1, !tbaa !13
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %0, i64 %7, i1 false)
  br label %21

21:                                               ; preds = %4, %20, %18, %16
  %22 = phi ptr [ %5, %4 ], [ %17, %20 ], [ %17, %18 ], [ %17, %16 ]
  %23 = phi i64 [ 0, %4 ], [ %7, %20 ], [ 1, %18 ], [ %7, %16 ]
  %24 = phi ptr [ %5, %4 ], [ %8, %20 ], [ %8, %18 ], [ %8, %16 ]
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %23, ptr %25, align 8, !tbaa !14
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  store i8 0, ptr %26, align 1, !tbaa !13
  %27 = load ptr, ptr %2, align 8, !tbaa !25
  %28 = call i32 @unsetenv(ptr noundef %27) #5
  %29 = load ptr, ptr %2, align 8, !tbaa !25
  %30 = icmp eq ptr %29, %24
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i64, ptr %24, align 8, !tbaa !13
  %33 = add i64 %32, 1
  call void @_ZdlPvm(ptr noundef %29, i64 noundef %33) #24
  br label %34

34:                                               ; preds = %21, %31
  %35 = icmp eq i32 %28, 0
  %36 = zext i1 %35 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %36
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1023sys__native_current_dirEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib11current_dirEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11current_dirEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  invoke void @_ZNSt10filesystem12current_pathB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %2)
          to label %5 unwind label %96

5:                                                ; preds = %0
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %6 = load ptr, ptr %2, align 8, !tbaa !25, !noalias !45
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !14, !noalias !45
  %9 = icmp ult i64 %8, 9223372036854775807
  call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %10, ptr %1, align 8, !tbaa !9, !alias.scope !45
  %11 = icmp eq ptr %6, null
  %12 = icmp ne i64 %8, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %15 unwind label %98

15:                                               ; preds = %14
  unreachable

16:                                               ; preds = %5
  %17 = icmp samesign ugt i64 %8, 15
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = add nuw nsw i64 %8, 1
  %20 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #26
          to label %21 unwind label %98

21:                                               ; preds = %18
  store ptr %20, ptr %1, align 8, !tbaa !25, !alias.scope !45
  store i64 %8, ptr %10, align 8, !tbaa !13, !alias.scope !45
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi ptr [ %20, %21 ], [ %10, %16 ]
  switch i64 %8, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, ptr %6, align 1, !tbaa !13
  store i8 %25, ptr %23, align 1, !tbaa !13
  br label %27

26:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr align 1 %6, i64 %8, i1 false)
  br label %27

27:                                               ; preds = %26, %24, %22
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %8, ptr %28, align 8, !tbaa !14, !alias.scope !45
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 %8
  store i8 0, ptr %29, align 1, !tbaa !13
  %30 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35, !prof !17

32:                                               ; preds = %27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %33 unwind label %100

33:                                               ; preds = %32
  %34 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %35

35:                                               ; preds = %33, %27
  %36 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 48
  %38 = load ptr, ptr %37, align 8, !tbaa !18
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = getelementptr inbounds i8, ptr %40, i64 -32
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %44, ptr %38, align 8, !tbaa !9
  %45 = load ptr, ptr %1, align 8, !tbaa !25
  %46 = icmp eq ptr %45, %10
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, ptr %28, align 8, !tbaa !14
  %49 = icmp ult i64 %48, 16
  call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %44, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %50, i1 false)
  br label %54

51:                                               ; preds = %43
  store ptr %45, ptr %38, align 8, !tbaa !25
  %52 = load i64, ptr %10, align 8, !tbaa !13
  store i64 %52, ptr %44, align 8, !tbaa !13
  %53 = load i64, ptr %28, align 8, !tbaa !14
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i64 [ %53, %51 ], [ %48, %47 ]
  %56 = icmp ult i64 %55, 9223372036854775807
  call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %55, ptr %57, align 8, !tbaa !14
  store ptr %10, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %28, align 8, !tbaa !14
  store i8 0, ptr %10, align 8, !tbaa !13
  %58 = load ptr, ptr %37, align 8, !tbaa !18
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 32
  store ptr %59, ptr %37, align 8, !tbaa !18
  br label %63

60:                                               ; preds = %35
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %61 unwind label %100

61:                                               ; preds = %60
  %62 = load ptr, ptr %37, align 8, !tbaa !26, !noalias !46
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi ptr [ %59, %54 ], [ %62, %61 ]
  %65 = getelementptr inbounds nuw i8, ptr %36, i64 56
  %66 = load ptr, ptr %65, align 8, !tbaa !30, !noalias !46
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds nuw i8, ptr %36, i64 72
  %70 = load ptr, ptr %69, align 8, !tbaa !31, !noalias !46
  %71 = getelementptr inbounds i8, ptr %70, i64 -8
  %72 = load ptr, ptr %71, align 8, !tbaa !32
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 512
  br label %74

74:                                               ; preds = %68, %63
  %75 = phi ptr [ %73, %68 ], [ %64, %63 ]
  %76 = getelementptr inbounds i8, ptr %75, i64 -32
  %77 = load ptr, ptr %76, align 8, !tbaa !25
  %78 = load ptr, ptr %1, align 8, !tbaa !25
  %79 = icmp eq ptr %78, %10
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i64, ptr %10, align 8, !tbaa !13
  %82 = add i64 %81, 1
  call void @_ZdlPvm(ptr noundef %78, i64 noundef %82) #24
  br label %83

83:                                               ; preds = %74, %80
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull %85) #5
  br label %88

88:                                               ; preds = %87, %83
  store ptr null, ptr %84, align 8, !tbaa !49
  %89 = load ptr, ptr %2, align 8, !tbaa !25
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i64, ptr %90, align 8, !tbaa !13
  %94 = add i64 %93, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %94) #24
  br label %95

95:                                               ; preds = %88, %92
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %135

96:                                               ; preds = %0
  %97 = landingpad { ptr, i32 }
          catch ptr null
  br label %109

98:                                               ; preds = %18, %14
  %99 = landingpad { ptr, i32 }
          catch ptr null
  br label %107

100:                                              ; preds = %60, %32
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = load ptr, ptr %1, align 8, !tbaa !25
  %103 = icmp eq ptr %102, %10
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i64, ptr %10, align 8, !tbaa !13
  %106 = add i64 %105, 1
  call void @_ZdlPvm(ptr noundef %102, i64 noundef %106) #24
  br label %107

107:                                              ; preds = %100, %104, %98
  %108 = phi { ptr, i32 } [ %99, %98 ], [ %101, %104 ], [ %101, %100 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #5
  br label %109

109:                                              ; preds = %107, %96
  %110 = phi { ptr, i32 } [ %108, %107 ], [ %97, %96 ]
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %112 = call ptr @__cxa_begin_catch(ptr %111) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %113 unwind label %123

113:                                              ; preds = %109
  %114 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %3)
          to label %115 unwind label %125

115:                                              ; preds = %113
  %116 = load ptr, ptr %3, align 8, !tbaa !25
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i64, ptr %117, align 8, !tbaa !13
  %121 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #24
  br label %122

122:                                              ; preds = %115, %119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @__cxa_end_catch()
  br label %135

123:                                              ; preds = %109
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %133

125:                                              ; preds = %113
  %126 = landingpad { ptr, i32 }
          cleanup
  %127 = load ptr, ptr %3, align 8, !tbaa !25
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load i64, ptr %128, align 8, !tbaa !13
  %132 = add i64 %131, 1
  call void @_ZdlPvm(ptr noundef %127, i64 noundef %132) #24
  br label %133

133:                                              ; preds = %125, %130, %123
  %134 = phi { ptr, i32 } [ %124, %123 ], [ %126, %130 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  invoke void @__cxa_end_catch()
          to label %137 unwind label %138

135:                                              ; preds = %122, %95
  %136 = phi ptr [ %77, %95 ], [ %114, %122 ]
  ret ptr %136

137:                                              ; preds = %133
  resume { ptr, i32 } %134

138:                                              ; preds = %133
  %139 = landingpad { ptr, i32 }
          catch ptr null
  %140 = extractvalue { ptr, i32 } %139, 0
  call void @__clang_call_terminate(ptr %140) #27
  unreachable
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2452_5_1027sys__native_set_current_dirEPKc(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %24

10:                                               ; preds = %7
  invoke void @_ZNSt10filesystem12current_pathERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %11 unwind label %26

11:                                               ; preds = %10
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %13) #5
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !49
  %17 = load ptr, ptr %3, align 8, !tbaa !25
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %18, align 8, !tbaa !13
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %22) #24
  br label %23

23:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %32

24:                                               ; preds = %7
  %25 = landingpad { ptr, i32 }
          catch ptr null
  br label %28

26:                                               ; preds = %10
  %27 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #5
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %31 = call ptr @__cxa_begin_catch(ptr %30) #5
  call void @__cxa_end_catch()
  br label %32

32:                                               ; preds = %23, %28
  %33 = phi i32 [ 1, %23 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %33
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1027sys__native_executable_pathEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib15executable_pathEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib15executable_pathEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znwm(i64 noundef 4096) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %2, i8 0, i64 4096, i1 false)
  %3 = tail call i64 @readlink(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i64 noundef 4095) #5
  %4 = icmp sgt i64 %3, 0
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %5, ptr %1, align 8, !tbaa !9
  br i1 %4, label %6, label %26

6:                                                ; preds = %0
  %7 = icmp samesign ugt i64 %3, 15
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = icmp eq i64 %3, 9223372036854775807
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %11 unwind label %88

11:                                               ; preds = %10
  unreachable

12:                                               ; preds = %8
  %13 = add nuw nsw i64 %3, 1
  %14 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #26
          to label %15 unwind label %88

15:                                               ; preds = %12
  store ptr %14, ptr %1, align 8, !tbaa !25
  store i64 %3, ptr %5, align 8, !tbaa !13
  br label %20

16:                                               ; preds = %6
  %17 = icmp eq i64 %3, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = load i8, ptr %2, align 1, !tbaa !13
  store i8 %19, ptr %5, align 8, !tbaa !13
  br label %22

20:                                               ; preds = %15, %16
  %21 = phi ptr [ %14, %15 ], [ %5, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi ptr [ %5, %18 ], [ %21, %20 ]
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %3, ptr %24, align 8, !tbaa !14
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %3
  store i8 0, ptr %25, align 1, !tbaa !13
  br label %28

26:                                               ; preds = %0
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %27, align 8, !tbaa !14
  store i8 0, ptr %5, align 8, !tbaa !13
  br label %28

28:                                               ; preds = %22, %26
  %29 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34, !prof !17

31:                                               ; preds = %28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %32 unwind label %90

32:                                               ; preds = %31
  %33 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 48
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 64
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = getelementptr inbounds i8, ptr %39, i64 -32
  %41 = icmp eq ptr %37, %40
  br i1 %41, label %63, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr %43, ptr %37, align 8, !tbaa !9
  %44 = load ptr, ptr %1, align 8, !tbaa !25
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa !14
  %50 = icmp ult i64 %49, 16
  call void @llvm.assume(i1 %50)
  %51 = add nuw nsw i64 %49, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %43, ptr noundef nonnull align 8 dereferenceable(1) %45, i64 %51, i1 false)
  br label %56

52:                                               ; preds = %42
  store ptr %44, ptr %37, align 8, !tbaa !25
  %53 = load i64, ptr %45, align 8, !tbaa !13
  store i64 %53, ptr %43, align 8, !tbaa !13
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %55 = load i64, ptr %54, align 8, !tbaa !14
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i64 [ %55, %52 ], [ %49, %47 ]
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %59 = icmp ult i64 %57, 9223372036854775807
  call void @llvm.assume(i1 %59)
  %60 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 %57, ptr %60, align 8, !tbaa !14
  store ptr %45, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %58, align 8, !tbaa !14
  store i8 0, ptr %45, align 8, !tbaa !13
  %61 = load ptr, ptr %36, align 8, !tbaa !18
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 32
  store ptr %62, ptr %36, align 8, !tbaa !18
  br label %66

63:                                               ; preds = %34
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %64 unwind label %90

64:                                               ; preds = %63
  %65 = load ptr, ptr %36, align 8, !tbaa !26, !noalias !51
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi ptr [ %62, %56 ], [ %65, %64 ]
  %68 = getelementptr inbounds nuw i8, ptr %35, i64 56
  %69 = load ptr, ptr %68, align 8, !tbaa !30, !noalias !51
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = getelementptr inbounds nuw i8, ptr %35, i64 72
  %73 = load ptr, ptr %72, align 8, !tbaa !31, !noalias !51
  %74 = getelementptr inbounds i8, ptr %73, i64 -8
  %75 = load ptr, ptr %74, align 8, !tbaa !32
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 512
  br label %77

77:                                               ; preds = %71, %66
  %78 = phi ptr [ %76, %71 ], [ %67, %66 ]
  %79 = getelementptr inbounds i8, ptr %78, i64 -32
  %80 = load ptr, ptr %79, align 8, !tbaa !25
  %81 = load ptr, ptr %1, align 8, !tbaa !25
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i64, ptr %82, align 8, !tbaa !13
  %86 = add i64 %85, 1
  call void @_ZdlPvm(ptr noundef %81, i64 noundef %86) #24
  br label %87

87:                                               ; preds = %77, %84
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 4096) #24
  ret ptr %80

88:                                               ; preds = %10, %12
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %98

90:                                               ; preds = %63, %31
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = load ptr, ptr %1, align 8, !tbaa !25
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !13
  %97 = add i64 %96, 1
  call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #24
  br label %98

98:                                               ; preds = %90, %95, %88
  %99 = phi { ptr, i32 } [ %89, %88 ], [ %91, %95 ], [ %91, %90 ]
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 4096) #24
  resume { ptr, i32 } %99
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2452_5_1022sys__native_process_idEv() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @getpid() #5
  ret i32 %1
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 1, 0) i32 @_ZN32__apollo_inline_inline_2452_5_1021sys__native_cpu_countEv() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #5
  %2 = tail call noundef i32 @llvm.umax.i32(i32 %1, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1021sys__native_host_nameEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib9host_nameEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib9host_nameEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"struct.std::array", align 1
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %1, i8 0, i64 256, i1 false)
  %4 = call i32 @gethostname(ptr noundef nonnull %1, i64 noundef 256) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %68

6:                                                ; preds = %0
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %7, ptr %2, align 8, !tbaa !9
  %8 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = icmp ugt i64 %8, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %8, 1
  %15 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #26
  store ptr %15, ptr %2, align 8, !tbaa !25
  store i64 %8, ptr %7, align 8, !tbaa !13
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %15, %13 ], [ %7, %6 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %1, align 1, !tbaa !13
  store i8 %19, ptr %17, align 1, !tbaa !13
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %1, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !14
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !13
  %24 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %29, !prof !17

26:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %27 unwind label %144

27:                                               ; preds = %26
  %28 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %29

29:                                               ; preds = %27, %21
  %30 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 64
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = getelementptr inbounds i8, ptr %34, i64 -32
  %36 = icmp eq ptr %32, %35
  br i1 %36, label %54, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %38, ptr %32, align 8, !tbaa !9
  %39 = load ptr, ptr %2, align 8, !tbaa !25
  %40 = icmp eq ptr %39, %7
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, ptr %22, align 8, !tbaa !14
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %38, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %44, i1 false)
  br label %48

45:                                               ; preds = %37
  store ptr %39, ptr %32, align 8, !tbaa !25
  %46 = load i64, ptr %7, align 8, !tbaa !13
  store i64 %46, ptr %38, align 8, !tbaa !13
  %47 = load i64, ptr %22, align 8, !tbaa !14
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i64 [ %47, %45 ], [ %42, %41 ]
  %50 = icmp ult i64 %49, 9223372036854775807
  call void @llvm.assume(i1 %50)
  %51 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %49, ptr %51, align 8, !tbaa !14
  store ptr %7, ptr %2, align 8, !tbaa !25
  store i64 0, ptr %22, align 8, !tbaa !14
  store i8 0, ptr %7, align 8, !tbaa !13
  %52 = load ptr, ptr %31, align 8, !tbaa !18
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 32
  store ptr %53, ptr %31, align 8, !tbaa !18
  br label %57

54:                                               ; preds = %29
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %30, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %55 unwind label %144

55:                                               ; preds = %54
  %56 = load ptr, ptr %31, align 8, !tbaa !26, !noalias !54
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi ptr [ %53, %48 ], [ %56, %55 ]
  %59 = getelementptr inbounds nuw i8, ptr %30, i64 56
  %60 = load ptr, ptr %59, align 8, !tbaa !30, !noalias !54
  %61 = icmp eq ptr %58, %60
  br i1 %61, label %62, label %123

62:                                               ; preds = %57
  %63 = getelementptr inbounds nuw i8, ptr %30, i64 72
  %64 = load ptr, ptr %63, align 8, !tbaa !31, !noalias !54
  %65 = getelementptr inbounds i8, ptr %64, i64 -8
  %66 = load ptr, ptr %65, align 8, !tbaa !32
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 512
  br label %123

68:                                               ; preds = %0
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %69, ptr %3, align 8, !tbaa !9
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %70, align 8, !tbaa !14
  store i8 0, ptr %69, align 8, !tbaa !13
  %71 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %76, !prof !17

73:                                               ; preds = %68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %74 unwind label %138

74:                                               ; preds = %73
  %75 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %76

76:                                               ; preds = %74, %68
  %77 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 48
  %79 = load ptr, ptr %78, align 8, !tbaa !18
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 64
  %81 = load ptr, ptr %80, align 8, !tbaa !24
  %82 = getelementptr inbounds i8, ptr %81, i64 -32
  %83 = icmp eq ptr %79, %82
  br i1 %83, label %101, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds nuw i8, ptr %79, i64 16
  store ptr %85, ptr %79, align 8, !tbaa !9
  %86 = load ptr, ptr %3, align 8, !tbaa !25
  %87 = icmp eq ptr %86, %69
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, ptr %70, align 8, !tbaa !14
  %90 = icmp ult i64 %89, 16
  call void @llvm.assume(i1 %90)
  %91 = add nuw nsw i64 %89, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %85, ptr noundef nonnull align 8 dereferenceable(1) %69, i64 %91, i1 false)
  br label %95

92:                                               ; preds = %84
  store ptr %86, ptr %79, align 8, !tbaa !25
  %93 = load i64, ptr %69, align 8, !tbaa !13
  store i64 %93, ptr %85, align 8, !tbaa !13
  %94 = load i64, ptr %70, align 8, !tbaa !14
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i64 [ %94, %92 ], [ %89, %88 ]
  %97 = icmp ult i64 %96, 9223372036854775807
  call void @llvm.assume(i1 %97)
  %98 = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i64 %96, ptr %98, align 8, !tbaa !14
  store ptr %69, ptr %3, align 8, !tbaa !25
  store i64 0, ptr %70, align 8, !tbaa !14
  store i8 0, ptr %69, align 8, !tbaa !13
  %99 = load ptr, ptr %78, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 32
  store ptr %100, ptr %78, align 8, !tbaa !18
  br label %104

101:                                              ; preds = %76
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %77, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %102 unwind label %138

102:                                              ; preds = %101
  %103 = load ptr, ptr %78, align 8, !tbaa !26, !noalias !57
  br label %104

104:                                              ; preds = %102, %95
  %105 = phi ptr [ %100, %95 ], [ %103, %102 ]
  %106 = getelementptr inbounds nuw i8, ptr %77, i64 56
  %107 = load ptr, ptr %106, align 8, !tbaa !30, !noalias !57
  %108 = icmp eq ptr %105, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = getelementptr inbounds nuw i8, ptr %77, i64 72
  %111 = load ptr, ptr %110, align 8, !tbaa !31, !noalias !57
  %112 = getelementptr inbounds i8, ptr %111, i64 -8
  %113 = load ptr, ptr %112, align 8, !tbaa !32
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 512
  br label %115

115:                                              ; preds = %104, %109
  %116 = phi ptr [ %114, %109 ], [ %105, %104 ]
  %117 = getelementptr inbounds i8, ptr %116, i64 -32
  %118 = load ptr, ptr %117, align 8, !tbaa !25
  %119 = load ptr, ptr %3, align 8, !tbaa !25
  %120 = icmp eq ptr %119, %69
  br i1 %120, label %136, label %121

121:                                              ; preds = %115
  %122 = load i64, ptr %69, align 8, !tbaa !13
  br label %131

123:                                              ; preds = %62, %57
  %124 = phi ptr [ %67, %62 ], [ %58, %57 ]
  %125 = getelementptr inbounds i8, ptr %124, i64 -32
  %126 = load ptr, ptr %125, align 8, !tbaa !25
  %127 = load ptr, ptr %2, align 8, !tbaa !25
  %128 = icmp eq ptr %127, %7
  br i1 %128, label %136, label %129

129:                                              ; preds = %123
  %130 = load i64, ptr %7, align 8, !tbaa !13
  br label %131

131:                                              ; preds = %121, %129
  %132 = phi i64 [ %130, %129 ], [ %122, %121 ]
  %133 = phi ptr [ %127, %129 ], [ %119, %121 ]
  %134 = phi ptr [ %126, %129 ], [ %118, %121 ]
  %135 = add i64 %132, 1
  call void @_ZdlPvm(ptr noundef %133, i64 noundef %135) #24
  br label %136

136:                                              ; preds = %131, %123, %115
  %137 = phi ptr [ %118, %115 ], [ %126, %123 ], [ %134, %131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  ret ptr %137

138:                                              ; preds = %101, %73
  %139 = landingpad { ptr, i32 }
          cleanup
  %140 = load ptr, ptr %3, align 8, !tbaa !25
  %141 = icmp eq ptr %140, %69
  br i1 %141, label %155, label %142

142:                                              ; preds = %138
  %143 = load i64, ptr %69, align 8, !tbaa !13
  br label %150

144:                                              ; preds = %54, %26
  %145 = landingpad { ptr, i32 }
          cleanup
  %146 = load ptr, ptr %2, align 8, !tbaa !25
  %147 = icmp eq ptr %146, %7
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load i64, ptr %7, align 8, !tbaa !13
  br label %150

150:                                              ; preds = %142, %148
  %151 = phi i64 [ %149, %148 ], [ %143, %142 ]
  %152 = phi ptr [ %146, %148 ], [ %140, %142 ]
  %153 = phi { ptr, i32 } [ %145, %148 ], [ %139, %142 ]
  %154 = add i64 %151, 1
  call void @_ZdlPvm(ptr noundef %152, i64 noundef %154) #24
  br label %155

155:                                              ; preds = %150, %144, %138
  %156 = phi { ptr, i32 } [ %139, %138 ], [ %145, %144 ], [ %153, %150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  resume { ptr, i32 } %156
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1020sys__native_temp_dirEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib8temp_dirEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib8temp_dirEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  invoke void @_ZNSt10filesystem19temp_directory_pathB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %2)
          to label %5 unwind label %96

5:                                                ; preds = %0
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %6 = load ptr, ptr %2, align 8, !tbaa !25, !noalias !66
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !14, !noalias !66
  %9 = icmp ult i64 %8, 9223372036854775807
  call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %10, ptr %1, align 8, !tbaa !9, !alias.scope !66
  %11 = icmp eq ptr %6, null
  %12 = icmp ne i64 %8, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %15 unwind label %98

15:                                               ; preds = %14
  unreachable

16:                                               ; preds = %5
  %17 = icmp samesign ugt i64 %8, 15
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = add nuw nsw i64 %8, 1
  %20 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #26
          to label %21 unwind label %98

21:                                               ; preds = %18
  store ptr %20, ptr %1, align 8, !tbaa !25, !alias.scope !66
  store i64 %8, ptr %10, align 8, !tbaa !13, !alias.scope !66
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi ptr [ %20, %21 ], [ %10, %16 ]
  switch i64 %8, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, ptr %6, align 1, !tbaa !13
  store i8 %25, ptr %23, align 1, !tbaa !13
  br label %27

26:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr align 1 %6, i64 %8, i1 false)
  br label %27

27:                                               ; preds = %26, %24, %22
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %8, ptr %28, align 8, !tbaa !14, !alias.scope !66
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 %8
  store i8 0, ptr %29, align 1, !tbaa !13
  %30 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35, !prof !17

32:                                               ; preds = %27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %33 unwind label %100

33:                                               ; preds = %32
  %34 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %35

35:                                               ; preds = %33, %27
  %36 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 48
  %38 = load ptr, ptr %37, align 8, !tbaa !18
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = getelementptr inbounds i8, ptr %40, i64 -32
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %44, ptr %38, align 8, !tbaa !9
  %45 = load ptr, ptr %1, align 8, !tbaa !25
  %46 = icmp eq ptr %45, %10
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, ptr %28, align 8, !tbaa !14
  %49 = icmp ult i64 %48, 16
  call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %44, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %50, i1 false)
  br label %54

51:                                               ; preds = %43
  store ptr %45, ptr %38, align 8, !tbaa !25
  %52 = load i64, ptr %10, align 8, !tbaa !13
  store i64 %52, ptr %44, align 8, !tbaa !13
  %53 = load i64, ptr %28, align 8, !tbaa !14
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i64 [ %53, %51 ], [ %48, %47 ]
  %56 = icmp ult i64 %55, 9223372036854775807
  call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %55, ptr %57, align 8, !tbaa !14
  store ptr %10, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %28, align 8, !tbaa !14
  store i8 0, ptr %10, align 8, !tbaa !13
  %58 = load ptr, ptr %37, align 8, !tbaa !18
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 32
  store ptr %59, ptr %37, align 8, !tbaa !18
  br label %63

60:                                               ; preds = %35
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %61 unwind label %100

61:                                               ; preds = %60
  %62 = load ptr, ptr %37, align 8, !tbaa !26, !noalias !67
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi ptr [ %59, %54 ], [ %62, %61 ]
  %65 = getelementptr inbounds nuw i8, ptr %36, i64 56
  %66 = load ptr, ptr %65, align 8, !tbaa !30, !noalias !67
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds nuw i8, ptr %36, i64 72
  %70 = load ptr, ptr %69, align 8, !tbaa !31, !noalias !67
  %71 = getelementptr inbounds i8, ptr %70, i64 -8
  %72 = load ptr, ptr %71, align 8, !tbaa !32
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 512
  br label %74

74:                                               ; preds = %68, %63
  %75 = phi ptr [ %73, %68 ], [ %64, %63 ]
  %76 = getelementptr inbounds i8, ptr %75, i64 -32
  %77 = load ptr, ptr %76, align 8, !tbaa !25
  %78 = load ptr, ptr %1, align 8, !tbaa !25
  %79 = icmp eq ptr %78, %10
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i64, ptr %10, align 8, !tbaa !13
  %82 = add i64 %81, 1
  call void @_ZdlPvm(ptr noundef %78, i64 noundef %82) #24
  br label %83

83:                                               ; preds = %74, %80
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull %85) #5
  br label %88

88:                                               ; preds = %87, %83
  store ptr null, ptr %84, align 8, !tbaa !49
  %89 = load ptr, ptr %2, align 8, !tbaa !25
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i64, ptr %90, align 8, !tbaa !13
  %94 = add i64 %93, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %94) #24
  br label %95

95:                                               ; preds = %88, %92
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %135

96:                                               ; preds = %0
  %97 = landingpad { ptr, i32 }
          catch ptr null
  br label %109

98:                                               ; preds = %18, %14
  %99 = landingpad { ptr, i32 }
          catch ptr null
  br label %107

100:                                              ; preds = %60, %32
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = load ptr, ptr %1, align 8, !tbaa !25
  %103 = icmp eq ptr %102, %10
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i64, ptr %10, align 8, !tbaa !13
  %106 = add i64 %105, 1
  call void @_ZdlPvm(ptr noundef %102, i64 noundef %106) #24
  br label %107

107:                                              ; preds = %100, %104, %98
  %108 = phi { ptr, i32 } [ %99, %98 ], [ %101, %104 ], [ %101, %100 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #5
  br label %109

109:                                              ; preds = %107, %96
  %110 = phi { ptr, i32 } [ %108, %107 ], [ %97, %96 ]
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %112 = call ptr @__cxa_begin_catch(ptr %111) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %113 unwind label %123

113:                                              ; preds = %109
  %114 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %3)
          to label %115 unwind label %125

115:                                              ; preds = %113
  %116 = load ptr, ptr %3, align 8, !tbaa !25
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i64, ptr %117, align 8, !tbaa !13
  %121 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #24
  br label %122

122:                                              ; preds = %115, %119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @__cxa_end_catch()
  br label %135

123:                                              ; preds = %109
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %133

125:                                              ; preds = %113
  %126 = landingpad { ptr, i32 }
          cleanup
  %127 = load ptr, ptr %3, align 8, !tbaa !25
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load i64, ptr %128, align 8, !tbaa !13
  %132 = add i64 %131, 1
  call void @_ZdlPvm(ptr noundef %127, i64 noundef %132) #24
  br label %133

133:                                              ; preds = %125, %130, %123
  %134 = phi { ptr, i32 } [ %124, %123 ], [ %126, %130 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  invoke void @__cxa_end_catch()
          to label %137 unwind label %138

135:                                              ; preds = %122, %95
  %136 = phi ptr [ %77, %95 ], [ %114, %122 ]
  ret ptr %136

137:                                              ; preds = %133
  resume { ptr, i32 } %134

138:                                              ; preds = %133
  %139 = landingpad { ptr, i32 }
          catch ptr null
  %140 = extractvalue { ptr, i32 } %139, 0
  call void @__clang_call_terminate(ptr %140) #27
  unreachable
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1021sys__native_path_joinEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef ptr @_ZN12__apo_stdlib9path_joinESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret ptr %13
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib9path_joinESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string_view", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %5, align 8
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %11, align 8
  store i64 %2, ptr %6, align 8
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %13 unwind label %131

13:                                               ; preds = %4
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %15 unwind label %133

15:                                               ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %17) #5
  br label %20

20:                                               ; preds = %19, %15
  store ptr null, ptr %16, align 8, !tbaa !49
  %21 = load ptr, ptr %8, align 8, !tbaa !25
  %22 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, ptr %22, align 8, !tbaa !13
  %26 = add i64 %25, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %26) #24
  br label %27

27:                                               ; preds = %20, %24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  invoke void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %10, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %28 unwind label %137

28:                                               ; preds = %27
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %29 = load ptr, ptr %10, align 8, !tbaa !25, !noalias !76
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !14, !noalias !76
  %32 = icmp ult i64 %31, 9223372036854775807
  call void @llvm.assume(i1 %32)
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %33, ptr %9, align 8, !tbaa !9, !alias.scope !76
  %34 = icmp eq ptr %29, null
  %35 = icmp ne i64 %31, 0
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %38 unwind label %139

38:                                               ; preds = %37
  unreachable

39:                                               ; preds = %28
  %40 = icmp samesign ugt i64 %31, 15
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = add nuw nsw i64 %31, 1
  %43 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %42) #26
          to label %44 unwind label %139

44:                                               ; preds = %41
  store ptr %43, ptr %9, align 8, !tbaa !25, !alias.scope !76
  store i64 %31, ptr %33, align 8, !tbaa !13, !alias.scope !76
  br label %45

45:                                               ; preds = %44, %39
  %46 = phi ptr [ %43, %44 ], [ %33, %39 ]
  switch i64 %31, label %49 [
    i64 1, label %47
    i64 0, label %50
  ]

47:                                               ; preds = %45
  %48 = load i8, ptr %29, align 1, !tbaa !13
  store i8 %48, ptr %46, align 1, !tbaa !13
  br label %50

49:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %29, i64 %31, i1 false)
  br label %50

50:                                               ; preds = %49, %47, %45
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %31, ptr %51, align 8, !tbaa !14, !alias.scope !76
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 %31
  store i8 0, ptr %52, align 1, !tbaa !13
  %53 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58, !prof !17

55:                                               ; preds = %50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %56 unwind label %141

56:                                               ; preds = %55
  %57 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %58

58:                                               ; preds = %56, %50
  %59 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 48
  %61 = load ptr, ptr %60, align 8, !tbaa !18
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %63 = load ptr, ptr %62, align 8, !tbaa !24
  %64 = getelementptr inbounds i8, ptr %63, i64 -32
  %65 = icmp eq ptr %61, %64
  br i1 %65, label %83, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 16
  store ptr %67, ptr %61, align 8, !tbaa !9
  %68 = load ptr, ptr %9, align 8, !tbaa !25
  %69 = icmp eq ptr %68, %33
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, ptr %51, align 8, !tbaa !14
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  %73 = add nuw nsw i64 %71, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %67, ptr noundef nonnull align 8 dereferenceable(1) %33, i64 %73, i1 false)
  br label %77

74:                                               ; preds = %66
  store ptr %68, ptr %61, align 8, !tbaa !25
  %75 = load i64, ptr %33, align 8, !tbaa !13
  store i64 %75, ptr %67, align 8, !tbaa !13
  %76 = load i64, ptr %51, align 8, !tbaa !14
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i64 [ %76, %74 ], [ %71, %70 ]
  %79 = icmp ult i64 %78, 9223372036854775807
  call void @llvm.assume(i1 %79)
  %80 = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %78, ptr %80, align 8, !tbaa !14
  store ptr %33, ptr %9, align 8, !tbaa !25
  store i64 0, ptr %51, align 8, !tbaa !14
  store i8 0, ptr %33, align 8, !tbaa !13
  %81 = load ptr, ptr %60, align 8, !tbaa !18
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 32
  store ptr %82, ptr %60, align 8, !tbaa !18
  br label %86

83:                                               ; preds = %58
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %59, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %84 unwind label %141

84:                                               ; preds = %83
  %85 = load ptr, ptr %60, align 8, !tbaa !26, !noalias !77
  br label %86

86:                                               ; preds = %84, %77
  %87 = phi ptr [ %82, %77 ], [ %85, %84 ]
  %88 = getelementptr inbounds nuw i8, ptr %59, i64 56
  %89 = load ptr, ptr %88, align 8, !tbaa !30, !noalias !77
  %90 = icmp eq ptr %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = getelementptr inbounds nuw i8, ptr %59, i64 72
  %93 = load ptr, ptr %92, align 8, !tbaa !31, !noalias !77
  %94 = getelementptr inbounds i8, ptr %93, i64 -8
  %95 = load ptr, ptr %94, align 8, !tbaa !32
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 512
  br label %97

97:                                               ; preds = %91, %86
  %98 = phi ptr [ %96, %91 ], [ %87, %86 ]
  %99 = getelementptr inbounds i8, ptr %98, i64 -32
  %100 = load ptr, ptr %99, align 8, !tbaa !25
  %101 = load ptr, ptr %9, align 8, !tbaa !25
  %102 = icmp eq ptr %101, %33
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load i64, ptr %33, align 8, !tbaa !13
  %105 = add i64 %104, 1
  call void @_ZdlPvm(ptr noundef %101, i64 noundef %105) #24
  br label %106

106:                                              ; preds = %97, %103
  %107 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %108 = load ptr, ptr %107, align 8, !tbaa !49
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %107, ptr noundef nonnull %108) #5
  br label %111

111:                                              ; preds = %110, %106
  store ptr null, ptr %107, align 8, !tbaa !49
  %112 = load ptr, ptr %10, align 8, !tbaa !25
  %113 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %114 = icmp eq ptr %112, %113
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i64, ptr %113, align 8, !tbaa !13
  %117 = add i64 %116, 1
  call void @_ZdlPvm(ptr noundef %112, i64 noundef %117) #24
  br label %118

118:                                              ; preds = %111, %115
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  %119 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %120 = load ptr, ptr %119, align 8, !tbaa !49
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef nonnull %120) #5
  br label %123

123:                                              ; preds = %122, %118
  store ptr null, ptr %119, align 8, !tbaa !49
  %124 = load ptr, ptr %7, align 8, !tbaa !25
  %125 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i64, ptr %125, align 8, !tbaa !13
  %129 = add i64 %128, 1
  call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #24
  br label %130

130:                                              ; preds = %123, %127
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret ptr %100

131:                                              ; preds = %4
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %135

133:                                              ; preds = %13
  %134 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #5
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi { ptr, i32 } [ %134, %133 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %152

137:                                              ; preds = %27
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %150

139:                                              ; preds = %41, %37
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %148

141:                                              ; preds = %83, %55
  %142 = landingpad { ptr, i32 }
          cleanup
  %143 = load ptr, ptr %9, align 8, !tbaa !25
  %144 = icmp eq ptr %143, %33
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load i64, ptr %33, align 8, !tbaa !13
  %147 = add i64 %146, 1
  call void @_ZdlPvm(ptr noundef %143, i64 noundef %147) #24
  br label %148

148:                                              ; preds = %141, %145, %139
  %149 = phi { ptr, i32 } [ %140, %139 ], [ %142, %145 ], [ %142, %141 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #5
  br label %150

150:                                              ; preds = %148, %137
  %151 = phi { ptr, i32 } [ %149, %148 ], [ %138, %137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %152

152:                                              ; preds = %150, %135
  %153 = phi { ptr, i32 } [ %151, %150 ], [ %136, %135 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  resume { ptr, i32 } %153
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN32__apollo_inline_inline_2452_5_1020sys__native_sleep_msEi(i32 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = alloca %struct.timespec, align 8
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = zext nneg i32 %0 to i64
  %6 = udiv i32 %0, 1000
  %7 = zext nneg i32 %6 to i64
  %8 = mul nsw i64 %7, -1000
  %9 = add nsw i64 %8, %5
  %10 = mul nsw i64 %9, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  store i64 %7, ptr %2, align 8, !tbaa !80
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %10, ptr %11, align 8, !tbaa !82
  br label %12

12:                                               ; preds = %15, %4
  %13 = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call ptr @__errno_location() #28
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %12, label %19, !llvm.loop !83

19:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %20

20:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_host_is_windows() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_path_separator() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib14path_separatorEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_exe_suffix() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib10exe_suffixEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_env_get(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib7env_getESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_env_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib7env_setESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_env_remove(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
  %2 = tail call noundef i32 @_ZN32__apollo_inline_inline_2452_5_1022sys__native_env_removeEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_current_dir() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib11current_dirEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_set_current_dir(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call noundef i32 @_ZN32__apollo_inline_inline_2452_5_1027sys__native_set_current_dirEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_executable_path() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib15executable_pathEv()
  ret ptr %1
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef i32 @sys__native_process_id() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @getpid() #5
  ret i32 %1
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 1, 0) i32 @sys__native_cpu_count() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #5
  %2 = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %1, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_host_name() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib9host_nameEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_temp_dir() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib8temp_dirEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_path_join(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef ptr @_ZN12__apo_stdlib9path_joinESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret ptr %13
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %2 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !17

4:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
  %5 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds i8, ptr %11, i64 -32
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %33, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %15, ptr %9, align 8, !tbaa !9
  %16 = load ptr, ptr %0, align 8, !tbaa !25
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !14
  %22 = icmp ult i64 %21, 16
  tail call void @llvm.assume(i1 %22)
  %23 = add nuw nsw i64 %21, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %23, i1 false)
  br label %26

24:                                               ; preds = %14
  store ptr %16, ptr %9, align 8, !tbaa !25
  %25 = load i64, ptr %17, align 8, !tbaa !13
  store i64 %25, ptr %15, align 8, !tbaa !13
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !14
  %29 = icmp ult i64 %28, 9223372036854775807
  tail call void @llvm.assume(i1 %29)
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %28, ptr %30, align 8, !tbaa !14
  store ptr %17, ptr %0, align 8, !tbaa !25
  store i64 0, ptr %27, align 8, !tbaa !14
  store i8 0, ptr %17, align 8, !tbaa !13
  %31 = load ptr, ptr %8, align 8, !tbaa !18
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 32
  store ptr %32, ptr %8, align 8, !tbaa !18
  br label %35

33:                                               ; preds = %6
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %34 = load ptr, ptr %8, align 8, !tbaa !26, !noalias !85
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi ptr [ %32, %26 ], [ %34, %33 ]
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %38 = load ptr, ptr %37, align 8, !tbaa !30, !noalias !85
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %42 = load ptr, ptr %41, align 8, !tbaa !31, !noalias !85
  %43 = getelementptr inbounds i8, ptr %42, i64 -8
  %44 = load ptr, ptr %43, align 8, !tbaa !32
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 512
  br label %46

46:                                               ; preds = %35, %40
  %47 = phi ptr [ %45, %40 ], [ %36, %35 ]
  %48 = getelementptr inbounds i8, ptr %47, i64 -32
  %49 = load ptr, ptr %48, align 8, !tbaa !25
  ret ptr %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !9
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

7:                                                ; preds = %3
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ugt i64 %8, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %8, 1
  %15 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #26
  store ptr %15, ptr %0, align 8, !tbaa !25
  store i64 %8, ptr %4, align 8, !tbaa !13
  br label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %15, %13 ], [ %4, %7 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %1, align 1, !tbaa !13
  store i8 %19, ptr %17, align 1, !tbaa !13
  br label %21

20:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %1, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !14
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !32, !noalias !88
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !32
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !91, !noalias !88
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !91
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !32, !noalias !92
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !32
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !91, !noalias !92
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !91
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !95
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !96
  %21 = load ptr, ptr %9, align 8, !tbaa !97
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !32
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #24
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !98

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !95
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !99
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #24
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #27
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !99
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !100

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #26
  store ptr %12, ptr %0, align 8, !tbaa !95
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !32
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !101

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #5
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !32
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #24
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !98

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
  tail call void @__clang_call_terminate(ptr %39) #27
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #5
  %44 = load ptr, ptr %0, align 8, !tbaa !95
  %45 = load i64, ptr %6, align 8, !tbaa !99
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #24
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
  store ptr %15, ptr %52, align 8, !tbaa !31
  %53 = load ptr, ptr %15, align 8, !tbaa !32
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !30
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !102
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !31
  %60 = load ptr, ptr %58, align 8, !tbaa !32
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !30
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !102
  store ptr %53, ptr %51, align 8, !tbaa !103
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !18
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #27
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #5
  tail call void @_ZSt9terminatev() #27
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !31
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !31
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !26
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !13
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #24
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !13
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #24
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !25
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !13
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #24
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !25
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !13
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #24
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !13
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #24
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !25
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !13
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #24
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !25
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !13
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #24
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !25
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !13
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #24
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !25
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !13
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #24
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !25
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !13
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #24
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !25
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !13
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #24
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !25
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !13
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #24
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !25
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !13
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #24
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !25
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !13
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #24
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !25
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !13
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #24
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !25
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !13
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #24
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !31
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !104

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !102
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !25
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !13
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #24
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !105

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !30
  %168 = load ptr, ptr %2, align 8, !tbaa !26
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !25
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !13
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #24
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !105

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !26
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !25
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !13
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #24
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !105

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !26
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  %27 = load ptr, ptr %4, align 8, !tbaa !26
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !99
  %39 = load ptr, ptr %0, align 8, !tbaa !95
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !97
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !32
  %51 = load ptr, ptr %3, align 8, !tbaa !18
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !9
  %53 = load ptr, ptr %1, align 8, !tbaa !25
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !14
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !25
  %62 = load i64, ptr %54, align 8, !tbaa !13
  store i64 %62, ptr %52, align 8, !tbaa !13
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !14
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !14
  store ptr %54, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %64, align 8, !tbaa !14
  store i8 0, ptr %54, align 8, !tbaa !13
  %68 = load ptr, ptr %5, align 8, !tbaa !97
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !31
  %70 = load ptr, ptr %69, align 8, !tbaa !32
  store ptr %70, ptr %18, align 8, !tbaa !30
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !102
  store ptr %70, ptr %3, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !99
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !95
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
  br i1 %30, label %31, label %32, !prof !106

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !32
  store ptr %35, ptr %24, align 8, !tbaa !32
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !107

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !32
  store ptr %48, ptr %42, align 8, !tbaa !32
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #26
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !106

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !32
  store ptr %69, ptr %60, align 8, !tbaa !32
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !95
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #24
  store ptr %55, ptr %0, align 8, !tbaa !95
  store i64 %52, ptr %14, align 8, !tbaa !99
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !31
  %75 = load ptr, ptr %74, align 8, !tbaa !32
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !30
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !102
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !31
  %81 = load ptr, ptr %80, align 8, !tbaa !32
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !30
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: cold noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @unsetenv(ptr noundef readonly captures(none)) local_unnamed_addr #17

declare void @_ZNSt10filesystem12current_pathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #5
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !49
  %7 = load ptr, ptr %0, align 8, !tbaa !25
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8, !tbaa !13
  %12 = add i64 %11, 1
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %12) #24
  br label %13

13:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #16

declare void @_ZNSt10filesystem12current_pathERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #18

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load i64, ptr %1, align 8, !tbaa !108
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !9
  %8 = icmp eq ptr %6, null
  %9 = icmp ne i64 %4, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

12:                                               ; preds = %3
  %13 = icmp ugt i64 %4, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = icmp ugt i64 %4, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %4, 1
  %19 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #26
  store ptr %19, ptr %0, align 8, !tbaa !25
  store i64 %4, ptr %7, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %4, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %6, align 1, !tbaa !13
  store i8 %23, ptr %21, align 1, !tbaa !13
  br label %25

24:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %6, i64 %4, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %4
  store i8 0, ptr %27, align 1, !tbaa !13
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %29 unwind label %31

29:                                               ; preds = %25
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %30 unwind label %33

30:                                               ; preds = %29
  ret void

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %39

33:                                               ; preds = %29
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load ptr, ptr %28, align 8, !tbaa !49
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %35) #5
  br label %38

38:                                               ; preds = %33, %37
  store ptr null, ptr %28, align 8, !tbaa !49
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi { ptr, i32 } [ %34, %38 ], [ %32, %31 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !25
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i64, ptr %7, align 8, !tbaa !13
  %45 = add i64 %44, 1
  tail call void @_ZdlPvm(ptr noundef %41, i64 noundef %45) #24
  br label %46

46:                                               ; preds = %39, %43
  resume { ptr, i32 } %40
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #18

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #16

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @gethostname(ptr noundef, i64 noundef) local_unnamed_addr #16

declare void @_ZNSt10filesystem19temp_directory_pathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #18

declare void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #18

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin nounwind }
attributes #25 = { cold noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { noreturn }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !16, i64 8, !7, i64 16}
!16 = !{!"long", !7, i64 0}
!17 = !{!"branch_weights", i32 1, i32 1023}
!18 = !{!19, !23, i64 48}
!19 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !20, i64 0, !16, i64 8, !22, i64 16, !22, i64 48}
!20 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!21 = !{!"any p2 pointer", !12, i64 0}
!22 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !23, i64 0, !23, i64 8, !23, i64 16, !20, i64 24}
!23 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!24 = !{!19, !23, i64 64}
!25 = !{!15, !11, i64 0}
!26 = !{!22, !23, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!29 = distinct !{!29, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!30 = !{!22, !23, i64 8}
!31 = !{!22, !20, i64 24}
!32 = !{!23, !23, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!35 = distinct !{!35, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!38 = distinct !{!38, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!41 = distinct !{!41, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!44 = distinct !{!44, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!45 = !{!43, !40}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!48 = distinct !{!48, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !12, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!53 = distinct !{!53, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!56 = distinct !{!56, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!59 = distinct !{!59, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!62 = distinct !{!62, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!65 = distinct !{!65, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!66 = !{!64, !61}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!69 = distinct !{!69, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!72 = distinct !{!72, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!75 = distinct !{!75, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!76 = !{!74, !71}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!79 = distinct !{!79, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!80 = !{!81, !16, i64 0}
!81 = !{!"_ZTS8timespec", !16, i64 0, !16, i64 8}
!82 = !{!81, !16, i64 8}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!87 = distinct !{!87, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!90 = distinct !{!90, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!91 = !{!12, !12, i64 0}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!94 = distinct !{!94, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!95 = !{!19, !20, i64 0}
!96 = !{!19, !20, i64 40}
!97 = !{!19, !20, i64 72}
!98 = distinct !{!98, !84}
!99 = !{!19, !16, i64 8}
!100 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!101 = distinct !{!101, !84}
!102 = !{!22, !23, i64 16}
!103 = !{!19, !23, i64 16}
!104 = distinct !{!104, !84}
!105 = distinct !{!105, !84}
!106 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!107 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!108 = !{!16, !16, i64 0}
!109 = !{!11, !11, i64 0}
