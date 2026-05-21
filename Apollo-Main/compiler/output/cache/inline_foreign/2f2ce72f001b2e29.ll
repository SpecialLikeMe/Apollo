; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/2f2ce72f001b2e29.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/2f2ce72f001b2e29.cpp"
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

$_ZN12__apo_stdlib15process_commandEPv = comdat any

$__clang_call_terminate = comdat any

$_ZN12__apo_stdlib14process_handleD2Ev = comdat any

$_ZN12__apo_stdlib14process_handleD0Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZTVN12__apo_stdlib14process_handleE = comdat any

$_ZTIN12__apo_stdlib14process_handleE = comdat any

$_ZTSN12__apo_stdlib14process_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

@.str = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@_ZTVN12__apo_stdlib14process_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib14process_handleE, ptr @_ZN12__apo_stdlib14process_handleD2Ev, ptr @_ZN12__apo_stdlib14process_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib14process_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib14process_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib14process_handleE = linkonce_odr dso_local constant [33 x i8] c"N12__apo_stdlib14process_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.5 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN31__apollo_inline_inline_2298_5_825sys__native_process_spawnEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !12, !alias.scope !9
  br i1 %4, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !16, !alias.scope !9
  store i8 0, ptr %5, align 8, !tbaa !19, !alias.scope !9
  br label %25

8:                                                ; preds = %1
  %9 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !9
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp ugt i64 %9, 9223372036854775806
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

14:                                               ; preds = %11
  %15 = add nuw nsw i64 %9, 1
  %16 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %15) #23
  store ptr %16, ptr %3, align 8, !tbaa !20, !alias.scope !9
  store i64 %9, ptr %5, align 8, !tbaa !19, !alias.scope !9
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi ptr [ %16, %14 ], [ %5, %8 ]
  switch i64 %9, label %21 [
    i64 1, label %19
    i64 0, label %22
  ]

19:                                               ; preds = %17
  %20 = load i8, ptr %0, align 1, !tbaa !19, !noalias !9
  store i8 %20, ptr %18, align 1, !tbaa !19
  br label %22

21:                                               ; preds = %17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr nonnull align 1 %0, i64 %9, i1 false)
  br label %22

22:                                               ; preds = %21, %19, %17
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %9, ptr %23, align 8, !tbaa !16, !alias.scope !9
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 %9
  store i8 0, ptr %24, align 1, !tbaa !19
  br label %25

25:                                               ; preds = %6, %22
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %26 = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23
          to label %27 unwind label %77

27:                                               ; preds = %25
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %29 = load ptr, ptr %3, align 8, !tbaa !20
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !16
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %28, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %35, i1 false)
  br label %40

36:                                               ; preds = %27
  store ptr %29, ptr %2, align 8, !tbaa !20
  %37 = load i64, ptr %5, align 8, !tbaa !19
  store i64 %37, ptr %28, align 8, !tbaa !19
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %39 = load i64, ptr %38, align 8, !tbaa !16
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi ptr [ %28, %31 ], [ %29, %36 ]
  %42 = phi i64 [ %33, %31 ], [ %39, %36 ]
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %44 = icmp ult i64 %42, 9223372036854775807
  call void @llvm.assume(i1 %44)
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %5, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %43, align 8, !tbaa !16
  store i8 0, ptr %5, align 8, !tbaa !19
  %46 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 2, ptr %46, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14process_handleE, i64 16), ptr %26, align 8, !tbaa !24
  %47 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %48 = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %48, ptr %47, align 8, !tbaa !12
  %49 = icmp eq ptr %41, %28
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = icmp samesign ult i64 %42, 16
  call void @llvm.assume(i1 %51)
  %52 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %28, i64 %52, i1 false)
  br label %55

53:                                               ; preds = %40
  store ptr %41, ptr %47, align 8, !tbaa !20
  %54 = load i64, ptr %28, align 8, !tbaa !19
  store i64 %54, ptr %48, align 8, !tbaa !19
  br label %55

55:                                               ; preds = %53, %50
  %56 = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i64 %42, ptr %56, align 8, !tbaa !16
  store ptr %28, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %45, align 8, !tbaa !16
  store i8 0, ptr %28, align 8, !tbaa !19
  %57 = getelementptr inbounds nuw i8, ptr %26, i64 48
  store i32 -1, ptr %57, align 8, !tbaa !26
  %58 = getelementptr inbounds nuw i8, ptr %26, i64 52
  store i8 0, ptr %58, align 4, !tbaa !29
  %59 = getelementptr inbounds nuw i8, ptr %26, i64 56
  store i32 -1, ptr %59, align 8, !tbaa !30
  %60 = call i32 @fork() #16
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 -1, ptr %57, align 8, !tbaa !26
  store i8 1, ptr %58, align 4, !tbaa !29
  br label %70

63:                                               ; preds = %55
  %64 = icmp eq i32 %60, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = load ptr, ptr %47, align 8, !tbaa !20
  %67 = call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %66, ptr noundef null) #16
  invoke void @_exit(i32 noundef 127) #24
          to label %68 unwind label %77

68:                                               ; preds = %65
  unreachable

69:                                               ; preds = %63
  store i32 %60, ptr %59, align 8, !tbaa !30
  br label %70

70:                                               ; preds = %69, %62
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %71 = load ptr, ptr %3, align 8, !tbaa !20
  %72 = icmp eq ptr %71, %5
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i64, ptr %5, align 8, !tbaa !19
  %75 = add i64 %74, 1
  call void @_ZdlPvm(ptr noundef %71, i64 noundef %75) #25
  br label %76

76:                                               ; preds = %70, %73
  ret ptr %26

77:                                               ; preds = %65, %25
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %3, align 8, !tbaa !20
  %80 = icmp eq ptr %79, %5
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i64, ptr %5, align 8, !tbaa !19
  %83 = add i64 %82, 1
  call void @_ZdlPvm(ptr noundef %79, i64 noundef %83) #25
  br label %84

84:                                               ; preds = %77, %81
  resume { ptr, i32 } %78
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2298_5_824sys__native_process_waitEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load i32, ptr %13, align 8, !tbaa !26
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i32, ptr %16, align 8, !tbaa !30
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %20, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %39

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %22 = call i32 @waitpid(i32 noundef %17, ptr noundef nonnull %2, i32 noundef 0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = icmp slt i32 %22, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4, !tbaa !5
  %28 = and i32 %27, 127
  switch i32 %28, label %32 [
    i32 0, label %29
    i32 127, label %34
  ]

29:                                               ; preds = %26
  %30 = lshr i32 %27, 8
  %31 = and i32 %30, 255
  br label %34

32:                                               ; preds = %26
  %33 = or disjoint i32 %28, 128
  br label %34

34:                                               ; preds = %32, %29, %26, %24
  %35 = phi i32 [ %31, %29 ], [ -1, %24 ], [ %33, %32 ], [ -1, %26 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %35, ptr %36, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i32 [ -1, %21 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %39

39:                                               ; preds = %1, %4, %12, %19, %37
  %40 = phi i32 [ %38, %37 ], [ %14, %12 ], [ -1, %19 ], [ -1, %1 ], [ -1, %4 ]
  ret i32 %40
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2298_5_828sys__native_process_try_waitEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load i32, ptr %13, align 8, !tbaa !26
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i32, ptr %16, align 8, !tbaa !30
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %20, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %39

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %22 = call i32 @waitpid(i32 noundef %17, ptr noundef nonnull %2, i32 noundef 1)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = icmp slt i32 %22, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4, !tbaa !5
  %28 = and i32 %27, 127
  switch i32 %28, label %32 [
    i32 0, label %29
    i32 127, label %34
  ]

29:                                               ; preds = %26
  %30 = lshr i32 %27, 8
  %31 = and i32 %30, 255
  br label %34

32:                                               ; preds = %26
  %33 = or disjoint i32 %28, 128
  br label %34

34:                                               ; preds = %32, %29, %26, %24
  %35 = phi i32 [ %31, %29 ], [ -1, %24 ], [ %33, %32 ], [ -1, %26 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %35, ptr %36, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i32 [ -1, %21 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %39

39:                                               ; preds = %1, %4, %12, %19, %37
  %40 = phi i32 [ %38, %37 ], [ %14, %12 ], [ -1, %19 ], [ -1, %1 ], [ -1, %4 ]
  ret i32 %40
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2298_5_829sys__native_process_exit_codeEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load i32, ptr %13, align 8, !tbaa !26
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i32, ptr %16, align 8, !tbaa !30
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %20, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %39

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %22 = call i32 @waitpid(i32 noundef %17, ptr noundef nonnull %2, i32 noundef 0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = icmp slt i32 %22, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4, !tbaa !5
  %28 = and i32 %27, 127
  switch i32 %28, label %32 [
    i32 0, label %29
    i32 127, label %34
  ]

29:                                               ; preds = %26
  %30 = lshr i32 %27, 8
  %31 = and i32 %30, 255
  br label %34

32:                                               ; preds = %26
  %33 = or disjoint i32 %28, 128
  br label %34

34:                                               ; preds = %32, %29, %26, %24
  %35 = phi i32 [ %31, %29 ], [ -1, %24 ], [ %33, %32 ], [ -1, %26 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %35, ptr %36, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i32 [ -1, %21 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %39

39:                                               ; preds = %1, %4, %12, %19, %37
  %40 = phi i32 [ -1, %19 ], [ %38, %37 ], [ %14, %12 ], [ -1, %1 ], [ -1, %4 ]
  ret i32 %40
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2298_5_829sys__native_process_completedEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %17, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %39

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %19 = call i32 @waitpid(i32 noundef %14, ptr noundef nonnull %2, i32 noundef 1)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8, ptr %9, align 4, !tbaa !29, !range !31
  %23 = zext nneg i8 %22 to i32
  br label %37

24:                                               ; preds = %18
  %25 = icmp slt i32 %19, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4, !tbaa !5
  %28 = and i32 %27, 127
  switch i32 %28, label %32 [
    i32 0, label %29
    i32 127, label %34
  ]

29:                                               ; preds = %26
  %30 = lshr i32 %27, 8
  %31 = and i32 %30, 255
  br label %34

32:                                               ; preds = %26
  %33 = or disjoint i32 %28, 128
  br label %34

34:                                               ; preds = %32, %29, %26, %24
  %35 = phi i32 [ %31, %29 ], [ -1, %24 ], [ %33, %32 ], [ -1, %26 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %35, ptr %36, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i32 [ %23, %21 ], [ 1, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %39

39:                                               ; preds = %1, %4, %8, %16, %37
  %40 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 1, %8 ], [ 1, %16 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2298_5_824sys__native_process_killEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %46, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %17, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %46

18:                                               ; preds = %12
  %19 = tail call i32 @kill(i32 noundef %14, i32 noundef 15) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %23 = trunc nuw i8 %22 to i1
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %13, align 8, !tbaa !30
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %28, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %46

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %30 = call i32 @waitpid(i32 noundef %25, ptr noundef nonnull %2, i32 noundef 0)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = icmp slt i32 %30, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %2, align 4, !tbaa !5
  %36 = and i32 %35, 127
  switch i32 %36, label %40 [
    i32 0, label %37
    i32 127, label %42
  ]

37:                                               ; preds = %34
  %38 = lshr i32 %35, 8
  %39 = and i32 %38, 255
  br label %42

40:                                               ; preds = %34
  %41 = or disjoint i32 %36, 128
  br label %42

42:                                               ; preds = %40, %37, %34, %32
  %43 = phi i32 [ %39, %37 ], [ -1, %32 ], [ %41, %40 ], [ -1, %34 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %43, ptr %44, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %45

45:                                               ; preds = %42, %29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %46

46:                                               ; preds = %1, %4, %8, %16, %18, %21, %27, %45
  %47 = phi i32 [ 0, %18 ], [ 1, %45 ], [ 0, %16 ], [ 1, %8 ], [ 0, %4 ], [ 1, %27 ], [ 0, %1 ], [ 1, %21 ]
  ret i32 %47
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2298_5_827sys__native_process_commandEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib15process_commandEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib15process_commandEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8, !tbaa !16
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #23
  store ptr %18, ptr %2, align 8, !tbaa !20
  store i64 %13, ptr %10, align 8, !tbaa !19
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !19
  store i8 %24, ptr %10, align 8, !tbaa !19
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !16
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !12
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !16
  store i8 0, ptr %31, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !33

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !12
  %49 = load ptr, ptr %2, align 8, !tbaa !20
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !16
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !20
  %58 = load i64, ptr %50, align 8, !tbaa !19
  store i64 %58, ptr %48, align 8, !tbaa !19
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !16
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !16
  store ptr %50, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %63, align 8, !tbaa !16
  store i8 0, ptr %50, align 8, !tbaa !19
  %66 = load ptr, ptr %41, align 8, !tbaa !34
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !34
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !41, !noalias !42
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !45, !noalias !42
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !46, !noalias !42
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !47
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !20
  %86 = load ptr, ptr %2, align 8, !tbaa !20
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i64, ptr %87, align 8, !tbaa !19
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #25
  br label %92

92:                                               ; preds = %82, %89
  ret ptr %85

93:                                               ; preds = %68, %36
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = load ptr, ptr %2, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i64, ptr %96, align 8, !tbaa !19
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #25
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_process_spawn(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN31__apollo_inline_inline_2298_5_825sys__native_process_spawnEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local i32 @sys__native_process_wait(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load i32, ptr %13, align 8, !tbaa !26
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i32, ptr %16, align 8, !tbaa !30
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %20, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %39

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %22 = call i32 @waitpid(i32 noundef %17, ptr noundef nonnull %2, i32 noundef 0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = icmp slt i32 %22, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4, !tbaa !5
  %28 = and i32 %27, 127
  switch i32 %28, label %32 [
    i32 0, label %29
    i32 127, label %34
  ]

29:                                               ; preds = %26
  %30 = lshr i32 %27, 8
  %31 = and i32 %30, 255
  br label %34

32:                                               ; preds = %26
  %33 = or disjoint i32 %28, 128
  br label %34

34:                                               ; preds = %32, %29, %26, %24
  %35 = phi i32 [ %31, %29 ], [ -1, %24 ], [ %33, %32 ], [ -1, %26 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %35, ptr %36, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i32 [ -1, %21 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %39

39:                                               ; preds = %1, %4, %12, %19, %37
  %40 = phi i32 [ %38, %37 ], [ %14, %12 ], [ -1, %19 ], [ -1, %1 ], [ -1, %4 ]
  ret i32 %40
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local i32 @sys__native_process_try_wait(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load i32, ptr %13, align 8, !tbaa !26
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i32, ptr %16, align 8, !tbaa !30
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %20, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %39

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %22 = call i32 @waitpid(i32 noundef %17, ptr noundef nonnull %2, i32 noundef 1)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = icmp slt i32 %22, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4, !tbaa !5
  %28 = and i32 %27, 127
  switch i32 %28, label %32 [
    i32 0, label %29
    i32 127, label %34
  ]

29:                                               ; preds = %26
  %30 = lshr i32 %27, 8
  %31 = and i32 %30, 255
  br label %34

32:                                               ; preds = %26
  %33 = or disjoint i32 %28, 128
  br label %34

34:                                               ; preds = %32, %29, %26, %24
  %35 = phi i32 [ %31, %29 ], [ -1, %24 ], [ %33, %32 ], [ -1, %26 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %35, ptr %36, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i32 [ -1, %21 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %39

39:                                               ; preds = %1, %4, %12, %19, %37
  %40 = phi i32 [ %38, %37 ], [ %14, %12 ], [ -1, %19 ], [ -1, %1 ], [ -1, %4 ]
  ret i32 %40
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local i32 @sys__native_process_exit_code(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load i32, ptr %13, align 8, !tbaa !26
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i32, ptr %16, align 8, !tbaa !30
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %20, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %39

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %22 = call i32 @waitpid(i32 noundef %17, ptr noundef nonnull %2, i32 noundef 0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = icmp slt i32 %22, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4, !tbaa !5
  %28 = and i32 %27, 127
  switch i32 %28, label %32 [
    i32 0, label %29
    i32 127, label %34
  ]

29:                                               ; preds = %26
  %30 = lshr i32 %27, 8
  %31 = and i32 %30, 255
  br label %34

32:                                               ; preds = %26
  %33 = or disjoint i32 %28, 128
  br label %34

34:                                               ; preds = %32, %29, %26, %24
  %35 = phi i32 [ %31, %29 ], [ -1, %24 ], [ %33, %32 ], [ -1, %26 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %35, ptr %36, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i32 [ -1, %21 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %39

39:                                               ; preds = %1, %4, %12, %19, %37
  %40 = phi i32 [ -1, %19 ], [ %38, %37 ], [ %14, %12 ], [ -1, %1 ], [ -1, %4 ]
  ret i32 %40
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_process_completed(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %17, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %39

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %19 = call i32 @waitpid(i32 noundef %14, ptr noundef nonnull %2, i32 noundef 1)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8, ptr %9, align 4, !tbaa !29, !range !31
  %23 = zext nneg i8 %22 to i32
  br label %37

24:                                               ; preds = %18
  %25 = icmp slt i32 %19, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %2, align 4, !tbaa !5
  %28 = and i32 %27, 127
  switch i32 %28, label %32 [
    i32 0, label %29
    i32 127, label %34
  ]

29:                                               ; preds = %26
  %30 = lshr i32 %27, 8
  %31 = and i32 %30, 255
  br label %34

32:                                               ; preds = %26
  %33 = or disjoint i32 %28, 128
  br label %34

34:                                               ; preds = %32, %29, %26, %24
  %35 = phi i32 [ %31, %29 ], [ -1, %24 ], [ %33, %32 ], [ -1, %26 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %35, ptr %36, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %37

37:                                               ; preds = %34, %21
  %38 = phi i32 [ %23, %21 ], [ 1, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %39

39:                                               ; preds = %1, %4, %8, %16, %37
  %40 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 1, %8 ], [ 1, %16 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_process_kill(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %10 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %46, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %17, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %46

18:                                               ; preds = %12
  %19 = tail call i32 @kill(i32 noundef %14, i32 noundef 15) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load i8, ptr %9, align 4, !tbaa !29, !range !31, !noundef !32
  %23 = trunc nuw i8 %22 to i1
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %13, align 8, !tbaa !30
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %28, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %46

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !5
  %30 = call i32 @waitpid(i32 noundef %25, ptr noundef nonnull %2, i32 noundef 0)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = icmp slt i32 %30, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %2, align 4, !tbaa !5
  %36 = and i32 %35, 127
  switch i32 %36, label %40 [
    i32 0, label %37
    i32 127, label %42
  ]

37:                                               ; preds = %34
  %38 = lshr i32 %35, 8
  %39 = and i32 %38, 255
  br label %42

40:                                               ; preds = %34
  %41 = or disjoint i32 %36, 128
  br label %42

42:                                               ; preds = %40, %37, %34, %32
  %43 = phi i32 [ %39, %37 ], [ -1, %32 ], [ %41, %40 ], [ -1, %34 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %43, ptr %44, align 8, !tbaa !26
  store i8 1, ptr %9, align 4, !tbaa !29
  br label %45

45:                                               ; preds = %42, %29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %46

46:                                               ; preds = %1, %4, %8, %16, %18, %21, %27, %45
  %47 = phi i32 [ 0, %18 ], [ 1, %45 ], [ 0, %16 ], [ 1, %8 ], [ 0, %4 ], [ 1, %27 ], [ 0, %1 ], [ 1, %21 ]
  ret i32 %47
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_process_command(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib15process_commandEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @execl(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14process_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !19
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #25
  br label %9

9:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14process_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !19
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #25
  br label %9

9:                                                ; preds = %1, %6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !47, !noalias !48
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !47
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !51, !noalias !48
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !51
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !47, !noalias !52
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !47
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !51, !noalias !52
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !51
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !56
  %21 = load ptr, ptr %9, align 8, !tbaa !57
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #25
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !58

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !55
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !60
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #25
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #26
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !60
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !61

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  store ptr %12, ptr %0, align 8, !tbaa !55
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !47
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !62

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #16
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #25
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !58

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #24
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
  tail call void @__clang_call_terminate(ptr %39) #26
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #16
  %44 = load ptr, ptr %0, align 8, !tbaa !55
  %45 = load i64, ptr %6, align 8, !tbaa !60
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #24
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
  store ptr %15, ptr %52, align 8, !tbaa !46
  %53 = load ptr, ptr %15, align 8, !tbaa !47
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !45
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !63
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !46
  %60 = load ptr, ptr %58, align 8, !tbaa !47
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !45
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !63
  store ptr %53, ptr %51, align 8, !tbaa !64
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !34
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #26
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !46
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !41
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !19
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #25
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !19
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #25
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !20
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !19
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #25
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !19
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #25
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !19
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #25
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !20
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !19
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #25
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !20
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !19
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #25
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !20
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !19
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #25
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !20
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !19
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #25
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !20
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !19
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #25
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !20
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !19
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #25
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !20
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !19
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #25
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !20
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !19
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #25
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !20
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !19
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #25
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !20
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !19
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #25
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !20
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !19
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #25
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !46
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !65

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !63
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !20
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !19
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #25
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !66

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !45
  %168 = load ptr, ptr %2, align 8, !tbaa !41
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !20
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !19
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #25
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !66

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !41
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !20
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !19
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #25
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !66

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !41
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = load ptr, ptr %4, align 8, !tbaa !41
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #22
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !60
  %39 = load ptr, ptr %0, align 8, !tbaa !55
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !57
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !47
  %51 = load ptr, ptr %3, align 8, !tbaa !34
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !12
  %53 = load ptr, ptr %1, align 8, !tbaa !20
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !16
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !20
  %62 = load i64, ptr %54, align 8, !tbaa !19
  store i64 %62, ptr %52, align 8, !tbaa !19
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !16
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !16
  store ptr %54, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %64, align 8, !tbaa !16
  store i8 0, ptr %54, align 8, !tbaa !19
  %68 = load ptr, ptr %5, align 8, !tbaa !57
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !46
  %70 = load ptr, ptr %69, align 8, !tbaa !47
  store ptr %70, ptr %18, align 8, !tbaa !45
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !63
  store ptr %70, ptr %3, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !60
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !55
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
  br i1 %30, label %31, label %32, !prof !67

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !47
  store ptr %35, ptr %24, align 8, !tbaa !47
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !68

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !47
  store ptr %48, ptr %42, align 8, !tbaa !47
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #23
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !67

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !47
  store ptr %69, ptr %60, align 8, !tbaa !47
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !55
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #25
  store ptr %55, ptr %0, align 8, !tbaa !55
  store i64 %52, ptr %14, align 8, !tbaa !60
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !46
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !45
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !63
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !46
  %81 = load ptr, ptr %80, align 8, !tbaa !47
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !45
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

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
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!11 = distinct !{!11, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !18, i64 8, !7, i64 16}
!18 = !{!"long", !7, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!17, !14, i64 0}
!21 = !{!22, !23, i64 8}
!22 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !23, i64 8}
!23 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{!27, !6, i64 48}
!27 = !{!"_ZTSN12__apo_stdlib14process_handleE", !22, i64 0, !17, i64 16, !6, i64 48, !28, i64 52, !6, i64 56}
!28 = !{!"bool", !7, i64 0}
!29 = !{!27, !28, i64 52}
!30 = !{!27, !6, i64 56}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"branch_weights", i32 1, i32 1023}
!34 = !{!35, !39, i64 48}
!35 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !36, i64 0, !18, i64 8, !38, i64 16, !38, i64 48}
!36 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0}
!37 = !{!"any p2 pointer", !15, i64 0}
!38 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !39, i64 0, !39, i64 8, !39, i64 16, !36, i64 24}
!39 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!40 = !{!35, !39, i64 64}
!41 = !{!38, !39, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!44 = distinct !{!44, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!45 = !{!38, !39, i64 8}
!46 = !{!38, !36, i64 24}
!47 = !{!39, !39, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!50 = distinct !{!50, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!51 = !{!15, !15, i64 0}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!54 = distinct !{!54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!55 = !{!35, !36, i64 0}
!56 = !{!35, !36, i64 40}
!57 = !{!35, !36, i64 72}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!35, !18, i64 8}
!61 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!62 = distinct !{!62, !59}
!63 = !{!38, !39, i64 16}
!64 = !{!35, !39, i64 16}
!65 = distinct !{!65, !59}
!66 = distinct !{!66, !59}
!67 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!68 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
