; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/82fff6e2190d6780.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/82fff6e2190d6780.cpp"
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2452_5_1027sys__native_host_is_windowsEv() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1026sys__native_path_separatorEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib14path_separatorEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_separatorEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !5
  store i8 47, ptr %2, align 8, !tbaa !11
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !12
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !11
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !15

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %62

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !5
  %20 = load ptr, ptr %1, align 8, !tbaa !23
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !12
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !23
  %27 = load i64, ptr %2, align 8, !tbaa !11
  store i64 %27, ptr %19, align 8, !tbaa !11
  %28 = load i64, ptr %3, align 8, !tbaa !12
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !12
  store ptr %2, ptr %1, align 8, !tbaa !23
  store i64 0, ptr %3, align 8, !tbaa !12
  store i8 0, ptr %2, align 8, !tbaa !11
  %33 = load ptr, ptr %12, align 8, !tbaa !16
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !16
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %62

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !24, !noalias !25
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !28, !noalias !25
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !29, !noalias !25
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !30
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !23
  %53 = load ptr, ptr %1, align 8, !tbaa !23
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, ptr %3, align 8, !tbaa !12
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %61

58:                                               ; preds = %49
  %59 = load i64, ptr %2, align 8, !tbaa !11
  %60 = add i64 %59, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %60) #24
  br label %61

61:                                               ; preds = %55, %58
  ret ptr %52

62:                                               ; preds = %35, %7
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = load ptr, ptr %1, align 8, !tbaa !23
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, ptr %3, align 8, !tbaa !12
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %72

69:                                               ; preds = %62
  %70 = load i64, ptr %2, align 8, !tbaa !11
  %71 = add i64 %70, 1
  call void @_ZdlPvm(ptr noundef %64, i64 noundef %71) #24
  br label %72

72:                                               ; preds = %69, %66
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1022sys__native_exe_suffixEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib10exe_suffixEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10exe_suffixEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !5
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %3, align 8, !tbaa !12
  store i8 0, ptr %2, align 8, !tbaa !11
  %4 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !15

6:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %7 unwind label %61

7:                                                ; preds = %6
  %8 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds i8, ptr %14, i64 -32
  %16 = icmp eq ptr %12, %15
  br i1 %16, label %34, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %18, ptr %12, align 8, !tbaa !5
  %19 = load ptr, ptr %1, align 8, !tbaa !23
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, ptr %3, align 8, !tbaa !12
  %23 = icmp ult i64 %22, 16
  call void @llvm.assume(i1 %23)
  %24 = add nuw nsw i64 %22, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %24, i1 false)
  br label %28

25:                                               ; preds = %17
  store ptr %19, ptr %12, align 8, !tbaa !23
  %26 = load i64, ptr %2, align 8, !tbaa !11
  store i64 %26, ptr %18, align 8, !tbaa !11
  %27 = load i64, ptr %3, align 8, !tbaa !12
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i64 [ %27, %25 ], [ %22, %21 ]
  %30 = icmp ult i64 %29, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %29, ptr %31, align 8, !tbaa !12
  store ptr %2, ptr %1, align 8, !tbaa !23
  store i64 0, ptr %3, align 8, !tbaa !12
  store i8 0, ptr %2, align 8, !tbaa !11
  %32 = load ptr, ptr %11, align 8, !tbaa !16
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr %33, ptr %11, align 8, !tbaa !16
  br label %37

34:                                               ; preds = %9
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %35 unwind label %61

35:                                               ; preds = %34
  %36 = load ptr, ptr %11, align 8, !tbaa !24, !noalias !31
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi ptr [ %33, %28 ], [ %36, %35 ]
  %39 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %40 = load ptr, ptr %39, align 8, !tbaa !28, !noalias !31
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %44 = load ptr, ptr %43, align 8, !tbaa !29, !noalias !31
  %45 = getelementptr inbounds i8, ptr %44, i64 -8
  %46 = load ptr, ptr %45, align 8, !tbaa !30
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 512
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi ptr [ %47, %42 ], [ %38, %37 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = load ptr, ptr %50, align 8, !tbaa !23
  %52 = load ptr, ptr %1, align 8, !tbaa !23
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i64, ptr %3, align 8, !tbaa !12
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %60

57:                                               ; preds = %48
  %58 = load i64, ptr %2, align 8, !tbaa !11
  %59 = add i64 %58, 1
  call void @_ZdlPvm(ptr noundef %52, i64 noundef %59) #24
  br label %60

60:                                               ; preds = %54, %57
  ret ptr %51

61:                                               ; preds = %34, %6
  %62 = landingpad { ptr, i32 }
          cleanup
  %63 = load ptr, ptr %1, align 8, !tbaa !23
  %64 = icmp eq ptr %63, %2
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, ptr %3, align 8, !tbaa !12
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  br label %71

68:                                               ; preds = %61
  %69 = load i64, ptr %2, align 8, !tbaa !11
  %70 = add i64 %69, 1
  call void @_ZdlPvm(ptr noundef %63, i64 noundef %70) #24
  br label %71

71:                                               ; preds = %68, %65
  resume { ptr, i32 } %62
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib7env_getESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #5
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !5
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
  store ptr %17, ptr %3, align 8, !tbaa !23
  store i64 %0, ptr %5, align 8, !tbaa !11
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ %5, %10 ]
  switch i64 %0, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %1, align 1, !tbaa !11
  store i8 %21, ptr %19, align 1, !tbaa !11
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %1, i64 %0, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %0, ptr %24, align 8, !tbaa !12
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %0
  store i8 0, ptr %25, align 1, !tbaa !11
  %26 = load i64, ptr %24, align 8, !tbaa !12
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8, !tbaa !23
  %30 = call ptr @getenv(ptr noundef %29) #5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %33, ptr %4, align 8, !tbaa !5
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #5
  %35 = icmp ugt i64 %34, 15
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = icmp ugt i64 %34, 9223372036854775806
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %39 unwind label %138

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %34, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #26
          to label %43 unwind label %138

43:                                               ; preds = %40
  store ptr %42, ptr %4, align 8, !tbaa !23
  store i64 %34, ptr %33, align 8, !tbaa !11
  br label %44

44:                                               ; preds = %43, %32
  %45 = phi ptr [ %42, %43 ], [ %33, %32 ]
  switch i64 %34, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %30, align 1, !tbaa !11
  store i8 %47, ptr %45, align 1, !tbaa !11
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr nonnull align 1 %30, i64 %34, i1 false)
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %34, ptr %50, align 8, !tbaa !12
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 %34
  store i8 0, ptr %51, align 1, !tbaa !11
  br label %55

52:                                               ; preds = %23, %28
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %53, ptr %4, align 8, !tbaa !5
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %54, align 8, !tbaa !12
  store i8 0, ptr %53, align 8, !tbaa !11
  br label %55

55:                                               ; preds = %49, %52
  %56 = phi i1 [ false, %49 ], [ true, %52 ]
  %57 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62, !prof !15

59:                                               ; preds = %55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %60 unwind label %140

60:                                               ; preds = %59
  %61 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 48
  %65 = load ptr, ptr %64, align 8, !tbaa !16
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = getelementptr inbounds i8, ptr %67, i64 -32
  %69 = icmp eq ptr %65, %68
  br i1 %69, label %91, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 16
  store ptr %71, ptr %65, align 8, !tbaa !5
  %72 = load ptr, ptr %4, align 8, !tbaa !23
  %73 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %77 = load i64, ptr %76, align 8, !tbaa !12
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  %79 = add nuw nsw i64 %77, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, ptr noundef nonnull align 8 dereferenceable(1) %73, i64 %79, i1 false)
  br label %84

80:                                               ; preds = %70
  store ptr %72, ptr %65, align 8, !tbaa !23
  %81 = load i64, ptr %73, align 8, !tbaa !11
  store i64 %81, ptr %71, align 8, !tbaa !11
  %82 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %83 = load i64, ptr %82, align 8, !tbaa !12
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi i64 [ %83, %80 ], [ %77, %75 ]
  %86 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %87 = icmp ult i64 %85, 9223372036854775807
  call void @llvm.assume(i1 %87)
  %88 = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %85, ptr %88, align 8, !tbaa !12
  store ptr %73, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %86, align 8, !tbaa !12
  store i8 0, ptr %73, align 8, !tbaa !11
  %89 = load ptr, ptr %64, align 8, !tbaa !16
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 32
  store ptr %90, ptr %64, align 8, !tbaa !16
  br label %94

91:                                               ; preds = %62
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %63, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %92 unwind label %140

92:                                               ; preds = %91
  %93 = load ptr, ptr %64, align 8, !tbaa !24, !noalias !34
  br label %94

94:                                               ; preds = %92, %84
  %95 = phi ptr [ %90, %84 ], [ %93, %92 ]
  %96 = getelementptr inbounds nuw i8, ptr %63, i64 56
  %97 = load ptr, ptr %96, align 8, !tbaa !28, !noalias !34
  %98 = icmp eq ptr %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = getelementptr inbounds nuw i8, ptr %63, i64 72
  %101 = load ptr, ptr %100, align 8, !tbaa !29, !noalias !34
  %102 = getelementptr inbounds i8, ptr %101, i64 -8
  %103 = load ptr, ptr %102, align 8, !tbaa !30
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 512
  br label %105

105:                                              ; preds = %99, %94
  %106 = phi ptr [ %104, %99 ], [ %95, %94 ]
  %107 = getelementptr inbounds i8, ptr %106, i64 -32
  %108 = load ptr, ptr %107, align 8, !tbaa !23
  %109 = load ptr, ptr %4, align 8, !tbaa !23
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %111 = icmp eq ptr %109, %110
  br i1 %56, label %112, label %120

112:                                              ; preds = %105
  br i1 %111, label %113, label %117

113:                                              ; preds = %112
  %114 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %115 = load i64, ptr %114, align 8, !tbaa !12
  %116 = icmp ult i64 %115, 16
  call void @llvm.assume(i1 %116)
  br label %128

117:                                              ; preds = %112
  %118 = load i64, ptr %110, align 8, !tbaa !11
  %119 = add i64 %118, 1
  call void @_ZdlPvm(ptr noundef %109, i64 noundef %119) #24
  br label %128

120:                                              ; preds = %105
  br i1 %111, label %121, label %125

121:                                              ; preds = %120
  %122 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %123 = load i64, ptr %122, align 8, !tbaa !12
  %124 = icmp ult i64 %123, 16
  call void @llvm.assume(i1 %124)
  br label %128

125:                                              ; preds = %120
  %126 = load i64, ptr %110, align 8, !tbaa !11
  %127 = add i64 %126, 1
  call void @_ZdlPvm(ptr noundef %109, i64 noundef %127) #24
  br label %128

128:                                              ; preds = %125, %121, %117, %113
  %129 = load ptr, ptr %3, align 8, !tbaa !23
  %130 = icmp eq ptr %129, %5
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i64, ptr %24, align 8, !tbaa !12
  %133 = icmp ult i64 %132, 16
  call void @llvm.assume(i1 %133)
  br label %137

134:                                              ; preds = %128
  %135 = load i64, ptr %5, align 8, !tbaa !11
  %136 = add i64 %135, 1
  call void @_ZdlPvm(ptr noundef %129, i64 noundef %136) #24
  br label %137

137:                                              ; preds = %131, %134
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  ret ptr %108

138:                                              ; preds = %38, %40
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %152

140:                                              ; preds = %91, %59
  %141 = landingpad { ptr, i32 }
          cleanup
  %142 = load ptr, ptr %4, align 8, !tbaa !23
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %147 = load i64, ptr %146, align 8, !tbaa !12
  %148 = icmp ult i64 %147, 16
  call void @llvm.assume(i1 %148)
  br label %152

149:                                              ; preds = %140
  %150 = load i64, ptr %143, align 8, !tbaa !11
  %151 = add i64 %150, 1
  call void @_ZdlPvm(ptr noundef %142, i64 noundef %151) #24
  br label %152

152:                                              ; preds = %145, %149, %138
  %153 = phi { ptr, i32 } [ %139, %138 ], [ %141, %149 ], [ %141, %145 ]
  %154 = load ptr, ptr %3, align 8, !tbaa !23
  %155 = icmp eq ptr %154, %5
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i64, ptr %24, align 8, !tbaa !12
  %158 = icmp ult i64 %157, 16
  call void @llvm.assume(i1 %158)
  br label %162

159:                                              ; preds = %152
  %160 = load i64, ptr %5, align 8, !tbaa !11
  %161 = add i64 %160, 1
  call void @_ZdlPvm(ptr noundef %154, i64 noundef %161) #24
  br label %162

162:                                              ; preds = %159, %156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  resume { ptr, i32 } %153
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib7env_setESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #5
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %7, ptr %5, align 8, !tbaa !5
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
  store ptr %19, ptr %5, align 8, !tbaa !23
  store i64 %0, ptr %7, align 8, !tbaa !11
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %0, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %1, align 1, !tbaa !11
  store i8 %23, ptr %21, align 1, !tbaa !11
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %1, i64 %0, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %26, align 8, !tbaa !12
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %0
  store i8 0, ptr %27, align 1, !tbaa !11
  %28 = load ptr, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #5
  %29 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %29, ptr %6, align 8, !tbaa !5
  %30 = icmp eq ptr %3, null
  %31 = icmp ne i64 %2, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %34 unwind label %75

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
          to label %40 unwind label %75

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %37
  %42 = add nuw nsw i64 %2, 1
  %43 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %42) #26
          to label %44 unwind label %75

44:                                               ; preds = %41
  store ptr %43, ptr %6, align 8, !tbaa !23
  store i64 %2, ptr %29, align 8, !tbaa !11
  br label %45

45:                                               ; preds = %44, %35
  %46 = phi ptr [ %43, %44 ], [ %29, %35 ]
  switch i64 %2, label %49 [
    i64 1, label %47
    i64 0, label %50
  ]

47:                                               ; preds = %45
  %48 = load i8, ptr %3, align 1, !tbaa !11
  store i8 %48, ptr %46, align 1, !tbaa !11
  br label %50

49:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %3, i64 %2, i1 false)
  br label %50

50:                                               ; preds = %49, %47, %45
  %51 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %51, align 8, !tbaa !12
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 %2
  store i8 0, ptr %52, align 1, !tbaa !11
  %53 = load ptr, ptr %6, align 8, !tbaa !23
  %54 = call i32 @setenv(ptr noundef %28, ptr noundef %53, i32 noundef 1) #5
  %55 = load ptr, ptr %6, align 8, !tbaa !23
  %56 = icmp eq ptr %55, %29
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i64, ptr %51, align 8, !tbaa !12
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  br label %63

60:                                               ; preds = %50
  %61 = load i64, ptr %29, align 8, !tbaa !11
  %62 = add i64 %61, 1
  call void @_ZdlPvm(ptr noundef %55, i64 noundef %62) #24
  br label %63

63:                                               ; preds = %57, %60
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #5
  %64 = load ptr, ptr %5, align 8, !tbaa !23
  %65 = icmp eq ptr %64, %7
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, ptr %26, align 8, !tbaa !12
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %72

69:                                               ; preds = %63
  %70 = load i64, ptr %7, align 8, !tbaa !11
  %71 = add i64 %70, 1
  call void @_ZdlPvm(ptr noundef %64, i64 noundef %71) #24
  br label %72

72:                                               ; preds = %66, %69
  %73 = icmp eq i32 %54, 0
  %74 = zext i1 %73 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #5
  ret i32 %74

75:                                               ; preds = %41, %39, %33
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #5
  %77 = load ptr, ptr %5, align 8, !tbaa !23
  %78 = icmp eq ptr %77, %7
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, ptr %26, align 8, !tbaa !12
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  br label %85

82:                                               ; preds = %75
  %83 = load i64, ptr %7, align 8, !tbaa !11
  %84 = add i64 %83, 1
  call void @_ZdlPvm(ptr noundef %77, i64 noundef %84) #24
  br label %85

85:                                               ; preds = %82, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #5
  resume { ptr, i32 } %76
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2452_5_1022sys__native_env_removeEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %5, ptr %2, align 8, !tbaa !5
  br label %21

6:                                                ; preds = %1
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %8, ptr %2, align 8, !tbaa !5
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
  store ptr %15, ptr %2, align 8, !tbaa !23
  store i64 %7, ptr %8, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %15, %13 ], [ %8, %6 ]
  switch i64 %7, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %0, align 1, !tbaa !11
  store i8 %19, ptr %17, align 1, !tbaa !11
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %0, i64 %7, i1 false)
  br label %21

21:                                               ; preds = %4, %20, %18, %16
  %22 = phi ptr [ %5, %4 ], [ %17, %20 ], [ %17, %18 ], [ %17, %16 ]
  %23 = phi i64 [ 0, %4 ], [ %7, %20 ], [ 1, %18 ], [ %7, %16 ]
  %24 = phi ptr [ %5, %4 ], [ %8, %20 ], [ %8, %18 ], [ %8, %16 ]
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %23, ptr %25, align 8, !tbaa !12
  %26 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  store i8 0, ptr %26, align 1, !tbaa !11
  %27 = load ptr, ptr %2, align 8, !tbaa !23
  %28 = call i32 @unsetenv(ptr noundef %27) #5
  %29 = load ptr, ptr %2, align 8, !tbaa !23
  %30 = icmp eq ptr %29, %24
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i64, ptr %25, align 8, !tbaa !12
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  br label %37

34:                                               ; preds = %21
  %35 = load i64, ptr %24, align 8, !tbaa !11
  %36 = add i64 %35, 1
  call void @_ZdlPvm(ptr noundef %29, i64 noundef %36) #24
  br label %37

37:                                               ; preds = %31, %34
  %38 = icmp eq i32 %28, 0
  %39 = zext i1 %38 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret i32 %39
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1023sys__native_current_dirEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib11current_dirEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11current_dirEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  invoke void @_ZNSt10filesystem12current_pathB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %2)
          to label %5 unwind label %102

5:                                                ; preds = %0
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %6 = load ptr, ptr %2, align 8, !tbaa !23, !noalias !43
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !12, !noalias !43
  %9 = icmp ult i64 %8, 9223372036854775807
  call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %10, ptr %1, align 8, !tbaa !5, !alias.scope !43
  %11 = icmp eq ptr %6, null
  %12 = icmp ne i64 %8, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %15 unwind label %104

15:                                               ; preds = %14
  unreachable

16:                                               ; preds = %5
  %17 = icmp samesign ugt i64 %8, 15
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = add nuw nsw i64 %8, 1
  %20 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #26
          to label %21 unwind label %104

21:                                               ; preds = %18
  store ptr %20, ptr %1, align 8, !tbaa !23, !alias.scope !43
  store i64 %8, ptr %10, align 8, !tbaa !11, !alias.scope !43
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi ptr [ %20, %21 ], [ %10, %16 ]
  switch i64 %8, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, ptr %6, align 1, !tbaa !11
  store i8 %25, ptr %23, align 1, !tbaa !11
  br label %27

26:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr align 1 %6, i64 %8, i1 false)
  br label %27

27:                                               ; preds = %26, %24, %22
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %8, ptr %28, align 8, !tbaa !12, !alias.scope !43
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 %8
  store i8 0, ptr %29, align 1, !tbaa !11
  %30 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35, !prof !15

32:                                               ; preds = %27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %33 unwind label %106

33:                                               ; preds = %32
  %34 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %35

35:                                               ; preds = %33, %27
  %36 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 48
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = getelementptr inbounds i8, ptr %40, i64 -32
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %44, ptr %38, align 8, !tbaa !5
  %45 = load ptr, ptr %1, align 8, !tbaa !23
  %46 = icmp eq ptr %45, %10
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, ptr %28, align 8, !tbaa !12
  %49 = icmp ult i64 %48, 16
  call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %44, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %50, i1 false)
  br label %54

51:                                               ; preds = %43
  store ptr %45, ptr %38, align 8, !tbaa !23
  %52 = load i64, ptr %10, align 8, !tbaa !11
  store i64 %52, ptr %44, align 8, !tbaa !11
  %53 = load i64, ptr %28, align 8, !tbaa !12
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i64 [ %53, %51 ], [ %48, %47 ]
  %56 = icmp ult i64 %55, 9223372036854775807
  call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %55, ptr %57, align 8, !tbaa !12
  store ptr %10, ptr %1, align 8, !tbaa !23
  store i64 0, ptr %28, align 8, !tbaa !12
  store i8 0, ptr %10, align 8, !tbaa !11
  %58 = load ptr, ptr %37, align 8, !tbaa !16
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 32
  store ptr %59, ptr %37, align 8, !tbaa !16
  br label %63

60:                                               ; preds = %35
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %61 unwind label %106

61:                                               ; preds = %60
  %62 = load ptr, ptr %37, align 8, !tbaa !24, !noalias !44
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi ptr [ %59, %54 ], [ %62, %61 ]
  %65 = getelementptr inbounds nuw i8, ptr %36, i64 56
  %66 = load ptr, ptr %65, align 8, !tbaa !28, !noalias !44
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds nuw i8, ptr %36, i64 72
  %70 = load ptr, ptr %69, align 8, !tbaa !29, !noalias !44
  %71 = getelementptr inbounds i8, ptr %70, i64 -8
  %72 = load ptr, ptr %71, align 8, !tbaa !30
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 512
  br label %74

74:                                               ; preds = %68, %63
  %75 = phi ptr [ %73, %68 ], [ %64, %63 ]
  %76 = getelementptr inbounds i8, ptr %75, i64 -32
  %77 = load ptr, ptr %76, align 8, !tbaa !23
  %78 = load ptr, ptr %1, align 8, !tbaa !23
  %79 = icmp eq ptr %78, %10
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i64, ptr %28, align 8, !tbaa !12
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %86

83:                                               ; preds = %74
  %84 = load i64, ptr %10, align 8, !tbaa !11
  %85 = add i64 %84, 1
  call void @_ZdlPvm(ptr noundef %78, i64 noundef %85) #24
  br label %86

86:                                               ; preds = %80, %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef nonnull %88) #5
  br label %91

91:                                               ; preds = %90, %86
  store ptr null, ptr %87, align 8, !tbaa !47
  %92 = load ptr, ptr %2, align 8, !tbaa !23
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, ptr %7, align 8, !tbaa !12
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %101

98:                                               ; preds = %91
  %99 = load i64, ptr %93, align 8, !tbaa !11
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %92, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %95, %98
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  br label %152

102:                                              ; preds = %0
  %103 = landingpad { ptr, i32 }
          catch ptr null
  br label %118

104:                                              ; preds = %18, %14
  %105 = landingpad { ptr, i32 }
          catch ptr null
  br label %116

106:                                              ; preds = %60, %32
  %107 = landingpad { ptr, i32 }
          catch ptr null
  %108 = load ptr, ptr %1, align 8, !tbaa !23
  %109 = icmp eq ptr %108, %10
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, ptr %28, align 8, !tbaa !12
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %116

113:                                              ; preds = %106
  %114 = load i64, ptr %10, align 8, !tbaa !11
  %115 = add i64 %114, 1
  call void @_ZdlPvm(ptr noundef %108, i64 noundef %115) #24
  br label %116

116:                                              ; preds = %113, %110, %104
  %117 = phi { ptr, i32 } [ %105, %104 ], [ %107, %110 ], [ %107, %113 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #5
  br label %118

118:                                              ; preds = %116, %102
  %119 = phi { ptr, i32 } [ %117, %116 ], [ %103, %102 ]
  %120 = extractvalue { ptr, i32 } %119, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %121 = call ptr @__cxa_begin_catch(ptr %120) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %122 unwind label %136

122:                                              ; preds = %118
  %123 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %3)
          to label %124 unwind label %138

124:                                              ; preds = %122
  %125 = load ptr, ptr %3, align 8, !tbaa !23
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %130 = load i64, ptr %129, align 8, !tbaa !12
  %131 = icmp ult i64 %130, 16
  call void @llvm.assume(i1 %131)
  br label %135

132:                                              ; preds = %124
  %133 = load i64, ptr %126, align 8, !tbaa !11
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %125, i64 noundef %134) #24
  br label %135

135:                                              ; preds = %128, %132
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @__cxa_end_catch()
  br label %152

136:                                              ; preds = %118
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %150

138:                                              ; preds = %122
  %139 = landingpad { ptr, i32 }
          cleanup
  %140 = load ptr, ptr %3, align 8, !tbaa !23
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %145 = load i64, ptr %144, align 8, !tbaa !12
  %146 = icmp ult i64 %145, 16
  call void @llvm.assume(i1 %146)
  br label %150

147:                                              ; preds = %138
  %148 = load i64, ptr %141, align 8, !tbaa !11
  %149 = add i64 %148, 1
  call void @_ZdlPvm(ptr noundef %140, i64 noundef %149) #24
  br label %150

150:                                              ; preds = %147, %143, %136
  %151 = phi { ptr, i32 } [ %137, %136 ], [ %139, %143 ], [ %139, %147 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  invoke void @__cxa_end_catch()
          to label %154 unwind label %155

152:                                              ; preds = %135, %101
  %153 = phi ptr [ %77, %101 ], [ %123, %135 ]
  ret ptr %153

154:                                              ; preds = %150
  resume { ptr, i32 } %151

155:                                              ; preds = %150
  %156 = landingpad { ptr, i32 }
          catch ptr null
  %157 = extractvalue { ptr, i32 } %156, 0
  call void @__clang_call_terminate(ptr %157) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %28

10:                                               ; preds = %7
  invoke void @_ZNSt10filesystem12current_pathERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %11 unwind label %30

11:                                               ; preds = %10
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %13) #5
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !47
  %17 = load ptr, ptr %3, align 8, !tbaa !23
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %22 = load i64, ptr %21, align 8, !tbaa !12
  %23 = icmp ult i64 %22, 16
  call void @llvm.assume(i1 %23)
  br label %27

24:                                               ; preds = %16
  %25 = load i64, ptr %18, align 8, !tbaa !11
  %26 = add i64 %25, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %26) #24
  br label %27

27:                                               ; preds = %24, %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5
  br label %36

28:                                               ; preds = %7
  %29 = landingpad { ptr, i32 }
          catch ptr null
  br label %32

30:                                               ; preds = %10
  %31 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #5
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5
  %35 = call ptr @__cxa_begin_catch(ptr %34) #5
  call void @__cxa_end_catch()
  br label %36

36:                                               ; preds = %27, %32
  %37 = phi i32 [ 1, %27 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %37
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1027sys__native_executable_pathEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib15executable_pathEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib15executable_pathEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znwm(i64 noundef 4096) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %2, i8 0, i64 4096, i1 false)
  %3 = tail call i64 @readlink(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i64 noundef 4095) #5
  %4 = icmp sgt i64 %3, 0
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %5, ptr %1, align 8, !tbaa !5
  br i1 %4, label %6, label %26

6:                                                ; preds = %0
  %7 = icmp samesign ugt i64 %3, 15
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = icmp eq i64 %3, 9223372036854775807
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %11 unwind label %101

11:                                               ; preds = %10
  unreachable

12:                                               ; preds = %8
  %13 = add nuw nsw i64 %3, 1
  %14 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #26
          to label %15 unwind label %101

15:                                               ; preds = %12
  store ptr %14, ptr %1, align 8, !tbaa !23
  store i64 %3, ptr %5, align 8, !tbaa !11
  br label %20

16:                                               ; preds = %6
  %17 = icmp eq i64 %3, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = load i8, ptr %2, align 1, !tbaa !11
  store i8 %19, ptr %5, align 8, !tbaa !11
  br label %22

20:                                               ; preds = %15, %16
  %21 = phi ptr [ %14, %15 ], [ %5, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi ptr [ %5, %18 ], [ %21, %20 ]
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %3, ptr %24, align 8, !tbaa !12
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %3
  store i8 0, ptr %25, align 1, !tbaa !11
  br label %28

26:                                               ; preds = %0
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %27, align 8, !tbaa !12
  store i8 0, ptr %5, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %22, %26
  %29 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34, !prof !15

31:                                               ; preds = %28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %32 unwind label %103

32:                                               ; preds = %31
  %33 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 48
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 64
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = getelementptr inbounds i8, ptr %39, i64 -32
  %41 = icmp eq ptr %37, %40
  br i1 %41, label %63, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr %43, ptr %37, align 8, !tbaa !5
  %44 = load ptr, ptr %1, align 8, !tbaa !23
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa !12
  %50 = icmp ult i64 %49, 16
  call void @llvm.assume(i1 %50)
  %51 = add nuw nsw i64 %49, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %43, ptr noundef nonnull align 8 dereferenceable(1) %45, i64 %51, i1 false)
  br label %56

52:                                               ; preds = %42
  store ptr %44, ptr %37, align 8, !tbaa !23
  %53 = load i64, ptr %45, align 8, !tbaa !11
  store i64 %53, ptr %43, align 8, !tbaa !11
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %55 = load i64, ptr %54, align 8, !tbaa !12
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i64 [ %55, %52 ], [ %49, %47 ]
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %59 = icmp ult i64 %57, 9223372036854775807
  call void @llvm.assume(i1 %59)
  %60 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 %57, ptr %60, align 8, !tbaa !12
  store ptr %45, ptr %1, align 8, !tbaa !23
  store i64 0, ptr %58, align 8, !tbaa !12
  store i8 0, ptr %45, align 8, !tbaa !11
  %61 = load ptr, ptr %36, align 8, !tbaa !16
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 32
  store ptr %62, ptr %36, align 8, !tbaa !16
  br label %66

63:                                               ; preds = %34
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %64 unwind label %103

64:                                               ; preds = %63
  %65 = load ptr, ptr %36, align 8, !tbaa !24, !noalias !49
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi ptr [ %62, %56 ], [ %65, %64 ]
  %68 = getelementptr inbounds nuw i8, ptr %35, i64 56
  %69 = load ptr, ptr %68, align 8, !tbaa !28, !noalias !49
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = getelementptr inbounds nuw i8, ptr %35, i64 72
  %73 = load ptr, ptr %72, align 8, !tbaa !29, !noalias !49
  %74 = getelementptr inbounds i8, ptr %73, i64 -8
  %75 = load ptr, ptr %74, align 8, !tbaa !30
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 512
  br label %77

77:                                               ; preds = %71, %66
  %78 = phi ptr [ %76, %71 ], [ %67, %66 ]
  %79 = getelementptr inbounds i8, ptr %78, i64 -32
  %80 = load ptr, ptr %79, align 8, !tbaa !23
  %81 = load ptr, ptr %1, align 8, !tbaa !23
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %83 = icmp eq ptr %81, %82
  br i1 %4, label %92, label %84

84:                                               ; preds = %77
  br i1 %83, label %85, label %89

85:                                               ; preds = %84
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %87 = load i64, ptr %86, align 8, !tbaa !12
  %88 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %88)
  br label %100

89:                                               ; preds = %84
  %90 = load i64, ptr %82, align 8, !tbaa !11
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %81, i64 noundef %91) #24
  br label %100

92:                                               ; preds = %77
  br i1 %83, label %93, label %97

93:                                               ; preds = %92
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %95 = load i64, ptr %94, align 8, !tbaa !12
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  br label %100

97:                                               ; preds = %92
  %98 = load i64, ptr %82, align 8, !tbaa !11
  %99 = add i64 %98, 1
  call void @_ZdlPvm(ptr noundef %81, i64 noundef %99) #24
  br label %100

100:                                              ; preds = %97, %93, %89, %85
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 4096) #24
  ret ptr %80

101:                                              ; preds = %10, %12
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %115

103:                                              ; preds = %63, %31
  %104 = landingpad { ptr, i32 }
          cleanup
  %105 = load ptr, ptr %1, align 8, !tbaa !23
  %106 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %110 = load i64, ptr %109, align 8, !tbaa !12
  %111 = icmp ult i64 %110, 16
  call void @llvm.assume(i1 %111)
  br label %115

112:                                              ; preds = %103
  %113 = load i64, ptr %106, align 8, !tbaa !11
  %114 = add i64 %113, 1
  call void @_ZdlPvm(ptr noundef %105, i64 noundef %114) #24
  br label %115

115:                                              ; preds = %108, %112, %101
  %116 = phi { ptr, i32 } [ %102, %101 ], [ %104, %112 ], [ %104, %108 ]
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 4096) #24
  resume { ptr, i32 } %116
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2452_5_1022sys__native_process_idEv() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @getpid() #5
  ret i32 %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 0) i32 @_ZN32__apollo_inline_inline_2452_5_1021sys__native_cpu_countEv() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #5
  %2 = tail call noundef i32 @llvm.umax.i32(i32 %1, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1021sys__native_host_nameEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib9host_nameEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib9host_nameEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"struct.std::array", align 1
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %1, i8 0, i64 256, i1 false)
  %4 = call i32 @gethostname(ptr noundef nonnull %1, i64 noundef 256) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %68

6:                                                ; preds = %0
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %7, ptr %2, align 8, !tbaa !5
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
  store ptr %15, ptr %2, align 8, !tbaa !23
  store i64 %8, ptr %7, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %15, %13 ], [ %7, %6 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %1, align 1, !tbaa !11
  store i8 %19, ptr %17, align 1, !tbaa !11
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %1, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !12
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !11
  %24 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %29, !prof !15

26:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %27 unwind label %151

27:                                               ; preds = %26
  %28 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %29

29:                                               ; preds = %27, %21
  %30 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 64
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = getelementptr inbounds i8, ptr %34, i64 -32
  %36 = icmp eq ptr %32, %35
  br i1 %36, label %54, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %38, ptr %32, align 8, !tbaa !5
  %39 = load ptr, ptr %2, align 8, !tbaa !23
  %40 = icmp eq ptr %39, %7
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, ptr %22, align 8, !tbaa !12
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %38, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %44, i1 false)
  br label %48

45:                                               ; preds = %37
  store ptr %39, ptr %32, align 8, !tbaa !23
  %46 = load i64, ptr %7, align 8, !tbaa !11
  store i64 %46, ptr %38, align 8, !tbaa !11
  %47 = load i64, ptr %22, align 8, !tbaa !12
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i64 [ %47, %45 ], [ %42, %41 ]
  %50 = icmp ult i64 %49, 9223372036854775807
  call void @llvm.assume(i1 %50)
  %51 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %49, ptr %51, align 8, !tbaa !12
  store ptr %7, ptr %2, align 8, !tbaa !23
  store i64 0, ptr %22, align 8, !tbaa !12
  store i8 0, ptr %7, align 8, !tbaa !11
  %52 = load ptr, ptr %31, align 8, !tbaa !16
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 32
  store ptr %53, ptr %31, align 8, !tbaa !16
  br label %57

54:                                               ; preds = %29
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %30, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %55 unwind label %151

55:                                               ; preds = %54
  %56 = load ptr, ptr %31, align 8, !tbaa !24, !noalias !52
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi ptr [ %53, %48 ], [ %56, %55 ]
  %59 = getelementptr inbounds nuw i8, ptr %30, i64 56
  %60 = load ptr, ptr %59, align 8, !tbaa !28, !noalias !52
  %61 = icmp eq ptr %58, %60
  br i1 %61, label %62, label %127

62:                                               ; preds = %57
  %63 = getelementptr inbounds nuw i8, ptr %30, i64 72
  %64 = load ptr, ptr %63, align 8, !tbaa !29, !noalias !52
  %65 = getelementptr inbounds i8, ptr %64, i64 -8
  %66 = load ptr, ptr %65, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 512
  br label %127

68:                                               ; preds = %0
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %69, ptr %3, align 8, !tbaa !5
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %70, align 8, !tbaa !12
  store i8 0, ptr %69, align 8, !tbaa !11
  %71 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %76, !prof !15

73:                                               ; preds = %68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %74 unwind label %141

74:                                               ; preds = %73
  %75 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %76

76:                                               ; preds = %74, %68
  %77 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 48
  %79 = load ptr, ptr %78, align 8, !tbaa !16
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 64
  %81 = load ptr, ptr %80, align 8, !tbaa !22
  %82 = getelementptr inbounds i8, ptr %81, i64 -32
  %83 = icmp eq ptr %79, %82
  br i1 %83, label %101, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds nuw i8, ptr %79, i64 16
  store ptr %85, ptr %79, align 8, !tbaa !5
  %86 = load ptr, ptr %3, align 8, !tbaa !23
  %87 = icmp eq ptr %86, %69
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, ptr %70, align 8, !tbaa !12
  %90 = icmp ult i64 %89, 16
  call void @llvm.assume(i1 %90)
  %91 = add nuw nsw i64 %89, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %85, ptr noundef nonnull align 8 dereferenceable(1) %69, i64 %91, i1 false)
  br label %95

92:                                               ; preds = %84
  store ptr %86, ptr %79, align 8, !tbaa !23
  %93 = load i64, ptr %69, align 8, !tbaa !11
  store i64 %93, ptr %85, align 8, !tbaa !11
  %94 = load i64, ptr %70, align 8, !tbaa !12
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i64 [ %94, %92 ], [ %89, %88 ]
  %97 = icmp ult i64 %96, 9223372036854775807
  call void @llvm.assume(i1 %97)
  %98 = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i64 %96, ptr %98, align 8, !tbaa !12
  store ptr %69, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %70, align 8, !tbaa !12
  store i8 0, ptr %69, align 8, !tbaa !11
  %99 = load ptr, ptr %78, align 8, !tbaa !16
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 32
  store ptr %100, ptr %78, align 8, !tbaa !16
  br label %104

101:                                              ; preds = %76
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %77, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %102 unwind label %141

102:                                              ; preds = %101
  %103 = load ptr, ptr %78, align 8, !tbaa !24, !noalias !55
  br label %104

104:                                              ; preds = %102, %95
  %105 = phi ptr [ %100, %95 ], [ %103, %102 ]
  %106 = getelementptr inbounds nuw i8, ptr %77, i64 56
  %107 = load ptr, ptr %106, align 8, !tbaa !28, !noalias !55
  %108 = icmp eq ptr %105, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = getelementptr inbounds nuw i8, ptr %77, i64 72
  %111 = load ptr, ptr %110, align 8, !tbaa !29, !noalias !55
  %112 = getelementptr inbounds i8, ptr %111, i64 -8
  %113 = load ptr, ptr %112, align 8, !tbaa !30
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 512
  br label %115

115:                                              ; preds = %104, %109
  %116 = phi ptr [ %114, %109 ], [ %105, %104 ]
  %117 = getelementptr inbounds i8, ptr %116, i64 -32
  %118 = load ptr, ptr %117, align 8, !tbaa !23
  %119 = load ptr, ptr %3, align 8, !tbaa !23
  %120 = icmp eq ptr %119, %69
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i64, ptr %70, align 8, !tbaa !12
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  br label %139

124:                                              ; preds = %115
  %125 = load i64, ptr %69, align 8, !tbaa !11
  %126 = add i64 %125, 1
  call void @_ZdlPvm(ptr noundef %119, i64 noundef %126) #24
  br label %139

127:                                              ; preds = %62, %57
  %128 = phi ptr [ %67, %62 ], [ %58, %57 ]
  %129 = getelementptr inbounds i8, ptr %128, i64 -32
  %130 = load ptr, ptr %129, align 8, !tbaa !23
  %131 = load ptr, ptr %2, align 8, !tbaa !23
  %132 = icmp eq ptr %131, %7
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i64, ptr %22, align 8, !tbaa !12
  %135 = icmp ult i64 %134, 16
  call void @llvm.assume(i1 %135)
  br label %139

136:                                              ; preds = %127
  %137 = load i64, ptr %7, align 8, !tbaa !11
  %138 = add i64 %137, 1
  call void @_ZdlPvm(ptr noundef %131, i64 noundef %138) #24
  br label %139

139:                                              ; preds = %136, %133, %124, %121
  %140 = phi ptr [ %118, %121 ], [ %118, %124 ], [ %130, %133 ], [ %130, %136 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #5
  ret ptr %140

141:                                              ; preds = %101, %73
  %142 = landingpad { ptr, i32 }
          cleanup
  %143 = load ptr, ptr %3, align 8, !tbaa !23
  %144 = icmp eq ptr %143, %69
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i64, ptr %70, align 8, !tbaa !12
  %147 = icmp ult i64 %146, 16
  call void @llvm.assume(i1 %147)
  br label %161

148:                                              ; preds = %141
  %149 = load i64, ptr %69, align 8, !tbaa !11
  %150 = add i64 %149, 1
  call void @_ZdlPvm(ptr noundef %143, i64 noundef %150) #24
  br label %161

151:                                              ; preds = %54, %26
  %152 = landingpad { ptr, i32 }
          cleanup
  %153 = load ptr, ptr %2, align 8, !tbaa !23
  %154 = icmp eq ptr %153, %7
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i64, ptr %22, align 8, !tbaa !12
  %157 = icmp ult i64 %156, 16
  call void @llvm.assume(i1 %157)
  br label %161

158:                                              ; preds = %151
  %159 = load i64, ptr %7, align 8, !tbaa !11
  %160 = add i64 %159, 1
  call void @_ZdlPvm(ptr noundef %153, i64 noundef %160) #24
  br label %161

161:                                              ; preds = %158, %155, %148, %145
  %162 = phi { ptr, i32 } [ %142, %148 ], [ %142, %145 ], [ %152, %158 ], [ %152, %155 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #5
  resume { ptr, i32 } %162
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2452_5_1020sys__native_temp_dirEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib8temp_dirEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib8temp_dirEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  invoke void @_ZNSt10filesystem19temp_directory_pathB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %2)
          to label %5 unwind label %102

5:                                                ; preds = %0
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %6 = load ptr, ptr %2, align 8, !tbaa !23, !noalias !64
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !12, !noalias !64
  %9 = icmp ult i64 %8, 9223372036854775807
  call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %10, ptr %1, align 8, !tbaa !5, !alias.scope !64
  %11 = icmp eq ptr %6, null
  %12 = icmp ne i64 %8, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %15 unwind label %104

15:                                               ; preds = %14
  unreachable

16:                                               ; preds = %5
  %17 = icmp samesign ugt i64 %8, 15
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = add nuw nsw i64 %8, 1
  %20 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #26
          to label %21 unwind label %104

21:                                               ; preds = %18
  store ptr %20, ptr %1, align 8, !tbaa !23, !alias.scope !64
  store i64 %8, ptr %10, align 8, !tbaa !11, !alias.scope !64
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi ptr [ %20, %21 ], [ %10, %16 ]
  switch i64 %8, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, ptr %6, align 1, !tbaa !11
  store i8 %25, ptr %23, align 1, !tbaa !11
  br label %27

26:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr align 1 %6, i64 %8, i1 false)
  br label %27

27:                                               ; preds = %26, %24, %22
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %8, ptr %28, align 8, !tbaa !12, !alias.scope !64
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 %8
  store i8 0, ptr %29, align 1, !tbaa !11
  %30 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35, !prof !15

32:                                               ; preds = %27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %33 unwind label %106

33:                                               ; preds = %32
  %34 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %35

35:                                               ; preds = %33, %27
  %36 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 48
  %38 = load ptr, ptr %37, align 8, !tbaa !16
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = getelementptr inbounds i8, ptr %40, i64 -32
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %44, ptr %38, align 8, !tbaa !5
  %45 = load ptr, ptr %1, align 8, !tbaa !23
  %46 = icmp eq ptr %45, %10
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, ptr %28, align 8, !tbaa !12
  %49 = icmp ult i64 %48, 16
  call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %44, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %50, i1 false)
  br label %54

51:                                               ; preds = %43
  store ptr %45, ptr %38, align 8, !tbaa !23
  %52 = load i64, ptr %10, align 8, !tbaa !11
  store i64 %52, ptr %44, align 8, !tbaa !11
  %53 = load i64, ptr %28, align 8, !tbaa !12
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i64 [ %53, %51 ], [ %48, %47 ]
  %56 = icmp ult i64 %55, 9223372036854775807
  call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %55, ptr %57, align 8, !tbaa !12
  store ptr %10, ptr %1, align 8, !tbaa !23
  store i64 0, ptr %28, align 8, !tbaa !12
  store i8 0, ptr %10, align 8, !tbaa !11
  %58 = load ptr, ptr %37, align 8, !tbaa !16
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 32
  store ptr %59, ptr %37, align 8, !tbaa !16
  br label %63

60:                                               ; preds = %35
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %61 unwind label %106

61:                                               ; preds = %60
  %62 = load ptr, ptr %37, align 8, !tbaa !24, !noalias !65
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi ptr [ %59, %54 ], [ %62, %61 ]
  %65 = getelementptr inbounds nuw i8, ptr %36, i64 56
  %66 = load ptr, ptr %65, align 8, !tbaa !28, !noalias !65
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds nuw i8, ptr %36, i64 72
  %70 = load ptr, ptr %69, align 8, !tbaa !29, !noalias !65
  %71 = getelementptr inbounds i8, ptr %70, i64 -8
  %72 = load ptr, ptr %71, align 8, !tbaa !30
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 512
  br label %74

74:                                               ; preds = %68, %63
  %75 = phi ptr [ %73, %68 ], [ %64, %63 ]
  %76 = getelementptr inbounds i8, ptr %75, i64 -32
  %77 = load ptr, ptr %76, align 8, !tbaa !23
  %78 = load ptr, ptr %1, align 8, !tbaa !23
  %79 = icmp eq ptr %78, %10
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i64, ptr %28, align 8, !tbaa !12
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %86

83:                                               ; preds = %74
  %84 = load i64, ptr %10, align 8, !tbaa !11
  %85 = add i64 %84, 1
  call void @_ZdlPvm(ptr noundef %78, i64 noundef %85) #24
  br label %86

86:                                               ; preds = %80, %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef nonnull %88) #5
  br label %91

91:                                               ; preds = %90, %86
  store ptr null, ptr %87, align 8, !tbaa !47
  %92 = load ptr, ptr %2, align 8, !tbaa !23
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, ptr %7, align 8, !tbaa !12
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %101

98:                                               ; preds = %91
  %99 = load i64, ptr %93, align 8, !tbaa !11
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %92, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %95, %98
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  br label %152

102:                                              ; preds = %0
  %103 = landingpad { ptr, i32 }
          catch ptr null
  br label %118

104:                                              ; preds = %18, %14
  %105 = landingpad { ptr, i32 }
          catch ptr null
  br label %116

106:                                              ; preds = %60, %32
  %107 = landingpad { ptr, i32 }
          catch ptr null
  %108 = load ptr, ptr %1, align 8, !tbaa !23
  %109 = icmp eq ptr %108, %10
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, ptr %28, align 8, !tbaa !12
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %116

113:                                              ; preds = %106
  %114 = load i64, ptr %10, align 8, !tbaa !11
  %115 = add i64 %114, 1
  call void @_ZdlPvm(ptr noundef %108, i64 noundef %115) #24
  br label %116

116:                                              ; preds = %113, %110, %104
  %117 = phi { ptr, i32 } [ %105, %104 ], [ %107, %110 ], [ %107, %113 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #5
  br label %118

118:                                              ; preds = %116, %102
  %119 = phi { ptr, i32 } [ %117, %116 ], [ %103, %102 ]
  %120 = extractvalue { ptr, i32 } %119, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %121 = call ptr @__cxa_begin_catch(ptr %120) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %122 unwind label %136

122:                                              ; preds = %118
  %123 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %3)
          to label %124 unwind label %138

124:                                              ; preds = %122
  %125 = load ptr, ptr %3, align 8, !tbaa !23
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %130 = load i64, ptr %129, align 8, !tbaa !12
  %131 = icmp ult i64 %130, 16
  call void @llvm.assume(i1 %131)
  br label %135

132:                                              ; preds = %124
  %133 = load i64, ptr %126, align 8, !tbaa !11
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %125, i64 noundef %134) #24
  br label %135

135:                                              ; preds = %128, %132
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @__cxa_end_catch()
  br label %152

136:                                              ; preds = %118
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %150

138:                                              ; preds = %122
  %139 = landingpad { ptr, i32 }
          cleanup
  %140 = load ptr, ptr %3, align 8, !tbaa !23
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %145 = load i64, ptr %144, align 8, !tbaa !12
  %146 = icmp ult i64 %145, 16
  call void @llvm.assume(i1 %146)
  br label %150

147:                                              ; preds = %138
  %148 = load i64, ptr %141, align 8, !tbaa !11
  %149 = add i64 %148, 1
  call void @_ZdlPvm(ptr noundef %140, i64 noundef %149) #24
  br label %150

150:                                              ; preds = %147, %143, %136
  %151 = phi { ptr, i32 } [ %137, %136 ], [ %139, %143 ], [ %139, %147 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  invoke void @__cxa_end_catch()
          to label %154 unwind label %155

152:                                              ; preds = %135, %101
  %153 = phi ptr [ %77, %101 ], [ %123, %135 ]
  ret ptr %153

154:                                              ; preds = %150
  resume { ptr, i32 } %151

155:                                              ; preds = %150
  %156 = landingpad { ptr, i32 }
          catch ptr null
  %157 = extractvalue { ptr, i32 } %156, 0
  call void @__clang_call_terminate(ptr %157) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #5
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %13 unwind label %145

13:                                               ; preds = %4
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %15 unwind label %147

15:                                               ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %17) #5
  br label %20

20:                                               ; preds = %19, %15
  store ptr null, ptr %16, align 8, !tbaa !47
  %21 = load ptr, ptr %8, align 8, !tbaa !23
  %22 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !12
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %31

28:                                               ; preds = %20
  %29 = load i64, ptr %22, align 8, !tbaa !11
  %30 = add i64 %29, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %30) #24
  br label %31

31:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #5
  invoke void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %10, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %32 unwind label %151

32:                                               ; preds = %31
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %33 = load ptr, ptr %10, align 8, !tbaa !23, !noalias !74
  %34 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %35 = load i64, ptr %34, align 8, !tbaa !12, !noalias !74
  %36 = icmp ult i64 %35, 9223372036854775807
  call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %37, ptr %9, align 8, !tbaa !5, !alias.scope !74
  %38 = icmp eq ptr %33, null
  %39 = icmp ne i64 %35, 0
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %42 unwind label %153

42:                                               ; preds = %41
  unreachable

43:                                               ; preds = %32
  %44 = icmp samesign ugt i64 %35, 15
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = add nuw nsw i64 %35, 1
  %47 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %46) #26
          to label %48 unwind label %153

48:                                               ; preds = %45
  store ptr %47, ptr %9, align 8, !tbaa !23, !alias.scope !74
  store i64 %35, ptr %37, align 8, !tbaa !11, !alias.scope !74
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi ptr [ %47, %48 ], [ %37, %43 ]
  switch i64 %35, label %53 [
    i64 1, label %51
    i64 0, label %54
  ]

51:                                               ; preds = %49
  %52 = load i8, ptr %33, align 1, !tbaa !11
  store i8 %52, ptr %50, align 1, !tbaa !11
  br label %54

53:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %50, ptr align 1 %33, i64 %35, i1 false)
  br label %54

54:                                               ; preds = %53, %51, %49
  %55 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %35, ptr %55, align 8, !tbaa !12, !alias.scope !74
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 %35
  store i8 0, ptr %56, align 1, !tbaa !11
  %57 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62, !prof !15

59:                                               ; preds = %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %60 unwind label %155

60:                                               ; preds = %59
  %61 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 48
  %65 = load ptr, ptr %64, align 8, !tbaa !16
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = getelementptr inbounds i8, ptr %67, i64 -32
  %69 = icmp eq ptr %65, %68
  br i1 %69, label %87, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 16
  store ptr %71, ptr %65, align 8, !tbaa !5
  %72 = load ptr, ptr %9, align 8, !tbaa !23
  %73 = icmp eq ptr %72, %37
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i64, ptr %55, align 8, !tbaa !12
  %76 = icmp ult i64 %75, 16
  call void @llvm.assume(i1 %76)
  %77 = add nuw nsw i64 %75, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, ptr noundef nonnull align 8 dereferenceable(1) %37, i64 %77, i1 false)
  br label %81

78:                                               ; preds = %70
  store ptr %72, ptr %65, align 8, !tbaa !23
  %79 = load i64, ptr %37, align 8, !tbaa !11
  store i64 %79, ptr %71, align 8, !tbaa !11
  %80 = load i64, ptr %55, align 8, !tbaa !12
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i64 [ %80, %78 ], [ %75, %74 ]
  %83 = icmp ult i64 %82, 9223372036854775807
  call void @llvm.assume(i1 %83)
  %84 = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %82, ptr %84, align 8, !tbaa !12
  store ptr %37, ptr %9, align 8, !tbaa !23
  store i64 0, ptr %55, align 8, !tbaa !12
  store i8 0, ptr %37, align 8, !tbaa !11
  %85 = load ptr, ptr %64, align 8, !tbaa !16
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  store ptr %86, ptr %64, align 8, !tbaa !16
  br label %90

87:                                               ; preds = %62
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %63, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %88 unwind label %155

88:                                               ; preds = %87
  %89 = load ptr, ptr %64, align 8, !tbaa !24, !noalias !75
  br label %90

90:                                               ; preds = %88, %81
  %91 = phi ptr [ %86, %81 ], [ %89, %88 ]
  %92 = getelementptr inbounds nuw i8, ptr %63, i64 56
  %93 = load ptr, ptr %92, align 8, !tbaa !28, !noalias !75
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = getelementptr inbounds nuw i8, ptr %63, i64 72
  %97 = load ptr, ptr %96, align 8, !tbaa !29, !noalias !75
  %98 = getelementptr inbounds i8, ptr %97, i64 -8
  %99 = load ptr, ptr %98, align 8, !tbaa !30
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 512
  br label %101

101:                                              ; preds = %95, %90
  %102 = phi ptr [ %100, %95 ], [ %91, %90 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 -32
  %104 = load ptr, ptr %103, align 8, !tbaa !23
  %105 = load ptr, ptr %9, align 8, !tbaa !23
  %106 = icmp eq ptr %105, %37
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i64, ptr %55, align 8, !tbaa !12
  %109 = icmp ult i64 %108, 16
  call void @llvm.assume(i1 %109)
  br label %113

110:                                              ; preds = %101
  %111 = load i64, ptr %37, align 8, !tbaa !11
  %112 = add i64 %111, 1
  call void @_ZdlPvm(ptr noundef %105, i64 noundef %112) #24
  br label %113

113:                                              ; preds = %107, %110
  %114 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %115 = load ptr, ptr %114, align 8, !tbaa !47
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef nonnull %115) #5
  br label %118

118:                                              ; preds = %117, %113
  store ptr null, ptr %114, align 8, !tbaa !47
  %119 = load ptr, ptr %10, align 8, !tbaa !23
  %120 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i64, ptr %34, align 8, !tbaa !12
  %124 = icmp ult i64 %123, 16
  call void @llvm.assume(i1 %124)
  br label %128

125:                                              ; preds = %118
  %126 = load i64, ptr %120, align 8, !tbaa !11
  %127 = add i64 %126, 1
  call void @_ZdlPvm(ptr noundef %119, i64 noundef %127) #24
  br label %128

128:                                              ; preds = %122, %125
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #5
  %129 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %130 = load ptr, ptr %129, align 8, !tbaa !47
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %129, ptr noundef nonnull %130) #5
  br label %133

133:                                              ; preds = %132, %128
  store ptr null, ptr %129, align 8, !tbaa !47
  %134 = load ptr, ptr %7, align 8, !tbaa !23
  %135 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %139 = load i64, ptr %138, align 8, !tbaa !12
  %140 = icmp ult i64 %139, 16
  call void @llvm.assume(i1 %140)
  br label %144

141:                                              ; preds = %133
  %142 = load i64, ptr %135, align 8, !tbaa !11
  %143 = add i64 %142, 1
  call void @_ZdlPvm(ptr noundef %134, i64 noundef %143) #24
  br label %144

144:                                              ; preds = %137, %141
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5
  ret ptr %104

145:                                              ; preds = %4
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %149

147:                                              ; preds = %13
  %148 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #5
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi { ptr, i32 } [ %148, %147 ], [ %146, %145 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #5
  br label %169

151:                                              ; preds = %31
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %167

153:                                              ; preds = %45, %41
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %165

155:                                              ; preds = %87, %59
  %156 = landingpad { ptr, i32 }
          cleanup
  %157 = load ptr, ptr %9, align 8, !tbaa !23
  %158 = icmp eq ptr %157, %37
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i64, ptr %55, align 8, !tbaa !12
  %161 = icmp ult i64 %160, 16
  call void @llvm.assume(i1 %161)
  br label %165

162:                                              ; preds = %155
  %163 = load i64, ptr %37, align 8, !tbaa !11
  %164 = add i64 %163, 1
  call void @_ZdlPvm(ptr noundef %157, i64 noundef %164) #24
  br label %165

165:                                              ; preds = %162, %159, %153
  %166 = phi { ptr, i32 } [ %154, %153 ], [ %156, %159 ], [ %156, %162 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #5
  br label %167

167:                                              ; preds = %165, %151
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #5
  br label %169

169:                                              ; preds = %167, %149
  %170 = phi { ptr, i32 } [ %168, %167 ], [ %150, %149 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5
  resume { ptr, i32 } %170
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  store i64 %7, ptr %2, align 8, !tbaa !78
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %10, ptr %11, align 8, !tbaa !80
  br label %12

12:                                               ; preds = %15, %4
  %13 = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call ptr @__errno_location() #28
  %17 = load i32, ptr %16, align 4, !tbaa !81
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %12, label %19, !llvm.loop !83

19:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  br label %20

20:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_host_is_windows() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_path_separator() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib14path_separatorEv()
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_exe_suffix() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib10exe_suffixEv()
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_env_remove(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
  %2 = tail call noundef i32 @_ZN32__apollo_inline_inline_2452_5_1022sys__native_env_removeEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_current_dir() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib11current_dirEv()
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_set_current_dir(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call noundef i32 @_ZN32__apollo_inline_inline_2452_5_1027sys__native_set_current_dirEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_executable_path() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib15executable_pathEv()
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @sys__native_process_id() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @getpid() #5
  ret i32 %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 0) i32 @sys__native_cpu_count() local_unnamed_addr #3 {
  %1 = tail call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #5
  %2 = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %1, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_host_name() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib9host_nameEv()
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_temp_dir() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib8temp_dirEv()
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %2 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !15

4:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
  %5 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = getelementptr inbounds i8, ptr %11, i64 -32
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %33, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %15, ptr %9, align 8, !tbaa !5
  %16 = load ptr, ptr %0, align 8, !tbaa !23
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !12
  %22 = icmp ult i64 %21, 16
  tail call void @llvm.assume(i1 %22)
  %23 = add nuw nsw i64 %21, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %23, i1 false)
  br label %26

24:                                               ; preds = %14
  store ptr %16, ptr %9, align 8, !tbaa !23
  %25 = load i64, ptr %17, align 8, !tbaa !11
  store i64 %25, ptr %15, align 8, !tbaa !11
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !12
  %29 = icmp ult i64 %28, 9223372036854775807
  tail call void @llvm.assume(i1 %29)
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %28, ptr %30, align 8, !tbaa !12
  store ptr %17, ptr %0, align 8, !tbaa !23
  store i64 0, ptr %27, align 8, !tbaa !12
  store i8 0, ptr %17, align 1, !tbaa !11
  %31 = load ptr, ptr %8, align 8, !tbaa !16
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 32
  store ptr %32, ptr %8, align 8, !tbaa !16
  br label %35

33:                                               ; preds = %6
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %34 = load ptr, ptr %8, align 8, !tbaa !24, !noalias !85
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi ptr [ %32, %26 ], [ %34, %33 ]
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %38 = load ptr, ptr %37, align 8, !tbaa !28, !noalias !85
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %42 = load ptr, ptr %41, align 8, !tbaa !29, !noalias !85
  %43 = getelementptr inbounds i8, ptr %42, i64 -8
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 512
  br label %46

46:                                               ; preds = %35, %40
  %47 = phi ptr [ %45, %40 ], [ %36, %35 ]
  %48 = getelementptr inbounds i8, ptr %47, i64 -32
  %49 = load ptr, ptr %48, align 8, !tbaa !23
  ret ptr %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !5
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
  store ptr %15, ptr %0, align 8, !tbaa !23
  store i64 %8, ptr %4, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %15, %13 ], [ %4, %7 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %1, align 1, !tbaa !11
  store i8 %19, ptr %17, align 1, !tbaa !11
  br label %21

20:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %1, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !12
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !11
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::_Deque_iterator", align 16
  %3 = alloca %"struct.std::_Deque_iterator", align 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !30, !noalias !88
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !30
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !91, !noalias !88
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !91
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !30, !noalias !92
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !30
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !91, !noalias !92
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !91
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
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
  %26 = load ptr, ptr %25, align 8, !tbaa !30
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

; Function Attrs: mustprogress uwtable
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
  store ptr %20, ptr %19, align 8, !tbaa !30
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
  %31 = load ptr, ptr %30, align 8, !tbaa !30
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
  store ptr %15, ptr %52, align 8, !tbaa !29
  %53 = load ptr, ptr %15, align 8, !tbaa !30
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !28
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !102
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !29
  %60 = load ptr, ptr %58, align 8, !tbaa !30
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !28
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !102
  store ptr %53, ptr %51, align 8, !tbaa !103
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !16
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

; Function Attrs: noinline noreturn nounwind uwtable
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !29
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %210
  %11 = load ptr, ptr %4, align 8, !tbaa !29
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %212, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !24
  br i1 %15, label %253, label %214

17:                                               ; preds = %3, %210
  %18 = phi ptr [ %211, %210 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !12
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %17
  %28 = load i64, ptr %21, align 8, !tbaa !11
  %29 = add i64 %28, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #24
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !23
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, ptr %33, align 8, !tbaa !11
  %37 = add i64 %36, 1
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #24
  br label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !12
  %41 = icmp ult i64 %40, 16
  tail call void @llvm.assume(i1 %41)
  br label %42

42:                                               ; preds = %38, %35
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !11
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #24
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 72
  %52 = load i64, ptr %51, align 8, !tbaa !12
  %53 = icmp ult i64 %52, 16
  tail call void @llvm.assume(i1 %53)
  br label %54

54:                                               ; preds = %50, %47
  %55 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !23
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, ptr %57, align 8, !tbaa !11
  %61 = add i64 %60, 1
  tail call void @_ZdlPvm(ptr noundef %56, i64 noundef %61) #24
  br label %66

62:                                               ; preds = %54
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 104
  %64 = load i64, ptr %63, align 8, !tbaa !12
  %65 = icmp ult i64 %64, 16
  tail call void @llvm.assume(i1 %65)
  br label %66

66:                                               ; preds = %62, %59
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %68 = load ptr, ptr %67, align 8, !tbaa !23
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !11
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #24
  br label %78

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 136
  %76 = load i64, ptr %75, align 8, !tbaa !12
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  br label %78

78:                                               ; preds = %74, %71
  %79 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %80 = load ptr, ptr %79, align 8, !tbaa !23
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %81, align 8, !tbaa !11
  %85 = add i64 %84, 1
  tail call void @_ZdlPvm(ptr noundef %80, i64 noundef %85) #24
  br label %90

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 168
  %88 = load i64, ptr %87, align 8, !tbaa !12
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  br label %90

90:                                               ; preds = %86, %83
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %92 = load ptr, ptr %91, align 8, !tbaa !23
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !11
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #24
  br label %102

98:                                               ; preds = %90
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 200
  %100 = load i64, ptr %99, align 8, !tbaa !12
  %101 = icmp ult i64 %100, 16
  tail call void @llvm.assume(i1 %101)
  br label %102

102:                                              ; preds = %98, %95
  %103 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %104 = load ptr, ptr %103, align 8, !tbaa !23
  %105 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i64, ptr %105, align 8, !tbaa !11
  %109 = add i64 %108, 1
  tail call void @_ZdlPvm(ptr noundef %104, i64 noundef %109) #24
  br label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds nuw i8, ptr %19, i64 232
  %112 = load i64, ptr %111, align 8, !tbaa !12
  %113 = icmp ult i64 %112, 16
  tail call void @llvm.assume(i1 %113)
  br label %114

114:                                              ; preds = %110, %107
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %116 = load ptr, ptr %115, align 8, !tbaa !23
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !11
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #24
  br label %126

122:                                              ; preds = %114
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 264
  %124 = load i64, ptr %123, align 8, !tbaa !12
  %125 = icmp ult i64 %124, 16
  tail call void @llvm.assume(i1 %125)
  br label %126

126:                                              ; preds = %122, %119
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %128 = load ptr, ptr %127, align 8, !tbaa !23
  %129 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !11
  %133 = add i64 %132, 1
  tail call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #24
  br label %138

134:                                              ; preds = %126
  %135 = getelementptr inbounds nuw i8, ptr %19, i64 296
  %136 = load i64, ptr %135, align 8, !tbaa !12
  %137 = icmp ult i64 %136, 16
  tail call void @llvm.assume(i1 %137)
  br label %138

138:                                              ; preds = %134, %131
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %140 = load ptr, ptr %139, align 8, !tbaa !23
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !11
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #24
  br label %150

146:                                              ; preds = %138
  %147 = getelementptr inbounds nuw i8, ptr %19, i64 328
  %148 = load i64, ptr %147, align 8, !tbaa !12
  %149 = icmp ult i64 %148, 16
  tail call void @llvm.assume(i1 %149)
  br label %150

150:                                              ; preds = %146, %143
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %152 = load ptr, ptr %151, align 8, !tbaa !23
  %153 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i64, ptr %153, align 8, !tbaa !11
  %157 = add i64 %156, 1
  tail call void @_ZdlPvm(ptr noundef %152, i64 noundef %157) #24
  br label %162

158:                                              ; preds = %150
  %159 = getelementptr inbounds nuw i8, ptr %19, i64 360
  %160 = load i64, ptr %159, align 8, !tbaa !12
  %161 = icmp ult i64 %160, 16
  tail call void @llvm.assume(i1 %161)
  br label %162

162:                                              ; preds = %158, %155
  %163 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %164 = load ptr, ptr %163, align 8, !tbaa !23
  %165 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i64, ptr %165, align 8, !tbaa !11
  %169 = add i64 %168, 1
  tail call void @_ZdlPvm(ptr noundef %164, i64 noundef %169) #24
  br label %174

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 392
  %172 = load i64, ptr %171, align 8, !tbaa !12
  %173 = icmp ult i64 %172, 16
  tail call void @llvm.assume(i1 %173)
  br label %174

174:                                              ; preds = %170, %167
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %176 = load ptr, ptr %175, align 8, !tbaa !23
  %177 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i64, ptr %177, align 8, !tbaa !11
  %181 = add i64 %180, 1
  tail call void @_ZdlPvm(ptr noundef %176, i64 noundef %181) #24
  br label %186

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %19, i64 424
  %184 = load i64, ptr %183, align 8, !tbaa !12
  %185 = icmp ult i64 %184, 16
  tail call void @llvm.assume(i1 %185)
  br label %186

186:                                              ; preds = %182, %179
  %187 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %188 = load ptr, ptr %187, align 8, !tbaa !23
  %189 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i64, ptr %189, align 8, !tbaa !11
  %193 = add i64 %192, 1
  tail call void @_ZdlPvm(ptr noundef %188, i64 noundef %193) #24
  br label %198

194:                                              ; preds = %186
  %195 = getelementptr inbounds nuw i8, ptr %19, i64 456
  %196 = load i64, ptr %195, align 8, !tbaa !12
  %197 = icmp ult i64 %196, 16
  tail call void @llvm.assume(i1 %197)
  br label %198

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %200 = load ptr, ptr %199, align 8, !tbaa !23
  %201 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %202 = icmp eq ptr %200, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = load i64, ptr %201, align 8, !tbaa !11
  %205 = add i64 %204, 1
  tail call void @_ZdlPvm(ptr noundef %200, i64 noundef %205) #24
  br label %210

206:                                              ; preds = %198
  %207 = getelementptr inbounds nuw i8, ptr %19, i64 488
  %208 = load i64, ptr %207, align 8, !tbaa !12
  %209 = icmp ult i64 %208, 16
  tail call void @llvm.assume(i1 %209)
  br label %210

210:                                              ; preds = %206, %203
  %211 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %212 = load ptr, ptr %6, align 8, !tbaa !29
  %213 = icmp ult ptr %211, %212
  br i1 %213, label %17, label %10, !llvm.loop !104

214:                                              ; preds = %12
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %216 = load ptr, ptr %215, align 8, !tbaa !102
  %217 = icmp eq ptr %16, %216
  br i1 %217, label %233, label %218

218:                                              ; preds = %214, %230
  %219 = phi ptr [ %231, %230 ], [ %16, %214 ]
  %220 = load ptr, ptr %219, align 8, !tbaa !23
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 16
  %222 = icmp eq ptr %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 8
  %225 = load i64, ptr %224, align 8, !tbaa !12
  %226 = icmp ult i64 %225, 16
  tail call void @llvm.assume(i1 %226)
  br label %230

227:                                              ; preds = %218
  %228 = load i64, ptr %221, align 8, !tbaa !11
  %229 = add i64 %228, 1
  tail call void @_ZdlPvm(ptr noundef %220, i64 noundef %229) #24
  br label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %232 = icmp eq ptr %231, %216
  br i1 %232, label %233, label %218, !llvm.loop !105

233:                                              ; preds = %230, %214
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !28
  %236 = load ptr, ptr %2, align 8, !tbaa !24
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %271, label %238

238:                                              ; preds = %233, %250
  %239 = phi ptr [ %251, %250 ], [ %235, %233 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !23
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 16
  %242 = icmp eq ptr %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = getelementptr inbounds nuw i8, ptr %239, i64 8
  %245 = load i64, ptr %244, align 8, !tbaa !12
  %246 = icmp ult i64 %245, 16
  tail call void @llvm.assume(i1 %246)
  br label %250

247:                                              ; preds = %238
  %248 = load i64, ptr %241, align 8, !tbaa !11
  %249 = add i64 %248, 1
  tail call void @_ZdlPvm(ptr noundef %240, i64 noundef %249) #24
  br label %250

250:                                              ; preds = %247, %243
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %252 = icmp eq ptr %251, %236
  br i1 %252, label %271, label %238, !llvm.loop !105

253:                                              ; preds = %12
  %254 = load ptr, ptr %2, align 8, !tbaa !24
  %255 = icmp eq ptr %16, %254
  br i1 %255, label %271, label %256

256:                                              ; preds = %253, %268
  %257 = phi ptr [ %269, %268 ], [ %16, %253 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !23
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %260 = icmp eq ptr %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 8
  %263 = load i64, ptr %262, align 8, !tbaa !12
  %264 = icmp ult i64 %263, 16
  tail call void @llvm.assume(i1 %264)
  br label %268

265:                                              ; preds = %256
  %266 = load i64, ptr %259, align 8, !tbaa !11
  %267 = add i64 %266, 1
  tail call void @_ZdlPvm(ptr noundef %258, i64 noundef %267) #24
  br label %268

268:                                              ; preds = %265, %261
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %270 = icmp eq ptr %269, %254
  br i1 %270, label %271, label %256, !llvm.loop !105

271:                                              ; preds = %250, %268, %253, %233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !24
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  %27 = load ptr, ptr %4, align 8, !tbaa !24
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
  store ptr %49, ptr %50, align 8, !tbaa !30
  %51 = load ptr, ptr %3, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !5
  %53 = load ptr, ptr %1, align 8, !tbaa !23
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !12
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !23
  %62 = load i64, ptr %54, align 8, !tbaa !11
  store i64 %62, ptr %52, align 8, !tbaa !11
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !12
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !12
  store ptr %54, ptr %1, align 8, !tbaa !23
  store i64 0, ptr %64, align 8, !tbaa !12
  store i8 0, ptr %54, align 8, !tbaa !11
  %68 = load ptr, ptr %5, align 8, !tbaa !97
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !29
  %70 = load ptr, ptr %69, align 8, !tbaa !30
  store ptr %70, ptr %18, align 8, !tbaa !28
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !102
  store ptr %70, ptr %3, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
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
  %35 = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %35, ptr %24, align 8, !tbaa !30
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
  %48 = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %48, ptr %42, align 8, !tbaa !30
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
  %69 = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %69, ptr %60, align 8, !tbaa !30
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !95
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #24
  store ptr %55, ptr %0, align 8, !tbaa !95
  store i64 %52, ptr %14, align 8, !tbaa !99
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %31 ], [ %24, %32 ], [ %24, %34 ], [ %24, %44 ], [ %24, %45 ], [ %24, %47 ]
  store ptr %74, ptr %6, align 8, !tbaa !29
  %75 = load ptr, ptr %74, align 8, !tbaa !30
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !28
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !102
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !29
  %81 = load ptr, ptr %80, align 8, !tbaa !30
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !28
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #5
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !47
  %7 = load ptr, ptr %0, align 8, !tbaa !23
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !12
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %17

14:                                               ; preds = %6
  %15 = load i64, ptr %8, align 8, !tbaa !11
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %16) #24
  br label %17

17:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #16

declare void @_ZNSt10filesystem12current_pathERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load i64, ptr %1, align 8, !tbaa !108
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !5
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
  store ptr %19, ptr %0, align 8, !tbaa !23
  store i64 %4, ptr %7, align 8, !tbaa !11
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %4, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %6, align 1, !tbaa !11
  store i8 %23, ptr %21, align 1, !tbaa !11
  br label %25

24:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %6, i64 %4, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %26, align 8, !tbaa !12
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %4
  store i8 0, ptr %27, align 1, !tbaa !11
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
  %35 = load ptr, ptr %28, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %35) #5
  br label %38

38:                                               ; preds = %33, %37
  store ptr null, ptr %28, align 8, !tbaa !47
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi { ptr, i32 } [ %34, %38 ], [ %32, %31 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !23
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, ptr %26, align 8, !tbaa !12
  %45 = icmp ult i64 %44, 16
  tail call void @llvm.assume(i1 %45)
  br label %49

46:                                               ; preds = %39
  %47 = load i64, ptr %7, align 8, !tbaa !11
  %48 = add i64 %47, 1
  tail call void @_ZdlPvm(ptr noundef %41, i64 noundef %48) #24
  br label %49

49:                                               ; preds = %46, %43
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin nounwind }
attributes #25 = { cold noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!7 = !{!"p1 omnipotent char", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !14, i64 8, !9, i64 16}
!14 = !{!"long", !9, i64 0}
!15 = !{!"branch_weights", i32 1, i32 1023}
!16 = !{!17, !21, i64 48}
!17 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !18, i64 0, !14, i64 8, !20, i64 16, !20, i64 48}
!18 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0}
!19 = !{!"any p2 pointer", !8, i64 0}
!20 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !21, i64 0, !21, i64 8, !21, i64 16, !18, i64 24}
!21 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0}
!22 = !{!17, !21, i64 64}
!23 = !{!13, !7, i64 0}
!24 = !{!20, !21, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!27 = distinct !{!27, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!28 = !{!20, !21, i64 8}
!29 = !{!20, !18, i64 24}
!30 = !{!21, !21, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!33 = distinct !{!33, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!36 = distinct !{!36, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!39 = distinct !{!39, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!42 = distinct !{!42, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!43 = !{!41, !38}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!46 = distinct !{!46, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !8, i64 0}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!51 = distinct !{!51, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!54 = distinct !{!54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!57 = distinct !{!57, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!60 = distinct !{!60, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!63 = distinct !{!63, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!64 = !{!62, !59}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!67 = distinct !{!67, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!70 = distinct !{!70, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!73 = distinct !{!73, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!74 = !{!72, !69}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!77 = distinct !{!77, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!78 = !{!79, !14, i64 0}
!79 = !{!"_ZTS8timespec", !14, i64 0, !14, i64 8}
!80 = !{!79, !14, i64 8}
!81 = !{!82, !82, i64 0}
!82 = !{!"int", !9, i64 0}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!87 = distinct !{!87, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!90 = distinct !{!90, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!91 = !{!8, !8, i64 0}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!94 = distinct !{!94, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!95 = !{!17, !18, i64 0}
!96 = !{!17, !18, i64 40}
!97 = !{!17, !18, i64 72}
!98 = distinct !{!98, !84}
!99 = !{!17, !14, i64 8}
!100 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!101 = distinct !{!101, !84}
!102 = !{!20, !21, i64 16}
!103 = !{!17, !21, i64 16}
!104 = distinct !{!104, !84}
!105 = distinct !{!105, !84}
!106 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!107 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!108 = !{!14, !14, i64 0}
!109 = !{!7, !7, i64 0}
