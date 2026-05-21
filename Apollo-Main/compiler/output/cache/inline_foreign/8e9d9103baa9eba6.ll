; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/8e9d9103baa9eba6.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/8e9d9103baa9eba6.cpp"
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
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::basic_string_view" = type { i64, ptr }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZN12__apo_stdlib14replace_n_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_ES7_i = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc = comdat any

$_ZN12__apo_stdlib16str_split_handleESt17basic_string_viewIcSt11char_traitsIcEES3_i = comdat any

$_ZN12__apo_stdlib22str_split_lines_handleESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib16parse_bool_asciiESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$__clang_call_terminate = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJiRcEEEvDpOT_ = comdat any

$_ZN12__apo_stdlib13vector_handleD2Ev = comdat any

$_ZN12__apo_stdlib13vector_handleD0Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJSt17basic_string_viewIcS3_EEEEvDpOT_ = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZTVN12__apo_stdlib13vector_handleE = comdat any

$_ZTIN12__apo_stdlib13vector_handleE = comdat any

$_ZTSN12__apo_stdlib13vector_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_append\00", align 1
@_ZTVN12__apo_stdlib13vector_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib13vector_handleE, ptr @_ZN12__apo_stdlib13vector_handleD2Ev, ptr @_ZN12__apo_stdlib13vector_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib13vector_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13vector_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13vector_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13vector_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_940_5_319sys__native_str_lenEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %5 = trunc i64 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_322sys__native_str_concatEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %7, ptr %4, align 8, !tbaa !8, !alias.scope !5
  br i1 %6, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %9, align 8, !tbaa !14, !alias.scope !5
  store i8 0, ptr %7, align 8, !tbaa !17, !alias.scope !5
  br label %27

10:                                               ; preds = %2
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !5
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp ugt i64 %11, 9223372036854775806
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %11, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #28
  store ptr %18, ptr %4, align 8, !tbaa !18, !alias.scope !5
  store i64 %11, ptr %7, align 8, !tbaa !17, !alias.scope !5
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %7, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !17, !noalias !5
  store i8 %22, ptr %20, align 1, !tbaa !17
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !14, !alias.scope !5
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !17
  br label %27

27:                                               ; preds = %8, %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %28 = icmp eq ptr %1, null
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %29, ptr %5, align 8, !tbaa !8, !alias.scope !19
  br i1 %28, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %31, align 8, !tbaa !14, !alias.scope !19
  store i8 0, ptr %29, align 8, !tbaa !17, !alias.scope !19
  br label %51

32:                                               ; preds = %27
  %33 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13, !noalias !19
  %34 = icmp ugt i64 %33, 15
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = icmp ugt i64 %33, 9223372036854775806
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %38 unwind label %136

38:                                               ; preds = %37
  unreachable

39:                                               ; preds = %35
  %40 = add nuw nsw i64 %33, 1
  %41 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %40) #28
          to label %42 unwind label %136

42:                                               ; preds = %39
  store ptr %41, ptr %5, align 8, !tbaa !18, !alias.scope !19
  store i64 %33, ptr %29, align 8, !tbaa !17, !alias.scope !19
  br label %43

43:                                               ; preds = %42, %32
  %44 = phi ptr [ %41, %42 ], [ %29, %32 ]
  switch i64 %33, label %47 [
    i64 1, label %45
    i64 0, label %48
  ]

45:                                               ; preds = %43
  %46 = load i8, ptr %1, align 1, !tbaa !17, !noalias !19
  store i8 %46, ptr %44, align 1, !tbaa !17
  br label %48

47:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %44, ptr nonnull align 1 %1, i64 %33, i1 false)
  br label %48

48:                                               ; preds = %47, %45, %43
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %33, ptr %49, align 8, !tbaa !14, !alias.scope !19
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 %33
  store i8 0, ptr %50, align 1, !tbaa !17
  br label %51

51:                                               ; preds = %48, %30
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %52 unwind label %138

52:                                               ; preds = %51
  %53 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58, !prof !22

55:                                               ; preds = %52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %56 unwind label %140

56:                                               ; preds = %55
  %57 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 48
  %61 = load ptr, ptr %60, align 8, !tbaa !23
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %63 = load ptr, ptr %62, align 8, !tbaa !29
  %64 = getelementptr inbounds i8, ptr %63, i64 -32
  %65 = icmp eq ptr %61, %64
  br i1 %65, label %87, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 16
  store ptr %67, ptr %61, align 8, !tbaa !8
  %68 = load ptr, ptr %3, align 8, !tbaa !18
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %73 = load i64, ptr %72, align 8, !tbaa !14
  %74 = icmp ult i64 %73, 16
  call void @llvm.assume(i1 %74)
  %75 = add nuw nsw i64 %73, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %67, ptr noundef nonnull align 8 dereferenceable(1) %69, i64 %75, i1 false)
  br label %80

76:                                               ; preds = %66
  store ptr %68, ptr %61, align 8, !tbaa !18
  %77 = load i64, ptr %69, align 8, !tbaa !17
  store i64 %77, ptr %67, align 8, !tbaa !17
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %79 = load i64, ptr %78, align 8, !tbaa !14
  br label %80

80:                                               ; preds = %76, %71
  %81 = phi i64 [ %79, %76 ], [ %73, %71 ]
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %83 = icmp ult i64 %81, 9223372036854775807
  call void @llvm.assume(i1 %83)
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %81, ptr %84, align 8, !tbaa !14
  store ptr %69, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %82, align 8, !tbaa !14
  store i8 0, ptr %69, align 8, !tbaa !17
  %85 = load ptr, ptr %60, align 8, !tbaa !23
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  store ptr %86, ptr %60, align 8, !tbaa !23
  br label %90

87:                                               ; preds = %58
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %59, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %88 unwind label %140

88:                                               ; preds = %87
  %89 = load ptr, ptr %60, align 8, !tbaa !30, !noalias !31
  br label %90

90:                                               ; preds = %88, %80
  %91 = phi ptr [ %86, %80 ], [ %89, %88 ]
  %92 = getelementptr inbounds nuw i8, ptr %59, i64 56
  %93 = load ptr, ptr %92, align 8, !tbaa !34, !noalias !31
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = getelementptr inbounds nuw i8, ptr %59, i64 72
  %97 = load ptr, ptr %96, align 8, !tbaa !35, !noalias !31
  %98 = getelementptr inbounds i8, ptr %97, i64 -8
  %99 = load ptr, ptr %98, align 8, !tbaa !36
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 512
  br label %101

101:                                              ; preds = %95, %90
  %102 = phi ptr [ %100, %95 ], [ %91, %90 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 -32
  %104 = load ptr, ptr %103, align 8, !tbaa !18
  %105 = load ptr, ptr %3, align 8, !tbaa !18
  %106 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %110 = load i64, ptr %109, align 8, !tbaa !14
  %111 = icmp ult i64 %110, 16
  call void @llvm.assume(i1 %111)
  br label %115

112:                                              ; preds = %101
  %113 = load i64, ptr %106, align 8, !tbaa !17
  %114 = add i64 %113, 1
  call void @_ZdlPvm(ptr noundef %105, i64 noundef %114) #29
  br label %115

115:                                              ; preds = %108, %112
  %116 = load ptr, ptr %5, align 8, !tbaa !18
  %117 = icmp eq ptr %116, %29
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %120 = load i64, ptr %119, align 8, !tbaa !14
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %125

122:                                              ; preds = %115
  %123 = load i64, ptr %29, align 8, !tbaa !17
  %124 = add i64 %123, 1
  call void @_ZdlPvm(ptr noundef %116, i64 noundef %124) #29
  br label %125

125:                                              ; preds = %118, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  %126 = load ptr, ptr %4, align 8, !tbaa !18
  %127 = icmp eq ptr %126, %7
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %130 = load i64, ptr %129, align 8, !tbaa !14
  %131 = icmp ult i64 %130, 16
  call void @llvm.assume(i1 %131)
  br label %135

132:                                              ; preds = %125
  %133 = load i64, ptr %7, align 8, !tbaa !17
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %126, i64 noundef %134) #29
  br label %135

135:                                              ; preds = %128, %132
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret ptr %104

136:                                              ; preds = %39, %37
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %163

138:                                              ; preds = %51
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %152

140:                                              ; preds = %87, %55
  %141 = landingpad { ptr, i32 }
          cleanup
  %142 = load ptr, ptr %3, align 8, !tbaa !18
  %143 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %147 = load i64, ptr %146, align 8, !tbaa !14
  %148 = icmp ult i64 %147, 16
  call void @llvm.assume(i1 %148)
  br label %152

149:                                              ; preds = %140
  %150 = load i64, ptr %143, align 8, !tbaa !17
  %151 = add i64 %150, 1
  call void @_ZdlPvm(ptr noundef %142, i64 noundef %151) #29
  br label %152

152:                                              ; preds = %149, %145, %138
  %153 = phi { ptr, i32 } [ %139, %138 ], [ %141, %145 ], [ %141, %149 ]
  %154 = load ptr, ptr %5, align 8, !tbaa !18
  %155 = icmp eq ptr %154, %29
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %158 = load i64, ptr %157, align 8, !tbaa !14
  %159 = icmp ult i64 %158, 16
  call void @llvm.assume(i1 %159)
  br label %163

160:                                              ; preds = %152
  %161 = load i64, ptr %29, align 8, !tbaa !17
  %162 = add i64 %161, 1
  call void @_ZdlPvm(ptr noundef %154, i64 noundef %162) #29
  br label %163

163:                                              ; preds = %160, %156, %136
  %164 = phi { ptr, i32 } [ %137, %136 ], [ %153, %156 ], [ %153, %160 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  %165 = load ptr, ptr %4, align 8, !tbaa !18
  %166 = icmp eq ptr %165, %7
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %169 = load i64, ptr %168, align 8, !tbaa !14
  %170 = icmp ult i64 %169, 16
  call void @llvm.assume(i1 %170)
  br label %174

171:                                              ; preds = %163
  %172 = load i64, ptr %7, align 8, !tbaa !17
  %173 = add i64 %172, 1
  call void @_ZdlPvm(ptr noundef %165, i64 noundef %173) #29
  br label %174

174:                                              ; preds = %167, %171
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  resume { ptr, i32 } %164
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !14
  %6 = icmp ult i64 %5, 9223372036854775807
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = icmp ult i64 %8, 9223372036854775807
  tail call void @llvm.assume(i1 %9)
  %10 = add nuw i64 %8, %5
  %11 = load ptr, ptr %1, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = icmp samesign ult i64 %5, 16
  tail call void @llvm.assume(i1 %15)
  br label %16

16:                                               ; preds = %3, %14
  %17 = load i64, ptr %12, align 8
  %18 = select i1 %13, i64 15, i64 %17
  %19 = icmp samesign ugt i64 %18, 14
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %18, 9223372036854775807
  tail call void @llvm.assume(i1 %20)
  %21 = icmp ugt i64 %10, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !18
  br i1 %21, label %23, label %52

23:                                               ; preds = %16
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = icmp samesign ult i64 %8, 16
  tail call void @llvm.assume(i1 %27)
  br label %28

28:                                               ; preds = %23, %26
  %29 = load i64, ptr %24, align 8
  %30 = select i1 %25, i64 15, i64 %29
  %31 = icmp samesign ugt i64 %30, 14
  tail call void @llvm.assume(i1 %31)
  %32 = icmp ult i64 %30, 9223372036854775807
  tail call void @llvm.assume(i1 %32)
  %33 = icmp ugt i64 %10, %30
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %11, i64 noundef %5)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %36, ptr %0, align 8, !tbaa !8
  %37 = load ptr, ptr %35, align 8, !tbaa !18
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !14
  %43 = icmp ult i64 %42, 16
  tail call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %34
  store ptr %37, ptr %0, align 8, !tbaa !18
  %46 = load i64, ptr %38, align 8, !tbaa !17
  store i64 %46, ptr %36, align 8, !tbaa !17
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa !14
  %50 = icmp ult i64 %49, 9223372036854775807
  tail call void @llvm.assume(i1 %50)
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %49, ptr %51, align 8, !tbaa !14
  store ptr %38, ptr %35, align 8, !tbaa !18
  store i64 0, ptr %48, align 8, !tbaa !14
  store i8 0, ptr %38, align 8, !tbaa !17
  br label %86

52:                                               ; preds = %28, %16
  %53 = sub nuw nsw i64 9223372036854775806, %5
  %54 = icmp samesign ult i64 %53, %8
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
  unreachable

56:                                               ; preds = %52
  br i1 %13, label %57, label %59

57:                                               ; preds = %56
  %58 = icmp samesign ult i64 %5, 16
  tail call void @llvm.assume(i1 %58)
  br label %59

59:                                               ; preds = %57, %56
  br i1 %21, label %68, label %60

60:                                               ; preds = %59
  %61 = icmp eq i64 %8, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds nuw i8, ptr %11, i64 %5
  %64 = icmp eq i64 %8, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i8, ptr %22, align 1, !tbaa !17
  store i8 %66, ptr %63, align 1, !tbaa !17
  br label %69

67:                                               ; preds = %62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %22, i64 %8, i1 false)
  br label %69

68:                                               ; preds = %59
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %5, i64 noundef 0, ptr noundef %22, i64 noundef %8)
  br label %69

69:                                               ; preds = %60, %65, %67, %68
  store i64 %10, ptr %4, align 8, !tbaa !14
  %70 = load ptr, ptr %1, align 8, !tbaa !18
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 %10
  store i8 0, ptr %71, align 1, !tbaa !17
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %72, ptr %0, align 8, !tbaa !8
  %73 = load ptr, ptr %1, align 8, !tbaa !18
  %74 = icmp eq ptr %73, %12
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i64, ptr %4, align 8, !tbaa !14
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  %78 = add nuw nsw i64 %76, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %72, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %78, i1 false)
  br label %82

79:                                               ; preds = %69
  store ptr %73, ptr %0, align 8, !tbaa !18
  %80 = load i64, ptr %12, align 8, !tbaa !17
  store i64 %80, ptr %72, align 8, !tbaa !17
  %81 = load i64, ptr %4, align 8, !tbaa !14
  br label %82

82:                                               ; preds = %75, %79
  %83 = phi i64 [ %76, %75 ], [ %81, %79 ]
  %84 = icmp ult i64 %83, 9223372036854775807
  tail call void @llvm.assume(i1 %84)
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %83, ptr %85, align 8, !tbaa !14
  store ptr %12, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %4, align 8, !tbaa !14
  store i8 0, ptr %12, align 8, !tbaa !17
  br label %86

86:                                               ; preds = %47, %82
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_320sys__native_str_trimEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !17, !noalias !37
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @isspace(i32 noundef %11) #30, !noalias !37
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nuw i64 %8, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %7, !llvm.loop !40

17:                                               ; preds = %14, %7, %1, %4
  %18 = phi i64 [ 0, %4 ], [ 0, %1 ], [ %5, %7 ], [ %5, %14 ]
  %19 = phi i64 [ 0, %4 ], [ 0, %1 ], [ %5, %14 ], [ %8, %7 ]
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %18, %17 ], [ %24, %23 ]
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = add i64 %21, -1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !17, !noalias !37
  %27 = zext i8 %26 to i32
  %28 = tail call i32 @isspace(i32 noundef %27) #30, !noalias !37
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %20, !llvm.loop !42

30:                                               ; preds = %23
  %31 = icmp ugt i64 %21, %19
  br i1 %31, label %35, label %32

32:                                               ; preds = %20, %30
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %33, ptr %2, align 8, !tbaa !8, !alias.scope !37
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %34, align 8, !tbaa !14, !alias.scope !37
  store i8 0, ptr %33, align 8, !tbaa !17, !alias.scope !37
  br label %54

35:                                               ; preds = %30
  %36 = sub nuw i64 %21, %19
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %38, ptr %2, align 8, !tbaa !8, !alias.scope !37
  %39 = icmp ugt i64 %36, 15
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = icmp ugt i64 %36, 9223372036854775806
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %36, 1
  %45 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %44) #28
  store ptr %45, ptr %2, align 8, !tbaa !18, !alias.scope !37
  store i64 %36, ptr %38, align 8, !tbaa !17, !alias.scope !37
  br label %46

46:                                               ; preds = %43, %35
  %47 = phi ptr [ %45, %43 ], [ %38, %35 ]
  switch i64 %36, label %50 [
    i64 1, label %48
    i64 0, label %51
  ]

48:                                               ; preds = %46
  %49 = load i8, ptr %37, align 1, !tbaa !17, !noalias !37
  store i8 %49, ptr %47, align 1, !tbaa !17
  br label %51

50:                                               ; preds = %46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %37, i64 %36, i1 false)
  br label %51

51:                                               ; preds = %50, %48, %46
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %36, ptr %52, align 8, !tbaa !14, !alias.scope !37
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 %36
  store i8 0, ptr %53, align 1, !tbaa !17
  br label %54

54:                                               ; preds = %32, %51
  %55 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60, !prof !22

57:                                               ; preds = %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %58 unwind label %118

58:                                               ; preds = %57
  %59 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 48
  %63 = load ptr, ptr %62, align 8, !tbaa !23
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %65 = load ptr, ptr %64, align 8, !tbaa !29
  %66 = getelementptr inbounds i8, ptr %65, i64 -32
  %67 = icmp eq ptr %63, %66
  br i1 %67, label %89, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %69, ptr %63, align 8, !tbaa !8
  %70 = load ptr, ptr %2, align 8, !tbaa !18
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %75 = load i64, ptr %74, align 8, !tbaa !14
  %76 = icmp ult i64 %75, 16
  call void @llvm.assume(i1 %76)
  %77 = add nuw nsw i64 %75, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %69, ptr noundef nonnull align 8 dereferenceable(1) %71, i64 %77, i1 false)
  br label %82

78:                                               ; preds = %68
  store ptr %70, ptr %63, align 8, !tbaa !18
  %79 = load i64, ptr %71, align 8, !tbaa !17
  store i64 %79, ptr %69, align 8, !tbaa !17
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %81 = load i64, ptr %80, align 8, !tbaa !14
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i64 [ %81, %78 ], [ %75, %73 ]
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %85 = icmp ult i64 %83, 9223372036854775807
  call void @llvm.assume(i1 %85)
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 %83, ptr %86, align 8, !tbaa !14
  store ptr %71, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %84, align 8, !tbaa !14
  store i8 0, ptr %71, align 8, !tbaa !17
  %87 = load ptr, ptr %62, align 8, !tbaa !23
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 32
  store ptr %88, ptr %62, align 8, !tbaa !23
  br label %92

89:                                               ; preds = %60
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %61, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %90 unwind label %118

90:                                               ; preds = %89
  %91 = load ptr, ptr %62, align 8, !tbaa !30, !noalias !43
  br label %92

92:                                               ; preds = %90, %82
  %93 = phi ptr [ %88, %82 ], [ %91, %90 ]
  %94 = getelementptr inbounds nuw i8, ptr %61, i64 56
  %95 = load ptr, ptr %94, align 8, !tbaa !34, !noalias !43
  %96 = icmp eq ptr %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %61, i64 72
  %99 = load ptr, ptr %98, align 8, !tbaa !35, !noalias !43
  %100 = getelementptr inbounds i8, ptr %99, i64 -8
  %101 = load ptr, ptr %100, align 8, !tbaa !36
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 512
  br label %103

103:                                              ; preds = %97, %92
  %104 = phi ptr [ %102, %97 ], [ %93, %92 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 -32
  %106 = load ptr, ptr %105, align 8, !tbaa !18
  %107 = load ptr, ptr %2, align 8, !tbaa !18
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %112 = load i64, ptr %111, align 8, !tbaa !14
  %113 = icmp ult i64 %112, 16
  call void @llvm.assume(i1 %113)
  br label %117

114:                                              ; preds = %103
  %115 = load i64, ptr %108, align 8, !tbaa !17
  %116 = add i64 %115, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %116) #29
  br label %117

117:                                              ; preds = %110, %114
  ret ptr %106

118:                                              ; preds = %89, %57
  %119 = landingpad { ptr, i32 }
          cleanup
  %120 = load ptr, ptr %2, align 8, !tbaa !18
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %125 = load i64, ptr %124, align 8, !tbaa !14
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  br label %130

127:                                              ; preds = %118
  %128 = load i64, ptr %121, align 8, !tbaa !17
  %129 = add i64 %128, 1
  call void @_ZdlPvm(ptr noundef %120, i64 noundef %129) #29
  br label %130

130:                                              ; preds = %123, %127
  resume { ptr, i32 } %119
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_326sys__native_str_trim_startEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !17, !noalias !46
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @isspace(i32 noundef %11) #30, !noalias !46
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nuw i64 %8, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %20, label %7, !llvm.loop !40

17:                                               ; preds = %7
  %18 = icmp ugt i64 %8, %5
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i64 noundef %8, i64 noundef %5) #27, !noalias !46
  unreachable

20:                                               ; preds = %14, %1, %17, %4
  %21 = phi i64 [ %5, %17 ], [ 0, %4 ], [ 0, %1 ], [ %5, %14 ]
  %22 = phi i64 [ %8, %17 ], [ 0, %4 ], [ 0, %1 ], [ %5, %14 ]
  %23 = sub nuw i64 %21, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %22
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %25, ptr %2, align 8, !tbaa !8, !alias.scope !46
  %26 = icmp ugt i64 %23, 15
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = icmp ugt i64 %23, 9223372036854775806
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

30:                                               ; preds = %27
  %31 = add nuw nsw i64 %23, 1
  %32 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %31) #28
  store ptr %32, ptr %2, align 8, !tbaa !18, !alias.scope !46
  store i64 %23, ptr %25, align 8, !tbaa !17, !alias.scope !46
  br label %33

33:                                               ; preds = %30, %20
  %34 = phi ptr [ %32, %30 ], [ %25, %20 ]
  switch i64 %23, label %37 [
    i64 1, label %35
    i64 0, label %38
  ]

35:                                               ; preds = %33
  %36 = load i8, ptr %24, align 1, !tbaa !17, !noalias !46
  store i8 %36, ptr %34, align 1, !tbaa !17
  br label %38

37:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr align 1 %24, i64 %23, i1 false)
  br label %38

38:                                               ; preds = %33, %35, %37
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %23, ptr %39, align 8, !tbaa !14, !alias.scope !46
  %40 = getelementptr inbounds nuw i8, ptr %34, i64 %23
  store i8 0, ptr %40, align 1, !tbaa !17
  %41 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %46, !prof !22

43:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %44 unwind label %98

44:                                               ; preds = %43
  %45 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %46

46:                                               ; preds = %44, %38
  %47 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 48
  %49 = load ptr, ptr %48, align 8, !tbaa !23
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %51 = load ptr, ptr %50, align 8, !tbaa !29
  %52 = getelementptr inbounds i8, ptr %51, i64 -32
  %53 = icmp eq ptr %49, %52
  br i1 %53, label %71, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %55, ptr %49, align 8, !tbaa !8
  %56 = load ptr, ptr %2, align 8, !tbaa !18
  %57 = icmp eq ptr %56, %25
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, ptr %39, align 8, !tbaa !14
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %55, ptr noundef nonnull align 8 dereferenceable(1) %25, i64 %61, i1 false)
  br label %65

62:                                               ; preds = %54
  store ptr %56, ptr %49, align 8, !tbaa !18
  %63 = load i64, ptr %25, align 8, !tbaa !17
  store i64 %63, ptr %55, align 8, !tbaa !17
  %64 = load i64, ptr %39, align 8, !tbaa !14
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i64 [ %64, %62 ], [ %59, %58 ]
  %67 = icmp ult i64 %66, 9223372036854775807
  call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %66, ptr %68, align 8, !tbaa !14
  store ptr %25, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %39, align 8, !tbaa !14
  store i8 0, ptr %25, align 8, !tbaa !17
  %69 = load ptr, ptr %48, align 8, !tbaa !23
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  store ptr %70, ptr %48, align 8, !tbaa !23
  br label %74

71:                                               ; preds = %46
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %47, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %72 unwind label %98

72:                                               ; preds = %71
  %73 = load ptr, ptr %48, align 8, !tbaa !30, !noalias !49
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi ptr [ %70, %65 ], [ %73, %72 ]
  %76 = getelementptr inbounds nuw i8, ptr %47, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !34, !noalias !49
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %47, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !35, !noalias !49
  %82 = getelementptr inbounds i8, ptr %81, i64 -8
  %83 = load ptr, ptr %82, align 8, !tbaa !36
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 512
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi ptr [ %84, %79 ], [ %75, %74 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -32
  %88 = load ptr, ptr %87, align 8, !tbaa !18
  %89 = load ptr, ptr %2, align 8, !tbaa !18
  %90 = icmp eq ptr %89, %25
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i64, ptr %39, align 8, !tbaa !14
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %97

94:                                               ; preds = %85
  %95 = load i64, ptr %25, align 8, !tbaa !17
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %96) #29
  br label %97

97:                                               ; preds = %91, %94
  ret ptr %88

98:                                               ; preds = %71, %43
  %99 = landingpad { ptr, i32 }
          cleanup
  %100 = load ptr, ptr %2, align 8, !tbaa !18
  %101 = icmp eq ptr %100, %25
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64, ptr %39, align 8, !tbaa !14
  %104 = icmp ult i64 %103, 16
  call void @llvm.assume(i1 %104)
  br label %108

105:                                              ; preds = %98
  %106 = load i64, ptr %25, align 8, !tbaa !17
  %107 = add i64 %106, 1
  call void @_ZdlPvm(ptr noundef %100, i64 noundef %107) #29
  br label %108

108:                                              ; preds = %102, %105
  resume { ptr, i32 } %99
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_324sys__native_str_trim_endEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  br label %8

8:                                                ; preds = %11, %6
  %9 = phi i64 [ %7, %6 ], [ %12, %11 ]
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = add i64 %9, -1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !17, !noalias !52
  %15 = zext i8 %14 to i32
  %16 = tail call i32 @isspace(i32 noundef %15) #30, !noalias !52
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %8, !llvm.loop !42

18:                                               ; preds = %8
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %19, ptr %2, align 8, !tbaa !8, !alias.scope !52
  br label %35

20:                                               ; preds = %11
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %21, ptr %2, align 8, !tbaa !8, !alias.scope !52
  %22 = icmp ugt i64 %9, 15
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = icmp ugt i64 %9, 9223372036854775806
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

26:                                               ; preds = %23
  %27 = add nuw nsw i64 %9, 1
  %28 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %27) #28
  store ptr %28, ptr %2, align 8, !tbaa !18, !alias.scope !52
  store i64 %9, ptr %21, align 8, !tbaa !17, !alias.scope !52
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %28, %26 ], [ %21, %20 ]
  %31 = icmp eq i64 %9, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8, ptr %0, align 1, !tbaa !17, !noalias !52
  store i8 %33, ptr %30, align 1, !tbaa !17
  br label %35

34:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr nonnull align 1 %0, i64 %9, i1 false)
  br label %35

35:                                               ; preds = %18, %32, %34
  %36 = phi ptr [ %19, %18 ], [ %30, %34 ], [ %30, %32 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %9, ptr %37, align 8, !tbaa !14, !alias.scope !52
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 %9
  store i8 0, ptr %38, align 1, !tbaa !17
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !22

41:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %98

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %70, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !8
  %54 = load ptr, ptr %2, align 8, !tbaa !18
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, ptr %37, align 8, !tbaa !14
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %60, i1 false)
  br label %64

61:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !18
  %62 = load i64, ptr %55, align 8, !tbaa !17
  store i64 %62, ptr %53, align 8, !tbaa !17
  %63 = load i64, ptr %37, align 8, !tbaa !14
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i64 [ %63, %61 ], [ %58, %57 ]
  %66 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !14
  store ptr %55, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %37, align 8, !tbaa !14
  store i8 0, ptr %55, align 8, !tbaa !17
  %68 = load ptr, ptr %46, align 8, !tbaa !23
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 32
  store ptr %69, ptr %46, align 8, !tbaa !23
  br label %73

70:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %71 unwind label %98

71:                                               ; preds = %70
  %72 = load ptr, ptr %46, align 8, !tbaa !30, !noalias !55
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi ptr [ %69, %64 ], [ %72, %71 ]
  %75 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %76 = load ptr, ptr %75, align 8, !tbaa !34, !noalias !55
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %80 = load ptr, ptr %79, align 8, !tbaa !35, !noalias !55
  %81 = getelementptr inbounds i8, ptr %80, i64 -8
  %82 = load ptr, ptr %81, align 8, !tbaa !36
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 512
  br label %84

84:                                               ; preds = %78, %73
  %85 = phi ptr [ %83, %78 ], [ %74, %73 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 -32
  %87 = load ptr, ptr %86, align 8, !tbaa !18
  %88 = load ptr, ptr %2, align 8, !tbaa !18
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i64, ptr %37, align 8, !tbaa !14
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %97

94:                                               ; preds = %84
  %95 = load i64, ptr %89, align 8, !tbaa !17
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %88, i64 noundef %96) #29
  br label %97

97:                                               ; preds = %91, %94
  ret ptr %87

98:                                               ; preds = %70, %41
  %99 = landingpad { ptr, i32 }
          cleanup
  %100 = load ptr, ptr %2, align 8, !tbaa !18
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i64, ptr %37, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %98
  %107 = load i64, ptr %101, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %100, i64 noundef %108) #29
  br label %109

109:                                              ; preds = %103, %106
  resume { ptr, i32 } %99
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_lowercaseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !8, !alias.scope !58
  br i1 %4, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !14, !alias.scope !58
  store i8 0, ptr %5, align 8, !tbaa !17, !alias.scope !58
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %9, ptr %2, align 8, !tbaa !8, !alias.scope !61
  br label %39

10:                                               ; preds = %1
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !58
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp ugt i64 %11, 9223372036854775806
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %11, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #28
  store ptr %18, ptr %3, align 8, !tbaa !18, !alias.scope !58
  store i64 %11, ptr %5, align 8, !tbaa !17, !alias.scope !58
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %5, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !17, !noalias !58
  store i8 %22, ptr %20, align 1, !tbaa !17
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %19, %21, %23
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !14, !alias.scope !58
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !17
  %27 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !61
  %28 = load i64, ptr %25, align 8, !tbaa !14, !noalias !61
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  %32 = icmp samesign eq i64 %28, 0
  br i1 %32, label %35, label %48

33:                                               ; preds = %48
  %34 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !61
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %34, %33 ], [ %27, %24 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %37, ptr %2, align 8, !tbaa !8, !alias.scope !61
  %38 = icmp eq ptr %36, %5
  br i1 %38, label %39, label %45

39:                                               ; preds = %6, %35
  %40 = phi ptr [ %9, %6 ], [ %37, %35 ]
  %41 = phi ptr [ %8, %6 ], [ %29, %35 ]
  %42 = load i64, ptr %41, align 8, !tbaa !14, !noalias !61
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %44, i1 false)
  br label %56

45:                                               ; preds = %35
  store ptr %36, ptr %2, align 8, !tbaa !18, !alias.scope !61
  %46 = load i64, ptr %5, align 8, !tbaa !17, !noalias !61
  store i64 %46, ptr %37, align 8, !tbaa !17, !alias.scope !61
  %47 = load i64, ptr %29, align 8, !tbaa !14, !noalias !61
  br label %56

48:                                               ; preds = %24, %48
  %49 = phi ptr [ %54, %48 ], [ %27, %24 ]
  %50 = load i8, ptr %49, align 1, !tbaa !17, !noalias !61
  %51 = zext i8 %50 to i32
  %52 = call i32 @tolower(i32 noundef %51) #30, !noalias !61
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %49, align 1, !tbaa !17, !noalias !61
  %54 = getelementptr inbounds nuw i8, ptr %49, i64 1
  %55 = icmp eq ptr %54, %31
  br i1 %55, label %33, label %48

56:                                               ; preds = %39, %45
  %57 = phi ptr [ %40, %39 ], [ %37, %45 ]
  %58 = phi ptr [ %41, %39 ], [ %29, %45 ]
  %59 = phi i64 [ %42, %39 ], [ %47, %45 ]
  %60 = icmp ult i64 %59, 9223372036854775807
  call void @llvm.assume(i1 %60)
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %59, ptr %61, align 8, !tbaa !14, !alias.scope !61
  store ptr %5, ptr %3, align 8, !tbaa !18, !noalias !61
  store i64 0, ptr %58, align 8, !tbaa !14, !noalias !61
  store i8 0, ptr %5, align 8, !tbaa !17, !noalias !61
  %62 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67, !prof !22

64:                                               ; preds = %56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %65 unwind label %128

65:                                               ; preds = %64
  %66 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %67

67:                                               ; preds = %65, %56
  %68 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 48
  %70 = load ptr, ptr %69, align 8, !tbaa !23
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 64
  %72 = load ptr, ptr %71, align 8, !tbaa !29
  %73 = getelementptr inbounds i8, ptr %72, i64 -32
  %74 = icmp eq ptr %70, %73
  br i1 %74, label %92, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds nuw i8, ptr %70, i64 16
  store ptr %76, ptr %70, align 8, !tbaa !8
  %77 = load ptr, ptr %2, align 8, !tbaa !18
  %78 = icmp eq ptr %77, %57
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, ptr %61, align 8, !tbaa !14
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  %82 = add nuw nsw i64 %80, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %76, ptr noundef nonnull align 8 dereferenceable(1) %57, i64 %82, i1 false)
  br label %86

83:                                               ; preds = %75
  store ptr %77, ptr %70, align 8, !tbaa !18
  %84 = load i64, ptr %57, align 8, !tbaa !17
  store i64 %84, ptr %76, align 8, !tbaa !17
  %85 = load i64, ptr %61, align 8, !tbaa !14
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i64 [ %85, %83 ], [ %80, %79 ]
  %88 = icmp ult i64 %87, 9223372036854775807
  call void @llvm.assume(i1 %88)
  %89 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 %87, ptr %89, align 8, !tbaa !14
  store ptr %57, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %61, align 8, !tbaa !14
  store i8 0, ptr %57, align 1, !tbaa !17
  %90 = load ptr, ptr %69, align 8, !tbaa !23
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  store ptr %91, ptr %69, align 8, !tbaa !23
  br label %95

92:                                               ; preds = %67
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %68, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %93 unwind label %128

93:                                               ; preds = %92
  %94 = load ptr, ptr %69, align 8, !tbaa !30, !noalias !64
  br label %95

95:                                               ; preds = %93, %86
  %96 = phi ptr [ %91, %86 ], [ %94, %93 ]
  %97 = getelementptr inbounds nuw i8, ptr %68, i64 56
  %98 = load ptr, ptr %97, align 8, !tbaa !34, !noalias !64
  %99 = icmp eq ptr %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = getelementptr inbounds nuw i8, ptr %68, i64 72
  %102 = load ptr, ptr %101, align 8, !tbaa !35, !noalias !64
  %103 = getelementptr inbounds i8, ptr %102, i64 -8
  %104 = load ptr, ptr %103, align 8, !tbaa !36
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 512
  br label %106

106:                                              ; preds = %100, %95
  %107 = phi ptr [ %105, %100 ], [ %96, %95 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 -32
  %109 = load ptr, ptr %108, align 8, !tbaa !18
  %110 = load ptr, ptr %2, align 8, !tbaa !18
  %111 = icmp eq ptr %110, %57
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i64, ptr %61, align 8, !tbaa !14
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  br label %118

115:                                              ; preds = %106
  %116 = load i64, ptr %57, align 8, !tbaa !17
  %117 = add i64 %116, 1
  call void @_ZdlPvm(ptr noundef %110, i64 noundef %117) #29
  br label %118

118:                                              ; preds = %112, %115
  %119 = load ptr, ptr %3, align 8, !tbaa !18
  %120 = icmp eq ptr %119, %5
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i64, ptr %58, align 8, !tbaa !14
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  br label %127

124:                                              ; preds = %118
  %125 = load i64, ptr %5, align 8, !tbaa !17
  %126 = add i64 %125, 1
  call void @_ZdlPvm(ptr noundef %119, i64 noundef %126) #29
  br label %127

127:                                              ; preds = %121, %124
  ret ptr %109

128:                                              ; preds = %92, %64
  %129 = landingpad { ptr, i32 }
          cleanup
  %130 = load ptr, ptr %2, align 8, !tbaa !18
  %131 = icmp eq ptr %130, %57
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i64, ptr %61, align 8, !tbaa !14
  %134 = icmp ult i64 %133, 16
  call void @llvm.assume(i1 %134)
  br label %138

135:                                              ; preds = %128
  %136 = load i64, ptr %57, align 8, !tbaa !17
  %137 = add i64 %136, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %137) #29
  br label %138

138:                                              ; preds = %132, %135
  %139 = load ptr, ptr %3, align 8, !tbaa !18
  %140 = icmp eq ptr %139, %5
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i64, ptr %58, align 8, !tbaa !14
  %143 = icmp ult i64 %142, 16
  call void @llvm.assume(i1 %143)
  br label %147

144:                                              ; preds = %138
  %145 = load i64, ptr %5, align 8, !tbaa !17
  %146 = add i64 %145, 1
  call void @_ZdlPvm(ptr noundef %139, i64 noundef %146) #29
  br label %147

147:                                              ; preds = %141, %144
  resume { ptr, i32 } %129
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_uppercaseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !8, !alias.scope !67
  br i1 %4, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !14, !alias.scope !67
  store i8 0, ptr %5, align 8, !tbaa !17, !alias.scope !67
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %9, ptr %2, align 8, !tbaa !8, !alias.scope !70
  br label %39

10:                                               ; preds = %1
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !67
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp ugt i64 %11, 9223372036854775806
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %11, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #28
  store ptr %18, ptr %3, align 8, !tbaa !18, !alias.scope !67
  store i64 %11, ptr %5, align 8, !tbaa !17, !alias.scope !67
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %5, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !17, !noalias !67
  store i8 %22, ptr %20, align 1, !tbaa !17
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %19, %21, %23
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !14, !alias.scope !67
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !17
  %27 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !70
  %28 = load i64, ptr %25, align 8, !tbaa !14, !noalias !70
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  %32 = icmp samesign eq i64 %28, 0
  br i1 %32, label %35, label %48

33:                                               ; preds = %48
  %34 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !70
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %34, %33 ], [ %27, %24 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %37, ptr %2, align 8, !tbaa !8, !alias.scope !70
  %38 = icmp eq ptr %36, %5
  br i1 %38, label %39, label %45

39:                                               ; preds = %6, %35
  %40 = phi ptr [ %9, %6 ], [ %37, %35 ]
  %41 = phi ptr [ %8, %6 ], [ %29, %35 ]
  %42 = load i64, ptr %41, align 8, !tbaa !14, !noalias !70
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %44, i1 false)
  br label %56

45:                                               ; preds = %35
  store ptr %36, ptr %2, align 8, !tbaa !18, !alias.scope !70
  %46 = load i64, ptr %5, align 8, !tbaa !17, !noalias !70
  store i64 %46, ptr %37, align 8, !tbaa !17, !alias.scope !70
  %47 = load i64, ptr %29, align 8, !tbaa !14, !noalias !70
  br label %56

48:                                               ; preds = %24, %48
  %49 = phi ptr [ %54, %48 ], [ %27, %24 ]
  %50 = load i8, ptr %49, align 1, !tbaa !17, !noalias !70
  %51 = zext i8 %50 to i32
  %52 = call i32 @toupper(i32 noundef %51) #30, !noalias !70
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %49, align 1, !tbaa !17, !noalias !70
  %54 = getelementptr inbounds nuw i8, ptr %49, i64 1
  %55 = icmp eq ptr %54, %31
  br i1 %55, label %33, label %48

56:                                               ; preds = %39, %45
  %57 = phi ptr [ %40, %39 ], [ %37, %45 ]
  %58 = phi ptr [ %41, %39 ], [ %29, %45 ]
  %59 = phi i64 [ %42, %39 ], [ %47, %45 ]
  %60 = icmp ult i64 %59, 9223372036854775807
  call void @llvm.assume(i1 %60)
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %59, ptr %61, align 8, !tbaa !14, !alias.scope !70
  store ptr %5, ptr %3, align 8, !tbaa !18, !noalias !70
  store i64 0, ptr %58, align 8, !tbaa !14, !noalias !70
  store i8 0, ptr %5, align 8, !tbaa !17, !noalias !70
  %62 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67, !prof !22

64:                                               ; preds = %56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %65 unwind label %128

65:                                               ; preds = %64
  %66 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %67

67:                                               ; preds = %65, %56
  %68 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 48
  %70 = load ptr, ptr %69, align 8, !tbaa !23
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 64
  %72 = load ptr, ptr %71, align 8, !tbaa !29
  %73 = getelementptr inbounds i8, ptr %72, i64 -32
  %74 = icmp eq ptr %70, %73
  br i1 %74, label %92, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds nuw i8, ptr %70, i64 16
  store ptr %76, ptr %70, align 8, !tbaa !8
  %77 = load ptr, ptr %2, align 8, !tbaa !18
  %78 = icmp eq ptr %77, %57
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, ptr %61, align 8, !tbaa !14
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  %82 = add nuw nsw i64 %80, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %76, ptr noundef nonnull align 8 dereferenceable(1) %57, i64 %82, i1 false)
  br label %86

83:                                               ; preds = %75
  store ptr %77, ptr %70, align 8, !tbaa !18
  %84 = load i64, ptr %57, align 8, !tbaa !17
  store i64 %84, ptr %76, align 8, !tbaa !17
  %85 = load i64, ptr %61, align 8, !tbaa !14
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i64 [ %85, %83 ], [ %80, %79 ]
  %88 = icmp ult i64 %87, 9223372036854775807
  call void @llvm.assume(i1 %88)
  %89 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 %87, ptr %89, align 8, !tbaa !14
  store ptr %57, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %61, align 8, !tbaa !14
  store i8 0, ptr %57, align 1, !tbaa !17
  %90 = load ptr, ptr %69, align 8, !tbaa !23
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  store ptr %91, ptr %69, align 8, !tbaa !23
  br label %95

92:                                               ; preds = %67
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %68, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %93 unwind label %128

93:                                               ; preds = %92
  %94 = load ptr, ptr %69, align 8, !tbaa !30, !noalias !73
  br label %95

95:                                               ; preds = %93, %86
  %96 = phi ptr [ %91, %86 ], [ %94, %93 ]
  %97 = getelementptr inbounds nuw i8, ptr %68, i64 56
  %98 = load ptr, ptr %97, align 8, !tbaa !34, !noalias !73
  %99 = icmp eq ptr %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = getelementptr inbounds nuw i8, ptr %68, i64 72
  %102 = load ptr, ptr %101, align 8, !tbaa !35, !noalias !73
  %103 = getelementptr inbounds i8, ptr %102, i64 -8
  %104 = load ptr, ptr %103, align 8, !tbaa !36
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 512
  br label %106

106:                                              ; preds = %100, %95
  %107 = phi ptr [ %105, %100 ], [ %96, %95 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 -32
  %109 = load ptr, ptr %108, align 8, !tbaa !18
  %110 = load ptr, ptr %2, align 8, !tbaa !18
  %111 = icmp eq ptr %110, %57
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i64, ptr %61, align 8, !tbaa !14
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  br label %118

115:                                              ; preds = %106
  %116 = load i64, ptr %57, align 8, !tbaa !17
  %117 = add i64 %116, 1
  call void @_ZdlPvm(ptr noundef %110, i64 noundef %117) #29
  br label %118

118:                                              ; preds = %112, %115
  %119 = load ptr, ptr %3, align 8, !tbaa !18
  %120 = icmp eq ptr %119, %5
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i64, ptr %58, align 8, !tbaa !14
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  br label %127

124:                                              ; preds = %118
  %125 = load i64, ptr %5, align 8, !tbaa !17
  %126 = add i64 %125, 1
  call void @_ZdlPvm(ptr noundef %119, i64 noundef %126) #29
  br label %127

127:                                              ; preds = %121, %124
  ret ptr %109

128:                                              ; preds = %92, %64
  %129 = landingpad { ptr, i32 }
          cleanup
  %130 = load ptr, ptr %2, align 8, !tbaa !18
  %131 = icmp eq ptr %130, %57
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i64, ptr %61, align 8, !tbaa !14
  %134 = icmp ult i64 %133, 16
  call void @llvm.assume(i1 %134)
  br label %138

135:                                              ; preds = %128
  %136 = load i64, ptr %57, align 8, !tbaa !17
  %137 = add i64 %136, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %137) #29
  br label %138

138:                                              ; preds = %132, %135
  %139 = load ptr, ptr %3, align 8, !tbaa !18
  %140 = icmp eq ptr %139, %5
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i64, ptr %58, align 8, !tbaa !14
  %143 = icmp ult i64 %142, 16
  call void @llvm.assume(i1 %143)
  br label %147

144:                                              ; preds = %138
  %145 = load i64, ptr %5, align 8, !tbaa !17
  %146 = add i64 %145, 1
  call void @_ZdlPvm(ptr noundef %139, i64 noundef %146) #29
  br label %147

147:                                              ; preds = %141, %144
  resume { ptr, i32 } %129
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_titlecaseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !8, !alias.scope !76
  br i1 %4, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !14, !alias.scope !76
  store i8 0, ptr %5, align 8, !tbaa !17, !alias.scope !76
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %9, ptr %2, align 8, !tbaa !8, !alias.scope !79
  br label %39

10:                                               ; preds = %1
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !76
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp ugt i64 %11, 9223372036854775806
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %11, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #28
  store ptr %18, ptr %3, align 8, !tbaa !18, !alias.scope !76
  store i64 %11, ptr %5, align 8, !tbaa !17, !alias.scope !76
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %5, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !17, !noalias !76
  store i8 %22, ptr %20, align 1, !tbaa !17
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %19, %21, %23
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !14, !alias.scope !76
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !17
  %27 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !79
  %28 = load i64, ptr %25, align 8, !tbaa !14, !noalias !79
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  %32 = icmp samesign eq i64 %28, 0
  br i1 %32, label %35, label %48

33:                                               ; preds = %63
  %34 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !79
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %34, %33 ], [ %27, %24 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %37, ptr %2, align 8, !tbaa !8, !alias.scope !79
  %38 = icmp eq ptr %36, %5
  br i1 %38, label %39, label %45

39:                                               ; preds = %6, %35
  %40 = phi ptr [ %9, %6 ], [ %37, %35 ]
  %41 = phi ptr [ %8, %6 ], [ %29, %35 ]
  %42 = load i64, ptr %41, align 8, !tbaa !14, !noalias !79
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %44, i1 false)
  br label %66

45:                                               ; preds = %35
  store ptr %36, ptr %2, align 8, !tbaa !18, !alias.scope !79
  %46 = load i64, ptr %5, align 8, !tbaa !17, !noalias !79
  store i64 %46, ptr %37, align 8, !tbaa !17, !alias.scope !79
  %47 = load i64, ptr %29, align 8, !tbaa !14, !noalias !79
  br label %66

48:                                               ; preds = %24, %63
  %49 = phi i1 [ %54, %63 ], [ true, %24 ]
  %50 = phi ptr [ %64, %63 ], [ %27, %24 ]
  %51 = load i8, ptr %50, align 1, !tbaa !17, !noalias !79
  %52 = zext i8 %51 to i32
  %53 = call i32 @isalnum(i32 noundef %52) #30, !noalias !79
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  br i1 %49, label %56, label %58

56:                                               ; preds = %55
  %57 = call i32 @toupper(i32 noundef %52) #30, !noalias !79
  br label %60

58:                                               ; preds = %55
  %59 = call i32 @tolower(i32 noundef %52) #30, !noalias !79
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ]
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %50, align 1, !tbaa !17, !noalias !79
  br label %63

63:                                               ; preds = %60, %48
  %64 = getelementptr inbounds nuw i8, ptr %50, i64 1
  %65 = icmp eq ptr %64, %31
  br i1 %65, label %33, label %48

66:                                               ; preds = %39, %45
  %67 = phi ptr [ %40, %39 ], [ %37, %45 ]
  %68 = phi ptr [ %41, %39 ], [ %29, %45 ]
  %69 = phi i64 [ %42, %39 ], [ %47, %45 ]
  %70 = icmp ult i64 %69, 9223372036854775807
  call void @llvm.assume(i1 %70)
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %69, ptr %71, align 8, !tbaa !14, !alias.scope !79
  store ptr %5, ptr %3, align 8, !tbaa !18, !noalias !79
  store i64 0, ptr %68, align 8, !tbaa !14, !noalias !79
  store i8 0, ptr %5, align 8, !tbaa !17, !noalias !79
  %72 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77, !prof !22

74:                                               ; preds = %66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %75 unwind label %138

75:                                               ; preds = %74
  %76 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %77

77:                                               ; preds = %75, %66
  %78 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 48
  %80 = load ptr, ptr %79, align 8, !tbaa !23
  %81 = getelementptr inbounds nuw i8, ptr %78, i64 64
  %82 = load ptr, ptr %81, align 8, !tbaa !29
  %83 = getelementptr inbounds i8, ptr %82, i64 -32
  %84 = icmp eq ptr %80, %83
  br i1 %84, label %102, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds nuw i8, ptr %80, i64 16
  store ptr %86, ptr %80, align 8, !tbaa !8
  %87 = load ptr, ptr %2, align 8, !tbaa !18
  %88 = icmp eq ptr %87, %67
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i64, ptr %71, align 8, !tbaa !14
  %91 = icmp ult i64 %90, 16
  call void @llvm.assume(i1 %91)
  %92 = add nuw nsw i64 %90, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 8 dereferenceable(1) %67, i64 %92, i1 false)
  br label %96

93:                                               ; preds = %85
  store ptr %87, ptr %80, align 8, !tbaa !18
  %94 = load i64, ptr %67, align 8, !tbaa !17
  store i64 %94, ptr %86, align 8, !tbaa !17
  %95 = load i64, ptr %71, align 8, !tbaa !14
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i64 [ %95, %93 ], [ %90, %89 ]
  %98 = icmp ult i64 %97, 9223372036854775807
  call void @llvm.assume(i1 %98)
  %99 = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 %97, ptr %99, align 8, !tbaa !14
  store ptr %67, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %71, align 8, !tbaa !14
  store i8 0, ptr %67, align 1, !tbaa !17
  %100 = load ptr, ptr %79, align 8, !tbaa !23
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 32
  store ptr %101, ptr %79, align 8, !tbaa !23
  br label %105

102:                                              ; preds = %77
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %78, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %103 unwind label %138

103:                                              ; preds = %102
  %104 = load ptr, ptr %79, align 8, !tbaa !30, !noalias !82
  br label %105

105:                                              ; preds = %103, %96
  %106 = phi ptr [ %101, %96 ], [ %104, %103 ]
  %107 = getelementptr inbounds nuw i8, ptr %78, i64 56
  %108 = load ptr, ptr %107, align 8, !tbaa !34, !noalias !82
  %109 = icmp eq ptr %106, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = getelementptr inbounds nuw i8, ptr %78, i64 72
  %112 = load ptr, ptr %111, align 8, !tbaa !35, !noalias !82
  %113 = getelementptr inbounds i8, ptr %112, i64 -8
  %114 = load ptr, ptr %113, align 8, !tbaa !36
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 512
  br label %116

116:                                              ; preds = %110, %105
  %117 = phi ptr [ %115, %110 ], [ %106, %105 ]
  %118 = getelementptr inbounds i8, ptr %117, i64 -32
  %119 = load ptr, ptr %118, align 8, !tbaa !18
  %120 = load ptr, ptr %2, align 8, !tbaa !18
  %121 = icmp eq ptr %120, %67
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i64, ptr %71, align 8, !tbaa !14
  %124 = icmp ult i64 %123, 16
  call void @llvm.assume(i1 %124)
  br label %128

125:                                              ; preds = %116
  %126 = load i64, ptr %67, align 8, !tbaa !17
  %127 = add i64 %126, 1
  call void @_ZdlPvm(ptr noundef %120, i64 noundef %127) #29
  br label %128

128:                                              ; preds = %122, %125
  %129 = load ptr, ptr %3, align 8, !tbaa !18
  %130 = icmp eq ptr %129, %5
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i64, ptr %68, align 8, !tbaa !14
  %133 = icmp ult i64 %132, 16
  call void @llvm.assume(i1 %133)
  br label %137

134:                                              ; preds = %128
  %135 = load i64, ptr %5, align 8, !tbaa !17
  %136 = add i64 %135, 1
  call void @_ZdlPvm(ptr noundef %129, i64 noundef %136) #29
  br label %137

137:                                              ; preds = %131, %134
  ret ptr %119

138:                                              ; preds = %102, %74
  %139 = landingpad { ptr, i32 }
          cleanup
  %140 = load ptr, ptr %2, align 8, !tbaa !18
  %141 = icmp eq ptr %140, %67
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i64, ptr %71, align 8, !tbaa !14
  %144 = icmp ult i64 %143, 16
  call void @llvm.assume(i1 %144)
  br label %148

145:                                              ; preds = %138
  %146 = load i64, ptr %67, align 8, !tbaa !17
  %147 = add i64 %146, 1
  call void @_ZdlPvm(ptr noundef %140, i64 noundef %147) #29
  br label %148

148:                                              ; preds = %142, %145
  %149 = load ptr, ptr %3, align 8, !tbaa !18
  %150 = icmp eq ptr %149, %5
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i64, ptr %68, align 8, !tbaa !14
  %153 = icmp ult i64 %152, 16
  call void @llvm.assume(i1 %153)
  br label %157

154:                                              ; preds = %148
  %155 = load i64, ptr %5, align 8, !tbaa !17
  %156 = add i64 %155, 1
  call void @_ZdlPvm(ptr noundef %149, i64 noundef %156) #29
  br label %157

157:                                              ; preds = %151, %154
  resume { ptr, i32 } %139
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_324sys__native_str_containsEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %6, ptr %3, align 8, !tbaa !8, !alias.scope !85
  br i1 %5, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %8, align 8, !tbaa !14, !alias.scope !85
  store i8 0, ptr %6, align 8, !tbaa !17, !alias.scope !85
  br label %26

9:                                                ; preds = %2
  %10 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !85
  %11 = icmp ugt i64 %10, 15
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = icmp ugt i64 %10, 9223372036854775806
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

15:                                               ; preds = %12
  %16 = add nuw nsw i64 %10, 1
  %17 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #28
  store ptr %17, ptr %3, align 8, !tbaa !18, !alias.scope !85
  store i64 %10, ptr %6, align 8, !tbaa !17, !alias.scope !85
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %17, %15 ], [ %6, %9 ]
  switch i64 %10, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %0, align 1, !tbaa !17, !noalias !85
  store i8 %21, ptr %19, align 1, !tbaa !17
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %10, ptr %24, align 8, !tbaa !14, !alias.scope !85
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %10
  store i8 0, ptr %25, align 1, !tbaa !17
  br label %26

26:                                               ; preds = %7, %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %27 = icmp eq ptr %1, null
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %28, ptr %4, align 8, !tbaa !8, !alias.scope !88
  br i1 %27, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !14
  %32 = icmp ult i64 %31, 9223372036854775807
  call void @llvm.assume(i1 %32)
  br label %96

33:                                               ; preds = %26
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13, !noalias !88
  %35 = icmp ugt i64 %34, 15
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = icmp ugt i64 %34, 9223372036854775806
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %39 unwind label %116

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %34, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #28
          to label %43 unwind label %116

43:                                               ; preds = %40
  store ptr %42, ptr %4, align 8, !tbaa !18, !alias.scope !88
  store i64 %34, ptr %28, align 8, !tbaa !17, !alias.scope !88
  br label %44

44:                                               ; preds = %43, %33
  %45 = phi ptr [ %42, %43 ], [ %28, %33 ]
  switch i64 %34, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %1, align 1, !tbaa !17, !noalias !88
  store i8 %47, ptr %45, align 1, !tbaa !17
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr nonnull align 1 %1, i64 %34, i1 false)
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %34, ptr %50, align 8, !tbaa !14, !alias.scope !88
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 %34
  store i8 0, ptr %51, align 1, !tbaa !17
  %52 = load ptr, ptr %4, align 8, !tbaa !18
  %53 = load i64, ptr %50, align 8, !tbaa !14
  %54 = icmp ult i64 %53, 9223372036854775807
  call void @llvm.assume(i1 %54)
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !14
  %57 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %57)
  %58 = icmp eq i64 %53, 0
  br i1 %58, label %92, label %59

59:                                               ; preds = %49
  %60 = icmp eq i64 %56, 0
  br i1 %60, label %92, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %3, align 8, !tbaa !18
  %63 = icmp samesign ult i64 %56, %53
  br i1 %63, label %92, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 %56
  %66 = load i8, ptr %52, align 1, !tbaa !17
  %67 = sext i8 %66 to i32
  %68 = ptrtoint ptr %65 to i64
  br label %69

69:                                               ; preds = %87, %64
  %70 = phi i64 [ %56, %64 ], [ %90, %87 ]
  %71 = phi ptr [ %62, %64 ], [ %88, %87 ]
  %72 = sub nuw i64 %70, %53
  %73 = add i64 %72, 1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %69
  %76 = call ptr @memchr(ptr noundef %71, i32 noundef %67, i64 noundef %73) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = call i32 @bcmp(ptr nonnull %76, ptr nonnull %52, i64 %53)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = ptrtoint ptr %76 to i64
  %83 = ptrtoint ptr %62 to i64
  %84 = sub i64 %82, %83
  %85 = icmp ne i64 %84, -1
  %86 = zext i1 %85 to i32
  br label %92

87:                                               ; preds = %78
  %88 = getelementptr inbounds nuw i8, ptr %76, i64 1
  %89 = ptrtoint ptr %88 to i64
  %90 = sub i64 %68, %89
  %91 = icmp ult i64 %90, %53
  br i1 %91, label %92, label %69, !llvm.loop !91

92:                                               ; preds = %69, %75, %87, %49, %59, %61, %81
  %93 = phi i64 [ %53, %59 ], [ %53, %81 ], [ %53, %61 ], [ 0, %49 ], [ %53, %87 ], [ %53, %75 ], [ %53, %69 ]
  %94 = phi i32 [ 0, %59 ], [ %86, %81 ], [ 0, %61 ], [ 1, %49 ], [ 0, %87 ], [ 0, %75 ], [ 0, %69 ]
  %95 = icmp eq ptr %52, %28
  br i1 %95, label %96, label %101

96:                                               ; preds = %29, %92
  %97 = phi i32 [ 1, %29 ], [ %94, %92 ]
  %98 = phi i64 [ 0, %29 ], [ %93, %92 ]
  %99 = phi ptr [ %30, %29 ], [ %55, %92 ]
  %100 = icmp samesign ult i64 %98, 16
  call void @llvm.assume(i1 %100)
  br label %104

101:                                              ; preds = %92
  %102 = load i64, ptr %28, align 8, !tbaa !17
  %103 = add i64 %102, 1
  call void @_ZdlPvm(ptr noundef %52, i64 noundef %103) #29
  br label %104

104:                                              ; preds = %96, %101
  %105 = phi i32 [ %97, %96 ], [ %94, %101 ]
  %106 = phi ptr [ %99, %96 ], [ %55, %101 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %107 = load ptr, ptr %3, align 8, !tbaa !18
  %108 = icmp eq ptr %107, %6
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i64, ptr %106, align 8, !tbaa !14
  %111 = icmp ult i64 %110, 16
  call void @llvm.assume(i1 %111)
  br label %115

112:                                              ; preds = %104
  %113 = load i64, ptr %6, align 8, !tbaa !17
  %114 = add i64 %113, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %114) #29
  br label %115

115:                                              ; preds = %109, %112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i32 %105

116:                                              ; preds = %40, %38
  %117 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %118 = load ptr, ptr %3, align 8, !tbaa !18
  %119 = icmp eq ptr %118, %6
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %122 = load i64, ptr %121, align 8, !tbaa !14
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  br label %127

124:                                              ; preds = %116
  %125 = load i64, ptr %6, align 8, !tbaa !17
  %126 = add i64 %125, 1
  call void @_ZdlPvm(ptr noundef %118, i64 noundef %126) #29
  br label %127

127:                                              ; preds = %120, %124
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %117
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_327sys__native_str_starts_withEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = tail call i32 @bcmp(ptr %0, ptr nonnull %1, i64 %10)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %6, %9, %12, %14
  %19 = phi i32 [ 0, %9 ], [ %17, %14 ], [ 1, %12 ], [ 1, %6 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_325sys__native_str_ends_withEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %16 = sub i64 0, %10
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  %18 = tail call i32 @bcmp(ptr nonnull %17, ptr nonnull %1, i64 %10)
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %6, %9, %12, %14
  %22 = phi i32 [ 0, %9 ], [ %20, %14 ], [ 1, %12 ], [ 1, %6 ]
  ret i32 %22
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_str_findEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %6, ptr %3, align 8, !tbaa !8, !alias.scope !92
  br i1 %5, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %8, align 8, !tbaa !14, !alias.scope !92
  store i8 0, ptr %6, align 8, !tbaa !17, !alias.scope !92
  br label %26

9:                                                ; preds = %2
  %10 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !92
  %11 = icmp ugt i64 %10, 15
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = icmp ugt i64 %10, 9223372036854775806
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

15:                                               ; preds = %12
  %16 = add nuw nsw i64 %10, 1
  %17 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #28
  store ptr %17, ptr %3, align 8, !tbaa !18, !alias.scope !92
  store i64 %10, ptr %6, align 8, !tbaa !17, !alias.scope !92
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %17, %15 ], [ %6, %9 ]
  switch i64 %10, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %0, align 1, !tbaa !17, !noalias !92
  store i8 %21, ptr %19, align 1, !tbaa !17
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %10, ptr %24, align 8, !tbaa !14, !alias.scope !92
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %10
  store i8 0, ptr %25, align 1, !tbaa !17
  br label %26

26:                                               ; preds = %7, %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %27 = icmp eq ptr %1, null
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %28, ptr %4, align 8, !tbaa !8, !alias.scope !95
  br i1 %27, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !14
  %32 = icmp ult i64 %31, 9223372036854775807
  call void @llvm.assume(i1 %32)
  br label %95

33:                                               ; preds = %26
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13, !noalias !95
  %35 = icmp ugt i64 %34, 15
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = icmp ugt i64 %34, 9223372036854775806
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %39 unwind label %115

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %34, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #28
          to label %43 unwind label %115

43:                                               ; preds = %40
  store ptr %42, ptr %4, align 8, !tbaa !18, !alias.scope !95
  store i64 %34, ptr %28, align 8, !tbaa !17, !alias.scope !95
  br label %44

44:                                               ; preds = %43, %33
  %45 = phi ptr [ %42, %43 ], [ %28, %33 ]
  switch i64 %34, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %1, align 1, !tbaa !17, !noalias !95
  store i8 %47, ptr %45, align 1, !tbaa !17
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr nonnull align 1 %1, i64 %34, i1 false)
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %34, ptr %50, align 8, !tbaa !14, !alias.scope !95
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 %34
  store i8 0, ptr %51, align 1, !tbaa !17
  %52 = load ptr, ptr %4, align 8, !tbaa !18
  %53 = load i64, ptr %50, align 8, !tbaa !14
  %54 = icmp ult i64 %53, 9223372036854775807
  call void @llvm.assume(i1 %54)
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !14
  %57 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %57)
  %58 = icmp eq i64 %53, 0
  br i1 %58, label %91, label %59

59:                                               ; preds = %49
  %60 = icmp eq i64 %56, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %3, align 8, !tbaa !18
  %63 = icmp samesign ult i64 %56, %53
  br i1 %63, label %91, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 %56
  %66 = load i8, ptr %52, align 1, !tbaa !17
  %67 = sext i8 %66 to i32
  %68 = ptrtoint ptr %65 to i64
  br label %69

69:                                               ; preds = %86, %64
  %70 = phi i64 [ %56, %64 ], [ %89, %86 ]
  %71 = phi ptr [ %62, %64 ], [ %87, %86 ]
  %72 = sub nuw i64 %70, %53
  %73 = add i64 %72, 1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %69
  %76 = call ptr @memchr(ptr noundef %71, i32 noundef %67, i64 noundef %73) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %91, label %78

78:                                               ; preds = %75
  %79 = call i32 @bcmp(ptr nonnull %76, ptr nonnull %52, i64 %53)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = ptrtoint ptr %76 to i64
  %83 = ptrtoint ptr %62 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  br label %91

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %76, i64 1
  %88 = ptrtoint ptr %87 to i64
  %89 = sub i64 %68, %88
  %90 = icmp ult i64 %89, %53
  br i1 %90, label %91, label %69, !llvm.loop !91

91:                                               ; preds = %69, %75, %86, %49, %59, %61, %81
  %92 = phi i64 [ %53, %59 ], [ %53, %81 ], [ %53, %61 ], [ 0, %49 ], [ %53, %86 ], [ %53, %75 ], [ %53, %69 ]
  %93 = phi i32 [ -1, %59 ], [ %85, %81 ], [ -1, %61 ], [ 0, %49 ], [ -1, %86 ], [ -1, %75 ], [ -1, %69 ]
  %94 = icmp eq ptr %52, %28
  br i1 %94, label %95, label %100

95:                                               ; preds = %29, %91
  %96 = phi i32 [ 0, %29 ], [ %93, %91 ]
  %97 = phi i64 [ 0, %29 ], [ %92, %91 ]
  %98 = phi ptr [ %30, %29 ], [ %55, %91 ]
  %99 = icmp samesign ult i64 %97, 16
  call void @llvm.assume(i1 %99)
  br label %103

100:                                              ; preds = %91
  %101 = load i64, ptr %28, align 8, !tbaa !17
  %102 = add i64 %101, 1
  call void @_ZdlPvm(ptr noundef %52, i64 noundef %102) #29
  br label %103

103:                                              ; preds = %95, %100
  %104 = phi i32 [ %96, %95 ], [ %93, %100 ]
  %105 = phi ptr [ %98, %95 ], [ %55, %100 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %106 = load ptr, ptr %3, align 8, !tbaa !18
  %107 = icmp eq ptr %106, %6
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i64, ptr %105, align 8, !tbaa !14
  %110 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %110)
  br label %114

111:                                              ; preds = %103
  %112 = load i64, ptr %6, align 8, !tbaa !17
  %113 = add i64 %112, 1
  call void @_ZdlPvm(ptr noundef %106, i64 noundef %113) #29
  br label %114

114:                                              ; preds = %108, %111
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i32 %104

115:                                              ; preds = %40, %38
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %117 = load ptr, ptr %3, align 8, !tbaa !18
  %118 = icmp eq ptr %117, %6
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %121 = load i64, ptr %120, align 8, !tbaa !14
  %122 = icmp ult i64 %121, 16
  call void @llvm.assume(i1 %122)
  br label %126

123:                                              ; preds = %115
  %124 = load i64, ptr %6, align 8, !tbaa !17
  %125 = add i64 %124, 1
  call void @_ZdlPvm(ptr noundef %117, i64 noundef %125) #29
  br label %126

126:                                              ; preds = %119, %123
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %116
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_940_5_321sys__native_str_rfindEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %6, ptr %3, align 8, !tbaa !8, !alias.scope !98
  br i1 %5, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %8, align 8, !tbaa !14, !alias.scope !98
  store i8 0, ptr %6, align 8, !tbaa !17, !alias.scope !98
  br label %26

9:                                                ; preds = %2
  %10 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !98
  %11 = icmp ugt i64 %10, 15
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = icmp ugt i64 %10, 9223372036854775806
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

15:                                               ; preds = %12
  %16 = add nuw nsw i64 %10, 1
  %17 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #28
  store ptr %17, ptr %3, align 8, !tbaa !18, !alias.scope !98
  store i64 %10, ptr %6, align 8, !tbaa !17, !alias.scope !98
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %17, %15 ], [ %6, %9 ]
  switch i64 %10, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %0, align 1, !tbaa !17, !noalias !98
  store i8 %21, ptr %19, align 1, !tbaa !17
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %10, ptr %24, align 8, !tbaa !14, !alias.scope !98
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %10
  store i8 0, ptr %25, align 1, !tbaa !17
  br label %26

26:                                               ; preds = %7, %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %27 = icmp eq ptr %1, null
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %28, ptr %4, align 8, !tbaa !8, !alias.scope !101
  br i1 %27, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !14
  %32 = icmp ult i64 %31, 9223372036854775807
  call void @llvm.assume(i1 %32)
  br label %75

33:                                               ; preds = %26
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13, !noalias !101
  %35 = icmp ugt i64 %34, 15
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = icmp ugt i64 %34, 9223372036854775806
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %39 unwind label %96

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %34, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #28
          to label %43 unwind label %96

43:                                               ; preds = %40
  store ptr %42, ptr %4, align 8, !tbaa !18, !alias.scope !101
  store i64 %34, ptr %28, align 8, !tbaa !17, !alias.scope !101
  br label %44

44:                                               ; preds = %43, %33
  %45 = phi ptr [ %42, %43 ], [ %28, %33 ]
  switch i64 %34, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %1, align 1, !tbaa !17, !noalias !101
  store i8 %47, ptr %45, align 1, !tbaa !17
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr nonnull align 1 %1, i64 %34, i1 false)
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %34, ptr %50, align 8, !tbaa !14, !alias.scope !101
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 %34
  store i8 0, ptr %51, align 1, !tbaa !17
  %52 = load ptr, ptr %4, align 8, !tbaa !18
  %53 = load i64, ptr %50, align 8, !tbaa !14
  %54 = icmp ult i64 %53, 9223372036854775807
  call void @llvm.assume(i1 %54)
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !14
  %57 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %57)
  %58 = icmp samesign ugt i64 %53, %56
  br i1 %58, label %71, label %59

59:                                               ; preds = %49
  %60 = sub nuw nsw i64 %56, %53
  %61 = load ptr, ptr %3, align 8, !tbaa !18
  %62 = icmp eq i64 %53, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59, %68
  %64 = phi i64 [ %69, %68 ], [ %60, %59 ]
  %65 = getelementptr inbounds nuw i8, ptr %61, i64 %64
  %66 = call i32 @bcmp(ptr %65, ptr %52, i64 %53)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = add i64 %64, -1
  %70 = icmp eq i64 %64, 0
  br i1 %70, label %71, label %63, !llvm.loop !104

71:                                               ; preds = %63, %68, %49, %59
  %72 = phi i64 [ %53, %49 ], [ 0, %59 ], [ %53, %68 ], [ %53, %63 ]
  %73 = phi i64 [ -1, %49 ], [ %60, %59 ], [ %64, %63 ], [ -1, %68 ]
  %74 = icmp eq ptr %52, %28
  br i1 %74, label %75, label %80

75:                                               ; preds = %29, %71
  %76 = phi i64 [ %31, %29 ], [ %73, %71 ]
  %77 = phi i64 [ 0, %29 ], [ %72, %71 ]
  %78 = phi ptr [ %30, %29 ], [ %55, %71 ]
  %79 = icmp samesign ult i64 %77, 16
  call void @llvm.assume(i1 %79)
  br label %83

80:                                               ; preds = %71
  %81 = load i64, ptr %28, align 8, !tbaa !17
  %82 = add i64 %81, 1
  call void @_ZdlPvm(ptr noundef %52, i64 noundef %82) #29
  br label %83

83:                                               ; preds = %75, %80
  %84 = phi i64 [ %76, %75 ], [ %73, %80 ]
  %85 = phi ptr [ %78, %75 ], [ %55, %80 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %86 = load ptr, ptr %3, align 8, !tbaa !18
  %87 = icmp eq ptr %86, %6
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i64, ptr %85, align 8, !tbaa !14
  %90 = icmp ult i64 %89, 16
  call void @llvm.assume(i1 %90)
  br label %94

91:                                               ; preds = %83
  %92 = load i64, ptr %6, align 8, !tbaa !17
  %93 = add i64 %92, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %93) #29
  br label %94

94:                                               ; preds = %88, %91
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  %95 = trunc i64 %84 to i32
  ret i32 %95

96:                                               ; preds = %40, %38
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %98 = load ptr, ptr %3, align 8, !tbaa !18
  %99 = icmp eq ptr %98, %6
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %102 = load i64, ptr %101, align 8, !tbaa !14
  %103 = icmp ult i64 %102, 16
  call void @llvm.assume(i1 %103)
  br label %107

104:                                              ; preds = %96
  %105 = load i64, ptr %6, align 8, !tbaa !17
  %106 = add i64 %105, 1
  call void @_ZdlPvm(ptr noundef %98, i64 noundef %106) #29
  br label %107

107:                                              ; preds = %100, %104
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %97
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_323sys__native_str_replaceEPKcS1_S1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %7, ptr %5, align 8, !tbaa !8, !alias.scope !105
  br i1 %6, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %9, align 8, !tbaa !14, !alias.scope !105
  store i8 0, ptr %7, align 8, !tbaa !17, !alias.scope !105
  br label %27

10:                                               ; preds = %3
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !105
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp ugt i64 %11, 9223372036854775806
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %11, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #28
  store ptr %18, ptr %5, align 8, !tbaa !18, !alias.scope !105
  store i64 %11, ptr %7, align 8, !tbaa !17, !alias.scope !105
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %7, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !17, !noalias !105
  store i8 %22, ptr %20, align 1, !tbaa !17
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !14, !alias.scope !105
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !17
  br label %27

27:                                               ; preds = %8, %24
  %28 = icmp eq ptr %1, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  br label %31

31:                                               ; preds = %27, %29
  %32 = phi i64 [ %30, %29 ], [ 0, %27 ]
  %33 = icmp eq ptr %2, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi i64 [ %35, %34 ], [ 0, %31 ]
  invoke void @_ZN12__apo_stdlib14replace_n_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_ES7_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5, i64 %32, ptr %1, i64 %37, ptr %2, i32 noundef -1)
          to label %38 unwind label %112

38:                                               ; preds = %36
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !22

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %114

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !8
  %54 = load ptr, ptr %4, align 8, !tbaa !18
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !14
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !18
  %63 = load i64, ptr %55, align 8, !tbaa !17
  store i64 %63, ptr %53, align 8, !tbaa !17
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !14
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !14
  store ptr %55, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %68, align 8, !tbaa !14
  store i8 0, ptr %55, align 8, !tbaa !17
  %71 = load ptr, ptr %46, align 8, !tbaa !23
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !23
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %114

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !30, !noalias !108
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !34, !noalias !108
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !35, !noalias !108
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !36
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = load ptr, ptr %4, align 8, !tbaa !18
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %96 = load i64, ptr %95, align 8, !tbaa !14
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %101

98:                                               ; preds = %87
  %99 = load i64, ptr %92, align 8, !tbaa !17
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %100) #29
  br label %101

101:                                              ; preds = %94, %98
  %102 = load ptr, ptr %5, align 8, !tbaa !18
  %103 = icmp eq ptr %102, %7
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %106 = load i64, ptr %105, align 8, !tbaa !14
  %107 = icmp ult i64 %106, 16
  call void @llvm.assume(i1 %107)
  br label %111

108:                                              ; preds = %101
  %109 = load i64, ptr %7, align 8, !tbaa !17
  %110 = add i64 %109, 1
  call void @_ZdlPvm(ptr noundef %102, i64 noundef %110) #29
  br label %111

111:                                              ; preds = %104, %108
  ret ptr %90

112:                                              ; preds = %36
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %126

114:                                              ; preds = %73, %41
  %115 = landingpad { ptr, i32 }
          cleanup
  %116 = load ptr, ptr %4, align 8, !tbaa !18
  %117 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %121 = load i64, ptr %120, align 8, !tbaa !14
  %122 = icmp ult i64 %121, 16
  call void @llvm.assume(i1 %122)
  br label %126

123:                                              ; preds = %114
  %124 = load i64, ptr %117, align 8, !tbaa !17
  %125 = add i64 %124, 1
  call void @_ZdlPvm(ptr noundef %116, i64 noundef %125) #29
  br label %126

126:                                              ; preds = %123, %119, %112
  %127 = phi { ptr, i32 } [ %113, %112 ], [ %115, %119 ], [ %115, %123 ]
  %128 = load ptr, ptr %5, align 8, !tbaa !18
  %129 = icmp eq ptr %128, %7
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %132 = load i64, ptr %131, align 8, !tbaa !14
  %133 = icmp ult i64 %132, 16
  call void @llvm.assume(i1 %133)
  br label %137

134:                                              ; preds = %126
  %135 = load i64, ptr %7, align 8, !tbaa !17
  %136 = add i64 %135, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %136) #29
  br label %137

137:                                              ; preds = %130, %134
  resume { ptr, i32 } %127
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14replace_n_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_ES7_i(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 %2, ptr %3, i64 %4, ptr %5, i32 noundef %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %8 = icmp eq i64 %2, 0
  %9 = icmp eq i32 %6, 0
  %10 = or i1 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %32

13:                                               ; preds = %7
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %14, ptr %0, align 8, !tbaa !8
  %15 = load ptr, ptr %1, align 8, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !14
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  %22 = add nuw nsw i64 %20, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %16, i64 %22, i1 false)
  br label %27

23:                                               ; preds = %13
  store ptr %15, ptr %0, align 8, !tbaa !18
  %24 = load i64, ptr %16, align 8, !tbaa !17
  store i64 %24, ptr %14, align 8, !tbaa !17
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !14
  br label %27

27:                                               ; preds = %18, %23
  %28 = phi i64 [ %20, %18 ], [ %26, %23 ]
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  tail call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %28, ptr %31, align 8, !tbaa !14
  store ptr %16, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %29, align 8, !tbaa !14
  store i8 0, ptr %16, align 1, !tbaa !17
  br label %100

32:                                               ; preds = %11, %74
  %33 = phi i32 [ %6, %11 ], [ %80, %74 ]
  %34 = phi i64 [ 0, %11 ], [ %78, %74 ]
  %35 = icmp sgt i32 %33, 0
  %36 = load i64, ptr %12, align 8, !tbaa !14
  %37 = icmp ult i64 %36, 9223372036854775807
  tail call void @llvm.assume(i1 %37)
  %38 = icmp ult i64 %34, %36
  %39 = load ptr, ptr %1, align 8, !tbaa !18
  br i1 %38, label %40, label %84

40:                                               ; preds = %32
  %41 = sub nuw nsw i64 %36, %34
  %42 = icmp ult i64 %41, %2
  br i1 %42, label %84, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %36
  %45 = getelementptr inbounds nuw i8, ptr %39, i64 %34
  %46 = load i8, ptr %3, align 1, !tbaa !17
  %47 = sext i8 %46 to i32
  %48 = ptrtoint ptr %44 to i64
  br label %49

49:                                               ; preds = %61, %43
  %50 = phi i64 [ %41, %43 ], [ %64, %61 ]
  %51 = phi ptr [ %45, %43 ], [ %62, %61 ]
  %52 = sub nuw i64 %50, %2
  %53 = add i64 %52, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %49
  %56 = tail call ptr @memchr(ptr noundef %51, i32 noundef %47, i64 noundef %53) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %84, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @bcmp(ptr nonnull %56, ptr nonnull %3, i64 %2)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds nuw i8, ptr %56, i64 1
  %63 = ptrtoint ptr %62 to i64
  %64 = sub i64 %48, %63
  %65 = icmp ult i64 %64, %2
  br i1 %65, label %84, label %49, !llvm.loop !91

66:                                               ; preds = %58
  %67 = ptrtoint ptr %56 to i64
  %68 = ptrtoint ptr %39 to i64
  %69 = sub i64 %67, %68
  %70 = icmp eq i64 %69, -1
  br i1 %70, label %84, label %71

71:                                               ; preds = %66
  %72 = icmp ugt i64 %69, %36
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i64 noundef %69, i64 noundef %36) #27
  unreachable

74:                                               ; preds = %71
  %75 = sub nuw nsw i64 %36, %69
  %76 = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %75)
  %77 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %69, i64 noundef %76, ptr noundef %5, i64 noundef %4)
  %78 = add i64 %69, %4
  %79 = sext i1 %35 to i32
  %80 = add nsw i32 %33, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %32

82:                                               ; preds = %74
  %83 = load ptr, ptr %1, align 8, !tbaa !18
  br label %84

84:                                               ; preds = %40, %66, %32, %49, %55, %61, %82
  %85 = phi ptr [ %83, %82 ], [ %39, %61 ], [ %39, %55 ], [ %39, %49 ], [ %39, %32 ], [ %39, %66 ], [ %39, %40 ]
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %86, ptr %0, align 8, !tbaa !8
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %88 = icmp eq ptr %85, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i64, ptr %12, align 8, !tbaa !14
  %91 = icmp ult i64 %90, 16
  tail call void @llvm.assume(i1 %91)
  %92 = add nuw nsw i64 %90, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 8 dereferenceable(1) %87, i64 %92, i1 false)
  br label %96

93:                                               ; preds = %84
  store ptr %85, ptr %0, align 8, !tbaa !18
  %94 = load i64, ptr %87, align 8, !tbaa !17
  store i64 %94, ptr %86, align 8, !tbaa !17
  %95 = load i64, ptr %12, align 8, !tbaa !14
  br label %96

96:                                               ; preds = %89, %93
  %97 = phi i64 [ %90, %89 ], [ %95, %93 ]
  %98 = icmp ult i64 %97, 9223372036854775807
  tail call void @llvm.assume(i1 %98)
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %97, ptr %99, align 8, !tbaa !14
  store ptr %87, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %12, align 8, !tbaa !14
  store i8 0, ptr %87, align 1, !tbaa !17
  br label %100

100:                                              ; preds = %96, %27
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_replace_nEPKcS1_S1_i(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %8, ptr %6, align 8, !tbaa !8, !alias.scope !111
  br i1 %7, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %10, align 8, !tbaa !14, !alias.scope !111
  store i8 0, ptr %8, align 8, !tbaa !17, !alias.scope !111
  br label %28

11:                                               ; preds = %4
  %12 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !111
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = icmp ugt i64 %12, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %12, 1
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #28
  store ptr %19, ptr %6, align 8, !tbaa !18, !alias.scope !111
  store i64 %12, ptr %8, align 8, !tbaa !17, !alias.scope !111
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %19, %17 ], [ %8, %11 ]
  switch i64 %12, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %0, align 1, !tbaa !17, !noalias !111
  store i8 %23, ptr %21, align 1, !tbaa !17
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %0, i64 %12, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %12, ptr %26, align 8, !tbaa !14, !alias.scope !111
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %12
  store i8 0, ptr %27, align 1, !tbaa !17
  br label %28

28:                                               ; preds = %9, %25
  %29 = icmp eq ptr %1, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  br label %32

32:                                               ; preds = %28, %30
  %33 = phi i64 [ %31, %30 ], [ 0, %28 ]
  %34 = icmp eq ptr %2, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i64 [ %36, %35 ], [ 0, %32 ]
  invoke void @_ZN12__apo_stdlib14replace_n_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_ES7_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull %6, i64 %33, ptr %1, i64 %38, ptr %2, i32 noundef %3)
          to label %39 unwind label %113

39:                                               ; preds = %37
  %40 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45, !prof !22

42:                                               ; preds = %39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %43 unwind label %115

43:                                               ; preds = %42
  %44 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %48 = load ptr, ptr %47, align 8, !tbaa !23
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = icmp eq ptr %48, %51
  br i1 %52, label %74, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %54, ptr %48, align 8, !tbaa !8
  %55 = load ptr, ptr %5, align 8, !tbaa !18
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  %62 = add nuw nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %56, i64 %62, i1 false)
  br label %67

63:                                               ; preds = %53
  store ptr %55, ptr %48, align 8, !tbaa !18
  %64 = load i64, ptr %56, align 8, !tbaa !17
  store i64 %64, ptr %54, align 8, !tbaa !17
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %66 = load i64, ptr %65, align 8, !tbaa !14
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i64 [ %66, %63 ], [ %60, %58 ]
  %69 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %70 = icmp ult i64 %68, 9223372036854775807
  call void @llvm.assume(i1 %70)
  %71 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %68, ptr %71, align 8, !tbaa !14
  store ptr %56, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %69, align 8, !tbaa !14
  store i8 0, ptr %56, align 8, !tbaa !17
  %72 = load ptr, ptr %47, align 8, !tbaa !23
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 32
  store ptr %73, ptr %47, align 8, !tbaa !23
  br label %77

74:                                               ; preds = %45
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %46, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %75 unwind label %115

75:                                               ; preds = %74
  %76 = load ptr, ptr %47, align 8, !tbaa !30, !noalias !114
  br label %77

77:                                               ; preds = %75, %67
  %78 = phi ptr [ %73, %67 ], [ %76, %75 ]
  %79 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %80 = load ptr, ptr %79, align 8, !tbaa !34, !noalias !114
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = getelementptr inbounds nuw i8, ptr %46, i64 72
  %84 = load ptr, ptr %83, align 8, !tbaa !35, !noalias !114
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load ptr, ptr %85, align 8, !tbaa !36
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 512
  br label %88

88:                                               ; preds = %82, %77
  %89 = phi ptr [ %87, %82 ], [ %78, %77 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 -32
  %91 = load ptr, ptr %90, align 8, !tbaa !18
  %92 = load ptr, ptr %5, align 8, !tbaa !18
  %93 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %97 = load i64, ptr %96, align 8, !tbaa !14
  %98 = icmp ult i64 %97, 16
  call void @llvm.assume(i1 %98)
  br label %102

99:                                               ; preds = %88
  %100 = load i64, ptr %93, align 8, !tbaa !17
  %101 = add i64 %100, 1
  call void @_ZdlPvm(ptr noundef %92, i64 noundef %101) #29
  br label %102

102:                                              ; preds = %95, %99
  %103 = load ptr, ptr %6, align 8, !tbaa !18
  %104 = icmp eq ptr %103, %8
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %107 = load i64, ptr %106, align 8, !tbaa !14
  %108 = icmp ult i64 %107, 16
  call void @llvm.assume(i1 %108)
  br label %112

109:                                              ; preds = %102
  %110 = load i64, ptr %8, align 8, !tbaa !17
  %111 = add i64 %110, 1
  call void @_ZdlPvm(ptr noundef %103, i64 noundef %111) #29
  br label %112

112:                                              ; preds = %105, %109
  ret ptr %91

113:                                              ; preds = %37
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %127

115:                                              ; preds = %74, %42
  %116 = landingpad { ptr, i32 }
          cleanup
  %117 = load ptr, ptr %5, align 8, !tbaa !18
  %118 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %122 = load i64, ptr %121, align 8, !tbaa !14
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  br label %127

124:                                              ; preds = %115
  %125 = load i64, ptr %118, align 8, !tbaa !17
  %126 = add i64 %125, 1
  call void @_ZdlPvm(ptr noundef %117, i64 noundef %126) #29
  br label %127

127:                                              ; preds = %124, %120, %113
  %128 = phi { ptr, i32 } [ %114, %113 ], [ %116, %120 ], [ %116, %124 ]
  %129 = load ptr, ptr %6, align 8, !tbaa !18
  %130 = icmp eq ptr %129, %8
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %133 = load i64, ptr %132, align 8, !tbaa !14
  %134 = icmp ult i64 %133, 16
  call void @llvm.assume(i1 %134)
  br label %138

135:                                              ; preds = %127
  %136 = load i64, ptr %8, align 8, !tbaa !17
  %137 = add i64 %136, 1
  call void @_ZdlPvm(ptr noundef %129, i64 noundef %137) #29
  br label %138

138:                                              ; preds = %131, %135
  resume { ptr, i32 } %128
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_323sys__native_str_reverseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !8, !alias.scope !117
  br i1 %4, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !14, !alias.scope !117
  store i8 0, ptr %5, align 8, !tbaa !17, !alias.scope !117
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %9, ptr %2, align 8, !tbaa !8, !alias.scope !120
  br label %49

10:                                               ; preds = %1
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !117
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp ugt i64 %11, 9223372036854775806
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %11, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #28
  store ptr %18, ptr %3, align 8, !tbaa !18, !alias.scope !117
  store i64 %11, ptr %5, align 8, !tbaa !17, !alias.scope !117
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %5, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !17, !noalias !117
  store i8 %22, ptr %20, align 1, !tbaa !17
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %19, %21, %23
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !14, !alias.scope !117
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !17
  %27 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !120
  %28 = load i64, ptr %25, align 8, !tbaa !14, !noalias !120
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = icmp samesign ugt i64 %28, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  %34 = getelementptr inbounds i8, ptr %33, i64 -1
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %41, %35 ], [ %34, %32 ]
  %37 = phi ptr [ %40, %35 ], [ %27, %32 ]
  %38 = load i8, ptr %37, align 1, !tbaa !17, !noalias !120
  %39 = load i8, ptr %36, align 1, !tbaa !17, !noalias !120
  store i8 %39, ptr %37, align 1, !tbaa !17, !noalias !120
  store i8 %38, ptr %36, align 1, !tbaa !17, !noalias !120
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 1
  %41 = getelementptr inbounds i8, ptr %36, i64 -1
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %35, label %43, !llvm.loop !123

43:                                               ; preds = %35
  %44 = load ptr, ptr %3, align 8, !tbaa !18, !noalias !120
  br label %45

45:                                               ; preds = %43, %24
  %46 = phi ptr [ %44, %43 ], [ %27, %24 ]
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %47, ptr %2, align 8, !tbaa !8, !alias.scope !120
  %48 = icmp eq ptr %46, %5
  br i1 %48, label %49, label %55

49:                                               ; preds = %6, %45
  %50 = phi ptr [ %9, %6 ], [ %47, %45 ]
  %51 = phi ptr [ %8, %6 ], [ %29, %45 ]
  %52 = load i64, ptr %51, align 8, !tbaa !14, !noalias !120
  %53 = icmp ult i64 %52, 16
  call void @llvm.assume(i1 %53)
  %54 = add nuw nsw i64 %52, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %54, i1 false)
  br label %58

55:                                               ; preds = %45
  store ptr %46, ptr %2, align 8, !tbaa !18, !alias.scope !120
  %56 = load i64, ptr %5, align 8, !tbaa !17, !noalias !120
  store i64 %56, ptr %47, align 8, !tbaa !17, !alias.scope !120
  %57 = load i64, ptr %29, align 8, !tbaa !14, !noalias !120
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %50, %49 ], [ %47, %55 ]
  %60 = phi ptr [ %51, %49 ], [ %29, %55 ]
  %61 = phi i64 [ %52, %49 ], [ %57, %55 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !14, !alias.scope !120
  store ptr %5, ptr %3, align 8, !tbaa !18, !noalias !120
  store i64 0, ptr %60, align 8, !tbaa !14, !noalias !120
  store i8 0, ptr %5, align 8, !tbaa !17, !noalias !120
  %64 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69, !prof !22

66:                                               ; preds = %58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %67 unwind label %130

67:                                               ; preds = %66
  %68 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %69

69:                                               ; preds = %67, %58
  %70 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 48
  %72 = load ptr, ptr %71, align 8, !tbaa !23
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 64
  %74 = load ptr, ptr %73, align 8, !tbaa !29
  %75 = getelementptr inbounds i8, ptr %74, i64 -32
  %76 = icmp eq ptr %72, %75
  br i1 %76, label %94, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds nuw i8, ptr %72, i64 16
  store ptr %78, ptr %72, align 8, !tbaa !8
  %79 = load ptr, ptr %2, align 8, !tbaa !18
  %80 = icmp eq ptr %79, %59
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, ptr %63, align 8, !tbaa !14
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  %84 = add nuw nsw i64 %82, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %78, ptr noundef nonnull align 8 dereferenceable(1) %59, i64 %84, i1 false)
  br label %88

85:                                               ; preds = %77
  store ptr %79, ptr %72, align 8, !tbaa !18
  %86 = load i64, ptr %59, align 8, !tbaa !17
  store i64 %86, ptr %78, align 8, !tbaa !17
  %87 = load i64, ptr %63, align 8, !tbaa !14
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi i64 [ %87, %85 ], [ %82, %81 ]
  %90 = icmp ult i64 %89, 9223372036854775807
  call void @llvm.assume(i1 %90)
  %91 = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 %89, ptr %91, align 8, !tbaa !14
  store ptr %59, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %59, align 1, !tbaa !17
  %92 = load ptr, ptr %71, align 8, !tbaa !23
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 32
  store ptr %93, ptr %71, align 8, !tbaa !23
  br label %97

94:                                               ; preds = %69
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %70, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %95 unwind label %130

95:                                               ; preds = %94
  %96 = load ptr, ptr %71, align 8, !tbaa !30, !noalias !124
  br label %97

97:                                               ; preds = %95, %88
  %98 = phi ptr [ %93, %88 ], [ %96, %95 ]
  %99 = getelementptr inbounds nuw i8, ptr %70, i64 56
  %100 = load ptr, ptr %99, align 8, !tbaa !34, !noalias !124
  %101 = icmp eq ptr %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %70, i64 72
  %104 = load ptr, ptr %103, align 8, !tbaa !35, !noalias !124
  %105 = getelementptr inbounds i8, ptr %104, i64 -8
  %106 = load ptr, ptr %105, align 8, !tbaa !36
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 512
  br label %108

108:                                              ; preds = %102, %97
  %109 = phi ptr [ %107, %102 ], [ %98, %97 ]
  %110 = getelementptr inbounds i8, ptr %109, i64 -32
  %111 = load ptr, ptr %110, align 8, !tbaa !18
  %112 = load ptr, ptr %2, align 8, !tbaa !18
  %113 = icmp eq ptr %112, %59
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i64, ptr %63, align 8, !tbaa !14
  %116 = icmp ult i64 %115, 16
  call void @llvm.assume(i1 %116)
  br label %120

117:                                              ; preds = %108
  %118 = load i64, ptr %59, align 8, !tbaa !17
  %119 = add i64 %118, 1
  call void @_ZdlPvm(ptr noundef %112, i64 noundef %119) #29
  br label %120

120:                                              ; preds = %114, %117
  %121 = load ptr, ptr %3, align 8, !tbaa !18
  %122 = icmp eq ptr %121, %5
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i64, ptr %60, align 8, !tbaa !14
  %125 = icmp ult i64 %124, 16
  call void @llvm.assume(i1 %125)
  br label %129

126:                                              ; preds = %120
  %127 = load i64, ptr %5, align 8, !tbaa !17
  %128 = add i64 %127, 1
  call void @_ZdlPvm(ptr noundef %121, i64 noundef %128) #29
  br label %129

129:                                              ; preds = %123, %126
  ret ptr %111

130:                                              ; preds = %94, %66
  %131 = landingpad { ptr, i32 }
          cleanup
  %132 = load ptr, ptr %2, align 8, !tbaa !18
  %133 = icmp eq ptr %132, %59
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i64, ptr %63, align 8, !tbaa !14
  %136 = icmp ult i64 %135, 16
  call void @llvm.assume(i1 %136)
  br label %140

137:                                              ; preds = %130
  %138 = load i64, ptr %59, align 8, !tbaa !17
  %139 = add i64 %138, 1
  call void @_ZdlPvm(ptr noundef %132, i64 noundef %139) #29
  br label %140

140:                                              ; preds = %137, %134
  %141 = load ptr, ptr %3, align 8, !tbaa !18
  %142 = icmp eq ptr %141, %5
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i64, ptr %60, align 8, !tbaa !14
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %149

146:                                              ; preds = %140
  %147 = load i64, ptr %5, align 8, !tbaa !17
  %148 = add i64 %147, 1
  call void @_ZdlPvm(ptr noundef %141, i64 noundef %148) #29
  br label %149

149:                                              ; preds = %143, %146
  resume { ptr, i32 } %131
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_322sys__native_str_repeatEPKci(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %6, ptr %3, align 8, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !14
  store i8 0, ptr %6, align 8, !tbaa !17
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %10, ptr %5, align 8, !tbaa !8
  br label %106

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %12 = icmp eq ptr %0, null
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !8, !alias.scope !127
  br i1 %12, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %15, align 8, !tbaa !14, !alias.scope !127
  store i8 0, ptr %13, align 8, !tbaa !17, !alias.scope !127
  br label %35

16:                                               ; preds = %11
  %17 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !127
  %18 = icmp ugt i64 %17, 15
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = icmp ugt i64 %17, 9223372036854775806
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %22 unwind label %47

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %19
  %24 = add nuw nsw i64 %17, 1
  %25 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #28
          to label %26 unwind label %47

26:                                               ; preds = %23
  store ptr %25, ptr %4, align 8, !tbaa !18, !alias.scope !127
  store i64 %17, ptr %13, align 8, !tbaa !17, !alias.scope !127
  br label %27

27:                                               ; preds = %26, %16
  %28 = phi ptr [ %25, %26 ], [ %13, %16 ]
  switch i64 %17, label %31 [
    i64 1, label %29
    i64 0, label %32
  ]

29:                                               ; preds = %27
  %30 = load i8, ptr %0, align 1, !tbaa !17, !noalias !127
  store i8 %30, ptr %28, align 1, !tbaa !17
  br label %32

31:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr nonnull align 1 %0, i64 %17, i1 false)
  br label %32

32:                                               ; preds = %31, %29, %27
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %17, ptr %33, align 8, !tbaa !14, !alias.scope !127
  %34 = getelementptr inbounds nuw i8, ptr %28, i64 %17
  store i8 0, ptr %34, align 1, !tbaa !17
  br label %35

35:                                               ; preds = %32, %14
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %49

37:                                               ; preds = %81
  %38 = load ptr, ptr %4, align 8, !tbaa !18
  %39 = icmp eq ptr %38, %13
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !14
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  br label %102

44:                                               ; preds = %37
  %45 = load i64, ptr %13, align 8, !tbaa !17
  %46 = add i64 %45, 1
  call void @_ZdlPvm(ptr noundef %38, i64 noundef %46) #29
  br label %102

47:                                               ; preds = %23, %21
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %100

49:                                               ; preds = %35, %81
  %50 = phi i32 [ 0, %35 ], [ %84, %81 ]
  %51 = load ptr, ptr %4, align 8, !tbaa !18
  %52 = load i64, ptr %36, align 8, !tbaa !14
  %53 = icmp ult i64 %52, 9223372036854775807
  call void @llvm.assume(i1 %53)
  %54 = load i64, ptr %7, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 9223372036854775807
  call void @llvm.assume(i1 %55)
  %56 = sub nuw nsw i64 9223372036854775806, %54
  %57 = icmp samesign ult i64 %56, %52
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %59 unwind label %88

59:                                               ; preds = %58
  unreachable

60:                                               ; preds = %49
  %61 = add nuw i64 %54, %52
  %62 = load ptr, ptr %3, align 8, !tbaa !18
  %63 = icmp eq ptr %62, %6
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = icmp samesign ult i64 %54, 16
  call void @llvm.assume(i1 %65)
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i64, ptr %6, align 8
  %68 = select i1 %63, i64 15, i64 %67
  %69 = icmp samesign ugt i64 %68, 14
  call void @llvm.assume(i1 %69)
  %70 = icmp ult i64 %68, 9223372036854775807
  call void @llvm.assume(i1 %70)
  %71 = icmp ugt i64 %61, %68
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = icmp eq i64 %52, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds nuw i8, ptr %62, i64 %54
  %76 = icmp eq i64 %52, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i8, ptr %51, align 1, !tbaa !17
  store i8 %78, ptr %75, align 1, !tbaa !17
  br label %81

79:                                               ; preds = %74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %75, ptr align 1 %51, i64 %52, i1 false)
  br label %81

80:                                               ; preds = %66
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %54, i64 noundef 0, ptr noundef %51, i64 noundef %52)
          to label %81 unwind label %86

81:                                               ; preds = %79, %77, %72, %80
  store i64 %61, ptr %7, align 8, !tbaa !14
  %82 = load ptr, ptr %3, align 8, !tbaa !18
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 %61
  store i8 0, ptr %83, align 1, !tbaa !17
  %84 = add nuw nsw i32 %50, 1
  %85 = icmp eq i32 %84, %1
  br i1 %85, label %37, label %49, !llvm.loop !130

86:                                               ; preds = %80
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %90

88:                                               ; preds = %58
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %87, %86 ], [ %89, %88 ]
  %92 = load ptr, ptr %4, align 8, !tbaa !18
  %93 = icmp eq ptr %92, %13
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64, ptr %36, align 8, !tbaa !14
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  br label %100

97:                                               ; preds = %90
  %98 = load i64, ptr %13, align 8, !tbaa !17
  %99 = add i64 %98, 1
  call void @_ZdlPvm(ptr noundef %92, i64 noundef %99) #29
  br label %100

100:                                              ; preds = %97, %94, %47
  %101 = phi { ptr, i32 } [ %48, %47 ], [ %91, %94 ], [ %91, %97 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %195

102:                                              ; preds = %44, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %103 = load ptr, ptr %3, align 8, !tbaa !18
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %104, ptr %5, align 8, !tbaa !8
  %105 = icmp eq ptr %103, %6
  br i1 %105, label %106, label %111

106:                                              ; preds = %9, %102
  %107 = phi ptr [ %10, %9 ], [ %104, %102 ]
  %108 = load i64, ptr %7, align 8, !tbaa !14
  %109 = icmp ult i64 %108, 16
  call void @llvm.assume(i1 %109)
  %110 = add nuw nsw i64 %108, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %107, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %110, i1 false)
  br label %114

111:                                              ; preds = %102
  store ptr %103, ptr %5, align 8, !tbaa !18
  %112 = load i64, ptr %6, align 8, !tbaa !17
  store i64 %112, ptr %104, align 8, !tbaa !17
  %113 = load i64, ptr %7, align 8, !tbaa !14
  br label %114

114:                                              ; preds = %106, %111
  %115 = phi ptr [ %107, %106 ], [ %104, %111 ]
  %116 = phi i64 [ %108, %106 ], [ %113, %111 ]
  %117 = icmp ult i64 %116, 9223372036854775807
  call void @llvm.assume(i1 %117)
  %118 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %116, ptr %118, align 8, !tbaa !14
  store ptr %6, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %7, align 8, !tbaa !14
  store i8 0, ptr %6, align 8, !tbaa !17
  %119 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %124, !prof !22

121:                                              ; preds = %114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %122 unwind label %185

122:                                              ; preds = %121
  %123 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %124

124:                                              ; preds = %122, %114
  %125 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 48
  %127 = load ptr, ptr %126, align 8, !tbaa !23
  %128 = getelementptr inbounds nuw i8, ptr %125, i64 64
  %129 = load ptr, ptr %128, align 8, !tbaa !29
  %130 = getelementptr inbounds i8, ptr %129, i64 -32
  %131 = icmp eq ptr %127, %130
  br i1 %131, label %149, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds nuw i8, ptr %127, i64 16
  store ptr %133, ptr %127, align 8, !tbaa !8
  %134 = load ptr, ptr %5, align 8, !tbaa !18
  %135 = icmp eq ptr %134, %115
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i64, ptr %118, align 8, !tbaa !14
  %138 = icmp ult i64 %137, 16
  call void @llvm.assume(i1 %138)
  %139 = add nuw nsw i64 %137, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %133, ptr noundef nonnull align 8 dereferenceable(1) %115, i64 %139, i1 false)
  br label %143

140:                                              ; preds = %132
  store ptr %134, ptr %127, align 8, !tbaa !18
  %141 = load i64, ptr %115, align 8, !tbaa !17
  store i64 %141, ptr %133, align 8, !tbaa !17
  %142 = load i64, ptr %118, align 8, !tbaa !14
  br label %143

143:                                              ; preds = %140, %136
  %144 = phi i64 [ %142, %140 ], [ %137, %136 ]
  %145 = icmp ult i64 %144, 9223372036854775807
  call void @llvm.assume(i1 %145)
  %146 = getelementptr inbounds nuw i8, ptr %127, i64 8
  store i64 %144, ptr %146, align 8, !tbaa !14
  store ptr %115, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %118, align 8, !tbaa !14
  store i8 0, ptr %115, align 1, !tbaa !17
  %147 = load ptr, ptr %126, align 8, !tbaa !23
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 32
  store ptr %148, ptr %126, align 8, !tbaa !23
  br label %152

149:                                              ; preds = %124
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %125, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %150 unwind label %185

150:                                              ; preds = %149
  %151 = load ptr, ptr %126, align 8, !tbaa !30, !noalias !131
  br label %152

152:                                              ; preds = %150, %143
  %153 = phi ptr [ %148, %143 ], [ %151, %150 ]
  %154 = getelementptr inbounds nuw i8, ptr %125, i64 56
  %155 = load ptr, ptr %154, align 8, !tbaa !34, !noalias !131
  %156 = icmp eq ptr %153, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = getelementptr inbounds nuw i8, ptr %125, i64 72
  %159 = load ptr, ptr %158, align 8, !tbaa !35, !noalias !131
  %160 = getelementptr inbounds i8, ptr %159, i64 -8
  %161 = load ptr, ptr %160, align 8, !tbaa !36
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 512
  br label %163

163:                                              ; preds = %157, %152
  %164 = phi ptr [ %162, %157 ], [ %153, %152 ]
  %165 = getelementptr inbounds i8, ptr %164, i64 -32
  %166 = load ptr, ptr %165, align 8, !tbaa !18
  %167 = load ptr, ptr %5, align 8, !tbaa !18
  %168 = icmp eq ptr %167, %115
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i64, ptr %118, align 8, !tbaa !14
  %171 = icmp ult i64 %170, 16
  call void @llvm.assume(i1 %171)
  br label %175

172:                                              ; preds = %163
  %173 = load i64, ptr %115, align 8, !tbaa !17
  %174 = add i64 %173, 1
  call void @_ZdlPvm(ptr noundef %167, i64 noundef %174) #29
  br label %175

175:                                              ; preds = %169, %172
  %176 = load ptr, ptr %3, align 8, !tbaa !18
  %177 = icmp eq ptr %176, %6
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i64, ptr %7, align 8, !tbaa !14
  %180 = icmp ult i64 %179, 16
  call void @llvm.assume(i1 %180)
  br label %184

181:                                              ; preds = %175
  %182 = load i64, ptr %6, align 8, !tbaa !17
  %183 = add i64 %182, 1
  call void @_ZdlPvm(ptr noundef %176, i64 noundef %183) #29
  br label %184

184:                                              ; preds = %178, %181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret ptr %166

185:                                              ; preds = %149, %121
  %186 = landingpad { ptr, i32 }
          cleanup
  %187 = load ptr, ptr %5, align 8, !tbaa !18
  %188 = icmp eq ptr %187, %115
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i64, ptr %118, align 8, !tbaa !14
  %191 = icmp ult i64 %190, 16
  call void @llvm.assume(i1 %191)
  br label %195

192:                                              ; preds = %185
  %193 = load i64, ptr %115, align 8, !tbaa !17
  %194 = add i64 %193, 1
  call void @_ZdlPvm(ptr noundef %187, i64 noundef %194) #29
  br label %195

195:                                              ; preds = %192, %189, %100
  %196 = phi { ptr, i32 } [ %101, %100 ], [ %186, %189 ], [ %186, %192 ]
  %197 = load ptr, ptr %3, align 8, !tbaa !18
  %198 = icmp eq ptr %197, %6
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i64, ptr %7, align 8, !tbaa !14
  %201 = icmp ult i64 %200, 16
  call void @llvm.assume(i1 %201)
  br label %205

202:                                              ; preds = %195
  %203 = load i64, ptr %6, align 8, !tbaa !17
  %204 = add i64 %203, 1
  call void @_ZdlPvm(ptr noundef %197, i64 noundef %204) #29
  br label %205

205:                                              ; preds = %199, %202
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %196
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_324sys__native_str_pad_leftEPKciS1_(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %7, ptr %4, align 8, !tbaa !8, !alias.scope !134
  br i1 %6, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %9, align 8, !tbaa !14, !alias.scope !134
  store i8 0, ptr %7, align 8, !tbaa !17, !alias.scope !134
  br label %27

10:                                               ; preds = %3
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !134
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp ugt i64 %11, 9223372036854775806
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %11, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #28
  store ptr %18, ptr %4, align 8, !tbaa !18, !alias.scope !134
  store i64 %11, ptr %7, align 8, !tbaa !17, !alias.scope !134
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %7, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !17, !noalias !134
  store i8 %22, ptr %20, align 1, !tbaa !17
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !14, !alias.scope !134
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !17
  br label %27

27:                                               ; preds = %8, %24
  %28 = icmp eq ptr %2, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = load i8, ptr %2, align 1
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i8 32, i8 %30
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i8 [ 32, %27 ], [ %32, %29 ]
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %36

36:                                               ; preds = %41, %33
  %37 = load i64, ptr %35, align 8, !tbaa !14
  %38 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = trunc i64 %37 to i32
  %40 = icmp sgt i32 %1, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 8, !tbaa !18
  %43 = invoke ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %42, i8 noundef signext %34)
          to label %36 unwind label %44, !llvm.loop !137

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %133

46:                                               ; preds = %36
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %47, ptr %5, align 8, !tbaa !8
  %48 = load ptr, ptr %4, align 8, !tbaa !18
  %49 = icmp eq ptr %48, %7
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = icmp samesign ult i64 %37, 16
  call void @llvm.assume(i1 %51)
  %52 = add nuw nsw i64 %37, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %47, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %52, i1 false)
  br label %55

53:                                               ; preds = %46
  store ptr %48, ptr %5, align 8, !tbaa !18
  %54 = load i64, ptr %7, align 8, !tbaa !17
  store i64 %54, ptr %47, align 8, !tbaa !17
  br label %55

55:                                               ; preds = %50, %53
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %37, ptr %56, align 8, !tbaa !14
  store ptr %7, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %35, align 8, !tbaa !14
  store i8 0, ptr %7, align 8, !tbaa !17
  %57 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62, !prof !22

59:                                               ; preds = %55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %60 unwind label %123

60:                                               ; preds = %59
  %61 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 48
  %65 = load ptr, ptr %64, align 8, !tbaa !23
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %67 = load ptr, ptr %66, align 8, !tbaa !29
  %68 = getelementptr inbounds i8, ptr %67, i64 -32
  %69 = icmp eq ptr %65, %68
  br i1 %69, label %87, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 16
  store ptr %71, ptr %65, align 8, !tbaa !8
  %72 = load ptr, ptr %5, align 8, !tbaa !18
  %73 = icmp eq ptr %72, %47
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i64, ptr %56, align 8, !tbaa !14
  %76 = icmp ult i64 %75, 16
  call void @llvm.assume(i1 %76)
  %77 = add nuw nsw i64 %75, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, ptr noundef nonnull align 8 dereferenceable(1) %47, i64 %77, i1 false)
  br label %81

78:                                               ; preds = %70
  store ptr %72, ptr %65, align 8, !tbaa !18
  %79 = load i64, ptr %47, align 8, !tbaa !17
  store i64 %79, ptr %71, align 8, !tbaa !17
  %80 = load i64, ptr %56, align 8, !tbaa !14
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i64 [ %80, %78 ], [ %75, %74 ]
  %83 = icmp ult i64 %82, 9223372036854775807
  call void @llvm.assume(i1 %83)
  %84 = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %82, ptr %84, align 8, !tbaa !14
  store ptr %47, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %56, align 8, !tbaa !14
  store i8 0, ptr %47, align 8, !tbaa !17
  %85 = load ptr, ptr %64, align 8, !tbaa !23
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  store ptr %86, ptr %64, align 8, !tbaa !23
  br label %90

87:                                               ; preds = %62
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %63, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %88 unwind label %123

88:                                               ; preds = %87
  %89 = load ptr, ptr %64, align 8, !tbaa !30, !noalias !138
  br label %90

90:                                               ; preds = %88, %81
  %91 = phi ptr [ %86, %81 ], [ %89, %88 ]
  %92 = getelementptr inbounds nuw i8, ptr %63, i64 56
  %93 = load ptr, ptr %92, align 8, !tbaa !34, !noalias !138
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = getelementptr inbounds nuw i8, ptr %63, i64 72
  %97 = load ptr, ptr %96, align 8, !tbaa !35, !noalias !138
  %98 = getelementptr inbounds i8, ptr %97, i64 -8
  %99 = load ptr, ptr %98, align 8, !tbaa !36
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 512
  br label %101

101:                                              ; preds = %95, %90
  %102 = phi ptr [ %100, %95 ], [ %91, %90 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 -32
  %104 = load ptr, ptr %103, align 8, !tbaa !18
  %105 = load ptr, ptr %5, align 8, !tbaa !18
  %106 = icmp eq ptr %105, %47
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i64, ptr %56, align 8, !tbaa !14
  %109 = icmp ult i64 %108, 16
  call void @llvm.assume(i1 %109)
  br label %113

110:                                              ; preds = %101
  %111 = load i64, ptr %47, align 8, !tbaa !17
  %112 = add i64 %111, 1
  call void @_ZdlPvm(ptr noundef %105, i64 noundef %112) #29
  br label %113

113:                                              ; preds = %107, %110
  %114 = load ptr, ptr %4, align 8, !tbaa !18
  %115 = icmp eq ptr %114, %7
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i64, ptr %35, align 8, !tbaa !14
  %118 = icmp ult i64 %117, 16
  call void @llvm.assume(i1 %118)
  br label %122

119:                                              ; preds = %113
  %120 = load i64, ptr %7, align 8, !tbaa !17
  %121 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %114, i64 noundef %121) #29
  br label %122

122:                                              ; preds = %116, %119
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret ptr %104

123:                                              ; preds = %87, %59
  %124 = landingpad { ptr, i32 }
          cleanup
  %125 = load ptr, ptr %5, align 8, !tbaa !18
  %126 = icmp eq ptr %125, %47
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, ptr %56, align 8, !tbaa !14
  %129 = icmp ult i64 %128, 16
  call void @llvm.assume(i1 %129)
  br label %133

130:                                              ; preds = %123
  %131 = load i64, ptr %47, align 8, !tbaa !17
  %132 = add i64 %131, 1
  call void @_ZdlPvm(ptr noundef %125, i64 noundef %132) #29
  br label %133

133:                                              ; preds = %130, %127, %44
  %134 = phi { ptr, i32 } [ %45, %44 ], [ %124, %127 ], [ %124, %130 ]
  %135 = load ptr, ptr %4, align 8, !tbaa !18
  %136 = icmp eq ptr %135, %7
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i64, ptr %35, align 8, !tbaa !14
  %139 = icmp ult i64 %138, 16
  call void @llvm.assume(i1 %139)
  br label %143

140:                                              ; preds = %133
  %141 = load i64, ptr %7, align 8, !tbaa !17
  %142 = add i64 %141, 1
  call void @_ZdlPvm(ptr noundef %135, i64 noundef %142) #29
  br label %143

143:                                              ; preds = %137, %140
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  resume { ptr, i32 } %134
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i8 noundef signext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !18
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %10 = icmp ult i64 %9, 9223372036854775807
  tail call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %9, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

13:                                               ; preds = %3
  %14 = add nuw nsw i64 %9, 1
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = icmp eq ptr %4, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = icmp samesign ult i64 %9, 16
  tail call void @llvm.assume(i1 %18)
  %19 = load i64, ptr %15, align 8
  %20 = icmp eq i64 %9, 15
  br i1 %20, label %38, label %28

21:                                               ; preds = %13
  %22 = load i64, ptr %15, align 8
  %23 = icmp samesign ugt i64 %22, 14
  tail call void @llvm.assume(i1 %23)
  %24 = icmp ult i64 %22, 9223372036854775807
  tail call void @llvm.assume(i1 %24)
  %25 = icmp samesign ult i64 %9, %22
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = shl nuw i64 %22, 1
  br label %38

28:                                               ; preds = %21, %17
  %29 = sub i64 %9, %7
  %30 = icmp eq i64 %9, %7
  br i1 %30, label %66, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 %7
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %34 = icmp eq i64 %29, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i8, ptr %32, align 1, !tbaa !17
  store i8 %36, ptr %33, align 1, !tbaa !17
  br label %66

37:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %33, ptr align 1 %32, i64 %29, i1 false)
  br label %66

38:                                               ; preds = %26, %17
  %39 = phi i64 [ %22, %26 ], [ %19, %17 ]
  %40 = phi i64 [ %27, %26 ], [ 30, %17 ]
  %41 = sub i64 %9, %7
  %42 = icmp ult i64 %14, %40
  %43 = tail call i64 @llvm.umin.i64(i64 %40, i64 9223372036854775806)
  %44 = select i1 %42, i64 %43, i64 %14
  %45 = add nuw nsw i64 %44, 1
  %46 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #28
  switch i64 %7, label %49 [
    i64 0, label %50
    i64 1, label %47
  ]

47:                                               ; preds = %38
  %48 = load i8, ptr %4, align 1, !tbaa !17
  store i8 %48, ptr %46, align 1, !tbaa !17
  br label %50

49:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %4, i64 %7, i1 false)
  br label %50

50:                                               ; preds = %49, %47, %38
  %51 = icmp eq i64 %9, %7
  br i1 %51, label %60, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds nuw i8, ptr %46, i64 %7
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 1
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 %7
  %56 = icmp eq i64 %41, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8, ptr %55, align 1, !tbaa !17
  store i8 %58, ptr %54, align 1, !tbaa !17
  br label %60

59:                                               ; preds = %52
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr align 1 %55, i64 %41, i1 false)
  br label %60

60:                                               ; preds = %59, %57, %50
  br i1 %16, label %61, label %63

61:                                               ; preds = %60
  %62 = icmp samesign ult i64 %9, 16
  tail call void @llvm.assume(i1 %62)
  br label %65

63:                                               ; preds = %60
  %64 = add i64 %39, 1
  tail call void @_ZdlPvm(ptr noundef %4, i64 noundef %64) #29
  br label %65

65:                                               ; preds = %61, %63
  store ptr %46, ptr %0, align 8, !tbaa !18
  store i64 %44, ptr %15, align 8, !tbaa !17
  br label %66

66:                                               ; preds = %28, %35, %37, %65
  %67 = load ptr, ptr %0, align 8, !tbaa !18
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 %7
  store i8 %2, ptr %68, align 1, !tbaa !17
  store i64 %14, ptr %8, align 8, !tbaa !14
  %69 = load ptr, ptr %0, align 8, !tbaa !18
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 %14
  store i8 0, ptr %70, align 1, !tbaa !17
  %71 = load ptr, ptr %0, align 8, !tbaa !18
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %7
  ret ptr %72
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_pad_rightEPKciS1_(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %7, ptr %4, align 8, !tbaa !8, !alias.scope !141
  br i1 %6, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %9, align 8, !tbaa !14, !alias.scope !141
  store i8 0, ptr %7, align 8, !tbaa !17, !alias.scope !141
  br label %27

10:                                               ; preds = %3
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !141
  %12 = icmp ugt i64 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = icmp ugt i64 %11, 9223372036854775806
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

16:                                               ; preds = %13
  %17 = add nuw nsw i64 %11, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #28
  store ptr %18, ptr %4, align 8, !tbaa !18, !alias.scope !141
  store i64 %11, ptr %7, align 8, !tbaa !17, !alias.scope !141
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %7, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !17, !noalias !141
  store i8 %22, ptr %20, align 1, !tbaa !17
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !14, !alias.scope !141
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !17
  br label %27

27:                                               ; preds = %8, %24
  %28 = icmp eq ptr %2, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = load i8, ptr %2, align 1
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i8 32, i8 %30
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i8 [ 32, %27 ], [ %32, %29 ]
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %36 = load i64, ptr %35, align 8, !tbaa !14
  %37 = icmp ult i64 %36, 9223372036854775807
  call void @llvm.assume(i1 %37)
  %38 = trunc i64 %36 to i32
  %39 = icmp sgt i32 %1, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %33, %70
  %41 = phi i64 [ %75, %70 ], [ %36, %33 ]
  %42 = add nuw nsw i64 %41, 1
  %43 = load ptr, ptr %4, align 8, !tbaa !18
  %44 = icmp eq ptr %43, %7
  %45 = load i64, ptr %7, align 8
  br i1 %44, label %46, label %48

46:                                               ; preds = %40
  %47 = icmp samesign ugt i64 %41, 14
  br i1 %47, label %52, label %70

48:                                               ; preds = %40
  %49 = icmp samesign ugt i64 %45, 14
  call void @llvm.assume(i1 %49)
  %50 = icmp ult i64 %45, 9223372036854775807
  call void @llvm.assume(i1 %50)
  %51 = icmp samesign ult i64 %41, %45
  br i1 %51, label %70, label %52

52:                                               ; preds = %48, %46
  %53 = phi i64 [ %45, %48 ], [ 15, %46 ]
  %54 = icmp eq i64 %42, 9223372036854775807
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %56 unwind label %81

56:                                               ; preds = %55
  unreachable

57:                                               ; preds = %52
  %58 = shl nuw i64 %53, 1
  %59 = icmp ult i64 %42, %58
  %60 = call i64 @llvm.umin.i64(i64 %58, i64 9223372036854775806)
  %61 = select i1 %59, i64 %60, i64 %42
  %62 = add nuw nsw i64 %61, 1
  %63 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %62) #28
          to label %64 unwind label %79

64:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %63, ptr align 1 %43, i64 %41, i1 false)
  br i1 %44, label %65, label %67

65:                                               ; preds = %64
  %66 = icmp samesign ult i64 %41, 16
  call void @llvm.assume(i1 %66)
  br label %69

67:                                               ; preds = %64
  %68 = add i64 %45, 1
  call void @_ZdlPvm(ptr noundef %43, i64 noundef %68) #29
  br label %69

69:                                               ; preds = %67, %65
  store ptr %63, ptr %4, align 8, !tbaa !18
  store i64 %61, ptr %7, align 8, !tbaa !17
  br label %70

70:                                               ; preds = %46, %48, %69
  %71 = phi ptr [ %43, %48 ], [ %63, %69 ], [ %43, %46 ]
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %41
  store i8 %34, ptr %72, align 1, !tbaa !17
  store i64 %42, ptr %35, align 8, !tbaa !14
  %73 = load ptr, ptr %4, align 8, !tbaa !18
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 %42
  store i8 0, ptr %74, align 1, !tbaa !17
  %75 = load i64, ptr %35, align 8, !tbaa !14
  %76 = icmp ult i64 %75, 9223372036854775807
  call void @llvm.assume(i1 %76)
  %77 = trunc i64 %75 to i32
  %78 = icmp sgt i32 %1, %77
  br i1 %78, label %40, label %83

79:                                               ; preds = %57
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %171

81:                                               ; preds = %55
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %171

83:                                               ; preds = %70, %33
  %84 = phi i64 [ %36, %33 ], [ %75, %70 ]
  %85 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %85, ptr %5, align 8, !tbaa !8
  %86 = load ptr, ptr %4, align 8, !tbaa !18
  %87 = icmp eq ptr %86, %7
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = icmp samesign ult i64 %84, 16
  call void @llvm.assume(i1 %89)
  %90 = add nuw nsw i64 %84, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %85, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %90, i1 false)
  br label %93

91:                                               ; preds = %83
  store ptr %86, ptr %5, align 8, !tbaa !18
  %92 = load i64, ptr %7, align 8, !tbaa !17
  store i64 %92, ptr %85, align 8, !tbaa !17
  br label %93

93:                                               ; preds = %88, %91
  %94 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %84, ptr %94, align 8, !tbaa !14
  store ptr %7, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %35, align 8, !tbaa !14
  store i8 0, ptr %7, align 8, !tbaa !17
  %95 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %100, !prof !22

97:                                               ; preds = %93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %98 unwind label %161

98:                                               ; preds = %97
  %99 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %100

100:                                              ; preds = %98, %93
  %101 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 48
  %103 = load ptr, ptr %102, align 8, !tbaa !23
  %104 = getelementptr inbounds nuw i8, ptr %101, i64 64
  %105 = load ptr, ptr %104, align 8, !tbaa !29
  %106 = getelementptr inbounds i8, ptr %105, i64 -32
  %107 = icmp eq ptr %103, %106
  br i1 %107, label %125, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds nuw i8, ptr %103, i64 16
  store ptr %109, ptr %103, align 8, !tbaa !8
  %110 = load ptr, ptr %5, align 8, !tbaa !18
  %111 = icmp eq ptr %110, %85
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i64, ptr %94, align 8, !tbaa !14
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  %115 = add nuw nsw i64 %113, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %109, ptr noundef nonnull align 8 dereferenceable(1) %85, i64 %115, i1 false)
  br label %119

116:                                              ; preds = %108
  store ptr %110, ptr %103, align 8, !tbaa !18
  %117 = load i64, ptr %85, align 8, !tbaa !17
  store i64 %117, ptr %109, align 8, !tbaa !17
  %118 = load i64, ptr %94, align 8, !tbaa !14
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi i64 [ %118, %116 ], [ %113, %112 ]
  %121 = icmp ult i64 %120, 9223372036854775807
  call void @llvm.assume(i1 %121)
  %122 = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i64 %120, ptr %122, align 8, !tbaa !14
  store ptr %85, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %94, align 8, !tbaa !14
  store i8 0, ptr %85, align 8, !tbaa !17
  %123 = load ptr, ptr %102, align 8, !tbaa !23
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 32
  store ptr %124, ptr %102, align 8, !tbaa !23
  br label %128

125:                                              ; preds = %100
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %101, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %126 unwind label %161

126:                                              ; preds = %125
  %127 = load ptr, ptr %102, align 8, !tbaa !30, !noalias !144
  br label %128

128:                                              ; preds = %126, %119
  %129 = phi ptr [ %124, %119 ], [ %127, %126 ]
  %130 = getelementptr inbounds nuw i8, ptr %101, i64 56
  %131 = load ptr, ptr %130, align 8, !tbaa !34, !noalias !144
  %132 = icmp eq ptr %129, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = getelementptr inbounds nuw i8, ptr %101, i64 72
  %135 = load ptr, ptr %134, align 8, !tbaa !35, !noalias !144
  %136 = getelementptr inbounds i8, ptr %135, i64 -8
  %137 = load ptr, ptr %136, align 8, !tbaa !36
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 512
  br label %139

139:                                              ; preds = %133, %128
  %140 = phi ptr [ %138, %133 ], [ %129, %128 ]
  %141 = getelementptr inbounds i8, ptr %140, i64 -32
  %142 = load ptr, ptr %141, align 8, !tbaa !18
  %143 = load ptr, ptr %5, align 8, !tbaa !18
  %144 = icmp eq ptr %143, %85
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i64, ptr %94, align 8, !tbaa !14
  %147 = icmp ult i64 %146, 16
  call void @llvm.assume(i1 %147)
  br label %151

148:                                              ; preds = %139
  %149 = load i64, ptr %85, align 8, !tbaa !17
  %150 = add i64 %149, 1
  call void @_ZdlPvm(ptr noundef %143, i64 noundef %150) #29
  br label %151

151:                                              ; preds = %145, %148
  %152 = load ptr, ptr %4, align 8, !tbaa !18
  %153 = icmp eq ptr %152, %7
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i64, ptr %35, align 8, !tbaa !14
  %156 = icmp ult i64 %155, 16
  call void @llvm.assume(i1 %156)
  br label %160

157:                                              ; preds = %151
  %158 = load i64, ptr %7, align 8, !tbaa !17
  %159 = add i64 %158, 1
  call void @_ZdlPvm(ptr noundef %152, i64 noundef %159) #29
  br label %160

160:                                              ; preds = %154, %157
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret ptr %142

161:                                              ; preds = %125, %97
  %162 = landingpad { ptr, i32 }
          cleanup
  %163 = load ptr, ptr %5, align 8, !tbaa !18
  %164 = icmp eq ptr %163, %85
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i64, ptr %94, align 8, !tbaa !14
  %167 = icmp ult i64 %166, 16
  call void @llvm.assume(i1 %167)
  br label %171

168:                                              ; preds = %161
  %169 = load i64, ptr %85, align 8, !tbaa !17
  %170 = add i64 %169, 1
  call void @_ZdlPvm(ptr noundef %163, i64 noundef %170) #29
  br label %171

171:                                              ; preds = %79, %81, %168, %165
  %172 = phi { ptr, i32 } [ %162, %165 ], [ %162, %168 ], [ %80, %79 ], [ %82, %81 ]
  %173 = load ptr, ptr %4, align 8, !tbaa !18
  %174 = icmp eq ptr %173, %7
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i64, ptr %35, align 8, !tbaa !14
  %177 = icmp ult i64 %176, 16
  call void @llvm.assume(i1 %177)
  br label %181

178:                                              ; preds = %171
  %179 = load i64, ptr %7, align 8, !tbaa !17
  %180 = add i64 %179, 1
  call void @_ZdlPvm(ptr noundef %173, i64 noundef %180) #29
  br label %181

181:                                              ; preds = %175, %178
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  resume { ptr, i32 } %172
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_substringEPKcii(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %8, ptr %4, align 8, !tbaa !8, !alias.scope !147
  br i1 %7, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %10, align 8, !tbaa !14, !alias.scope !147
  store i8 0, ptr %8, align 8, !tbaa !17, !alias.scope !147
  br label %28

11:                                               ; preds = %3
  %12 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !147
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = icmp ugt i64 %12, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %12, 1
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #28
  store ptr %19, ptr %4, align 8, !tbaa !18, !alias.scope !147
  store i64 %12, ptr %8, align 8, !tbaa !17, !alias.scope !147
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %19, %17 ], [ %8, %11 ]
  switch i64 %12, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %0, align 1, !tbaa !17, !noalias !147
  store i8 %23, ptr %21, align 1, !tbaa !17
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %0, i64 %12, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %12, ptr %26, align 8, !tbaa !14, !alias.scope !147
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %12
  store i8 0, ptr %27, align 1, !tbaa !17
  br label %28

28:                                               ; preds = %9, %25
  %29 = icmp slt i32 %1, 0
  %30 = icmp slt i32 %2, 1
  %31 = or i1 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !14
  %35 = icmp ult i64 %34, 9223372036854775807
  call void @llvm.assume(i1 %35)
  %36 = trunc i64 %34 to i32
  %37 = icmp slt i32 %1, %36
  br i1 %37, label %107, label %38

38:                                               ; preds = %32, %28
  %39 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %39, ptr %5, align 8, !tbaa !8
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %40, align 8, !tbaa !14
  store i8 0, ptr %39, align 8, !tbaa !17
  %41 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %46, !prof !22

43:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %44 unwind label %97

44:                                               ; preds = %43
  %45 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %46

46:                                               ; preds = %44, %38
  %47 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 48
  %49 = load ptr, ptr %48, align 8, !tbaa !23
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %51 = load ptr, ptr %50, align 8, !tbaa !29
  %52 = getelementptr inbounds i8, ptr %51, i64 -32
  %53 = icmp eq ptr %49, %52
  br i1 %53, label %71, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %55, ptr %49, align 8, !tbaa !8
  %56 = load ptr, ptr %5, align 8, !tbaa !18
  %57 = icmp eq ptr %56, %39
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, ptr %40, align 8, !tbaa !14
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %55, ptr noundef nonnull align 8 dereferenceable(1) %39, i64 %61, i1 false)
  br label %65

62:                                               ; preds = %54
  store ptr %56, ptr %49, align 8, !tbaa !18
  %63 = load i64, ptr %39, align 8, !tbaa !17
  store i64 %63, ptr %55, align 8, !tbaa !17
  %64 = load i64, ptr %40, align 8, !tbaa !14
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i64 [ %64, %62 ], [ %59, %58 ]
  %67 = icmp ult i64 %66, 9223372036854775807
  call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %66, ptr %68, align 8, !tbaa !14
  store ptr %39, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %40, align 8, !tbaa !14
  store i8 0, ptr %39, align 8, !tbaa !17
  %69 = load ptr, ptr %48, align 8, !tbaa !23
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  store ptr %70, ptr %48, align 8, !tbaa !23
  br label %74

71:                                               ; preds = %46
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %47, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %72 unwind label %97

72:                                               ; preds = %71
  %73 = load ptr, ptr %48, align 8, !tbaa !30, !noalias !150
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi ptr [ %70, %65 ], [ %73, %72 ]
  %76 = getelementptr inbounds nuw i8, ptr %47, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !34, !noalias !150
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %47, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !35, !noalias !150
  %82 = getelementptr inbounds i8, ptr %81, i64 -8
  %83 = load ptr, ptr %82, align 8, !tbaa !36
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 512
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi ptr [ %84, %79 ], [ %75, %74 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -32
  %88 = load ptr, ptr %87, align 8, !tbaa !18
  %89 = load ptr, ptr %5, align 8, !tbaa !18
  %90 = icmp eq ptr %89, %39
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i64, ptr %40, align 8, !tbaa !14
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %200

94:                                               ; preds = %85
  %95 = load i64, ptr %39, align 8, !tbaa !17
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %96) #29
  br label %200

97:                                               ; preds = %71, %43
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %5, align 8, !tbaa !18
  %100 = icmp eq ptr %99, %39
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, ptr %40, align 8, !tbaa !14
  %103 = icmp ult i64 %102, 16
  call void @llvm.assume(i1 %103)
  br label %212

104:                                              ; preds = %97
  %105 = load i64, ptr %39, align 8, !tbaa !17
  %106 = add i64 %105, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %106) #29
  br label %212

107:                                              ; preds = %32
  %108 = zext nneg i32 %1 to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %109 = icmp samesign ult i64 %34, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, i64 noundef %108, i64 noundef %34) #27
          to label %111 unwind label %188

111:                                              ; preds = %110
  unreachable

112:                                              ; preds = %107
  %113 = zext nneg i32 %2 to i64
  %114 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %114, ptr %6, align 8, !tbaa !8, !alias.scope !153
  %115 = load ptr, ptr %4, align 8, !tbaa !18, !noalias !153
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 %108
  %117 = sub nuw nsw i64 %34, %108
  %118 = call noundef i64 @llvm.umin.i64(i64 %113, i64 %117)
  %119 = icmp samesign ugt i64 %118, 15
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = add nuw nsw i64 %118, 1
  %122 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %121) #28
          to label %123 unwind label %188

123:                                              ; preds = %120
  store ptr %122, ptr %6, align 8, !tbaa !18, !alias.scope !153
  store i64 %118, ptr %114, align 8, !tbaa !17, !alias.scope !153
  br label %124

124:                                              ; preds = %123, %112
  %125 = phi ptr [ %122, %123 ], [ %114, %112 ]
  switch i64 %118, label %128 [
    i64 1, label %126
    i64 0, label %129
  ]

126:                                              ; preds = %124
  %127 = load i8, ptr %116, align 1, !tbaa !17
  store i8 %127, ptr %125, align 1, !tbaa !17
  br label %129

128:                                              ; preds = %124
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %125, ptr align 1 %116, i64 %118, i1 false)
  br label %129

129:                                              ; preds = %128, %126, %124
  %130 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %118, ptr %130, align 8, !tbaa !14, !alias.scope !153
  %131 = getelementptr inbounds nuw i8, ptr %125, i64 %118
  store i8 0, ptr %131, align 1, !tbaa !17
  %132 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %137, !prof !22

134:                                              ; preds = %129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %135 unwind label %190

135:                                              ; preds = %134
  %136 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %137

137:                                              ; preds = %135, %129
  %138 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 48
  %140 = load ptr, ptr %139, align 8, !tbaa !23
  %141 = getelementptr inbounds nuw i8, ptr %138, i64 64
  %142 = load ptr, ptr %141, align 8, !tbaa !29
  %143 = getelementptr inbounds i8, ptr %142, i64 -32
  %144 = icmp eq ptr %140, %143
  br i1 %144, label %162, label %145

145:                                              ; preds = %137
  %146 = getelementptr inbounds nuw i8, ptr %140, i64 16
  store ptr %146, ptr %140, align 8, !tbaa !8
  %147 = load ptr, ptr %6, align 8, !tbaa !18
  %148 = icmp eq ptr %147, %114
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i64, ptr %130, align 8, !tbaa !14
  %151 = icmp ult i64 %150, 16
  call void @llvm.assume(i1 %151)
  %152 = add nuw nsw i64 %150, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %146, ptr noundef nonnull align 8 dereferenceable(1) %114, i64 %152, i1 false)
  br label %156

153:                                              ; preds = %145
  store ptr %147, ptr %140, align 8, !tbaa !18
  %154 = load i64, ptr %114, align 8, !tbaa !17
  store i64 %154, ptr %146, align 8, !tbaa !17
  %155 = load i64, ptr %130, align 8, !tbaa !14
  br label %156

156:                                              ; preds = %153, %149
  %157 = phi i64 [ %155, %153 ], [ %150, %149 ]
  %158 = icmp ult i64 %157, 9223372036854775807
  call void @llvm.assume(i1 %158)
  %159 = getelementptr inbounds nuw i8, ptr %140, i64 8
  store i64 %157, ptr %159, align 8, !tbaa !14
  store ptr %114, ptr %6, align 8, !tbaa !18
  store i64 0, ptr %130, align 8, !tbaa !14
  store i8 0, ptr %114, align 8, !tbaa !17
  %160 = load ptr, ptr %139, align 8, !tbaa !23
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 32
  store ptr %161, ptr %139, align 8, !tbaa !23
  br label %165

162:                                              ; preds = %137
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %138, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %163 unwind label %190

163:                                              ; preds = %162
  %164 = load ptr, ptr %139, align 8, !tbaa !30, !noalias !156
  br label %165

165:                                              ; preds = %163, %156
  %166 = phi ptr [ %161, %156 ], [ %164, %163 ]
  %167 = getelementptr inbounds nuw i8, ptr %138, i64 56
  %168 = load ptr, ptr %167, align 8, !tbaa !34, !noalias !156
  %169 = icmp eq ptr %166, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = getelementptr inbounds nuw i8, ptr %138, i64 72
  %172 = load ptr, ptr %171, align 8, !tbaa !35, !noalias !156
  %173 = getelementptr inbounds i8, ptr %172, i64 -8
  %174 = load ptr, ptr %173, align 8, !tbaa !36
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 512
  br label %176

176:                                              ; preds = %170, %165
  %177 = phi ptr [ %175, %170 ], [ %166, %165 ]
  %178 = getelementptr inbounds i8, ptr %177, i64 -32
  %179 = load ptr, ptr %178, align 8, !tbaa !18
  %180 = load ptr, ptr %6, align 8, !tbaa !18
  %181 = icmp eq ptr %180, %114
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i64, ptr %130, align 8, !tbaa !14
  %184 = icmp ult i64 %183, 16
  call void @llvm.assume(i1 %184)
  br label %200

185:                                              ; preds = %176
  %186 = load i64, ptr %114, align 8, !tbaa !17
  %187 = add i64 %186, 1
  call void @_ZdlPvm(ptr noundef %180, i64 noundef %187) #29
  br label %200

188:                                              ; preds = %120, %110
  %189 = landingpad { ptr, i32 }
          cleanup
  br label %212

190:                                              ; preds = %162, %134
  %191 = landingpad { ptr, i32 }
          cleanup
  %192 = load ptr, ptr %6, align 8, !tbaa !18
  %193 = icmp eq ptr %192, %114
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load i64, ptr %130, align 8, !tbaa !14
  %196 = icmp ult i64 %195, 16
  call void @llvm.assume(i1 %196)
  br label %212

197:                                              ; preds = %190
  %198 = load i64, ptr %114, align 8, !tbaa !17
  %199 = add i64 %198, 1
  call void @_ZdlPvm(ptr noundef %192, i64 noundef %199) #29
  br label %212

200:                                              ; preds = %185, %182, %94, %91
  %201 = phi ptr [ %88, %91 ], [ %88, %94 ], [ %179, %182 ], [ %179, %185 ]
  %202 = load ptr, ptr %4, align 8, !tbaa !18
  %203 = icmp eq ptr %202, %8
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %206 = load i64, ptr %205, align 8, !tbaa !14
  %207 = icmp ult i64 %206, 16
  call void @llvm.assume(i1 %207)
  br label %211

208:                                              ; preds = %200
  %209 = load i64, ptr %8, align 8, !tbaa !17
  %210 = add i64 %209, 1
  call void @_ZdlPvm(ptr noundef %202, i64 noundef %210) #29
  br label %211

211:                                              ; preds = %204, %208
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret ptr %201

212:                                              ; preds = %197, %194, %101, %104, %188
  %213 = phi { ptr, i32 } [ %189, %188 ], [ %98, %101 ], [ %98, %104 ], [ %191, %194 ], [ %191, %197 ]
  %214 = load ptr, ptr %4, align 8, !tbaa !18
  %215 = icmp eq ptr %214, %8
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %218 = load i64, ptr %217, align 8, !tbaa !14
  %219 = icmp ult i64 %218, 16
  call void @llvm.assume(i1 %219)
  br label %223

220:                                              ; preds = %212
  %221 = load i64, ptr %8, align 8, !tbaa !17
  %222 = add i64 %221, 1
  call void @_ZdlPvm(ptr noundef %214, i64 noundef %222) #29
  br label %223

223:                                              ; preds = %216, %220
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  resume { ptr, i32 } %213
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN30__apollo_inline_inline_940_5_319sys__native_str_cmpEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %7)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %13) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %24

18:                                               ; preds = %11
  %19 = sub i64 %7, %12
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %31, label %27

21:                                               ; preds = %15
  %22 = sub i64 %7, %12
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %31, label %27

24:                                               ; preds = %15
  %25 = icmp sgt i32 %16, -1
  %26 = select i1 %25, i32 1, i32 -1
  br label %31

27:                                               ; preds = %21, %18
  %28 = phi i64 [ %19, %18 ], [ %22, %21 ]
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %24, %27, %18, %21
  %32 = phi i32 [ -1, %18 ], [ -1, %21 ], [ %30, %27 ], [ %26, %24 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN30__apollo_inline_inline_940_5_323sys__native_str_casecmpEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %7)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %33, label %18

15:                                               ; preds = %31
  %16 = add nuw i64 %19, 1
  %17 = icmp eq i64 %16, %13
  br i1 %17, label %33, label %18, !llvm.loop !159

18:                                               ; preds = %11, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %11 ]
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !17
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @tolower(i32 noundef %22) #30
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !17
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @tolower(i32 noundef %26) #30
  %28 = and i32 %23, 255
  %29 = and i32 %27, 255
  %30 = icmp samesign ult i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = icmp samesign ugt i32 %28, %29
  br i1 %32, label %35, label %15

33:                                               ; preds = %15, %11
  %34 = tail call i32 @llvm.ucmp.i32.i64(i64 %7, i64 %12)
  br label %35

35:                                               ; preds = %18, %31, %33
  %36 = phi i32 [ %34, %33 ], [ 1, %31 ], [ -1, %18 ]
  ret i32 %36
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_321sys__native_str_splitEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef ptr @_ZN12__apo_stdlib16str_split_handleESt17basic_string_viewIcSt11char_traitsIcEES3_i(i64 %7, ptr %0, i64 %12, ptr %1, i32 noundef -1)
  ret ptr %13
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16str_split_handleESt17basic_string_viewIcSt11char_traitsIcEES3_i(i64 %0, ptr %1, i64 %2, ptr %3, i32 noundef %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %6 = alloca %"class.std::vector", align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::vector", align 8
  %10 = alloca %"class.std::basic_string_view", align 8
  %11 = alloca %"class.std::vector", align 8
  %12 = alloca %"class.std::basic_string_view", align 8
  %13 = alloca %"class.std::basic_string_view", align 8
  %14 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %5
  %17 = icmp sgt i32 %4, 0
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %1 to i64
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %89

23:                                               ; preds = %5
  %24 = icmp ugt i64 %0, 288230376151711743
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #27
          to label %26 unwind label %43

26:                                               ; preds = %25
  unreachable

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %29 = icmp eq i64 %0, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %27
  %31 = shl nuw nsw i64 %0, 5
  %32 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %31) #28
          to label %33 unwind label %43

33:                                               ; preds = %30
  %34 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %32, ptr %6, align 8, !tbaa !160
  store ptr %32, ptr %34, align 8, !tbaa !162
  %35 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %32, i64 %0
  store ptr %35, ptr %28, align 8, !tbaa !163
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %37 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %45

38:                                               ; preds = %57
  %39 = load ptr, ptr %6, align 8, !tbaa !36
  %40 = load ptr, ptr %37, align 8, !tbaa !36
  %41 = load ptr, ptr %28, align 8, !tbaa !163
  %42 = icmp eq ptr %39, %40
  br i1 %42, label %62, label %80

43:                                               ; preds = %69, %30, %25
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %207

45:                                               ; preds = %33, %57
  %46 = phi ptr [ %1, %33 ], [ %58, %57 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  %47 = load i8, ptr %46, align 1, !tbaa !17
  store i8 %47, ptr %7, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 1, ptr %8, align 4, !tbaa !164
  %48 = load ptr, ptr %37, align 8, !tbaa !162
  %49 = load ptr, ptr %28, align 8, !tbaa !163
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %52, ptr %48, align 8, !tbaa !8
  store i8 %47, ptr %52, align 1, !tbaa !17
  %53 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 1, ptr %53, align 8, !tbaa !14
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 17
  store i8 0, ptr %54, align 1, !tbaa !17
  %55 = getelementptr inbounds nuw i8, ptr %48, i64 32
  store ptr %55, ptr %37, align 8, !tbaa !162
  br label %57

56:                                               ; preds = %45
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJiRcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %57 unwind label %60

57:                                               ; preds = %56, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  %58 = getelementptr inbounds nuw i8, ptr %46, i64 1
  %59 = icmp eq ptr %58, %36
  br i1 %59, label %38, label %45

60:                                               ; preds = %56
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  br label %207

62:                                               ; preds = %38
  %63 = icmp eq ptr %40, %41
  br i1 %63, label %69, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %65, ptr %40, align 8, !tbaa !8
  %66 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 0, ptr %66, align 8, !tbaa !14
  store i8 0, ptr %65, align 1, !tbaa !17
  %67 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %68 = load ptr, ptr %28, align 8, !tbaa !163
  br label %80

69:                                               ; preds = %27, %62
  %70 = phi ptr [ %41, %62 ], [ null, %27 ]
  %71 = phi ptr [ %39, %62 ], [ null, %27 ]
  %72 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %73 unwind label %43

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %72, i64 16
  store ptr %74, ptr %72, align 8, !tbaa !8
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 0, ptr %75, align 8, !tbaa !14
  store i8 0, ptr %74, align 1, !tbaa !17
  %76 = icmp eq ptr %70, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void @_ZdlPvm(ptr noundef nonnull %71, i64 noundef 0) #29
  br label %78

78:                                               ; preds = %77, %73
  %79 = getelementptr inbounds nuw i8, ptr %72, i64 32
  br label %80

80:                                               ; preds = %78, %64, %38
  %81 = phi ptr [ %79, %78 ], [ %68, %64 ], [ %41, %38 ]
  %82 = phi ptr [ %79, %78 ], [ %67, %64 ], [ %40, %38 ]
  %83 = phi ptr [ %72, %78 ], [ %39, %64 ], [ %39, %38 ]
  store ptr %83, ptr %9, align 8, !tbaa !160
  %84 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %82, ptr %84, align 8, !tbaa !162
  %85 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %81, ptr %85, align 8, !tbaa !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %86 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %198 unwind label %87

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  br label %207

89:                                               ; preds = %16, %160
  %90 = phi i64 [ 0, %16 ], [ %161, %160 ]
  br i1 %17, label %91, label %119

91:                                               ; preds = %89
  %92 = load ptr, ptr %18, align 8, !tbaa !162
  %93 = load ptr, ptr %6, align 8, !tbaa !160
  %94 = ptrtoint ptr %92 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = ashr exact i64 %96, 5
  %98 = icmp sgt i64 %97, -1
  call void @llvm.assume(i1 %98)
  %99 = trunc i64 %97 to i32
  %100 = add nsw i32 %99, 1
  %101 = icmp slt i32 %100, %4
  br i1 %101, label %119, label %102

102:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  %103 = sub nuw i64 %0, %90
  %104 = getelementptr inbounds nuw i8, ptr %1, i64 %90
  store i64 %103, ptr %10, align 8
  %105 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %104, ptr %105, align 8
  %106 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %107 unwind label %115

107:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  %108 = load ptr, ptr %6, align 8, !tbaa !160
  store ptr %108, ptr %11, align 8, !tbaa !160
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %110 = load ptr, ptr %18, align 8, !tbaa !162
  store ptr %110, ptr %109, align 8, !tbaa !162
  %111 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %112 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %113 = load ptr, ptr %112, align 8, !tbaa !163
  store ptr %113, ptr %111, align 8, !tbaa !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %114 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %198 unwind label %117

115:                                              ; preds = %102
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  br label %207

117:                                              ; preds = %107
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #13
  br label %207

119:                                              ; preds = %89, %91
  %120 = icmp uge i64 %90, %0
  %121 = sub nuw i64 %0, %90
  %122 = icmp ult i64 %121, %2
  %123 = select i1 %120, i1 true, i1 %122
  br i1 %123, label %149, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 %90
  %126 = load i8, ptr %3, align 1, !tbaa !17
  %127 = sext i8 %126 to i32
  br label %128

128:                                              ; preds = %140, %124
  %129 = phi i64 [ %121, %124 ], [ %143, %140 ]
  %130 = phi ptr [ %125, %124 ], [ %141, %140 ]
  %131 = sub nuw i64 %129, %2
  %132 = add i64 %131, 1
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %128
  %135 = call ptr @memchr(ptr noundef %130, i32 noundef %127, i64 noundef %132) #13
  %136 = icmp eq ptr %135, null
  br i1 %136, label %149, label %137

137:                                              ; preds = %134
  %138 = call i32 @bcmp(ptr nonnull %135, ptr nonnull %3, i64 %2)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds nuw i8, ptr %135, i64 1
  %142 = ptrtoint ptr %141 to i64
  %143 = sub i64 %20, %142
  %144 = icmp ult i64 %143, %2
  br i1 %144, label %149, label %128, !llvm.loop !166

145:                                              ; preds = %137
  %146 = ptrtoint ptr %135 to i64
  %147 = sub i64 %146, %21
  %148 = icmp eq i64 %147, -1
  br i1 %148, label %149, label %156

149:                                              ; preds = %145, %119, %128, %134, %140
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  %150 = getelementptr inbounds nuw i8, ptr %1, i64 %90
  store i64 %121, ptr %12, align 8
  %151 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %150, ptr %151, align 8
  %152 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %153 unwind label %154

153:                                              ; preds = %149
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  br label %165

154:                                              ; preds = %149
  %155 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  br label %207

156:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  %157 = sub i64 %147, %90
  %158 = call i64 @llvm.umin.i64(i64 %121, i64 %157)
  store i64 %158, ptr %13, align 8
  store ptr %125, ptr %22, align 8
  %159 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %160 unwind label %163

160:                                              ; preds = %156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  %161 = add i64 %147, %2
  %162 = icmp ugt i64 %161, %0
  br i1 %162, label %165, label %89

163:                                              ; preds = %156
  %164 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  br label %207

165:                                              ; preds = %160, %153
  %166 = load ptr, ptr %6, align 8, !tbaa !36
  %167 = load ptr, ptr %18, align 8, !tbaa !36
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %165
  %170 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %171 = load ptr, ptr %170, align 8, !tbaa !163
  %172 = icmp eq ptr %166, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds nuw i8, ptr %167, i64 16
  store ptr %174, ptr %167, align 8, !tbaa !8
  %175 = getelementptr inbounds nuw i8, ptr %167, i64 8
  store i64 0, ptr %175, align 8, !tbaa !14
  store i8 0, ptr %174, align 1, !tbaa !17
  %176 = getelementptr inbounds nuw i8, ptr %167, i64 32
  store ptr %176, ptr %18, align 8, !tbaa !162
  br label %188

177:                                              ; preds = %169
  %178 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %179 unwind label %186

179:                                              ; preds = %177
  %180 = getelementptr inbounds nuw i8, ptr %178, i64 16
  store ptr %180, ptr %178, align 8, !tbaa !8
  %181 = getelementptr inbounds nuw i8, ptr %178, i64 8
  store i64 0, ptr %181, align 8, !tbaa !14
  store i8 0, ptr %180, align 1, !tbaa !17
  %182 = icmp eq ptr %166, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  call void @_ZdlPvm(ptr noundef nonnull %166, i64 noundef 0) #29
  br label %184

184:                                              ; preds = %183, %179
  %185 = getelementptr inbounds nuw i8, ptr %178, i64 32
  store ptr %178, ptr %6, align 8, !tbaa !160
  store ptr %185, ptr %18, align 8, !tbaa !162
  store ptr %185, ptr %170, align 8, !tbaa !163
  br label %188

186:                                              ; preds = %177
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %207

188:                                              ; preds = %184, %173, %165
  %189 = phi ptr [ %185, %184 ], [ %176, %173 ], [ %167, %165 ]
  %190 = phi ptr [ %178, %184 ], [ %166, %173 ], [ %166, %165 ]
  store ptr %190, ptr %14, align 8, !tbaa !160
  %191 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %189, ptr %191, align 8, !tbaa !162
  %192 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %193 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %194 = load ptr, ptr %193, align 8, !tbaa !163
  store ptr %194, ptr %192, align 8, !tbaa !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %195 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %198 unwind label %196

196:                                              ; preds = %188
  %197 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #13
  br label %207

198:                                              ; preds = %188, %107, %80
  %199 = phi ptr [ %86, %80 ], [ %114, %107 ], [ %195, %188 ]
  %200 = phi ptr [ %83, %80 ], [ %108, %107 ], [ %190, %188 ]
  %201 = phi ptr [ %82, %80 ], [ %110, %107 ], [ %189, %188 ]
  %202 = phi ptr [ %81, %80 ], [ %113, %107 ], [ %194, %188 ]
  %203 = getelementptr inbounds nuw i8, ptr %199, i64 8
  store i32 4, ptr %203, align 8, !tbaa !167
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13vector_handleE, i64 16), ptr %199, align 8, !tbaa !170
  %204 = getelementptr inbounds nuw i8, ptr %199, i64 16
  %205 = getelementptr inbounds nuw i8, ptr %199, i64 24
  %206 = getelementptr inbounds nuw i8, ptr %199, i64 32
  store ptr %200, ptr %204, align 8, !tbaa !160
  store ptr %201, ptr %205, align 8, !tbaa !162
  store ptr %202, ptr %206, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret ptr %199

207:                                              ; preds = %115, %117, %186, %196, %163, %154, %87, %60, %43
  %208 = phi { ptr, i32 } [ %61, %60 ], [ %88, %87 ], [ %44, %43 ], [ %118, %117 ], [ %116, %115 ], [ %197, %196 ], [ %187, %186 ], [ %155, %154 ], [ %164, %163 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  resume { ptr, i32 } %208
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_323sys__native_str_split_nEPKcS1_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %3 ]
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %7 ]
  %14 = tail call noundef ptr @_ZN12__apo_stdlib16str_split_handleESt17basic_string_viewIcSt11char_traitsIcEES3_i(i64 %8, ptr %0, i64 %13, ptr %1, i32 noundef %2)
  ret ptr %14
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_327sys__native_str_split_linesEPKc(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib22str_split_lines_handleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib22str_split_lines_handleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::basic_string_view", align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %8

8:                                                ; preds = %51, %2
  %9 = phi i64 [ 0, %2 ], [ %52, %51 ]
  %10 = icmp ugt i64 %9, %0
  br i1 %10, label %121, label %11

11:                                               ; preds = %8
  %12 = icmp ult i64 %9, %0
  br i1 %12, label %13, label %23

13:                                               ; preds = %11, %17
  %14 = phi i64 [ %18, %17 ], [ %9, %11 ]
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !17
  switch i8 %16, label %17 [
    i8 13, label %20
    i8 10, label %20
  ]

17:                                               ; preds = %13
  %18 = add i64 %14, 1
  %19 = icmp eq i64 %18, %0
  br i1 %19, label %23, label %13, !llvm.loop !172

20:                                               ; preds = %13, %13
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 %14
  %22 = icmp eq i64 %14, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %11, %20, %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %24 = sub nuw i64 %0, %9
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 %9
  store i64 %24, ptr %4, align 8
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %25, ptr %26, align 8
  %27 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %28 unwind label %29

28:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %121

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %164

31:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %32 = sub i64 %14, %9
  %33 = sub nuw i64 %0, %9
  %34 = call i64 @llvm.umin.i64(i64 %33, i64 %32)
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 %9
  store i64 %34, ptr %5, align 8
  store ptr %35, ptr %7, align 8
  %36 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %37 unwind label %49

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %38 = add nuw i64 %14, 1
  %39 = icmp ult i64 %38, %0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i8, ptr %21, align 1, !tbaa !17
  %42 = icmp eq i8 %41, 13
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 %38
  %45 = load i8, ptr %44, align 1, !tbaa !17
  %46 = icmp eq i8 %45, 10
  %47 = add nuw i64 %14, 2
  %48 = select i1 %46, i64 %47, i64 %38
  br label %51

49:                                               ; preds = %31
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %164

51:                                               ; preds = %43, %40, %37
  %52 = phi i64 [ %38, %40 ], [ %38, %37 ], [ %48, %43 ]
  %53 = icmp eq i64 %52, %0
  br i1 %53, label %54, label %8

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %56 = load ptr, ptr %55, align 8, !tbaa !162
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !163
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds nuw i8, ptr %56, i64 16
  store ptr %61, ptr %56, align 8, !tbaa !8
  %62 = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 0, ptr %62, align 8, !tbaa !14
  store i8 0, ptr %61, align 1, !tbaa !17
  %63 = getelementptr inbounds nuw i8, ptr %56, i64 32
  store ptr %63, ptr %55, align 8, !tbaa !162
  br label %121

64:                                               ; preds = %54
  %65 = load ptr, ptr %3, align 8, !tbaa !160
  %66 = ptrtoint ptr %56 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = ashr exact i64 %68, 5
  %70 = icmp sgt i64 %69, -1
  call void @llvm.assume(i1 %70)
  %71 = icmp eq i64 %68, 9223372036854775776
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #27
          to label %73 unwind label %119

73:                                               ; preds = %72
  unreachable

74:                                               ; preds = %64
  %75 = call i64 @llvm.umax.i64(i64 %69, i64 1)
  %76 = add nuw nsw i64 %75, %69
  %77 = call noundef i64 @llvm.umin.i64(i64 %76, i64 288230376151711743)
  %78 = shl nuw nsw i64 %77, 5
  %79 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %78) #28
          to label %80 unwind label %119

80:                                               ; preds = %74
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 %68
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 16
  store ptr %82, ptr %81, align 8, !tbaa !8
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 0, ptr %83, align 8, !tbaa !14
  store i8 0, ptr %82, align 1, !tbaa !17
  %84 = icmp eq ptr %65, %56
  br i1 %84, label %109, label %85

85:                                               ; preds = %80, %101
  %86 = phi ptr [ %107, %101 ], [ %79, %80 ]
  %87 = phi ptr [ %106, %101 ], [ %65, %80 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 16
  store ptr %88, ptr %86, align 8, !tbaa !8, !alias.scope !173, !noalias !176
  %89 = load ptr, ptr %87, align 8, !tbaa !18, !alias.scope !176, !noalias !173
  %90 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %94 = load i64, ptr %93, align 8, !tbaa !14, !alias.scope !176, !noalias !173
  %95 = icmp ult i64 %94, 16
  call void @llvm.assume(i1 %95)
  %96 = add nuw nsw i64 %94, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %88, ptr noundef nonnull align 8 dereferenceable(1) %90, i64 %96, i1 false), !alias.scope !178
  br label %101

97:                                               ; preds = %85
  store ptr %89, ptr %86, align 8, !tbaa !18, !alias.scope !173, !noalias !176
  %98 = load i64, ptr %90, align 8, !tbaa !17, !alias.scope !176, !noalias !173
  store i64 %98, ptr %88, align 8, !tbaa !17, !alias.scope !173, !noalias !176
  %99 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %100 = load i64, ptr %99, align 8, !tbaa !14, !alias.scope !176, !noalias !173
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %94, %92 ], [ %100, %97 ]
  %103 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %104 = icmp ult i64 %102, 9223372036854775807
  call void @llvm.assume(i1 %104)
  %105 = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i64 %102, ptr %105, align 8, !tbaa !14, !alias.scope !173, !noalias !176
  store ptr %90, ptr %87, align 8, !tbaa !18, !alias.scope !176, !noalias !173
  store i64 0, ptr %103, align 8, !tbaa !14, !alias.scope !176, !noalias !173
  store i8 0, ptr %90, align 1, !tbaa !17, !alias.scope !176, !noalias !173
  %106 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %107 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %108 = icmp eq ptr %106, %56
  br i1 %108, label %109, label %85, !llvm.loop !179

109:                                              ; preds = %101, %80
  %110 = phi ptr [ %79, %80 ], [ %107, %101 ]
  %111 = icmp eq ptr %65, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %57, align 8, !tbaa !163
  %114 = ptrtoint ptr %113 to i64
  %115 = sub i64 %114, %67
  call void @_ZdlPvm(ptr noundef nonnull %65, i64 noundef %115) #29
  br label %116

116:                                              ; preds = %112, %109
  %117 = getelementptr inbounds nuw i8, ptr %110, i64 32
  store ptr %79, ptr %3, align 8, !tbaa !160
  store ptr %117, ptr %55, align 8, !tbaa !162
  %118 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %79, i64 %77
  store ptr %118, ptr %57, align 8, !tbaa !163
  br label %125

119:                                              ; preds = %74, %72
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %164

121:                                              ; preds = %8, %28, %60
  %122 = load ptr, ptr %3, align 8, !tbaa !36
  %123 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %124 = load ptr, ptr %123, align 8, !tbaa !36
  br label %125

125:                                              ; preds = %121, %116
  %126 = phi ptr [ %124, %121 ], [ %117, %116 ]
  %127 = phi ptr [ %122, %121 ], [ %79, %116 ]
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %129 = icmp eq ptr %127, %126
  br i1 %129, label %130, label %149

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %132 = load ptr, ptr %131, align 8, !tbaa !163
  %133 = icmp eq ptr %126, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds nuw i8, ptr %126, i64 16
  store ptr %135, ptr %126, align 8, !tbaa !8
  %136 = getelementptr inbounds nuw i8, ptr %126, i64 8
  store i64 0, ptr %136, align 8, !tbaa !14
  store i8 0, ptr %135, align 1, !tbaa !17
  %137 = getelementptr inbounds nuw i8, ptr %126, i64 32
  store ptr %137, ptr %128, align 8, !tbaa !162
  br label %149

138:                                              ; preds = %130
  %139 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %140 unwind label %147

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %139, i64 16
  store ptr %141, ptr %139, align 8, !tbaa !8
  %142 = getelementptr inbounds nuw i8, ptr %139, i64 8
  store i64 0, ptr %142, align 8, !tbaa !14
  store i8 0, ptr %141, align 1, !tbaa !17
  %143 = icmp eq ptr %126, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  call void @_ZdlPvm(ptr noundef nonnull %127, i64 noundef 0) #29
  br label %145

145:                                              ; preds = %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %139, i64 32
  store ptr %139, ptr %3, align 8, !tbaa !160
  store ptr %146, ptr %128, align 8, !tbaa !162
  store ptr %146, ptr %131, align 8, !tbaa !163
  br label %149

147:                                              ; preds = %138
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %164

149:                                              ; preds = %145, %134, %125
  %150 = phi ptr [ %146, %145 ], [ %137, %134 ], [ %126, %125 ]
  %151 = phi ptr [ %139, %145 ], [ %127, %134 ], [ %127, %125 ]
  store ptr %151, ptr %6, align 8, !tbaa !160
  %152 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %150, ptr %152, align 8, !tbaa !162
  %153 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %155 = load ptr, ptr %154, align 8, !tbaa !163
  store ptr %155, ptr %153, align 8, !tbaa !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %156 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %157 unwind label %162

157:                                              ; preds = %149
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 8
  store i32 4, ptr %158, align 8, !tbaa !167
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13vector_handleE, i64 16), ptr %156, align 8, !tbaa !170
  %159 = getelementptr inbounds nuw i8, ptr %156, i64 16
  %160 = getelementptr inbounds nuw i8, ptr %156, i64 24
  %161 = getelementptr inbounds nuw i8, ptr %156, i64 32
  store ptr %151, ptr %159, align 8, !tbaa !160
  store ptr %150, ptr %160, align 8, !tbaa !162
  store ptr %155, ptr %161, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret ptr %156

162:                                              ; preds = %149
  %163 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  br label %164

164:                                              ; preds = %29, %49, %119, %162, %147
  %165 = phi { ptr, i32 } [ %163, %162 ], [ %148, %147 ], [ %30, %29 ], [ %120, %119 ], [ %50, %49 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  resume { ptr, i32 } %165
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN30__apollo_inline_inline_940_5_321sys__native_parse_intEPKci(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %5 = icmp eq ptr %0, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !17, !noalias !180
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @isspace(i32 noundef %13) #30, !noalias !180
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = add nuw i64 %10, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %19, label %9, !llvm.loop !40

19:                                               ; preds = %16, %9, %2, %6
  %20 = phi i64 [ 0, %6 ], [ 0, %2 ], [ %7, %9 ], [ %7, %16 ]
  %21 = phi i64 [ 0, %6 ], [ 0, %2 ], [ %7, %16 ], [ %10, %9 ]
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi i64 [ %20, %19 ], [ %26, %25 ]
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = add i64 %23, -1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !17, !noalias !180
  %29 = zext i8 %28 to i32
  %30 = tail call i32 @isspace(i32 noundef %29) #30, !noalias !180
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %22, !llvm.loop !42

32:                                               ; preds = %25
  %33 = icmp ugt i64 %23, %21
  br i1 %33, label %37, label %34

34:                                               ; preds = %22, %32
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %35, align 8, !tbaa !14, !alias.scope !180
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %73

37:                                               ; preds = %32
  %38 = sub nuw i64 %23, %21
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %40, ptr %3, align 8, !tbaa !8, !alias.scope !180
  %41 = icmp ugt i64 %38, 15
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = icmp ugt i64 %38, 9223372036854775806
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %38, 1
  %47 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %46) #28
  store ptr %47, ptr %3, align 8, !tbaa !18, !alias.scope !180
  store i64 %38, ptr %40, align 8, !tbaa !17, !alias.scope !180
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi ptr [ %47, %45 ], [ %40, %37 ]
  switch i64 %38, label %52 [
    i64 1, label %50
    i64 0, label %53
  ]

50:                                               ; preds = %48
  %51 = load i8, ptr %39, align 1, !tbaa !17, !noalias !180
  store i8 %51, ptr %49, align 1, !tbaa !17
  br label %53

52:                                               ; preds = %48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %49, ptr align 1 %39, i64 %38, i1 false)
  br label %53

53:                                               ; preds = %48, %50, %52
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %38, ptr %54, align 8, !tbaa !14, !alias.scope !180
  %55 = getelementptr inbounds nuw i8, ptr %49, i64 %38
  store i8 0, ptr %55, align 1, !tbaa !17
  %56 = load i64, ptr %54, align 8, !tbaa !14
  %57 = load ptr, ptr %3, align 8, !tbaa !18
  %58 = icmp eq i64 %56, 0
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %58, label %68, label %60

60:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !183
  %61 = icmp eq i32 %1, 0
  %62 = add i32 %1, -37
  %63 = icmp ult i32 %62, -35
  %64 = select i1 %63, i32 10, i32 %1
  %65 = select i1 %61, i32 0, i32 %64
  %66 = call i64 @__isoc23_strtol(ptr noundef %57, ptr noundef nonnull %4, i32 noundef %65) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %67 = load ptr, ptr %3, align 8, !tbaa !18
  br label %68

68:                                               ; preds = %53, %60
  %69 = phi ptr [ %67, %60 ], [ %57, %53 ]
  %70 = phi i64 [ %66, %60 ], [ 0, %53 ]
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %34, %68
  %74 = phi i64 [ 0, %34 ], [ %70, %68 ]
  %75 = phi ptr [ %36, %34 ], [ %59, %68 ]
  %76 = load i64, ptr %75, align 8, !tbaa !14
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  br label %81

78:                                               ; preds = %68
  %79 = load i64, ptr %71, align 8, !tbaa !17
  %80 = add i64 %79, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %80) #29
  br label %81

81:                                               ; preds = %73, %78
  %82 = phi i64 [ %74, %73 ], [ %70, %78 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i64 %82
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_940_5_322sys__native_parse_boolEPKc(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i32 @_ZN12__apo_stdlib16parse_bool_asciiESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i32 %7
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib16parse_bool_asciiESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %2 ]
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !17, !noalias !184
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @isspace(i32 noundef %10) #30, !noalias !184
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = add nuw i64 %7, 1
  %15 = icmp eq i64 %14, %0
  br i1 %15, label %16, label %6, !llvm.loop !40

16:                                               ; preds = %13, %6, %2
  %17 = phi i64 [ 0, %2 ], [ %0, %13 ], [ %7, %6 ]
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi i64 [ %0, %16 ], [ %22, %21 ]
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = add i64 %19, -1
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !17, !noalias !184
  %25 = zext i8 %24 to i32
  %26 = tail call i32 @isspace(i32 noundef %25) #30, !noalias !184
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !42

28:                                               ; preds = %21
  %29 = icmp ugt i64 %19, %17
  br i1 %29, label %36, label %30

30:                                               ; preds = %18, %28
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14, !alias.scope !184
  store i8 0, ptr %31, align 8, !tbaa !17, !alias.scope !184
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %34, ptr %3, align 8, !tbaa !8, !alias.scope !187
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %68

36:                                               ; preds = %28
  %37 = sub nuw i64 %19, %17
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 %17
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %39, ptr %4, align 8, !tbaa !8, !alias.scope !184
  %40 = icmp ugt i64 %37, 15
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = icmp ugt i64 %37, 9223372036854775806
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

44:                                               ; preds = %41
  %45 = add nuw nsw i64 %37, 1
  %46 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #28
  store ptr %46, ptr %4, align 8, !tbaa !18, !alias.scope !184
  store i64 %37, ptr %39, align 8, !tbaa !17, !alias.scope !184
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %39, %36 ]
  switch i64 %37, label %51 [
    i64 1, label %49
    i64 0, label %52
  ]

49:                                               ; preds = %47
  %50 = load i8, ptr %38, align 1, !tbaa !17, !noalias !184
  store i8 %50, ptr %48, align 1, !tbaa !17
  br label %52

51:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr align 1 %38, i64 %37, i1 false)
  br label %52

52:                                               ; preds = %47, %49, %51
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %37, ptr %53, align 8, !tbaa !14, !alias.scope !184
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 %37
  store i8 0, ptr %54, align 1, !tbaa !17
  %55 = load ptr, ptr %4, align 8, !tbaa !18, !noalias !187
  %56 = load i64, ptr %53, align 8, !tbaa !14, !noalias !187
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %58 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds nuw i8, ptr %55, i64 %56
  %60 = icmp samesign eq i64 %56, 0
  br i1 %60, label %63, label %78

61:                                               ; preds = %78
  %62 = load ptr, ptr %4, align 8, !tbaa !18, !noalias !187
  br label %63

63:                                               ; preds = %61, %52
  %64 = phi ptr [ %62, %61 ], [ %55, %52 ]
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %65, ptr %3, align 8, !tbaa !8, !alias.scope !187
  %66 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %30, %63
  %69 = phi ptr [ %35, %30 ], [ %66, %63 ]
  %70 = phi ptr [ %34, %30 ], [ %65, %63 ]
  %71 = phi ptr [ %33, %30 ], [ %57, %63 ]
  %72 = load i64, ptr %71, align 8, !tbaa !14, !noalias !187
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  %74 = add nuw nsw i64 %72, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %70, ptr noundef nonnull align 8 dereferenceable(1) %69, i64 %74, i1 false)
  br label %86

75:                                               ; preds = %63
  store ptr %64, ptr %3, align 8, !tbaa !18, !alias.scope !187
  %76 = load i64, ptr %66, align 8, !tbaa !17, !noalias !187
  store i64 %76, ptr %65, align 8, !tbaa !17, !alias.scope !187
  %77 = load i64, ptr %57, align 8, !tbaa !14, !noalias !187
  br label %86

78:                                               ; preds = %52, %78
  %79 = phi ptr [ %84, %78 ], [ %55, %52 ]
  %80 = load i8, ptr %79, align 1, !tbaa !17, !noalias !187
  %81 = zext i8 %80 to i32
  %82 = call i32 @tolower(i32 noundef %81) #30, !noalias !187
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %79, align 1, !tbaa !17, !noalias !187
  %84 = getelementptr inbounds nuw i8, ptr %79, i64 1
  %85 = icmp eq ptr %84, %59
  br i1 %85, label %61, label %78

86:                                               ; preds = %68, %75
  %87 = phi ptr [ %69, %68 ], [ %66, %75 ]
  %88 = phi ptr [ %70, %68 ], [ %65, %75 ]
  %89 = phi ptr [ %71, %68 ], [ %57, %75 ]
  %90 = phi ptr [ %70, %68 ], [ %64, %75 ]
  %91 = phi i64 [ %72, %68 ], [ %77, %75 ]
  %92 = icmp ult i64 %91, 9223372036854775807
  call void @llvm.assume(i1 %92)
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %91, ptr %93, align 8, !tbaa !14, !alias.scope !187
  store ptr %87, ptr %4, align 8, !tbaa !18, !noalias !187
  store i64 0, ptr %89, align 8, !tbaa !14, !noalias !187
  store i8 0, ptr %87, align 1, !tbaa !17, !noalias !187
  switch i64 %91, label %112 [
    i64 1, label %94
    i64 4, label %97
    i64 3, label %100
    i64 2, label %103
    i64 5, label %109
  ]

94:                                               ; preds = %86
  %95 = load i8, ptr %90, align 1
  %96 = icmp eq i8 %95, 49
  br i1 %96, label %116, label %106

97:                                               ; preds = %86
  %98 = call i32 @bcmp(ptr %90, ptr nonnull @.str.17, i64 %91)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %116, label %112

100:                                              ; preds = %86
  %101 = call i32 @bcmp(ptr %90, ptr nonnull @.str.18, i64 %91)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %116, label %112

103:                                              ; preds = %86
  %104 = call i32 @bcmp(ptr %90, ptr nonnull @.str.19, i64 %91)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %116, label %112

106:                                              ; preds = %94
  %107 = call i32 @bcmp(ptr nonnull %90, ptr nonnull @.str.20, i64 %91)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %112

109:                                              ; preds = %86
  %110 = call i32 @bcmp(ptr %90, ptr nonnull @.str.21, i64 %91)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %106, %103, %100, %97, %86, %109
  %113 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.22)
  br i1 %113, label %116, label %114

114:                                              ; preds = %112
  %115 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23)
  br label %116

116:                                              ; preds = %114, %106, %109, %112, %94, %97, %100, %103
  %117 = phi i32 [ 1, %103 ], [ 1, %100 ], [ 1, %97 ], [ 1, %94 ], [ 0, %112 ], [ 0, %109 ], [ 0, %106 ], [ 0, %114 ]
  %118 = load ptr, ptr %3, align 8, !tbaa !18
  %119 = icmp eq ptr %118, %88
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i64, ptr %93, align 8, !tbaa !14
  %122 = icmp ult i64 %121, 16
  call void @llvm.assume(i1 %122)
  br label %126

123:                                              ; preds = %116
  %124 = load i64, ptr %88, align 8, !tbaa !17
  %125 = add i64 %124, 1
  call void @_ZdlPvm(ptr noundef %118, i64 noundef %125) #29
  br label %126

126:                                              ; preds = %120, %123
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i32 %117
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_940_5_323sys__native_parse_floatEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5, %15
  %9 = phi i64 [ %16, %15 ], [ 0, %5 ]
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !17, !noalias !190
  %12 = zext i8 %11 to i32
  %13 = tail call i32 @isspace(i32 noundef %12) #30, !noalias !190
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = add nuw i64 %9, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %8, !llvm.loop !40

18:                                               ; preds = %15, %8, %1, %5
  %19 = phi i64 [ 0, %5 ], [ 0, %1 ], [ %6, %8 ], [ %6, %15 ]
  %20 = phi i64 [ 0, %5 ], [ 0, %1 ], [ %6, %15 ], [ %9, %8 ]
  br label %21

21:                                               ; preds = %24, %18
  %22 = phi i64 [ %19, %18 ], [ %25, %24 ]
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = add i64 %22, -1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !17, !noalias !190
  %28 = zext i8 %27 to i32
  %29 = tail call i32 @isspace(i32 noundef %28) #30, !noalias !190
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %21, !llvm.loop !42

31:                                               ; preds = %24
  %32 = icmp ugt i64 %22, %20
  br i1 %32, label %36, label %33

33:                                               ; preds = %21, %31
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %34, align 8, !tbaa !14, !alias.scope !190
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %67

36:                                               ; preds = %31
  %37 = sub nuw i64 %22, %20
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %20
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %39, ptr %2, align 8, !tbaa !8, !alias.scope !190
  %40 = icmp ugt i64 %37, 15
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = icmp ugt i64 %37, 9223372036854775806
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

44:                                               ; preds = %41
  %45 = add nuw nsw i64 %37, 1
  %46 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #28
  store ptr %46, ptr %2, align 8, !tbaa !18, !alias.scope !190
  store i64 %37, ptr %39, align 8, !tbaa !17, !alias.scope !190
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %39, %36 ]
  switch i64 %37, label %51 [
    i64 1, label %49
    i64 0, label %52
  ]

49:                                               ; preds = %47
  %50 = load i8, ptr %38, align 1, !tbaa !17, !noalias !190
  store i8 %50, ptr %48, align 1, !tbaa !17
  br label %52

51:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr align 1 %38, i64 %37, i1 false)
  br label %52

52:                                               ; preds = %47, %49, %51
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %37, ptr %53, align 8, !tbaa !14, !alias.scope !190
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 %37
  store i8 0, ptr %54, align 1, !tbaa !17
  %55 = load i64, ptr %53, align 8, !tbaa !14
  %56 = load ptr, ptr %2, align 8, !tbaa !18
  %57 = icmp eq i64 %55, 0
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br i1 %57, label %62, label %59

59:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !183
  %60 = call double @strtod(ptr noundef %56, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %61 = load ptr, ptr %2, align 8, !tbaa !18
  br label %62

62:                                               ; preds = %52, %59
  %63 = phi ptr [ %61, %59 ], [ %56, %52 ]
  %64 = phi double [ %60, %59 ], [ 0.000000e+00, %52 ]
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %33, %62
  %68 = phi double [ 0.000000e+00, %33 ], [ %64, %62 ]
  %69 = phi ptr [ %35, %33 ], [ %58, %62 ]
  %70 = load i64, ptr %69, align 8, !tbaa !14
  %71 = icmp ult i64 %70, 16
  call void @llvm.assume(i1 %71)
  br label %75

72:                                               ; preds = %62
  %73 = load i64, ptr %65, align 8, !tbaa !17
  %74 = add i64 %73, 1
  call void @_ZdlPvm(ptr noundef %63, i64 noundef %74) #29
  br label %75

75:                                               ; preds = %67, %72
  %76 = phi double [ %68, %67 ], [ %64, %72 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  ret double %76
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_is_alphaEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isalpha(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_is_digitEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = add i8 %4, -48
  %8 = icmp ult i8 %7, 10
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %3, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_is_alnumEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isalnum(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_325sys__native_is_whitespaceEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isspace(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_322sys__native_is_controlEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @iscntrl(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @iscntrl(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_326sys__native_is_punctuationEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @ispunct(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ispunct(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_is_graphEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isgraph(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isgraph(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_is_printEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isprint(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_324sys__native_is_hex_digitEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isxdigit(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_is_asciiEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = icmp sgt i8 %4, -1
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ %8, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @sys__native_str_len(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  %5 = trunc i64 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_concat(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_322sys__native_str_concatEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_trim(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_320sys__native_str_trimEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_trim_start(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_326sys__native_str_trim_startEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_trim_end(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_324sys__native_str_trim_endEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_lowercase(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_lowercaseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_uppercase(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_uppercaseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_titlecase(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_titlecaseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_str_contains(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_940_5_324sys__native_str_containsEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_str_starts_with(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #13
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = tail call i32 @bcmp(ptr readonly %0, ptr nonnull readonly %1, i64 %10)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %6, %9, %12, %14
  %19 = phi i32 [ 0, %9 ], [ %17, %14 ], [ 1, %12 ], [ 1, %6 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_str_ends_with(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #13
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %16 = sub i64 0, %10
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  %18 = tail call i32 @bcmp(ptr nonnull readonly %17, ptr nonnull readonly %1, i64 %10)
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %6, %9, %12, %14
  %22 = phi i32 [ 0, %9 ], [ %20, %14 ], [ 1, %12 ], [ 1, %6 ]
  ret i32 %22
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_str_find(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_str_findEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_str_rfind(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_940_5_321sys__native_str_rfindEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_replace(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_323sys__native_str_replaceEPKcS1_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_replace_n(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_replace_nEPKcS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_reverse(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_323sys__native_str_reverseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_repeat(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_322sys__native_str_repeatEPKci(ptr noundef %0, i32 noundef %1)
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_pad_left(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
  %4 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_324sys__native_str_pad_leftEPKciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_pad_right(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
  %4 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_pad_rightEPKciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_substring(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_substringEPKcii(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @sys__native_str_cmp(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #13
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %7)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @memcmp(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %13) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %24

18:                                               ; preds = %11
  %19 = sub i64 %7, %12
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %31, label %27

21:                                               ; preds = %15
  %22 = sub i64 %7, %12
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %31, label %27

24:                                               ; preds = %15
  %25 = icmp sgt i32 %16, -1
  %26 = select i1 %25, i32 1, i32 -1
  br label %31

27:                                               ; preds = %21, %18
  %28 = phi i64 [ %19, %18 ], [ %22, %21 ]
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %24, %27, %18, %21
  %32 = phi i32 [ -1, %18 ], [ -1, %21 ], [ %30, %27 ], [ %26, %24 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 -1, 2) i32 @sys__native_str_casecmp(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #13
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %7)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %33, label %18

15:                                               ; preds = %31
  %16 = add nuw i64 %19, 1
  %17 = icmp eq i64 %16, %13
  br i1 %17, label %33, label %18, !llvm.loop !159

18:                                               ; preds = %11, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %11 ]
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !17
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @tolower(i32 noundef %22) #30
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !17
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @tolower(i32 noundef %26) #30
  %28 = and i32 %23, 255
  %29 = and i32 %27, 255
  %30 = icmp samesign ult i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = icmp samesign ugt i32 %28, %29
  br i1 %32, label %35, label %15

33:                                               ; preds = %15, %11
  %34 = tail call i32 @llvm.ucmp.i32.i64(i64 %7, i64 %12)
  br label %35

35:                                               ; preds = %18, %31, %33
  %36 = phi i32 [ %34, %33 ], [ -1, %18 ], [ 1, %31 ]
  ret i32 %36
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_split(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef ptr @_ZN12__apo_stdlib16str_split_handleESt17basic_string_viewIcSt11char_traitsIcEES3_i(i64 %7, ptr %0, i64 %12, ptr %1, i32 noundef -1)
  ret ptr %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_split_n(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i64 [ %6, %5 ], [ 0, %3 ]
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %7 ]
  %14 = tail call noundef ptr @_ZN12__apo_stdlib16str_split_handleESt17basic_string_viewIcSt11char_traitsIcEES3_i(i64 %8, ptr %0, i64 %13, ptr %1, i32 noundef %2)
  ret ptr %14
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_str_split_lines(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib22str_split_lines_handleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @sys__native_parse_int(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef i64 @_ZN30__apollo_inline_inline_940_5_321sys__native_parse_intEPKci(ptr noundef %0, i32 noundef %1)
  ret i64 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_parse_bool(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i32 @_ZN12__apo_stdlib16parse_bool_asciiESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @sys__native_parse_float(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @_ZN30__apollo_inline_inline_940_5_323sys__native_parse_floatEPKc(ptr noundef %0)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_alpha(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isalpha(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_digit(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = add i8 %4, -48
  %8 = icmp ult i8 %7, 10
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %3, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_alnum(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isalnum(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_whitespace(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isspace(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_control(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @iscntrl(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_punctuation(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @ispunct(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_graph(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isgraph(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_print(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isprint(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_hex_digit(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isxdigit(i32 noundef %7) #30
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_is_ascii(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = icmp sgt i8 %4, -1
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ %8, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !36, !noalias !193
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !36
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !196, !noalias !193
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !196
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !36, !noalias !197
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !36
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !196, !noalias !197
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !196
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !200
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !201
  %21 = load ptr, ptr %9, align 8, !tbaa !202
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #29
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !203

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !200
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !204
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #29
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #31
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !204
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !205

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #28
  store ptr %12, ptr %0, align 8, !tbaa !200
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !36
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !206

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #13
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #29
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !203

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #32
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
  tail call void @__clang_call_terminate(ptr %39) #31
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #13
  %44 = load ptr, ptr %0, align 8, !tbaa !200
  %45 = load i64, ptr %6, align 8, !tbaa !204
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #32
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
  store ptr %15, ptr %52, align 8, !tbaa !35
  %53 = load ptr, ptr %15, align 8, !tbaa !36
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !34
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !207
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !35
  %60 = load ptr, ptr %58, align 8, !tbaa !36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !34
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !207
  store ptr %53, ptr %51, align 8, !tbaa !208
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !23
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #31
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !35
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %210
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %212, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !30
  br i1 %15, label %253, label %214

17:                                               ; preds = %3, %210
  %18 = phi ptr [ %211, %210 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !14
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %17
  %28 = load i64, ptr %21, align 8, !tbaa !17
  %29 = add i64 %28, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #29
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, ptr %33, align 8, !tbaa !17
  %37 = add i64 %36, 1
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #29
  br label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !14
  %41 = icmp ult i64 %40, 16
  tail call void @llvm.assume(i1 %41)
  br label %42

42:                                               ; preds = %38, %35
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !18
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !17
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #29
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 72
  %52 = load i64, ptr %51, align 8, !tbaa !14
  %53 = icmp ult i64 %52, 16
  tail call void @llvm.assume(i1 %53)
  br label %54

54:                                               ; preds = %50, %47
  %55 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !18
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, ptr %57, align 8, !tbaa !17
  %61 = add i64 %60, 1
  tail call void @_ZdlPvm(ptr noundef %56, i64 noundef %61) #29
  br label %66

62:                                               ; preds = %54
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 104
  %64 = load i64, ptr %63, align 8, !tbaa !14
  %65 = icmp ult i64 %64, 16
  tail call void @llvm.assume(i1 %65)
  br label %66

66:                                               ; preds = %62, %59
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %68 = load ptr, ptr %67, align 8, !tbaa !18
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !17
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #29
  br label %78

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 136
  %76 = load i64, ptr %75, align 8, !tbaa !14
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  br label %78

78:                                               ; preds = %74, %71
  %79 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %80 = load ptr, ptr %79, align 8, !tbaa !18
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %81, align 8, !tbaa !17
  %85 = add i64 %84, 1
  tail call void @_ZdlPvm(ptr noundef %80, i64 noundef %85) #29
  br label %90

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 168
  %88 = load i64, ptr %87, align 8, !tbaa !14
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  br label %90

90:                                               ; preds = %86, %83
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %92 = load ptr, ptr %91, align 8, !tbaa !18
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !17
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #29
  br label %102

98:                                               ; preds = %90
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 200
  %100 = load i64, ptr %99, align 8, !tbaa !14
  %101 = icmp ult i64 %100, 16
  tail call void @llvm.assume(i1 %101)
  br label %102

102:                                              ; preds = %98, %95
  %103 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %104 = load ptr, ptr %103, align 8, !tbaa !18
  %105 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i64, ptr %105, align 8, !tbaa !17
  %109 = add i64 %108, 1
  tail call void @_ZdlPvm(ptr noundef %104, i64 noundef %109) #29
  br label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds nuw i8, ptr %19, i64 232
  %112 = load i64, ptr %111, align 8, !tbaa !14
  %113 = icmp ult i64 %112, 16
  tail call void @llvm.assume(i1 %113)
  br label %114

114:                                              ; preds = %110, %107
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %116 = load ptr, ptr %115, align 8, !tbaa !18
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !17
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #29
  br label %126

122:                                              ; preds = %114
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 264
  %124 = load i64, ptr %123, align 8, !tbaa !14
  %125 = icmp ult i64 %124, 16
  tail call void @llvm.assume(i1 %125)
  br label %126

126:                                              ; preds = %122, %119
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %128 = load ptr, ptr %127, align 8, !tbaa !18
  %129 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !17
  %133 = add i64 %132, 1
  tail call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #29
  br label %138

134:                                              ; preds = %126
  %135 = getelementptr inbounds nuw i8, ptr %19, i64 296
  %136 = load i64, ptr %135, align 8, !tbaa !14
  %137 = icmp ult i64 %136, 16
  tail call void @llvm.assume(i1 %137)
  br label %138

138:                                              ; preds = %134, %131
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %140 = load ptr, ptr %139, align 8, !tbaa !18
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !17
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #29
  br label %150

146:                                              ; preds = %138
  %147 = getelementptr inbounds nuw i8, ptr %19, i64 328
  %148 = load i64, ptr %147, align 8, !tbaa !14
  %149 = icmp ult i64 %148, 16
  tail call void @llvm.assume(i1 %149)
  br label %150

150:                                              ; preds = %146, %143
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %152 = load ptr, ptr %151, align 8, !tbaa !18
  %153 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i64, ptr %153, align 8, !tbaa !17
  %157 = add i64 %156, 1
  tail call void @_ZdlPvm(ptr noundef %152, i64 noundef %157) #29
  br label %162

158:                                              ; preds = %150
  %159 = getelementptr inbounds nuw i8, ptr %19, i64 360
  %160 = load i64, ptr %159, align 8, !tbaa !14
  %161 = icmp ult i64 %160, 16
  tail call void @llvm.assume(i1 %161)
  br label %162

162:                                              ; preds = %158, %155
  %163 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %164 = load ptr, ptr %163, align 8, !tbaa !18
  %165 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i64, ptr %165, align 8, !tbaa !17
  %169 = add i64 %168, 1
  tail call void @_ZdlPvm(ptr noundef %164, i64 noundef %169) #29
  br label %174

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 392
  %172 = load i64, ptr %171, align 8, !tbaa !14
  %173 = icmp ult i64 %172, 16
  tail call void @llvm.assume(i1 %173)
  br label %174

174:                                              ; preds = %170, %167
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %176 = load ptr, ptr %175, align 8, !tbaa !18
  %177 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i64, ptr %177, align 8, !tbaa !17
  %181 = add i64 %180, 1
  tail call void @_ZdlPvm(ptr noundef %176, i64 noundef %181) #29
  br label %186

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %19, i64 424
  %184 = load i64, ptr %183, align 8, !tbaa !14
  %185 = icmp ult i64 %184, 16
  tail call void @llvm.assume(i1 %185)
  br label %186

186:                                              ; preds = %182, %179
  %187 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %188 = load ptr, ptr %187, align 8, !tbaa !18
  %189 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i64, ptr %189, align 8, !tbaa !17
  %193 = add i64 %192, 1
  tail call void @_ZdlPvm(ptr noundef %188, i64 noundef %193) #29
  br label %198

194:                                              ; preds = %186
  %195 = getelementptr inbounds nuw i8, ptr %19, i64 456
  %196 = load i64, ptr %195, align 8, !tbaa !14
  %197 = icmp ult i64 %196, 16
  tail call void @llvm.assume(i1 %197)
  br label %198

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %200 = load ptr, ptr %199, align 8, !tbaa !18
  %201 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %202 = icmp eq ptr %200, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = load i64, ptr %201, align 8, !tbaa !17
  %205 = add i64 %204, 1
  tail call void @_ZdlPvm(ptr noundef %200, i64 noundef %205) #29
  br label %210

206:                                              ; preds = %198
  %207 = getelementptr inbounds nuw i8, ptr %19, i64 488
  %208 = load i64, ptr %207, align 8, !tbaa !14
  %209 = icmp ult i64 %208, 16
  tail call void @llvm.assume(i1 %209)
  br label %210

210:                                              ; preds = %206, %203
  %211 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %212 = load ptr, ptr %6, align 8, !tbaa !35
  %213 = icmp ult ptr %211, %212
  br i1 %213, label %17, label %10, !llvm.loop !209

214:                                              ; preds = %12
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %216 = load ptr, ptr %215, align 8, !tbaa !207
  %217 = icmp eq ptr %16, %216
  br i1 %217, label %233, label %218

218:                                              ; preds = %214, %230
  %219 = phi ptr [ %231, %230 ], [ %16, %214 ]
  %220 = load ptr, ptr %219, align 8, !tbaa !18
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 16
  %222 = icmp eq ptr %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 8
  %225 = load i64, ptr %224, align 8, !tbaa !14
  %226 = icmp ult i64 %225, 16
  tail call void @llvm.assume(i1 %226)
  br label %230

227:                                              ; preds = %218
  %228 = load i64, ptr %221, align 8, !tbaa !17
  %229 = add i64 %228, 1
  tail call void @_ZdlPvm(ptr noundef %220, i64 noundef %229) #29
  br label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %232 = icmp eq ptr %231, %216
  br i1 %232, label %233, label %218, !llvm.loop !210

233:                                              ; preds = %230, %214
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !34
  %236 = load ptr, ptr %2, align 8, !tbaa !30
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %271, label %238

238:                                              ; preds = %233, %250
  %239 = phi ptr [ %251, %250 ], [ %235, %233 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !18
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 16
  %242 = icmp eq ptr %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = getelementptr inbounds nuw i8, ptr %239, i64 8
  %245 = load i64, ptr %244, align 8, !tbaa !14
  %246 = icmp ult i64 %245, 16
  tail call void @llvm.assume(i1 %246)
  br label %250

247:                                              ; preds = %238
  %248 = load i64, ptr %241, align 8, !tbaa !17
  %249 = add i64 %248, 1
  tail call void @_ZdlPvm(ptr noundef %240, i64 noundef %249) #29
  br label %250

250:                                              ; preds = %247, %243
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %252 = icmp eq ptr %251, %236
  br i1 %252, label %271, label %238, !llvm.loop !210

253:                                              ; preds = %12
  %254 = load ptr, ptr %2, align 8, !tbaa !30
  %255 = icmp eq ptr %16, %254
  br i1 %255, label %271, label %256

256:                                              ; preds = %253, %268
  %257 = phi ptr [ %269, %268 ], [ %16, %253 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !18
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %260 = icmp eq ptr %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 8
  %263 = load i64, ptr %262, align 8, !tbaa !14
  %264 = icmp ult i64 %263, 16
  tail call void @llvm.assume(i1 %264)
  br label %268

265:                                              ; preds = %256
  %266 = load i64, ptr %259, align 8, !tbaa !17
  %267 = add i64 %266, 1
  tail call void @_ZdlPvm(ptr noundef %258, i64 noundef %267) #29
  br label %268

268:                                              ; preds = %265, %261
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %270 = icmp eq ptr %269, %254
  br i1 %270, label %271, label %256, !llvm.loop !210

271:                                              ; preds = %250, %268, %253, %233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !30
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !207
  %27 = load ptr, ptr %4, align 8, !tbaa !30
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !204
  %39 = load ptr, ptr %0, align 8, !tbaa !200
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !202
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !36
  %51 = load ptr, ptr %3, align 8, !tbaa !23
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !8
  %53 = load ptr, ptr %1, align 8, !tbaa !18
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
  store ptr %53, ptr %51, align 8, !tbaa !18
  %62 = load i64, ptr %54, align 8, !tbaa !17
  store i64 %62, ptr %52, align 8, !tbaa !17
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !14
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !14
  store ptr %54, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %64, align 8, !tbaa !14
  store i8 0, ptr %54, align 8, !tbaa !17
  %68 = load ptr, ptr %5, align 8, !tbaa !202
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !35
  %70 = load ptr, ptr %69, align 8, !tbaa !36
  store ptr %70, ptr %18, align 8, !tbaa !34
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !207
  store ptr %70, ptr %3, align 8, !tbaa !23
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !202
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !201
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !204
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !200
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
  br i1 %30, label %31, label %32, !prof !211

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr %35, ptr %24, align 8, !tbaa !36
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !212

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr %48, ptr %42, align 8, !tbaa !36
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #28
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !211

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr %69, ptr %60, align 8, !tbaa !36
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !200
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #29
  store ptr %55, ptr %0, align 8, !tbaa !200
  store i64 %52, ptr %14, align 8, !tbaa !204
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %31 ], [ %24, %32 ], [ %24, %34 ], [ %24, %44 ], [ %24, %45 ], [ %24, %47 ]
  store ptr %74, ptr %6, align 8, !tbaa !35
  %75 = load ptr, ptr %74, align 8, !tbaa !36
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !34
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !207
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !35
  %81 = load ptr, ptr %80, align 8, !tbaa !36
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !34
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !14
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, 9223372036854775806
  %10 = sub i64 %9, %7
  %11 = icmp ult i64 %10, %4
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #27
  unreachable

13:                                               ; preds = %5
  %14 = sub i64 %4, %2
  %15 = add i64 %14, %7
  %16 = load ptr, ptr %0, align 8, !tbaa !18
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
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %50, !prof !213

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
  %44 = load i8, ptr %41, align 1, !tbaa !17
  store i8 %44, ptr %40, align 1, !tbaa !17
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
  %48 = load i8, ptr %3, align 1, !tbaa !17
  store i8 %48, ptr %28, align 1, !tbaa !17
  br label %52

49:                                               ; preds = %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %3, i64 %4, i1 false)
  br label %52

50:                                               ; preds = %27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %28, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %30) #33
  br label %52

51:                                               ; preds = %21
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %52

52:                                               ; preds = %46, %49, %47, %50, %51
  store i64 %15, ptr %6, align 8, !tbaa !14
  %53 = load ptr, ptr %0, align 8, !tbaa !18
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 %15
  store i8 0, ptr %54, align 1, !tbaa !17
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !14
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, %1
  %10 = sub i64 %7, %9
  %11 = sub i64 %4, %2
  %12 = add i64 %11, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !18
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
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
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #28
  switch i64 %1, label %38 [
    i64 0, label %39
    i64 1, label %36
  ]

36:                                               ; preds = %32
  %37 = load i8, ptr %13, align 1, !tbaa !17
  store i8 %37, ptr %35, align 1, !tbaa !17
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
  %47 = load i8, ptr %3, align 1, !tbaa !17
  store i8 %47, ptr %44, align 1, !tbaa !17
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
  %58 = load i8, ptr %55, align 1, !tbaa !17
  store i8 %58, ptr %53, align 1, !tbaa !17
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
  tail call void @_ZdlPvm(ptr noundef %13, i64 noundef %64) #29
  br label %65

65:                                               ; preds = %61, %63
  store ptr %35, ptr %0, align 8, !tbaa !18
  store i64 %33, ptr %14, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #19

; Function Attrs: cold noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: cold noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !160
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %23, label %6

6:                                                ; preds = %1, %18
  %7 = phi ptr [ %19, %18 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %18

15:                                               ; preds = %6
  %16 = load i64, ptr %9, align 8, !tbaa !17
  %17 = add i64 %16, 1
  tail call void @_ZdlPvm(ptr noundef %8, i64 noundef %17) #29
  br label %18

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %20 = icmp eq ptr %19, %4
  br i1 %20, label %21, label %6, !llvm.loop !210

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !160
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %22, %21 ], [ %2, %1 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !163
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %29, %30
  tail call void @_ZdlPvm(ptr noundef nonnull %24, i64 noundef %31) #29
  br label %32

32:                                               ; preds = %23, %26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8, !tbaa !214
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %12, ptr %4, align 8, !tbaa !8
  %13 = icmp eq ptr %11, null
  %14 = icmp ne i64 %9, 0
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #27
  unreachable

17:                                               ; preds = %8
  %18 = icmp ugt i64 %9, 15
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = icmp ugt i64 %9, 9223372036854775806
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

22:                                               ; preds = %19
  %23 = add nuw nsw i64 %9, 1
  %24 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %23) #28
  store ptr %24, ptr %4, align 8, !tbaa !18
  store i64 %9, ptr %12, align 8, !tbaa !17
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %24, %22 ], [ %12, %17 ]
  switch i64 %9, label %29 [
    i64 1, label %27
    i64 0, label %30
  ]

27:                                               ; preds = %25
  %28 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %28, ptr %26, align 1, !tbaa !17
  br label %30

29:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %11, i64 %9, i1 false)
  br label %30

30:                                               ; preds = %25, %27, %29
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %9, ptr %31, align 8, !tbaa !14
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 %9
  store i8 0, ptr %32, align 1, !tbaa !17
  %33 = load ptr, ptr %3, align 8, !tbaa !162
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %3, align 8, !tbaa !162
  br label %37

35:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJSt17basic_string_viewIcS3_EEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %36 = load ptr, ptr %3, align 8, !tbaa !36
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi ptr [ %36, %35 ], [ %34, %30 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 -32
  ret ptr %39
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJiRcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = load ptr, ptr %0, align 8, !tbaa !160
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 5
  %11 = icmp sgt i64 %10, -1
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 %9, 9223372036854775776
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #27
  unreachable

14:                                               ; preds = %3
  %15 = tail call i64 @llvm.umax.i64(i64 %10, i64 1)
  %16 = add nuw nsw i64 %15, %10
  %17 = tail call noundef i64 @llvm.umin.i64(i64 %16, i64 288230376151711743)
  %18 = shl nuw nsw i64 %17, 5
  %19 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #28
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  %21 = load i32, ptr %1, align 4, !tbaa !164
  %22 = sext i32 %21 to i64
  %23 = load i8, ptr %2, align 1, !tbaa !17
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %24, ptr %20, align 8, !tbaa !8
  %25 = icmp ugt i32 %21, 15
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = icmp slt i32 %21, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %29 unwind label %78

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %26
  %31 = add nuw nsw i64 %22, 1
  %32 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %31) #28
          to label %33 unwind label %78

33:                                               ; preds = %30
  store ptr %32, ptr %20, align 8, !tbaa !18
  store i64 %22, ptr %24, align 8, !tbaa !17
  br label %36

34:                                               ; preds = %14
  switch i32 %21, label %36 [
    i32 0, label %38
    i32 1, label %35
  ]

35:                                               ; preds = %34
  store i8 %23, ptr %24, align 1, !tbaa !17
  br label %38

36:                                               ; preds = %34, %33
  %37 = phi ptr [ %32, %33 ], [ %24, %34 ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %37, i8 %23, i64 %22, i1 false)
  br label %38

38:                                               ; preds = %34, %35, %36
  %39 = phi ptr [ %24, %34 ], [ %37, %36 ], [ %24, %35 ]
  %40 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %22, ptr %40, align 8, !tbaa !14
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 %22
  store i8 0, ptr %41, align 1, !tbaa !17
  %42 = icmp eq ptr %6, %5
  br i1 %42, label %67, label %43

43:                                               ; preds = %38, %59
  %44 = phi ptr [ %65, %59 ], [ %19, %38 ]
  %45 = phi ptr [ %64, %59 ], [ %6, %38 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %46, ptr %44, align 8, !tbaa !8, !alias.scope !215, !noalias !218
  %47 = load ptr, ptr %45, align 8, !tbaa !18, !alias.scope !218, !noalias !215
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %52 = load i64, ptr %51, align 8, !tbaa !14, !alias.scope !218, !noalias !215
  %53 = icmp ult i64 %52, 16
  tail call void @llvm.assume(i1 %53)
  %54 = add nuw nsw i64 %52, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %46, ptr noundef nonnull align 8 dereferenceable(1) %48, i64 %54, i1 false), !alias.scope !220
  br label %59

55:                                               ; preds = %43
  store ptr %47, ptr %44, align 8, !tbaa !18, !alias.scope !215, !noalias !218
  %56 = load i64, ptr %48, align 8, !tbaa !17, !alias.scope !218, !noalias !215
  store i64 %56, ptr %46, align 8, !tbaa !17, !alias.scope !215, !noalias !218
  %57 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !14, !alias.scope !218, !noalias !215
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i64 [ %52, %50 ], [ %58, %55 ]
  %61 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %62 = icmp ult i64 %60, 9223372036854775807
  tail call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %60, ptr %63, align 8, !tbaa !14, !alias.scope !215, !noalias !218
  store ptr %48, ptr %45, align 8, !tbaa !18, !alias.scope !218, !noalias !215
  store i64 0, ptr %61, align 8, !tbaa !14, !alias.scope !218, !noalias !215
  store i8 0, ptr %48, align 1, !tbaa !17, !alias.scope !218, !noalias !215
  %64 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %65 = getelementptr inbounds nuw i8, ptr %44, i64 32
  %66 = icmp eq ptr %64, %5
  br i1 %66, label %67, label %43, !llvm.loop !179

67:                                               ; preds = %59, %38
  %68 = phi ptr [ %19, %38 ], [ %65, %59 ]
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %70 = icmp eq ptr %6, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %69, align 8, !tbaa !163
  %73 = ptrtoint ptr %72 to i64
  %74 = sub i64 %73, %8
  tail call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %74) #29
  br label %75

75:                                               ; preds = %67, %71
  %76 = getelementptr inbounds nuw i8, ptr %68, i64 32
  store ptr %19, ptr %0, align 8, !tbaa !160
  store ptr %76, ptr %4, align 8, !tbaa !162
  %77 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %19, i64 %17
  store ptr %77, ptr %69, align 8, !tbaa !163
  ret void

78:                                               ; preds = %30, %28
  %79 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %19, i64 noundef %18) #29
  resume { ptr, i32 } %79
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13vector_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %24, label %7

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %20, %19 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !14
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %19

16:                                               ; preds = %7
  %17 = load i64, ptr %10, align 8, !tbaa !17
  %18 = add i64 %17, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %18) #29
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %22, label %7, !llvm.loop !210

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8, !tbaa !160
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi ptr [ %23, %22 ], [ %3, %1 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !163
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %25 to i64
  %32 = sub i64 %30, %31
  tail call void @_ZdlPvm(ptr noundef nonnull %25, i64 noundef %32) #29
  br label %33

33:                                               ; preds = %24, %27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13vector_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %24, label %7

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %20, %19 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !14
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %19

16:                                               ; preds = %7
  %17 = load i64, ptr %10, align 8, !tbaa !17
  %18 = add i64 %17, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %18) #29
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %22, label %7, !llvm.loop !210

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8, !tbaa !160
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi ptr [ %23, %22 ], [ %3, %1 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !163
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %25 to i64
  %32 = sub i64 %30, %31
  tail call void @_ZdlPvm(ptr noundef nonnull %25, i64 noundef %32) #29
  br label %33

33:                                               ; preds = %24, %27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJSt17basic_string_viewIcS3_EEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = load ptr, ptr %0, align 8, !tbaa !160
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp sgt i64 %9, -1
  tail call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %8, 9223372036854775776
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #27
  unreachable

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %9, i64 1)
  %15 = add nuw nsw i64 %14, %9
  %16 = tail call noundef i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %17 = shl nuw nsw i64 %16, 5
  %18 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #28
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %8
  %20 = load i64, ptr %1, align 8, !tbaa !214
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa !183
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %23, ptr %19, align 8, !tbaa !8
  %24 = icmp eq ptr %22, null
  %25 = icmp ne i64 %20, 0
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #27
          to label %28 unwind label %83

28:                                               ; preds = %27
  unreachable

29:                                               ; preds = %13
  %30 = icmp ugt i64 %20, 15
  br i1 %30, label %31, label %39

31:                                               ; preds = %29
  %32 = icmp ugt i64 %20, 9223372036854775806
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %34 unwind label %83

34:                                               ; preds = %33
  unreachable

35:                                               ; preds = %31
  %36 = add nuw nsw i64 %20, 1
  %37 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %36) #28
          to label %38 unwind label %83

38:                                               ; preds = %35
  store ptr %37, ptr %19, align 8, !tbaa !18
  store i64 %20, ptr %23, align 8, !tbaa !17
  br label %39

39:                                               ; preds = %38, %29
  %40 = phi ptr [ %37, %38 ], [ %23, %29 ]
  switch i64 %20, label %43 [
    i64 1, label %41
    i64 0, label %44
  ]

41:                                               ; preds = %39
  %42 = load i8, ptr %22, align 1, !tbaa !17
  store i8 %42, ptr %40, align 1, !tbaa !17
  br label %44

43:                                               ; preds = %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %22, i64 %20, i1 false)
  br label %44

44:                                               ; preds = %39, %41, %43
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %20, ptr %45, align 8, !tbaa !14
  %46 = getelementptr inbounds nuw i8, ptr %40, i64 %20
  store i8 0, ptr %46, align 1, !tbaa !17
  %47 = icmp eq ptr %5, %4
  br i1 %47, label %72, label %48

48:                                               ; preds = %44, %64
  %49 = phi ptr [ %70, %64 ], [ %18, %44 ]
  %50 = phi ptr [ %69, %64 ], [ %5, %44 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %51 = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %51, ptr %49, align 8, !tbaa !8, !alias.scope !221, !noalias !224
  %52 = load ptr, ptr %50, align 8, !tbaa !18, !alias.scope !224, !noalias !221
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %57 = load i64, ptr %56, align 8, !tbaa !14, !alias.scope !224, !noalias !221
  %58 = icmp ult i64 %57, 16
  tail call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 8 dereferenceable(1) %53, i64 %59, i1 false), !alias.scope !226
  br label %64

60:                                               ; preds = %48
  store ptr %52, ptr %49, align 8, !tbaa !18, !alias.scope !221, !noalias !224
  %61 = load i64, ptr %53, align 8, !tbaa !17, !alias.scope !224, !noalias !221
  store i64 %61, ptr %51, align 8, !tbaa !17, !alias.scope !221, !noalias !224
  %62 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %63 = load i64, ptr %62, align 8, !tbaa !14, !alias.scope !224, !noalias !221
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i64 [ %57, %55 ], [ %63, %60 ]
  %66 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %67 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %65, ptr %68, align 8, !tbaa !14, !alias.scope !221, !noalias !224
  store ptr %53, ptr %50, align 8, !tbaa !18, !alias.scope !224, !noalias !221
  store i64 0, ptr %66, align 8, !tbaa !14, !alias.scope !224, !noalias !221
  store i8 0, ptr %53, align 1, !tbaa !17, !alias.scope !224, !noalias !221
  %69 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %70 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %71 = icmp eq ptr %69, %4
  br i1 %71, label %72, label %48, !llvm.loop !179

72:                                               ; preds = %64, %44
  %73 = phi ptr [ %18, %44 ], [ %70, %64 ]
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %75 = icmp eq ptr %5, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %74, align 8, !tbaa !163
  %78 = ptrtoint ptr %77 to i64
  %79 = sub i64 %78, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %79) #29
  br label %80

80:                                               ; preds = %72, %76
  %81 = getelementptr inbounds nuw i8, ptr %73, i64 32
  store ptr %18, ptr %0, align 8, !tbaa !160
  store ptr %81, ptr %3, align 8, !tbaa !162
  %82 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %18, i64 %16
  store ptr %82, ptr %74, align 8, !tbaa !163
  ret void

83:                                               ; preds = %35, %33, %27
  %84 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %18, i64 noundef %17) #29
  resume { ptr, i32 } %84
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp ult i64 %4, 9223372036854775807
  tail call void @llvm.assume(i1 %5)
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !18
  %12 = tail call i32 @bcmp(ptr %11, ptr nonnull %1, i64 %4)
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %10, %8, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ], [ true, %8 ]
  ret i1 %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #27 = { cold noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!7 = distinct !{!7, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!15, !16, i64 8}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !16, i64 8, !12, i64 16}
!16 = !{!"long", !12, i64 0}
!17 = !{!12, !12, i64 0}
!18 = !{!15, !10, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!21 = distinct !{!21, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!22 = !{!"branch_weights", i32 1, i32 1023}
!23 = !{!24, !28, i64 48}
!24 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !25, i64 0, !16, i64 8, !27, i64 16, !27, i64 48}
!25 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0}
!26 = !{!"any p2 pointer", !11, i64 0}
!27 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !28, i64 0, !28, i64 8, !28, i64 16, !25, i64 24}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!29 = !{!24, !28, i64 64}
!30 = !{!27, !28, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!33 = distinct !{!33, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!34 = !{!27, !28, i64 8}
!35 = !{!27, !25, i64 24}
!36 = !{!28, !28, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!39 = distinct !{!39, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!45 = distinct !{!45, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN12__apo_stdlib15trim_start_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!48 = distinct !{!48, !"_ZN12__apo_stdlib15trim_start_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!51 = distinct !{!51, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN12__apo_stdlib13trim_end_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!54 = distinct !{!54, !"_ZN12__apo_stdlib13trim_end_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!57 = distinct !{!57, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!60 = distinct !{!60, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN12__apo_stdlib20lowercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!63 = distinct !{!63, !"_ZN12__apo_stdlib20lowercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!66 = distinct !{!66, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!69 = distinct !{!69, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN12__apo_stdlib20uppercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!72 = distinct !{!72, !"_ZN12__apo_stdlib20uppercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!75 = distinct !{!75, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!78 = distinct !{!78, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN12__apo_stdlib20titlecase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!81 = distinct !{!81, !"_ZN12__apo_stdlib20titlecase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!84 = distinct !{!84, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!87 = distinct !{!87, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!90 = distinct !{!90, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!91 = distinct !{!91, !41}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!94 = distinct !{!94, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!97 = distinct !{!97, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!100 = distinct !{!100, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!103 = distinct !{!103, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!104 = distinct !{!104, !41}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!107 = distinct !{!107, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!110 = distinct !{!110, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!113 = distinct !{!113, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!116 = distinct !{!116, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!119 = distinct !{!119, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN12__apo_stdlib12reverse_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!122 = distinct !{!122, !"_ZN12__apo_stdlib12reverse_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!123 = distinct !{!123, !41}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!126 = distinct !{!126, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!129 = distinct !{!129, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!130 = distinct !{!130, !41}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!133 = distinct !{!133, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!136 = distinct !{!136, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!137 = distinct !{!137, !41}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!140 = distinct !{!140, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!143 = distinct !{!143, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!146 = distinct !{!146, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!149 = distinct !{!149, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!152 = distinct !{!152, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!155 = distinct !{!155, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!158 = distinct !{!158, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!159 = distinct !{!159, !41}
!160 = !{!161, !28, i64 0}
!161 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!162 = !{!161, !28, i64 8}
!163 = !{!161, !28, i64 16}
!164 = !{!165, !165, i64 0}
!165 = !{!"int", !12, i64 0}
!166 = distinct !{!166, !41}
!167 = !{!168, !169, i64 8}
!168 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !169, i64 8}
!169 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !12, i64 0}
!170 = !{!171, !171, i64 0}
!171 = !{!"vtable pointer", !13, i64 0}
!172 = distinct !{!172, !41}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!175 = distinct !{!175, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!178 = !{!174, !177}
!179 = distinct !{!179, !41}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!182 = distinct !{!182, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!183 = !{!10, !10, i64 0}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!186 = distinct !{!186, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN12__apo_stdlib20lowercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!189 = distinct !{!189, !"_ZN12__apo_stdlib20lowercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!192 = distinct !{!192, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!195 = distinct !{!195, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!196 = !{!11, !11, i64 0}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!199 = distinct !{!199, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!200 = !{!24, !25, i64 0}
!201 = !{!24, !25, i64 40}
!202 = !{!24, !25, i64 72}
!203 = distinct !{!203, !41}
!204 = !{!24, !16, i64 8}
!205 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!206 = distinct !{!206, !41}
!207 = !{!27, !28, i64 16}
!208 = !{!24, !28, i64 16}
!209 = distinct !{!209, !41}
!210 = distinct !{!210, !41}
!211 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!212 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!213 = !{!"branch_weights", i32 -2146410, i32 2146410}
!214 = !{!16, !16, i64 0}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!217 = distinct !{!217, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!218 = !{!219}
!219 = distinct !{!219, !217, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!220 = !{!216, !219}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!223 = distinct !{!223, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!226 = !{!222, !225}
