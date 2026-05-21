; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/fe7b7cbf570a37ac.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/fe7b7cbf570a37ac.cpp"
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

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
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
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_322sys__native_str_concatEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %7, ptr %4, align 8, !tbaa !12, !alias.scope !9
  br i1 %6, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %9, align 8, !tbaa !16, !alias.scope !9
  store i8 0, ptr %7, align 8, !tbaa !19, !alias.scope !9
  br label %27

10:                                               ; preds = %2
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !9
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
  store ptr %18, ptr %4, align 8, !tbaa !20, !alias.scope !9
  store i64 %11, ptr %7, align 8, !tbaa !19, !alias.scope !9
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %7, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !19, !noalias !9
  store i8 %22, ptr %20, align 1, !tbaa !19
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !16, !alias.scope !9
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !19
  br label %27

27:                                               ; preds = %8, %24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %28 = icmp eq ptr %1, null
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %29, ptr %5, align 8, !tbaa !12, !alias.scope !21
  br i1 %28, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %31, align 8, !tbaa !16, !alias.scope !21
  store i8 0, ptr %29, align 8, !tbaa !19, !alias.scope !21
  br label %51

32:                                               ; preds = %27
  %33 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13, !noalias !21
  %34 = icmp ugt i64 %33, 15
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = icmp ugt i64 %33, 9223372036854775806
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %38 unwind label %124

38:                                               ; preds = %37
  unreachable

39:                                               ; preds = %35
  %40 = add nuw nsw i64 %33, 1
  %41 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %40) #28
          to label %42 unwind label %124

42:                                               ; preds = %39
  store ptr %41, ptr %5, align 8, !tbaa !20, !alias.scope !21
  store i64 %33, ptr %29, align 8, !tbaa !19, !alias.scope !21
  br label %43

43:                                               ; preds = %42, %32
  %44 = phi ptr [ %41, %42 ], [ %29, %32 ]
  switch i64 %33, label %47 [
    i64 1, label %45
    i64 0, label %48
  ]

45:                                               ; preds = %43
  %46 = load i8, ptr %1, align 1, !tbaa !19, !noalias !21
  store i8 %46, ptr %44, align 1, !tbaa !19
  br label %48

47:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %44, ptr nonnull align 1 %1, i64 %33, i1 false)
  br label %48

48:                                               ; preds = %47, %45, %43
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %33, ptr %49, align 8, !tbaa !16, !alias.scope !21
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 %33
  store i8 0, ptr %50, align 1, !tbaa !19
  br label %51

51:                                               ; preds = %48, %30
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %52 unwind label %126

52:                                               ; preds = %51
  %53 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58, !prof !24

55:                                               ; preds = %52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %56 unwind label %128

56:                                               ; preds = %55
  %57 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 48
  %61 = load ptr, ptr %60, align 8, !tbaa !25
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %63 = load ptr, ptr %62, align 8, !tbaa !31
  %64 = getelementptr inbounds i8, ptr %63, i64 -32
  %65 = icmp eq ptr %61, %64
  br i1 %65, label %87, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 16
  store ptr %67, ptr %61, align 8, !tbaa !12
  %68 = load ptr, ptr %3, align 8, !tbaa !20
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %73 = load i64, ptr %72, align 8, !tbaa !16
  %74 = icmp ult i64 %73, 16
  call void @llvm.assume(i1 %74)
  %75 = add nuw nsw i64 %73, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %67, ptr noundef nonnull align 8 dereferenceable(1) %69, i64 %75, i1 false)
  br label %80

76:                                               ; preds = %66
  store ptr %68, ptr %61, align 8, !tbaa !20
  %77 = load i64, ptr %69, align 8, !tbaa !19
  store i64 %77, ptr %67, align 8, !tbaa !19
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %79 = load i64, ptr %78, align 8, !tbaa !16
  br label %80

80:                                               ; preds = %76, %71
  %81 = phi i64 [ %79, %76 ], [ %73, %71 ]
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %83 = icmp ult i64 %81, 9223372036854775807
  call void @llvm.assume(i1 %83)
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %81, ptr %84, align 8, !tbaa !16
  store ptr %69, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %82, align 8, !tbaa !16
  store i8 0, ptr %69, align 8, !tbaa !19
  %85 = load ptr, ptr %60, align 8, !tbaa !25
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  store ptr %86, ptr %60, align 8, !tbaa !25
  br label %90

87:                                               ; preds = %58
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %59, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %88 unwind label %128

88:                                               ; preds = %87
  %89 = load ptr, ptr %60, align 8, !tbaa !32, !noalias !33
  br label %90

90:                                               ; preds = %88, %80
  %91 = phi ptr [ %86, %80 ], [ %89, %88 ]
  %92 = getelementptr inbounds nuw i8, ptr %59, i64 56
  %93 = load ptr, ptr %92, align 8, !tbaa !36, !noalias !33
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = getelementptr inbounds nuw i8, ptr %59, i64 72
  %97 = load ptr, ptr %96, align 8, !tbaa !37, !noalias !33
  %98 = getelementptr inbounds i8, ptr %97, i64 -8
  %99 = load ptr, ptr %98, align 8, !tbaa !38
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 512
  br label %101

101:                                              ; preds = %95, %90
  %102 = phi ptr [ %100, %95 ], [ %91, %90 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 -32
  %104 = load ptr, ptr %103, align 8, !tbaa !20
  %105 = load ptr, ptr %3, align 8, !tbaa !20
  %106 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = load i64, ptr %106, align 8, !tbaa !19
  %110 = add i64 %109, 1
  call void @_ZdlPvm(ptr noundef %105, i64 noundef %110) #29
  br label %111

111:                                              ; preds = %101, %108
  %112 = load ptr, ptr %5, align 8, !tbaa !20
  %113 = icmp eq ptr %112, %29
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i64, ptr %29, align 8, !tbaa !19
  %116 = add i64 %115, 1
  call void @_ZdlPvm(ptr noundef %112, i64 noundef %116) #29
  br label %117

117:                                              ; preds = %111, %114
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %118 = load ptr, ptr %4, align 8, !tbaa !20
  %119 = icmp eq ptr %118, %7
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i64, ptr %7, align 8, !tbaa !19
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %118, i64 noundef %122) #29
  br label %123

123:                                              ; preds = %117, %120
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret ptr %104

124:                                              ; preds = %39, %37
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %143

126:                                              ; preds = %51
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %136

128:                                              ; preds = %87, %55
  %129 = landingpad { ptr, i32 }
          cleanup
  %130 = load ptr, ptr %3, align 8, !tbaa !20
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = load i64, ptr %131, align 8, !tbaa !19
  %135 = add i64 %134, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %135) #29
  br label %136

136:                                              ; preds = %128, %133, %126
  %137 = phi { ptr, i32 } [ %127, %126 ], [ %129, %133 ], [ %129, %128 ]
  %138 = load ptr, ptr %5, align 8, !tbaa !20
  %139 = icmp eq ptr %138, %29
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load i64, ptr %29, align 8, !tbaa !19
  %142 = add i64 %141, 1
  call void @_ZdlPvm(ptr noundef %138, i64 noundef %142) #29
  br label %143

143:                                              ; preds = %136, %140, %124
  %144 = phi { ptr, i32 } [ %125, %124 ], [ %137, %140 ], [ %137, %136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %145 = load ptr, ptr %4, align 8, !tbaa !20
  %146 = icmp eq ptr %145, %7
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = load i64, ptr %7, align 8, !tbaa !19
  %149 = add i64 %148, 1
  call void @_ZdlPvm(ptr noundef %145, i64 noundef %149) #29
  br label %150

150:                                              ; preds = %143, %147
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %144
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !16
  %6 = icmp ult i64 %5, 9223372036854775807
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !16
  %9 = icmp ult i64 %8, 9223372036854775807
  tail call void @llvm.assume(i1 %9)
  %10 = add nuw i64 %8, %5
  %11 = load ptr, ptr %1, align 8, !tbaa !20
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
  %22 = load ptr, ptr %2, align 8, !tbaa !20
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
  store ptr %36, ptr %0, align 8, !tbaa !12
  %37 = load ptr, ptr %35, align 8, !tbaa !20
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !16
  %43 = icmp ult i64 %42, 16
  tail call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %34
  store ptr %37, ptr %0, align 8, !tbaa !20
  %46 = load i64, ptr %38, align 8, !tbaa !19
  store i64 %46, ptr %36, align 8, !tbaa !19
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa !16
  %50 = icmp ult i64 %49, 9223372036854775807
  tail call void @llvm.assume(i1 %50)
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %49, ptr %51, align 8, !tbaa !16
  store ptr %38, ptr %35, align 8, !tbaa !20
  store i64 0, ptr %48, align 8, !tbaa !16
  store i8 0, ptr %38, align 8, !tbaa !19
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
  %66 = load i8, ptr %22, align 1, !tbaa !19
  store i8 %66, ptr %63, align 1, !tbaa !19
  br label %69

67:                                               ; preds = %62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %22, i64 %8, i1 false)
  br label %69

68:                                               ; preds = %59
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %5, i64 noundef 0, ptr noundef %22, i64 noundef %8)
  br label %69

69:                                               ; preds = %60, %65, %67, %68
  store i64 %10, ptr %4, align 8, !tbaa !16
  %70 = load ptr, ptr %1, align 8, !tbaa !20
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 %10
  store i8 0, ptr %71, align 1, !tbaa !19
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %72, ptr %0, align 8, !tbaa !12
  %73 = load ptr, ptr %1, align 8, !tbaa !20
  %74 = icmp eq ptr %73, %12
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i64, ptr %4, align 8, !tbaa !16
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  %78 = add nuw nsw i64 %76, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %72, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %78, i1 false)
  br label %82

79:                                               ; preds = %69
  store ptr %73, ptr %0, align 8, !tbaa !20
  %80 = load i64, ptr %12, align 8, !tbaa !19
  store i64 %80, ptr %72, align 8, !tbaa !19
  %81 = load i64, ptr %4, align 8, !tbaa !16
  br label %82

82:                                               ; preds = %75, %79
  %83 = phi i64 [ %76, %75 ], [ %81, %79 ]
  %84 = icmp ult i64 %83, 9223372036854775807
  tail call void @llvm.assume(i1 %84)
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %83, ptr %85, align 8, !tbaa !16
  store ptr %12, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %4, align 8, !tbaa !16
  store i8 0, ptr %12, align 8, !tbaa !19
  br label %86

86:                                               ; preds = %47, %82
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_320sys__native_str_trimEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !19, !noalias !39
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @isspace(i32 noundef %11) #30, !noalias !39
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nuw i64 %8, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %7, !llvm.loop !42

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
  %26 = load i8, ptr %25, align 1, !tbaa !19, !noalias !39
  %27 = zext i8 %26 to i32
  %28 = tail call i32 @isspace(i32 noundef %27) #30, !noalias !39
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %20, !llvm.loop !44

30:                                               ; preds = %23
  %31 = icmp ugt i64 %21, %19
  br i1 %31, label %35, label %32

32:                                               ; preds = %20, %30
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %33, ptr %2, align 8, !tbaa !12, !alias.scope !39
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %34, align 8, !tbaa !16, !alias.scope !39
  store i8 0, ptr %33, align 8, !tbaa !19, !alias.scope !39
  br label %54

35:                                               ; preds = %30
  %36 = sub nuw i64 %21, %19
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %38, ptr %2, align 8, !tbaa !12, !alias.scope !39
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
  store ptr %45, ptr %2, align 8, !tbaa !20, !alias.scope !39
  store i64 %36, ptr %38, align 8, !tbaa !19, !alias.scope !39
  br label %46

46:                                               ; preds = %43, %35
  %47 = phi ptr [ %45, %43 ], [ %38, %35 ]
  switch i64 %36, label %50 [
    i64 1, label %48
    i64 0, label %51
  ]

48:                                               ; preds = %46
  %49 = load i8, ptr %37, align 1, !tbaa !19, !noalias !39
  store i8 %49, ptr %47, align 1, !tbaa !19
  br label %51

50:                                               ; preds = %46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %37, i64 %36, i1 false)
  br label %51

51:                                               ; preds = %50, %48, %46
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %36, ptr %52, align 8, !tbaa !16, !alias.scope !39
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 %36
  store i8 0, ptr %53, align 1, !tbaa !19
  br label %54

54:                                               ; preds = %32, %51
  %55 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60, !prof !24

57:                                               ; preds = %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %58 unwind label %114

58:                                               ; preds = %57
  %59 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 48
  %63 = load ptr, ptr %62, align 8, !tbaa !25
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %65 = load ptr, ptr %64, align 8, !tbaa !31
  %66 = getelementptr inbounds i8, ptr %65, i64 -32
  %67 = icmp eq ptr %63, %66
  br i1 %67, label %89, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %69, ptr %63, align 8, !tbaa !12
  %70 = load ptr, ptr %2, align 8, !tbaa !20
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %75 = load i64, ptr %74, align 8, !tbaa !16
  %76 = icmp ult i64 %75, 16
  call void @llvm.assume(i1 %76)
  %77 = add nuw nsw i64 %75, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %69, ptr noundef nonnull align 8 dereferenceable(1) %71, i64 %77, i1 false)
  br label %82

78:                                               ; preds = %68
  store ptr %70, ptr %63, align 8, !tbaa !20
  %79 = load i64, ptr %71, align 8, !tbaa !19
  store i64 %79, ptr %69, align 8, !tbaa !19
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %81 = load i64, ptr %80, align 8, !tbaa !16
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i64 [ %81, %78 ], [ %75, %73 ]
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %85 = icmp ult i64 %83, 9223372036854775807
  call void @llvm.assume(i1 %85)
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 %83, ptr %86, align 8, !tbaa !16
  store ptr %71, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %84, align 8, !tbaa !16
  store i8 0, ptr %71, align 8, !tbaa !19
  %87 = load ptr, ptr %62, align 8, !tbaa !25
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 32
  store ptr %88, ptr %62, align 8, !tbaa !25
  br label %92

89:                                               ; preds = %60
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %61, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %90 unwind label %114

90:                                               ; preds = %89
  %91 = load ptr, ptr %62, align 8, !tbaa !32, !noalias !45
  br label %92

92:                                               ; preds = %90, %82
  %93 = phi ptr [ %88, %82 ], [ %91, %90 ]
  %94 = getelementptr inbounds nuw i8, ptr %61, i64 56
  %95 = load ptr, ptr %94, align 8, !tbaa !36, !noalias !45
  %96 = icmp eq ptr %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %61, i64 72
  %99 = load ptr, ptr %98, align 8, !tbaa !37, !noalias !45
  %100 = getelementptr inbounds i8, ptr %99, i64 -8
  %101 = load ptr, ptr %100, align 8, !tbaa !38
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 512
  br label %103

103:                                              ; preds = %97, %92
  %104 = phi ptr [ %102, %97 ], [ %93, %92 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 -32
  %106 = load ptr, ptr %105, align 8, !tbaa !20
  %107 = load ptr, ptr %2, align 8, !tbaa !20
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i64, ptr %108, align 8, !tbaa !19
  %112 = add i64 %111, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %112) #29
  br label %113

113:                                              ; preds = %103, %110
  ret ptr %106

114:                                              ; preds = %89, %57
  %115 = landingpad { ptr, i32 }
          cleanup
  %116 = load ptr, ptr %2, align 8, !tbaa !20
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !19
  %121 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #29
  br label %122

122:                                              ; preds = %114, %119
  resume { ptr, i32 } %115
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_326sys__native_str_trim_startEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !19, !noalias !48
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @isspace(i32 noundef %11) #30, !noalias !48
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nuw i64 %8, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %20, label %7, !llvm.loop !42

17:                                               ; preds = %7
  %18 = icmp ugt i64 %8, %5
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i64 noundef %8, i64 noundef %5) #27, !noalias !48
  unreachable

20:                                               ; preds = %14, %1, %17, %4
  %21 = phi i64 [ %5, %17 ], [ 0, %4 ], [ 0, %1 ], [ %5, %14 ]
  %22 = phi i64 [ %8, %17 ], [ 0, %4 ], [ 0, %1 ], [ %5, %14 ]
  %23 = sub nuw i64 %21, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %22
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %25, ptr %2, align 8, !tbaa !12, !alias.scope !48
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
  store ptr %32, ptr %2, align 8, !tbaa !20, !alias.scope !48
  store i64 %23, ptr %25, align 8, !tbaa !19, !alias.scope !48
  br label %33

33:                                               ; preds = %30, %20
  %34 = phi ptr [ %32, %30 ], [ %25, %20 ]
  switch i64 %23, label %37 [
    i64 1, label %35
    i64 0, label %38
  ]

35:                                               ; preds = %33
  %36 = load i8, ptr %24, align 1, !tbaa !19, !noalias !48
  store i8 %36, ptr %34, align 1, !tbaa !19
  br label %38

37:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr align 1 %24, i64 %23, i1 false)
  br label %38

38:                                               ; preds = %33, %35, %37
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %23, ptr %39, align 8, !tbaa !16, !alias.scope !48
  %40 = getelementptr inbounds nuw i8, ptr %34, i64 %23
  store i8 0, ptr %40, align 1, !tbaa !19
  %41 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %46, !prof !24

43:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %44 unwind label %95

44:                                               ; preds = %43
  %45 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %46

46:                                               ; preds = %44, %38
  %47 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 48
  %49 = load ptr, ptr %48, align 8, !tbaa !25
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = getelementptr inbounds i8, ptr %51, i64 -32
  %53 = icmp eq ptr %49, %52
  br i1 %53, label %71, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %55, ptr %49, align 8, !tbaa !12
  %56 = load ptr, ptr %2, align 8, !tbaa !20
  %57 = icmp eq ptr %56, %25
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, ptr %39, align 8, !tbaa !16
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %55, ptr noundef nonnull align 8 dereferenceable(1) %25, i64 %61, i1 false)
  br label %65

62:                                               ; preds = %54
  store ptr %56, ptr %49, align 8, !tbaa !20
  %63 = load i64, ptr %25, align 8, !tbaa !19
  store i64 %63, ptr %55, align 8, !tbaa !19
  %64 = load i64, ptr %39, align 8, !tbaa !16
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i64 [ %64, %62 ], [ %59, %58 ]
  %67 = icmp ult i64 %66, 9223372036854775807
  call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %66, ptr %68, align 8, !tbaa !16
  store ptr %25, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %39, align 8, !tbaa !16
  store i8 0, ptr %25, align 8, !tbaa !19
  %69 = load ptr, ptr %48, align 8, !tbaa !25
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  store ptr %70, ptr %48, align 8, !tbaa !25
  br label %74

71:                                               ; preds = %46
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %47, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %72 unwind label %95

72:                                               ; preds = %71
  %73 = load ptr, ptr %48, align 8, !tbaa !32, !noalias !51
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi ptr [ %70, %65 ], [ %73, %72 ]
  %76 = getelementptr inbounds nuw i8, ptr %47, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !36, !noalias !51
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %47, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !37, !noalias !51
  %82 = getelementptr inbounds i8, ptr %81, i64 -8
  %83 = load ptr, ptr %82, align 8, !tbaa !38
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 512
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi ptr [ %84, %79 ], [ %75, %74 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -32
  %88 = load ptr, ptr %87, align 8, !tbaa !20
  %89 = load ptr, ptr %2, align 8, !tbaa !20
  %90 = icmp eq ptr %89, %25
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i64, ptr %25, align 8, !tbaa !19
  %93 = add i64 %92, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %93) #29
  br label %94

94:                                               ; preds = %85, %91
  ret ptr %88

95:                                               ; preds = %71, %43
  %96 = landingpad { ptr, i32 }
          cleanup
  %97 = load ptr, ptr %2, align 8, !tbaa !20
  %98 = icmp eq ptr %97, %25
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i64, ptr %25, align 8, !tbaa !19
  %101 = add i64 %100, 1
  call void @_ZdlPvm(ptr noundef %97, i64 noundef %101) #29
  br label %102

102:                                              ; preds = %95, %99
  resume { ptr, i32 } %96
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_324sys__native_str_trim_endEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  br label %8

8:                                                ; preds = %11, %6
  %9 = phi i64 [ %7, %6 ], [ %12, %11 ]
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = add i64 %9, -1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !19, !noalias !54
  %15 = zext i8 %14 to i32
  %16 = tail call i32 @isspace(i32 noundef %15) #30, !noalias !54
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %8, !llvm.loop !44

18:                                               ; preds = %8
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %19, ptr %2, align 8, !tbaa !12, !alias.scope !54
  br label %35

20:                                               ; preds = %11
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %21, ptr %2, align 8, !tbaa !12, !alias.scope !54
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
  store ptr %28, ptr %2, align 8, !tbaa !20, !alias.scope !54
  store i64 %9, ptr %21, align 8, !tbaa !19, !alias.scope !54
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %28, %26 ], [ %21, %20 ]
  %31 = icmp eq i64 %9, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8, ptr %0, align 1, !tbaa !19, !noalias !54
  store i8 %33, ptr %30, align 1, !tbaa !19
  br label %35

34:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr nonnull align 1 %0, i64 %9, i1 false)
  br label %35

35:                                               ; preds = %18, %32, %34
  %36 = phi ptr [ %19, %18 ], [ %30, %34 ], [ %30, %32 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %9, ptr %37, align 8, !tbaa !16, !alias.scope !54
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 %9
  store i8 0, ptr %38, align 1, !tbaa !19
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !24

41:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %95

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %70, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !12
  %54 = load ptr, ptr %2, align 8, !tbaa !20
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, ptr %37, align 8, !tbaa !16
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %60, i1 false)
  br label %64

61:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !20
  %62 = load i64, ptr %55, align 8, !tbaa !19
  store i64 %62, ptr %53, align 8, !tbaa !19
  %63 = load i64, ptr %37, align 8, !tbaa !16
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i64 [ %63, %61 ], [ %58, %57 ]
  %66 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !16
  store ptr %55, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %37, align 8, !tbaa !16
  store i8 0, ptr %55, align 8, !tbaa !19
  %68 = load ptr, ptr %46, align 8, !tbaa !25
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 32
  store ptr %69, ptr %46, align 8, !tbaa !25
  br label %73

70:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %71 unwind label %95

71:                                               ; preds = %70
  %72 = load ptr, ptr %46, align 8, !tbaa !32, !noalias !57
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi ptr [ %69, %64 ], [ %72, %71 ]
  %75 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %76 = load ptr, ptr %75, align 8, !tbaa !36, !noalias !57
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %80 = load ptr, ptr %79, align 8, !tbaa !37, !noalias !57
  %81 = getelementptr inbounds i8, ptr %80, i64 -8
  %82 = load ptr, ptr %81, align 8, !tbaa !38
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 512
  br label %84

84:                                               ; preds = %78, %73
  %85 = phi ptr [ %83, %78 ], [ %74, %73 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 -32
  %87 = load ptr, ptr %86, align 8, !tbaa !20
  %88 = load ptr, ptr %2, align 8, !tbaa !20
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load i64, ptr %89, align 8, !tbaa !19
  %93 = add i64 %92, 1
  call void @_ZdlPvm(ptr noundef %88, i64 noundef %93) #29
  br label %94

94:                                               ; preds = %84, %91
  ret ptr %87

95:                                               ; preds = %70, %41
  %96 = landingpad { ptr, i32 }
          cleanup
  %97 = load ptr, ptr %2, align 8, !tbaa !20
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i64, ptr %98, align 8, !tbaa !19
  %102 = add i64 %101, 1
  call void @_ZdlPvm(ptr noundef %97, i64 noundef %102) #29
  br label %103

103:                                              ; preds = %95, %100
  resume { ptr, i32 } %96
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_lowercaseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !12, !alias.scope !60
  br i1 %4, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !16, !alias.scope !60
  store i8 0, ptr %5, align 8, !tbaa !19, !alias.scope !60
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %9, ptr %2, align 8, !tbaa !12, !alias.scope !63
  br label %39

10:                                               ; preds = %1
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !60
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
  store ptr %18, ptr %3, align 8, !tbaa !20, !alias.scope !60
  store i64 %11, ptr %5, align 8, !tbaa !19, !alias.scope !60
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %5, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !19, !noalias !60
  store i8 %22, ptr %20, align 1, !tbaa !19
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %19, %21, %23
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !16, !alias.scope !60
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !19
  %27 = load ptr, ptr %3, align 8, !tbaa !20, !noalias !63
  %28 = load i64, ptr %25, align 8, !tbaa !16, !noalias !63
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  %32 = icmp samesign eq i64 %28, 0
  br i1 %32, label %35, label %48

33:                                               ; preds = %48
  %34 = load ptr, ptr %3, align 8, !tbaa !20, !noalias !63
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %34, %33 ], [ %27, %24 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %37, ptr %2, align 8, !tbaa !12, !alias.scope !63
  %38 = icmp eq ptr %36, %5
  br i1 %38, label %39, label %45

39:                                               ; preds = %6, %35
  %40 = phi ptr [ %9, %6 ], [ %37, %35 ]
  %41 = phi ptr [ %8, %6 ], [ %29, %35 ]
  %42 = load i64, ptr %41, align 8, !tbaa !16, !noalias !63
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %44, i1 false)
  br label %56

45:                                               ; preds = %35
  store ptr %36, ptr %2, align 8, !tbaa !20, !alias.scope !63
  %46 = load i64, ptr %5, align 8, !tbaa !19, !noalias !63
  store i64 %46, ptr %37, align 8, !tbaa !19, !alias.scope !63
  %47 = load i64, ptr %29, align 8, !tbaa !16, !noalias !63
  br label %56

48:                                               ; preds = %24, %48
  %49 = phi ptr [ %54, %48 ], [ %27, %24 ]
  %50 = load i8, ptr %49, align 1, !tbaa !19, !noalias !63
  %51 = zext i8 %50 to i32
  %52 = call i32 @tolower(i32 noundef %51) #30, !noalias !63
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %49, align 1, !tbaa !19, !noalias !63
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
  store i64 %59, ptr %61, align 8, !tbaa !16, !alias.scope !63
  store ptr %5, ptr %3, align 8, !tbaa !20, !noalias !63
  store i64 0, ptr %58, align 8, !tbaa !16, !noalias !63
  store i8 0, ptr %5, align 8, !tbaa !19, !noalias !63
  %62 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67, !prof !24

64:                                               ; preds = %56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %65 unwind label %122

65:                                               ; preds = %64
  %66 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %67

67:                                               ; preds = %65, %56
  %68 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 48
  %70 = load ptr, ptr %69, align 8, !tbaa !25
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 64
  %72 = load ptr, ptr %71, align 8, !tbaa !31
  %73 = getelementptr inbounds i8, ptr %72, i64 -32
  %74 = icmp eq ptr %70, %73
  br i1 %74, label %92, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds nuw i8, ptr %70, i64 16
  store ptr %76, ptr %70, align 8, !tbaa !12
  %77 = load ptr, ptr %2, align 8, !tbaa !20
  %78 = icmp eq ptr %77, %57
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, ptr %61, align 8, !tbaa !16
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  %82 = add nuw nsw i64 %80, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %76, ptr noundef nonnull align 8 dereferenceable(1) %57, i64 %82, i1 false)
  br label %86

83:                                               ; preds = %75
  store ptr %77, ptr %70, align 8, !tbaa !20
  %84 = load i64, ptr %57, align 8, !tbaa !19
  store i64 %84, ptr %76, align 8, !tbaa !19
  %85 = load i64, ptr %61, align 8, !tbaa !16
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i64 [ %85, %83 ], [ %80, %79 ]
  %88 = icmp ult i64 %87, 9223372036854775807
  call void @llvm.assume(i1 %88)
  %89 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 %87, ptr %89, align 8, !tbaa !16
  store ptr %57, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %61, align 8, !tbaa !16
  store i8 0, ptr %57, align 1, !tbaa !19
  %90 = load ptr, ptr %69, align 8, !tbaa !25
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  store ptr %91, ptr %69, align 8, !tbaa !25
  br label %95

92:                                               ; preds = %67
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %68, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %93 unwind label %122

93:                                               ; preds = %92
  %94 = load ptr, ptr %69, align 8, !tbaa !32, !noalias !66
  br label %95

95:                                               ; preds = %93, %86
  %96 = phi ptr [ %91, %86 ], [ %94, %93 ]
  %97 = getelementptr inbounds nuw i8, ptr %68, i64 56
  %98 = load ptr, ptr %97, align 8, !tbaa !36, !noalias !66
  %99 = icmp eq ptr %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = getelementptr inbounds nuw i8, ptr %68, i64 72
  %102 = load ptr, ptr %101, align 8, !tbaa !37, !noalias !66
  %103 = getelementptr inbounds i8, ptr %102, i64 -8
  %104 = load ptr, ptr %103, align 8, !tbaa !38
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 512
  br label %106

106:                                              ; preds = %100, %95
  %107 = phi ptr [ %105, %100 ], [ %96, %95 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 -32
  %109 = load ptr, ptr %108, align 8, !tbaa !20
  %110 = load ptr, ptr %2, align 8, !tbaa !20
  %111 = icmp eq ptr %110, %57
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = load i64, ptr %57, align 8, !tbaa !19
  %114 = add i64 %113, 1
  call void @_ZdlPvm(ptr noundef %110, i64 noundef %114) #29
  br label %115

115:                                              ; preds = %106, %112
  %116 = load ptr, ptr %3, align 8, !tbaa !20
  %117 = icmp eq ptr %116, %5
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i64, ptr %5, align 8, !tbaa !19
  %120 = add i64 %119, 1
  call void @_ZdlPvm(ptr noundef %116, i64 noundef %120) #29
  br label %121

121:                                              ; preds = %115, %118
  ret ptr %109

122:                                              ; preds = %92, %64
  %123 = landingpad { ptr, i32 }
          cleanup
  %124 = load ptr, ptr %2, align 8, !tbaa !20
  %125 = icmp eq ptr %124, %57
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load i64, ptr %57, align 8, !tbaa !19
  %128 = add i64 %127, 1
  call void @_ZdlPvm(ptr noundef %124, i64 noundef %128) #29
  br label %129

129:                                              ; preds = %122, %126
  %130 = load ptr, ptr %3, align 8, !tbaa !20
  %131 = icmp eq ptr %130, %5
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i64, ptr %5, align 8, !tbaa !19
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %134) #29
  br label %135

135:                                              ; preds = %129, %132
  resume { ptr, i32 } %123
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_uppercaseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !12, !alias.scope !69
  br i1 %4, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !16, !alias.scope !69
  store i8 0, ptr %5, align 8, !tbaa !19, !alias.scope !69
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %9, ptr %2, align 8, !tbaa !12, !alias.scope !72
  br label %39

10:                                               ; preds = %1
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !69
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
  store ptr %18, ptr %3, align 8, !tbaa !20, !alias.scope !69
  store i64 %11, ptr %5, align 8, !tbaa !19, !alias.scope !69
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %5, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !19, !noalias !69
  store i8 %22, ptr %20, align 1, !tbaa !19
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %19, %21, %23
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !16, !alias.scope !69
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !19
  %27 = load ptr, ptr %3, align 8, !tbaa !20, !noalias !72
  %28 = load i64, ptr %25, align 8, !tbaa !16, !noalias !72
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  %32 = icmp samesign eq i64 %28, 0
  br i1 %32, label %35, label %48

33:                                               ; preds = %48
  %34 = load ptr, ptr %3, align 8, !tbaa !20, !noalias !72
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %34, %33 ], [ %27, %24 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %37, ptr %2, align 8, !tbaa !12, !alias.scope !72
  %38 = icmp eq ptr %36, %5
  br i1 %38, label %39, label %45

39:                                               ; preds = %6, %35
  %40 = phi ptr [ %9, %6 ], [ %37, %35 ]
  %41 = phi ptr [ %8, %6 ], [ %29, %35 ]
  %42 = load i64, ptr %41, align 8, !tbaa !16, !noalias !72
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %44, i1 false)
  br label %56

45:                                               ; preds = %35
  store ptr %36, ptr %2, align 8, !tbaa !20, !alias.scope !72
  %46 = load i64, ptr %5, align 8, !tbaa !19, !noalias !72
  store i64 %46, ptr %37, align 8, !tbaa !19, !alias.scope !72
  %47 = load i64, ptr %29, align 8, !tbaa !16, !noalias !72
  br label %56

48:                                               ; preds = %24, %48
  %49 = phi ptr [ %54, %48 ], [ %27, %24 ]
  %50 = load i8, ptr %49, align 1, !tbaa !19, !noalias !72
  %51 = zext i8 %50 to i32
  %52 = call i32 @toupper(i32 noundef %51) #30, !noalias !72
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %49, align 1, !tbaa !19, !noalias !72
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
  store i64 %59, ptr %61, align 8, !tbaa !16, !alias.scope !72
  store ptr %5, ptr %3, align 8, !tbaa !20, !noalias !72
  store i64 0, ptr %58, align 8, !tbaa !16, !noalias !72
  store i8 0, ptr %5, align 8, !tbaa !19, !noalias !72
  %62 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67, !prof !24

64:                                               ; preds = %56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %65 unwind label %122

65:                                               ; preds = %64
  %66 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %67

67:                                               ; preds = %65, %56
  %68 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 48
  %70 = load ptr, ptr %69, align 8, !tbaa !25
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 64
  %72 = load ptr, ptr %71, align 8, !tbaa !31
  %73 = getelementptr inbounds i8, ptr %72, i64 -32
  %74 = icmp eq ptr %70, %73
  br i1 %74, label %92, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds nuw i8, ptr %70, i64 16
  store ptr %76, ptr %70, align 8, !tbaa !12
  %77 = load ptr, ptr %2, align 8, !tbaa !20
  %78 = icmp eq ptr %77, %57
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, ptr %61, align 8, !tbaa !16
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  %82 = add nuw nsw i64 %80, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %76, ptr noundef nonnull align 8 dereferenceable(1) %57, i64 %82, i1 false)
  br label %86

83:                                               ; preds = %75
  store ptr %77, ptr %70, align 8, !tbaa !20
  %84 = load i64, ptr %57, align 8, !tbaa !19
  store i64 %84, ptr %76, align 8, !tbaa !19
  %85 = load i64, ptr %61, align 8, !tbaa !16
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i64 [ %85, %83 ], [ %80, %79 ]
  %88 = icmp ult i64 %87, 9223372036854775807
  call void @llvm.assume(i1 %88)
  %89 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 %87, ptr %89, align 8, !tbaa !16
  store ptr %57, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %61, align 8, !tbaa !16
  store i8 0, ptr %57, align 1, !tbaa !19
  %90 = load ptr, ptr %69, align 8, !tbaa !25
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  store ptr %91, ptr %69, align 8, !tbaa !25
  br label %95

92:                                               ; preds = %67
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %68, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %93 unwind label %122

93:                                               ; preds = %92
  %94 = load ptr, ptr %69, align 8, !tbaa !32, !noalias !75
  br label %95

95:                                               ; preds = %93, %86
  %96 = phi ptr [ %91, %86 ], [ %94, %93 ]
  %97 = getelementptr inbounds nuw i8, ptr %68, i64 56
  %98 = load ptr, ptr %97, align 8, !tbaa !36, !noalias !75
  %99 = icmp eq ptr %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = getelementptr inbounds nuw i8, ptr %68, i64 72
  %102 = load ptr, ptr %101, align 8, !tbaa !37, !noalias !75
  %103 = getelementptr inbounds i8, ptr %102, i64 -8
  %104 = load ptr, ptr %103, align 8, !tbaa !38
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 512
  br label %106

106:                                              ; preds = %100, %95
  %107 = phi ptr [ %105, %100 ], [ %96, %95 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 -32
  %109 = load ptr, ptr %108, align 8, !tbaa !20
  %110 = load ptr, ptr %2, align 8, !tbaa !20
  %111 = icmp eq ptr %110, %57
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = load i64, ptr %57, align 8, !tbaa !19
  %114 = add i64 %113, 1
  call void @_ZdlPvm(ptr noundef %110, i64 noundef %114) #29
  br label %115

115:                                              ; preds = %106, %112
  %116 = load ptr, ptr %3, align 8, !tbaa !20
  %117 = icmp eq ptr %116, %5
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i64, ptr %5, align 8, !tbaa !19
  %120 = add i64 %119, 1
  call void @_ZdlPvm(ptr noundef %116, i64 noundef %120) #29
  br label %121

121:                                              ; preds = %115, %118
  ret ptr %109

122:                                              ; preds = %92, %64
  %123 = landingpad { ptr, i32 }
          cleanup
  %124 = load ptr, ptr %2, align 8, !tbaa !20
  %125 = icmp eq ptr %124, %57
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load i64, ptr %57, align 8, !tbaa !19
  %128 = add i64 %127, 1
  call void @_ZdlPvm(ptr noundef %124, i64 noundef %128) #29
  br label %129

129:                                              ; preds = %122, %126
  %130 = load ptr, ptr %3, align 8, !tbaa !20
  %131 = icmp eq ptr %130, %5
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i64, ptr %5, align 8, !tbaa !19
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %134) #29
  br label %135

135:                                              ; preds = %129, %132
  resume { ptr, i32 } %123
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_titlecaseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !12, !alias.scope !78
  br i1 %4, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !16, !alias.scope !78
  store i8 0, ptr %5, align 8, !tbaa !19, !alias.scope !78
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %9, ptr %2, align 8, !tbaa !12, !alias.scope !81
  br label %39

10:                                               ; preds = %1
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !78
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
  store ptr %18, ptr %3, align 8, !tbaa !20, !alias.scope !78
  store i64 %11, ptr %5, align 8, !tbaa !19, !alias.scope !78
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %5, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !19, !noalias !78
  store i8 %22, ptr %20, align 1, !tbaa !19
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %19, %21, %23
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !16, !alias.scope !78
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !19
  %27 = load ptr, ptr %3, align 8, !tbaa !20, !noalias !81
  %28 = load i64, ptr %25, align 8, !tbaa !16, !noalias !81
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  %32 = icmp samesign eq i64 %28, 0
  br i1 %32, label %35, label %48

33:                                               ; preds = %63
  %34 = load ptr, ptr %3, align 8, !tbaa !20, !noalias !81
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi ptr [ %34, %33 ], [ %27, %24 ]
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %37, ptr %2, align 8, !tbaa !12, !alias.scope !81
  %38 = icmp eq ptr %36, %5
  br i1 %38, label %39, label %45

39:                                               ; preds = %6, %35
  %40 = phi ptr [ %9, %6 ], [ %37, %35 ]
  %41 = phi ptr [ %8, %6 ], [ %29, %35 ]
  %42 = load i64, ptr %41, align 8, !tbaa !16, !noalias !81
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %44, i1 false)
  br label %66

45:                                               ; preds = %35
  store ptr %36, ptr %2, align 8, !tbaa !20, !alias.scope !81
  %46 = load i64, ptr %5, align 8, !tbaa !19, !noalias !81
  store i64 %46, ptr %37, align 8, !tbaa !19, !alias.scope !81
  %47 = load i64, ptr %29, align 8, !tbaa !16, !noalias !81
  br label %66

48:                                               ; preds = %24, %63
  %49 = phi i1 [ %54, %63 ], [ true, %24 ]
  %50 = phi ptr [ %64, %63 ], [ %27, %24 ]
  %51 = load i8, ptr %50, align 1, !tbaa !19, !noalias !81
  %52 = zext i8 %51 to i32
  %53 = call i32 @isalnum(i32 noundef %52) #30, !noalias !81
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  br i1 %49, label %56, label %58

56:                                               ; preds = %55
  %57 = call i32 @toupper(i32 noundef %52) #30, !noalias !81
  br label %60

58:                                               ; preds = %55
  %59 = call i32 @tolower(i32 noundef %52) #30, !noalias !81
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ]
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %50, align 1, !tbaa !19, !noalias !81
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
  store i64 %69, ptr %71, align 8, !tbaa !16, !alias.scope !81
  store ptr %5, ptr %3, align 8, !tbaa !20, !noalias !81
  store i64 0, ptr %68, align 8, !tbaa !16, !noalias !81
  store i8 0, ptr %5, align 8, !tbaa !19, !noalias !81
  %72 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77, !prof !24

74:                                               ; preds = %66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %75 unwind label %132

75:                                               ; preds = %74
  %76 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %77

77:                                               ; preds = %75, %66
  %78 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 48
  %80 = load ptr, ptr %79, align 8, !tbaa !25
  %81 = getelementptr inbounds nuw i8, ptr %78, i64 64
  %82 = load ptr, ptr %81, align 8, !tbaa !31
  %83 = getelementptr inbounds i8, ptr %82, i64 -32
  %84 = icmp eq ptr %80, %83
  br i1 %84, label %102, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds nuw i8, ptr %80, i64 16
  store ptr %86, ptr %80, align 8, !tbaa !12
  %87 = load ptr, ptr %2, align 8, !tbaa !20
  %88 = icmp eq ptr %87, %67
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i64, ptr %71, align 8, !tbaa !16
  %91 = icmp ult i64 %90, 16
  call void @llvm.assume(i1 %91)
  %92 = add nuw nsw i64 %90, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 8 dereferenceable(1) %67, i64 %92, i1 false)
  br label %96

93:                                               ; preds = %85
  store ptr %87, ptr %80, align 8, !tbaa !20
  %94 = load i64, ptr %67, align 8, !tbaa !19
  store i64 %94, ptr %86, align 8, !tbaa !19
  %95 = load i64, ptr %71, align 8, !tbaa !16
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i64 [ %95, %93 ], [ %90, %89 ]
  %98 = icmp ult i64 %97, 9223372036854775807
  call void @llvm.assume(i1 %98)
  %99 = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 %97, ptr %99, align 8, !tbaa !16
  store ptr %67, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %71, align 8, !tbaa !16
  store i8 0, ptr %67, align 1, !tbaa !19
  %100 = load ptr, ptr %79, align 8, !tbaa !25
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 32
  store ptr %101, ptr %79, align 8, !tbaa !25
  br label %105

102:                                              ; preds = %77
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %78, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %103 unwind label %132

103:                                              ; preds = %102
  %104 = load ptr, ptr %79, align 8, !tbaa !32, !noalias !84
  br label %105

105:                                              ; preds = %103, %96
  %106 = phi ptr [ %101, %96 ], [ %104, %103 ]
  %107 = getelementptr inbounds nuw i8, ptr %78, i64 56
  %108 = load ptr, ptr %107, align 8, !tbaa !36, !noalias !84
  %109 = icmp eq ptr %106, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = getelementptr inbounds nuw i8, ptr %78, i64 72
  %112 = load ptr, ptr %111, align 8, !tbaa !37, !noalias !84
  %113 = getelementptr inbounds i8, ptr %112, i64 -8
  %114 = load ptr, ptr %113, align 8, !tbaa !38
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 512
  br label %116

116:                                              ; preds = %110, %105
  %117 = phi ptr [ %115, %110 ], [ %106, %105 ]
  %118 = getelementptr inbounds i8, ptr %117, i64 -32
  %119 = load ptr, ptr %118, align 8, !tbaa !20
  %120 = load ptr, ptr %2, align 8, !tbaa !20
  %121 = icmp eq ptr %120, %67
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = load i64, ptr %67, align 8, !tbaa !19
  %124 = add i64 %123, 1
  call void @_ZdlPvm(ptr noundef %120, i64 noundef %124) #29
  br label %125

125:                                              ; preds = %116, %122
  %126 = load ptr, ptr %3, align 8, !tbaa !20
  %127 = icmp eq ptr %126, %5
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i64, ptr %5, align 8, !tbaa !19
  %130 = add i64 %129, 1
  call void @_ZdlPvm(ptr noundef %126, i64 noundef %130) #29
  br label %131

131:                                              ; preds = %125, %128
  ret ptr %119

132:                                              ; preds = %102, %74
  %133 = landingpad { ptr, i32 }
          cleanup
  %134 = load ptr, ptr %2, align 8, !tbaa !20
  %135 = icmp eq ptr %134, %67
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load i64, ptr %67, align 8, !tbaa !19
  %138 = add i64 %137, 1
  call void @_ZdlPvm(ptr noundef %134, i64 noundef %138) #29
  br label %139

139:                                              ; preds = %132, %136
  %140 = load ptr, ptr %3, align 8, !tbaa !20
  %141 = icmp eq ptr %140, %5
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i64, ptr %5, align 8, !tbaa !19
  %144 = add i64 %143, 1
  call void @_ZdlPvm(ptr noundef %140, i64 noundef %144) #29
  br label %145

145:                                              ; preds = %139, %142
  resume { ptr, i32 } %133
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_940_5_324sys__native_str_containsEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %6, ptr %3, align 8, !tbaa !12, !alias.scope !87
  br i1 %5, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %8, align 8, !tbaa !16, !alias.scope !87
  store i8 0, ptr %6, align 8, !tbaa !19, !alias.scope !87
  br label %26

9:                                                ; preds = %2
  %10 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !87
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
  store ptr %17, ptr %3, align 8, !tbaa !20, !alias.scope !87
  store i64 %10, ptr %6, align 8, !tbaa !19, !alias.scope !87
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %17, %15 ], [ %6, %9 ]
  switch i64 %10, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %0, align 1, !tbaa !19, !noalias !87
  store i8 %21, ptr %19, align 1, !tbaa !19
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %10, ptr %24, align 8, !tbaa !16, !alias.scope !87
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %10
  store i8 0, ptr %25, align 1, !tbaa !19
  br label %26

26:                                               ; preds = %7, %23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %27 = icmp eq ptr %1, null
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %28, ptr %4, align 8, !tbaa !12, !alias.scope !90
  br i1 %27, label %92, label %29

29:                                               ; preds = %26
  %30 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13, !noalias !90
  %31 = icmp ugt i64 %30, 15
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = icmp ugt i64 %30, 9223372036854775806
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %35 unwind label %100

35:                                               ; preds = %34
  unreachable

36:                                               ; preds = %32
  %37 = add nuw nsw i64 %30, 1
  %38 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %37) #28
          to label %39 unwind label %100

39:                                               ; preds = %36
  store ptr %38, ptr %4, align 8, !tbaa !20, !alias.scope !90
  store i64 %30, ptr %28, align 8, !tbaa !19, !alias.scope !90
  br label %40

40:                                               ; preds = %39, %29
  %41 = phi ptr [ %38, %39 ], [ %28, %29 ]
  switch i64 %30, label %44 [
    i64 1, label %42
    i64 0, label %45
  ]

42:                                               ; preds = %40
  %43 = load i8, ptr %1, align 1, !tbaa !19, !noalias !90
  store i8 %43, ptr %41, align 1, !tbaa !19
  br label %45

44:                                               ; preds = %40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %41, ptr nonnull align 1 %1, i64 %30, i1 false)
  br label %45

45:                                               ; preds = %40, %42, %44
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %30, ptr %46, align 8, !tbaa !16, !alias.scope !90
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 %30
  store i8 0, ptr %47, align 1, !tbaa !19
  %48 = load ptr, ptr %4, align 8, !tbaa !20
  %49 = load i64, ptr %46, align 8, !tbaa !16
  %50 = icmp ult i64 %49, 9223372036854775807
  call void @llvm.assume(i1 %50)
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %52 = load i64, ptr %51, align 8, !tbaa !16
  %53 = icmp ult i64 %52, 9223372036854775807
  call void @llvm.assume(i1 %53)
  %54 = icmp eq i64 %49, 0
  br i1 %54, label %86, label %55

55:                                               ; preds = %45
  %56 = icmp eq i64 %52, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %3, align 8, !tbaa !20
  %59 = icmp samesign ult i64 %52, %49
  br i1 %59, label %86, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 %52
  %62 = load i8, ptr %48, align 1, !tbaa !19
  %63 = sext i8 %62 to i32
  %64 = ptrtoint ptr %61 to i64
  br label %65

65:                                               ; preds = %81, %60
  %66 = phi i64 [ %52, %60 ], [ %84, %81 ]
  %67 = phi ptr [ %58, %60 ], [ %82, %81 ]
  %68 = sub i64 %66, %49
  %69 = add i64 %68, 1
  %70 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %67, i32 noundef %63, i64 noundef %69) #13
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = call i32 @bcmp(ptr nonnull %70, ptr nonnull %48, i64 %49)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = ptrtoint ptr %70 to i64
  %77 = ptrtoint ptr %58 to i64
  %78 = sub i64 %76, %77
  %79 = icmp ne i64 %78, -1
  %80 = zext i1 %79 to i32
  br label %86

81:                                               ; preds = %72
  %82 = getelementptr inbounds nuw i8, ptr %70, i64 1
  %83 = ptrtoint ptr %82 to i64
  %84 = sub i64 %64, %83
  %85 = icmp ult i64 %84, %49
  br i1 %85, label %86, label %65, !llvm.loop !93

86:                                               ; preds = %65, %81, %45, %55, %57, %75
  %87 = phi i32 [ 1, %45 ], [ 0, %55 ], [ %80, %75 ], [ 0, %57 ], [ 0, %81 ], [ 0, %65 ]
  %88 = icmp eq ptr %48, %28
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i64, ptr %28, align 8, !tbaa !19
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %48, i64 noundef %91) #29
  br label %92

92:                                               ; preds = %86, %26, %89
  %93 = phi i32 [ %87, %89 ], [ %87, %86 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %94 = load ptr, ptr %3, align 8, !tbaa !20
  %95 = icmp eq ptr %94, %6
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i64, ptr %6, align 8, !tbaa !19
  %98 = add i64 %97, 1
  call void @_ZdlPvm(ptr noundef %94, i64 noundef %98) #29
  br label %99

99:                                               ; preds = %92, %96
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %93

100:                                              ; preds = %36, %34
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %102 = load ptr, ptr %3, align 8, !tbaa !20
  %103 = icmp eq ptr %102, %6
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i64, ptr %6, align 8, !tbaa !19
  %106 = add i64 %105, 1
  call void @_ZdlPvm(ptr noundef %102, i64 noundef %106) #29
  br label %107

107:                                              ; preds = %100, %104
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %101
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_str_findEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %6, ptr %3, align 8, !tbaa !12, !alias.scope !94
  br i1 %5, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %8, align 8, !tbaa !16, !alias.scope !94
  store i8 0, ptr %6, align 8, !tbaa !19, !alias.scope !94
  br label %26

9:                                                ; preds = %2
  %10 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !94
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
  store ptr %17, ptr %3, align 8, !tbaa !20, !alias.scope !94
  store i64 %10, ptr %6, align 8, !tbaa !19, !alias.scope !94
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %17, %15 ], [ %6, %9 ]
  switch i64 %10, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %0, align 1, !tbaa !19, !noalias !94
  store i8 %21, ptr %19, align 1, !tbaa !19
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %10, ptr %24, align 8, !tbaa !16, !alias.scope !94
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %10
  store i8 0, ptr %25, align 1, !tbaa !19
  br label %26

26:                                               ; preds = %7, %23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %27 = icmp eq ptr %1, null
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %28, ptr %4, align 8, !tbaa !12, !alias.scope !97
  br i1 %27, label %91, label %29

29:                                               ; preds = %26
  %30 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13, !noalias !97
  %31 = icmp ugt i64 %30, 15
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = icmp ugt i64 %30, 9223372036854775806
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %35 unwind label %99

35:                                               ; preds = %34
  unreachable

36:                                               ; preds = %32
  %37 = add nuw nsw i64 %30, 1
  %38 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %37) #28
          to label %39 unwind label %99

39:                                               ; preds = %36
  store ptr %38, ptr %4, align 8, !tbaa !20, !alias.scope !97
  store i64 %30, ptr %28, align 8, !tbaa !19, !alias.scope !97
  br label %40

40:                                               ; preds = %39, %29
  %41 = phi ptr [ %38, %39 ], [ %28, %29 ]
  switch i64 %30, label %44 [
    i64 1, label %42
    i64 0, label %45
  ]

42:                                               ; preds = %40
  %43 = load i8, ptr %1, align 1, !tbaa !19, !noalias !97
  store i8 %43, ptr %41, align 1, !tbaa !19
  br label %45

44:                                               ; preds = %40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %41, ptr nonnull align 1 %1, i64 %30, i1 false)
  br label %45

45:                                               ; preds = %40, %42, %44
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %30, ptr %46, align 8, !tbaa !16, !alias.scope !97
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 %30
  store i8 0, ptr %47, align 1, !tbaa !19
  %48 = load ptr, ptr %4, align 8, !tbaa !20
  %49 = load i64, ptr %46, align 8, !tbaa !16
  %50 = icmp ult i64 %49, 9223372036854775807
  call void @llvm.assume(i1 %50)
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %52 = load i64, ptr %51, align 8, !tbaa !16
  %53 = icmp ult i64 %52, 9223372036854775807
  call void @llvm.assume(i1 %53)
  %54 = icmp eq i64 %49, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %45
  %56 = icmp eq i64 %52, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %3, align 8, !tbaa !20
  %59 = icmp samesign ult i64 %52, %49
  br i1 %59, label %85, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 %52
  %62 = load i8, ptr %48, align 1, !tbaa !19
  %63 = sext i8 %62 to i32
  %64 = ptrtoint ptr %61 to i64
  br label %65

65:                                               ; preds = %80, %60
  %66 = phi i64 [ %52, %60 ], [ %83, %80 ]
  %67 = phi ptr [ %58, %60 ], [ %81, %80 ]
  %68 = sub i64 %66, %49
  %69 = add i64 %68, 1
  %70 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %67, i32 noundef %63, i64 noundef %69) #13
  %71 = icmp eq ptr %70, null
  br i1 %71, label %85, label %72

72:                                               ; preds = %65
  %73 = call i32 @bcmp(ptr nonnull %70, ptr nonnull %48, i64 %49)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = ptrtoint ptr %70 to i64
  %77 = ptrtoint ptr %58 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  br label %85

80:                                               ; preds = %72
  %81 = getelementptr inbounds nuw i8, ptr %70, i64 1
  %82 = ptrtoint ptr %81 to i64
  %83 = sub i64 %64, %82
  %84 = icmp ult i64 %83, %49
  br i1 %84, label %85, label %65, !llvm.loop !93

85:                                               ; preds = %65, %80, %45, %55, %57, %75
  %86 = phi i32 [ 0, %45 ], [ -1, %55 ], [ %79, %75 ], [ -1, %57 ], [ -1, %80 ], [ -1, %65 ]
  %87 = icmp eq ptr %48, %28
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, ptr %28, align 8, !tbaa !19
  %90 = add i64 %89, 1
  call void @_ZdlPvm(ptr noundef %48, i64 noundef %90) #29
  br label %91

91:                                               ; preds = %85, %26, %88
  %92 = phi i32 [ %86, %88 ], [ %86, %85 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %93 = load ptr, ptr %3, align 8, !tbaa !20
  %94 = icmp eq ptr %93, %6
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load i64, ptr %6, align 8, !tbaa !19
  %97 = add i64 %96, 1
  call void @_ZdlPvm(ptr noundef %93, i64 noundef %97) #29
  br label %98

98:                                               ; preds = %91, %95
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %92

99:                                               ; preds = %36, %34
  %100 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %101 = load ptr, ptr %3, align 8, !tbaa !20
  %102 = icmp eq ptr %101, %6
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i64, ptr %6, align 8, !tbaa !19
  %105 = add i64 %104, 1
  call void @_ZdlPvm(ptr noundef %101, i64 noundef %105) #29
  br label %106

106:                                              ; preds = %99, %103
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %100
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_940_5_321sys__native_str_rfindEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %6, ptr %3, align 8, !tbaa !12, !alias.scope !100
  br i1 %5, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %8, align 8, !tbaa !16, !alias.scope !100
  store i8 0, ptr %6, align 8, !tbaa !19, !alias.scope !100
  br label %26

9:                                                ; preds = %2
  %10 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !100
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
  store ptr %17, ptr %3, align 8, !tbaa !20, !alias.scope !100
  store i64 %10, ptr %6, align 8, !tbaa !19, !alias.scope !100
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %17, %15 ], [ %6, %9 ]
  switch i64 %10, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %0, align 1, !tbaa !19, !noalias !100
  store i8 %21, ptr %19, align 1, !tbaa !19
  br label %23

22:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %10, ptr %24, align 8, !tbaa !16, !alias.scope !100
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %10
  store i8 0, ptr %25, align 1, !tbaa !19
  br label %26

26:                                               ; preds = %7, %23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %27 = icmp eq ptr %1, null
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %28, ptr %4, align 8, !tbaa !12, !alias.scope !103
  br i1 %27, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !16
  %32 = icmp ult i64 %31, 9223372036854775807
  call void @llvm.assume(i1 %32)
  br label %77

33:                                               ; preds = %26
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13, !noalias !103
  %35 = icmp ugt i64 %34, 15
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = icmp ugt i64 %34, 9223372036854775806
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %39 unwind label %86

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %34, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #28
          to label %43 unwind label %86

43:                                               ; preds = %40
  store ptr %42, ptr %4, align 8, !tbaa !20, !alias.scope !103
  store i64 %34, ptr %28, align 8, !tbaa !19, !alias.scope !103
  br label %44

44:                                               ; preds = %43, %33
  %45 = phi ptr [ %42, %43 ], [ %28, %33 ]
  switch i64 %34, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %1, align 1, !tbaa !19, !noalias !103
  store i8 %47, ptr %45, align 1, !tbaa !19
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr nonnull align 1 %1, i64 %34, i1 false)
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %34, ptr %50, align 8, !tbaa !16, !alias.scope !103
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 %34
  store i8 0, ptr %51, align 1, !tbaa !19
  %52 = load ptr, ptr %4, align 8, !tbaa !20
  %53 = load i64, ptr %50, align 8, !tbaa !16
  %54 = icmp ult i64 %53, 9223372036854775807
  call void @llvm.assume(i1 %54)
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !16
  %57 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %57)
  %58 = icmp samesign ugt i64 %53, %56
  br i1 %58, label %71, label %59

59:                                               ; preds = %49
  %60 = sub nuw nsw i64 %56, %53
  %61 = load ptr, ptr %3, align 8, !tbaa !20
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
  br i1 %70, label %71, label %63, !llvm.loop !106

71:                                               ; preds = %63, %68, %49, %59
  %72 = phi i64 [ -1, %49 ], [ %60, %59 ], [ -1, %68 ], [ %64, %63 ]
  %73 = icmp eq ptr %52, %28
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i64, ptr %28, align 8, !tbaa !19
  %76 = add i64 %75, 1
  call void @_ZdlPvm(ptr noundef %52, i64 noundef %76) #29
  br label %77

77:                                               ; preds = %71, %29, %74
  %78 = phi i64 [ %72, %74 ], [ %31, %29 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %79 = load ptr, ptr %3, align 8, !tbaa !20
  %80 = icmp eq ptr %79, %6
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i64, ptr %6, align 8, !tbaa !19
  %83 = add i64 %82, 1
  call void @_ZdlPvm(ptr noundef %79, i64 noundef %83) #29
  br label %84

84:                                               ; preds = %77, %81
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %85 = trunc i64 %78 to i32
  ret i32 %85

86:                                               ; preds = %40, %38
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %88 = load ptr, ptr %3, align 8, !tbaa !20
  %89 = icmp eq ptr %88, %6
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i64, ptr %6, align 8, !tbaa !19
  %92 = add i64 %91, 1
  call void @_ZdlPvm(ptr noundef %88, i64 noundef %92) #29
  br label %93

93:                                               ; preds = %86, %90
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %87
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_323sys__native_str_replaceEPKcS1_S1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %7, ptr %5, align 8, !tbaa !12, !alias.scope !107
  br i1 %6, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %9, align 8, !tbaa !16, !alias.scope !107
  store i8 0, ptr %7, align 8, !tbaa !19, !alias.scope !107
  br label %27

10:                                               ; preds = %3
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !107
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
  store ptr %18, ptr %5, align 8, !tbaa !20, !alias.scope !107
  store i64 %11, ptr %7, align 8, !tbaa !19, !alias.scope !107
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %7, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !19, !noalias !107
  store i8 %22, ptr %20, align 1, !tbaa !19
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !16, !alias.scope !107
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !19
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
          to label %38 unwind label %104

38:                                               ; preds = %36
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !24

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %106

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !12
  %54 = load ptr, ptr %4, align 8, !tbaa !20
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !16
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !20
  %63 = load i64, ptr %55, align 8, !tbaa !19
  store i64 %63, ptr %53, align 8, !tbaa !19
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !16
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !16
  store ptr %55, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %68, align 8, !tbaa !16
  store i8 0, ptr %55, align 8, !tbaa !19
  %71 = load ptr, ptr %46, align 8, !tbaa !25
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !25
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %106

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !32, !noalias !110
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !36, !noalias !110
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !37, !noalias !110
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !38
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !20
  %91 = load ptr, ptr %4, align 8, !tbaa !20
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i64, ptr %92, align 8, !tbaa !19
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %96) #29
  br label %97

97:                                               ; preds = %87, %94
  %98 = load ptr, ptr %5, align 8, !tbaa !20
  %99 = icmp eq ptr %98, %7
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i64, ptr %7, align 8, !tbaa !19
  %102 = add i64 %101, 1
  call void @_ZdlPvm(ptr noundef %98, i64 noundef %102) #29
  br label %103

103:                                              ; preds = %97, %100
  ret ptr %90

104:                                              ; preds = %36
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %114

106:                                              ; preds = %73, %41
  %107 = landingpad { ptr, i32 }
          cleanup
  %108 = load ptr, ptr %4, align 8, !tbaa !20
  %109 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !19
  %113 = add i64 %112, 1
  call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #29
  br label %114

114:                                              ; preds = %106, %111, %104
  %115 = phi { ptr, i32 } [ %105, %104 ], [ %107, %111 ], [ %107, %106 ]
  %116 = load ptr, ptr %5, align 8, !tbaa !20
  %117 = icmp eq ptr %116, %7
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i64, ptr %7, align 8, !tbaa !19
  %120 = add i64 %119, 1
  call void @_ZdlPvm(ptr noundef %116, i64 noundef %120) #29
  br label %121

121:                                              ; preds = %114, %118
  resume { ptr, i32 } %115
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
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
  store ptr %14, ptr %0, align 8, !tbaa !12
  %15 = load ptr, ptr %1, align 8, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !16
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  %22 = add nuw nsw i64 %20, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %16, i64 %22, i1 false)
  br label %27

23:                                               ; preds = %13
  store ptr %15, ptr %0, align 8, !tbaa !20
  %24 = load i64, ptr %16, align 8, !tbaa !19
  store i64 %24, ptr %14, align 8, !tbaa !19
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !16
  br label %27

27:                                               ; preds = %18, %23
  %28 = phi i64 [ %20, %18 ], [ %26, %23 ]
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  tail call void @llvm.assume(i1 %30)
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %28, ptr %31, align 8, !tbaa !16
  store ptr %16, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %29, align 8, !tbaa !16
  store i8 0, ptr %16, align 8, !tbaa !19
  br label %98

32:                                               ; preds = %11, %72
  %33 = phi i32 [ %6, %11 ], [ %78, %72 ]
  %34 = phi i64 [ 0, %11 ], [ %76, %72 ]
  %35 = icmp sgt i32 %33, 0
  %36 = load i64, ptr %12, align 8, !tbaa !16
  %37 = icmp ult i64 %36, 9223372036854775807
  tail call void @llvm.assume(i1 %37)
  %38 = icmp ult i64 %34, %36
  %39 = load ptr, ptr %1, align 8, !tbaa !20
  br i1 %38, label %40, label %82

40:                                               ; preds = %32
  %41 = sub nuw nsw i64 %36, %34
  %42 = icmp ult i64 %41, %2
  br i1 %42, label %82, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %36
  %45 = getelementptr inbounds nuw i8, ptr %39, i64 %34
  %46 = load i8, ptr %3, align 1, !tbaa !19
  %47 = sext i8 %46 to i32
  %48 = ptrtoint ptr %44 to i64
  br label %49

49:                                               ; preds = %59, %43
  %50 = phi i64 [ %41, %43 ], [ %62, %59 ]
  %51 = phi ptr [ %45, %43 ], [ %60, %59 ]
  %52 = sub i64 %50, %2
  %53 = add i64 %52, 1
  %54 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %51, i32 noundef %47, i64 noundef %53) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %82, label %56

56:                                               ; preds = %49
  %57 = tail call i32 @bcmp(ptr nonnull %54, ptr nonnull %3, i64 %2)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds nuw i8, ptr %54, i64 1
  %61 = ptrtoint ptr %60 to i64
  %62 = sub i64 %48, %61
  %63 = icmp ult i64 %62, %2
  br i1 %63, label %82, label %49, !llvm.loop !93

64:                                               ; preds = %56
  %65 = ptrtoint ptr %54 to i64
  %66 = ptrtoint ptr %39 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %67, -1
  br i1 %68, label %82, label %69

69:                                               ; preds = %64
  %70 = icmp ugt i64 %67, %36
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i64 noundef %67, i64 noundef %36) #27
  unreachable

72:                                               ; preds = %69
  %73 = sub nuw nsw i64 %36, %67
  %74 = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %73)
  %75 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %67, i64 noundef %74, ptr noundef %5, i64 noundef %4)
  %76 = add i64 %67, %4
  %77 = sext i1 %35 to i32
  %78 = add nsw i32 %33, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %32

80:                                               ; preds = %72
  %81 = load ptr, ptr %1, align 8, !tbaa !20
  br label %82

82:                                               ; preds = %40, %64, %32, %59, %49, %80
  %83 = phi ptr [ %81, %80 ], [ %39, %59 ], [ %39, %49 ], [ %39, %32 ], [ %39, %64 ], [ %39, %40 ]
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %84, ptr %0, align 8, !tbaa !12
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %86 = icmp eq ptr %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i64, ptr %12, align 8, !tbaa !16
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  %90 = add nuw nsw i64 %88, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %84, ptr noundef nonnull align 8 dereferenceable(1) %85, i64 %90, i1 false)
  br label %94

91:                                               ; preds = %82
  store ptr %83, ptr %0, align 8, !tbaa !20
  %92 = load i64, ptr %85, align 8, !tbaa !19
  store i64 %92, ptr %84, align 8, !tbaa !19
  %93 = load i64, ptr %12, align 8, !tbaa !16
  br label %94

94:                                               ; preds = %87, %91
  %95 = phi i64 [ %88, %87 ], [ %93, %91 ]
  %96 = icmp ult i64 %95, 9223372036854775807
  tail call void @llvm.assume(i1 %96)
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %95, ptr %97, align 8, !tbaa !16
  store ptr %85, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %12, align 8, !tbaa !16
  store i8 0, ptr %85, align 8, !tbaa !19
  br label %98

98:                                               ; preds = %94, %27
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_replace_nEPKcS1_S1_i(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %8, ptr %6, align 8, !tbaa !12, !alias.scope !113
  br i1 %7, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %10, align 8, !tbaa !16, !alias.scope !113
  store i8 0, ptr %8, align 8, !tbaa !19, !alias.scope !113
  br label %28

11:                                               ; preds = %4
  %12 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !113
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
  store ptr %19, ptr %6, align 8, !tbaa !20, !alias.scope !113
  store i64 %12, ptr %8, align 8, !tbaa !19, !alias.scope !113
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %19, %17 ], [ %8, %11 ]
  switch i64 %12, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %0, align 1, !tbaa !19, !noalias !113
  store i8 %23, ptr %21, align 1, !tbaa !19
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %0, i64 %12, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %12, ptr %26, align 8, !tbaa !16, !alias.scope !113
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %12
  store i8 0, ptr %27, align 1, !tbaa !19
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
          to label %39 unwind label %105

39:                                               ; preds = %37
  %40 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45, !prof !24

42:                                               ; preds = %39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %43 unwind label %107

43:                                               ; preds = %42
  %44 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %48 = load ptr, ptr %47, align 8, !tbaa !25
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = icmp eq ptr %48, %51
  br i1 %52, label %74, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %54, ptr %48, align 8, !tbaa !12
  %55 = load ptr, ptr %5, align 8, !tbaa !20
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !16
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  %62 = add nuw nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %56, i64 %62, i1 false)
  br label %67

63:                                               ; preds = %53
  store ptr %55, ptr %48, align 8, !tbaa !20
  %64 = load i64, ptr %56, align 8, !tbaa !19
  store i64 %64, ptr %54, align 8, !tbaa !19
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %66 = load i64, ptr %65, align 8, !tbaa !16
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i64 [ %66, %63 ], [ %60, %58 ]
  %69 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %70 = icmp ult i64 %68, 9223372036854775807
  call void @llvm.assume(i1 %70)
  %71 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %68, ptr %71, align 8, !tbaa !16
  store ptr %56, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %69, align 8, !tbaa !16
  store i8 0, ptr %56, align 8, !tbaa !19
  %72 = load ptr, ptr %47, align 8, !tbaa !25
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 32
  store ptr %73, ptr %47, align 8, !tbaa !25
  br label %77

74:                                               ; preds = %45
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %46, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %75 unwind label %107

75:                                               ; preds = %74
  %76 = load ptr, ptr %47, align 8, !tbaa !32, !noalias !116
  br label %77

77:                                               ; preds = %75, %67
  %78 = phi ptr [ %73, %67 ], [ %76, %75 ]
  %79 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %80 = load ptr, ptr %79, align 8, !tbaa !36, !noalias !116
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = getelementptr inbounds nuw i8, ptr %46, i64 72
  %84 = load ptr, ptr %83, align 8, !tbaa !37, !noalias !116
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load ptr, ptr %85, align 8, !tbaa !38
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 512
  br label %88

88:                                               ; preds = %82, %77
  %89 = phi ptr [ %87, %82 ], [ %78, %77 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 -32
  %91 = load ptr, ptr %90, align 8, !tbaa !20
  %92 = load ptr, ptr %5, align 8, !tbaa !20
  %93 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i64, ptr %93, align 8, !tbaa !19
  %97 = add i64 %96, 1
  call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #29
  br label %98

98:                                               ; preds = %88, %95
  %99 = load ptr, ptr %6, align 8, !tbaa !20
  %100 = icmp eq ptr %99, %8
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i64, ptr %8, align 8, !tbaa !19
  %103 = add i64 %102, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %103) #29
  br label %104

104:                                              ; preds = %98, %101
  ret ptr %91

105:                                              ; preds = %37
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %115

107:                                              ; preds = %74, %42
  %108 = landingpad { ptr, i32 }
          cleanup
  %109 = load ptr, ptr %5, align 8, !tbaa !20
  %110 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %111 = icmp eq ptr %109, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i64, ptr %110, align 8, !tbaa !19
  %114 = add i64 %113, 1
  call void @_ZdlPvm(ptr noundef %109, i64 noundef %114) #29
  br label %115

115:                                              ; preds = %107, %112, %105
  %116 = phi { ptr, i32 } [ %106, %105 ], [ %108, %112 ], [ %108, %107 ]
  %117 = load ptr, ptr %6, align 8, !tbaa !20
  %118 = icmp eq ptr %117, %8
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i64, ptr %8, align 8, !tbaa !19
  %121 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %117, i64 noundef %121) #29
  br label %122

122:                                              ; preds = %115, %119
  resume { ptr, i32 } %116
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_323sys__native_str_reverseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !12, !alias.scope !119
  br i1 %4, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !16, !alias.scope !119
  store i8 0, ptr %5, align 8, !tbaa !19, !alias.scope !119
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %9, ptr %2, align 8, !tbaa !12, !alias.scope !122
  br label %49

10:                                               ; preds = %1
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !119
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
  store ptr %18, ptr %3, align 8, !tbaa !20, !alias.scope !119
  store i64 %11, ptr %5, align 8, !tbaa !19, !alias.scope !119
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %5, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !19, !noalias !119
  store i8 %22, ptr %20, align 1, !tbaa !19
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %19, %21, %23
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !16, !alias.scope !119
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !19
  %27 = load ptr, ptr %3, align 8, !tbaa !20, !noalias !122
  %28 = load i64, ptr %25, align 8, !tbaa !16, !noalias !122
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = icmp ult i64 %28, 9223372036854775807
  call void @llvm.assume(i1 %30)
  %31 = icmp samesign ugt i64 %28, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %27, i64 %28
  %34 = getelementptr i8, ptr %33, i64 -1
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %41, %35 ], [ %34, %32 ]
  %37 = phi ptr [ %40, %35 ], [ %27, %32 ]
  %38 = load i8, ptr %37, align 1, !tbaa !19, !noalias !122
  %39 = load i8, ptr %36, align 1, !tbaa !19, !noalias !122
  store i8 %39, ptr %37, align 1, !tbaa !19, !noalias !122
  store i8 %38, ptr %36, align 1, !tbaa !19, !noalias !122
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 1
  %41 = getelementptr inbounds i8, ptr %36, i64 -1
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %35, label %43, !llvm.loop !125

43:                                               ; preds = %35
  %44 = load ptr, ptr %3, align 8, !tbaa !20, !noalias !122
  br label %45

45:                                               ; preds = %43, %24
  %46 = phi ptr [ %44, %43 ], [ %27, %24 ]
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %47, ptr %2, align 8, !tbaa !12, !alias.scope !122
  %48 = icmp eq ptr %46, %5
  br i1 %48, label %49, label %55

49:                                               ; preds = %6, %45
  %50 = phi ptr [ %9, %6 ], [ %47, %45 ]
  %51 = phi ptr [ %8, %6 ], [ %29, %45 ]
  %52 = load i64, ptr %51, align 8, !tbaa !16, !noalias !122
  %53 = icmp ult i64 %52, 16
  call void @llvm.assume(i1 %53)
  %54 = add nuw nsw i64 %52, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %54, i1 false)
  br label %58

55:                                               ; preds = %45
  store ptr %46, ptr %2, align 8, !tbaa !20, !alias.scope !122
  %56 = load i64, ptr %5, align 8, !tbaa !19, !noalias !122
  store i64 %56, ptr %47, align 8, !tbaa !19, !alias.scope !122
  %57 = load i64, ptr %29, align 8, !tbaa !16, !noalias !122
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %50, %49 ], [ %47, %55 ]
  %60 = phi ptr [ %51, %49 ], [ %29, %55 ]
  %61 = phi i64 [ %52, %49 ], [ %57, %55 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !16, !alias.scope !122
  store ptr %5, ptr %3, align 8, !tbaa !20, !noalias !122
  store i64 0, ptr %60, align 8, !tbaa !16, !noalias !122
  store i8 0, ptr %5, align 8, !tbaa !19, !noalias !122
  %64 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69, !prof !24

66:                                               ; preds = %58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %67 unwind label %124

67:                                               ; preds = %66
  %68 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %69

69:                                               ; preds = %67, %58
  %70 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 48
  %72 = load ptr, ptr %71, align 8, !tbaa !25
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 64
  %74 = load ptr, ptr %73, align 8, !tbaa !31
  %75 = getelementptr inbounds i8, ptr %74, i64 -32
  %76 = icmp eq ptr %72, %75
  br i1 %76, label %94, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds nuw i8, ptr %72, i64 16
  store ptr %78, ptr %72, align 8, !tbaa !12
  %79 = load ptr, ptr %2, align 8, !tbaa !20
  %80 = icmp eq ptr %79, %59
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, ptr %63, align 8, !tbaa !16
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  %84 = add nuw nsw i64 %82, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %78, ptr noundef nonnull align 8 dereferenceable(1) %59, i64 %84, i1 false)
  br label %88

85:                                               ; preds = %77
  store ptr %79, ptr %72, align 8, !tbaa !20
  %86 = load i64, ptr %59, align 8, !tbaa !19
  store i64 %86, ptr %78, align 8, !tbaa !19
  %87 = load i64, ptr %63, align 8, !tbaa !16
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi i64 [ %87, %85 ], [ %82, %81 ]
  %90 = icmp ult i64 %89, 9223372036854775807
  call void @llvm.assume(i1 %90)
  %91 = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 %89, ptr %91, align 8, !tbaa !16
  store ptr %59, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %63, align 8, !tbaa !16
  store i8 0, ptr %59, align 1, !tbaa !19
  %92 = load ptr, ptr %71, align 8, !tbaa !25
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 32
  store ptr %93, ptr %71, align 8, !tbaa !25
  br label %97

94:                                               ; preds = %69
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %70, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %95 unwind label %124

95:                                               ; preds = %94
  %96 = load ptr, ptr %71, align 8, !tbaa !32, !noalias !126
  br label %97

97:                                               ; preds = %95, %88
  %98 = phi ptr [ %93, %88 ], [ %96, %95 ]
  %99 = getelementptr inbounds nuw i8, ptr %70, i64 56
  %100 = load ptr, ptr %99, align 8, !tbaa !36, !noalias !126
  %101 = icmp eq ptr %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %70, i64 72
  %104 = load ptr, ptr %103, align 8, !tbaa !37, !noalias !126
  %105 = getelementptr inbounds i8, ptr %104, i64 -8
  %106 = load ptr, ptr %105, align 8, !tbaa !38
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 512
  br label %108

108:                                              ; preds = %102, %97
  %109 = phi ptr [ %107, %102 ], [ %98, %97 ]
  %110 = getelementptr inbounds i8, ptr %109, i64 -32
  %111 = load ptr, ptr %110, align 8, !tbaa !20
  %112 = load ptr, ptr %2, align 8, !tbaa !20
  %113 = icmp eq ptr %112, %59
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i64, ptr %59, align 8, !tbaa !19
  %116 = add i64 %115, 1
  call void @_ZdlPvm(ptr noundef %112, i64 noundef %116) #29
  br label %117

117:                                              ; preds = %108, %114
  %118 = load ptr, ptr %3, align 8, !tbaa !20
  %119 = icmp eq ptr %118, %5
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i64, ptr %5, align 8, !tbaa !19
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %118, i64 noundef %122) #29
  br label %123

123:                                              ; preds = %117, %120
  ret ptr %111

124:                                              ; preds = %94, %66
  %125 = landingpad { ptr, i32 }
          cleanup
  %126 = load ptr, ptr %2, align 8, !tbaa !20
  %127 = icmp eq ptr %126, %59
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load i64, ptr %59, align 8, !tbaa !19
  %130 = add i64 %129, 1
  call void @_ZdlPvm(ptr noundef %126, i64 noundef %130) #29
  br label %131

131:                                              ; preds = %124, %128
  %132 = load ptr, ptr %3, align 8, !tbaa !20
  %133 = icmp eq ptr %132, %5
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i64, ptr %5, align 8, !tbaa !19
  %136 = add i64 %135, 1
  call void @_ZdlPvm(ptr noundef %132, i64 noundef %136) #29
  br label %137

137:                                              ; preds = %131, %134
  resume { ptr, i32 } %125
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_322sys__native_str_repeatEPKci(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %6, ptr %3, align 8, !tbaa !12
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %7, align 8, !tbaa !16
  store i8 0, ptr %6, align 8, !tbaa !19
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %10, ptr %5, align 8, !tbaa !12
  br label %99

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %12 = icmp eq ptr %0, null
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !12, !alias.scope !129
  br i1 %12, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %15, align 8, !tbaa !16, !alias.scope !129
  store i8 0, ptr %13, align 8, !tbaa !19, !alias.scope !129
  br label %35

16:                                               ; preds = %11
  %17 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !129
  %18 = icmp ugt i64 %17, 15
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = icmp ugt i64 %17, 9223372036854775806
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
          to label %22 unwind label %43

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %19
  %24 = add nuw nsw i64 %17, 1
  %25 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #28
          to label %26 unwind label %43

26:                                               ; preds = %23
  store ptr %25, ptr %4, align 8, !tbaa !20, !alias.scope !129
  store i64 %17, ptr %13, align 8, !tbaa !19, !alias.scope !129
  br label %27

27:                                               ; preds = %26, %16
  %28 = phi ptr [ %25, %26 ], [ %13, %16 ]
  switch i64 %17, label %31 [
    i64 1, label %29
    i64 0, label %32
  ]

29:                                               ; preds = %27
  %30 = load i8, ptr %0, align 1, !tbaa !19, !noalias !129
  store i8 %30, ptr %28, align 1, !tbaa !19
  br label %32

31:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr nonnull align 1 %0, i64 %17, i1 false)
  br label %32

32:                                               ; preds = %31, %29, %27
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %17, ptr %33, align 8, !tbaa !16, !alias.scope !129
  %34 = getelementptr inbounds nuw i8, ptr %28, i64 %17
  store i8 0, ptr %34, align 1, !tbaa !19
  br label %35

35:                                               ; preds = %32, %14
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %45

37:                                               ; preds = %77
  %38 = load ptr, ptr %4, align 8, !tbaa !20
  %39 = icmp eq ptr %38, %13
  br i1 %39, label %95, label %40

40:                                               ; preds = %37
  %41 = load i64, ptr %13, align 8, !tbaa !19
  %42 = add i64 %41, 1
  call void @_ZdlPvm(ptr noundef %38, i64 noundef %42) #29
  br label %95

43:                                               ; preds = %23, %21
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %93

45:                                               ; preds = %35, %77
  %46 = phi i32 [ 0, %35 ], [ %80, %77 ]
  %47 = load ptr, ptr %4, align 8, !tbaa !20
  %48 = load i64, ptr %36, align 8, !tbaa !16
  %49 = icmp ult i64 %48, 9223372036854775807
  call void @llvm.assume(i1 %49)
  %50 = load i64, ptr %7, align 8, !tbaa !16
  %51 = icmp ult i64 %50, 9223372036854775807
  call void @llvm.assume(i1 %51)
  %52 = sub nuw nsw i64 9223372036854775806, %50
  %53 = icmp samesign ult i64 %52, %48
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %55 unwind label %84

55:                                               ; preds = %54
  unreachable

56:                                               ; preds = %45
  %57 = add nuw i64 %50, %48
  %58 = load ptr, ptr %3, align 8, !tbaa !20
  %59 = icmp eq ptr %58, %6
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = icmp samesign ult i64 %50, 16
  call void @llvm.assume(i1 %61)
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i64, ptr %6, align 8
  %64 = select i1 %59, i64 15, i64 %63
  %65 = icmp samesign ugt i64 %64, 14
  call void @llvm.assume(i1 %65)
  %66 = icmp ult i64 %64, 9223372036854775807
  call void @llvm.assume(i1 %66)
  %67 = icmp ugt i64 %57, %64
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = icmp eq i64 %48, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds nuw i8, ptr %58, i64 %50
  %72 = icmp eq i64 %48, 1
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i8, ptr %47, align 1, !tbaa !19
  store i8 %74, ptr %71, align 1, !tbaa !19
  br label %77

75:                                               ; preds = %70
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr align 1 %47, i64 %48, i1 false)
  br label %77

76:                                               ; preds = %62
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %50, i64 noundef 0, ptr noundef %47, i64 noundef %48)
          to label %77 unwind label %82

77:                                               ; preds = %75, %73, %68, %76
  store i64 %57, ptr %7, align 8, !tbaa !16
  %78 = load ptr, ptr %3, align 8, !tbaa !20
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 %57
  store i8 0, ptr %79, align 1, !tbaa !19
  %80 = add nuw nsw i32 %46, 1
  %81 = icmp eq i32 %80, %1
  br i1 %81, label %37, label %45, !llvm.loop !132

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %86

84:                                               ; preds = %54
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi { ptr, i32 } [ %83, %82 ], [ %85, %84 ]
  %88 = load ptr, ptr %4, align 8, !tbaa !20
  %89 = icmp eq ptr %88, %13
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i64, ptr %13, align 8, !tbaa !19
  %92 = add i64 %91, 1
  call void @_ZdlPvm(ptr noundef %88, i64 noundef %92) #29
  br label %93

93:                                               ; preds = %86, %90, %43
  %94 = phi { ptr, i32 } [ %44, %43 ], [ %87, %90 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %179

95:                                               ; preds = %37, %40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %96 = load ptr, ptr %3, align 8, !tbaa !20
  %97 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %97, ptr %5, align 8, !tbaa !12
  %98 = icmp eq ptr %96, %6
  br i1 %98, label %99, label %104

99:                                               ; preds = %9, %95
  %100 = phi ptr [ %10, %9 ], [ %97, %95 ]
  %101 = load i64, ptr %7, align 8, !tbaa !16
  %102 = icmp ult i64 %101, 16
  call void @llvm.assume(i1 %102)
  %103 = add nuw nsw i64 %101, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %100, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %103, i1 false)
  br label %107

104:                                              ; preds = %95
  store ptr %96, ptr %5, align 8, !tbaa !20
  %105 = load i64, ptr %6, align 8, !tbaa !19
  store i64 %105, ptr %97, align 8, !tbaa !19
  %106 = load i64, ptr %7, align 8, !tbaa !16
  br label %107

107:                                              ; preds = %99, %104
  %108 = phi ptr [ %100, %99 ], [ %97, %104 ]
  %109 = phi i64 [ %101, %99 ], [ %106, %104 ]
  %110 = icmp ult i64 %109, 9223372036854775807
  call void @llvm.assume(i1 %110)
  %111 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %109, ptr %111, align 8, !tbaa !16
  store ptr %6, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %7, align 8, !tbaa !16
  store i8 0, ptr %6, align 8, !tbaa !19
  %112 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %117, !prof !24

114:                                              ; preds = %107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %115 unwind label %172

115:                                              ; preds = %114
  %116 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %117

117:                                              ; preds = %115, %107
  %118 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 48
  %120 = load ptr, ptr %119, align 8, !tbaa !25
  %121 = getelementptr inbounds nuw i8, ptr %118, i64 64
  %122 = load ptr, ptr %121, align 8, !tbaa !31
  %123 = getelementptr inbounds i8, ptr %122, i64 -32
  %124 = icmp eq ptr %120, %123
  br i1 %124, label %142, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds nuw i8, ptr %120, i64 16
  store ptr %126, ptr %120, align 8, !tbaa !12
  %127 = load ptr, ptr %5, align 8, !tbaa !20
  %128 = icmp eq ptr %127, %108
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i64, ptr %111, align 8, !tbaa !16
  %131 = icmp ult i64 %130, 16
  call void @llvm.assume(i1 %131)
  %132 = add nuw nsw i64 %130, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %126, ptr noundef nonnull align 8 dereferenceable(1) %108, i64 %132, i1 false)
  br label %136

133:                                              ; preds = %125
  store ptr %127, ptr %120, align 8, !tbaa !20
  %134 = load i64, ptr %108, align 8, !tbaa !19
  store i64 %134, ptr %126, align 8, !tbaa !19
  %135 = load i64, ptr %111, align 8, !tbaa !16
  br label %136

136:                                              ; preds = %133, %129
  %137 = phi i64 [ %135, %133 ], [ %130, %129 ]
  %138 = icmp ult i64 %137, 9223372036854775807
  call void @llvm.assume(i1 %138)
  %139 = getelementptr inbounds nuw i8, ptr %120, i64 8
  store i64 %137, ptr %139, align 8, !tbaa !16
  store ptr %108, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %111, align 8, !tbaa !16
  store i8 0, ptr %108, align 1, !tbaa !19
  %140 = load ptr, ptr %119, align 8, !tbaa !25
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 32
  store ptr %141, ptr %119, align 8, !tbaa !25
  br label %145

142:                                              ; preds = %117
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %118, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %143 unwind label %172

143:                                              ; preds = %142
  %144 = load ptr, ptr %119, align 8, !tbaa !32, !noalias !133
  br label %145

145:                                              ; preds = %143, %136
  %146 = phi ptr [ %141, %136 ], [ %144, %143 ]
  %147 = getelementptr inbounds nuw i8, ptr %118, i64 56
  %148 = load ptr, ptr %147, align 8, !tbaa !36, !noalias !133
  %149 = icmp eq ptr %146, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = getelementptr inbounds nuw i8, ptr %118, i64 72
  %152 = load ptr, ptr %151, align 8, !tbaa !37, !noalias !133
  %153 = getelementptr inbounds i8, ptr %152, i64 -8
  %154 = load ptr, ptr %153, align 8, !tbaa !38
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 512
  br label %156

156:                                              ; preds = %150, %145
  %157 = phi ptr [ %155, %150 ], [ %146, %145 ]
  %158 = getelementptr inbounds i8, ptr %157, i64 -32
  %159 = load ptr, ptr %158, align 8, !tbaa !20
  %160 = load ptr, ptr %5, align 8, !tbaa !20
  %161 = icmp eq ptr %160, %108
  br i1 %161, label %165, label %162

162:                                              ; preds = %156
  %163 = load i64, ptr %108, align 8, !tbaa !19
  %164 = add i64 %163, 1
  call void @_ZdlPvm(ptr noundef %160, i64 noundef %164) #29
  br label %165

165:                                              ; preds = %156, %162
  %166 = load ptr, ptr %3, align 8, !tbaa !20
  %167 = icmp eq ptr %166, %6
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i64, ptr %6, align 8, !tbaa !19
  %170 = add i64 %169, 1
  call void @_ZdlPvm(ptr noundef %166, i64 noundef %170) #29
  br label %171

171:                                              ; preds = %165, %168
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %159

172:                                              ; preds = %142, %114
  %173 = landingpad { ptr, i32 }
          cleanup
  %174 = load ptr, ptr %5, align 8, !tbaa !20
  %175 = icmp eq ptr %174, %108
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = load i64, ptr %108, align 8, !tbaa !19
  %178 = add i64 %177, 1
  call void @_ZdlPvm(ptr noundef %174, i64 noundef %178) #29
  br label %179

179:                                              ; preds = %172, %176, %93
  %180 = phi { ptr, i32 } [ %94, %93 ], [ %173, %176 ], [ %173, %172 ]
  %181 = load ptr, ptr %3, align 8, !tbaa !20
  %182 = icmp eq ptr %181, %6
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = load i64, ptr %6, align 8, !tbaa !19
  %185 = add i64 %184, 1
  call void @_ZdlPvm(ptr noundef %181, i64 noundef %185) #29
  br label %186

186:                                              ; preds = %179, %183
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %180
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_324sys__native_str_pad_leftEPKciS1_(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %7, ptr %4, align 8, !tbaa !12, !alias.scope !136
  br i1 %6, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %9, align 8, !tbaa !16, !alias.scope !136
  store i8 0, ptr %7, align 8, !tbaa !19, !alias.scope !136
  br label %27

10:                                               ; preds = %3
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !136
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
  store ptr %18, ptr %4, align 8, !tbaa !20, !alias.scope !136
  store i64 %11, ptr %7, align 8, !tbaa !19, !alias.scope !136
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %7, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !19, !noalias !136
  store i8 %22, ptr %20, align 1, !tbaa !19
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !16, !alias.scope !136
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !19
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
  %37 = load i64, ptr %35, align 8, !tbaa !16
  %38 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = trunc i64 %37 to i32
  %40 = icmp sgt i32 %1, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 8, !tbaa !20
  %43 = invoke ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %42, i8 noundef signext %34)
          to label %36 unwind label %44, !llvm.loop !139

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %124

46:                                               ; preds = %36
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %47, ptr %5, align 8, !tbaa !12
  %48 = load ptr, ptr %4, align 8, !tbaa !20
  %49 = icmp eq ptr %48, %7
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = icmp samesign ult i64 %37, 16
  call void @llvm.assume(i1 %51)
  %52 = add nuw nsw i64 %37, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %47, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %52, i1 false)
  br label %55

53:                                               ; preds = %46
  store ptr %48, ptr %5, align 8, !tbaa !20
  %54 = load i64, ptr %7, align 8, !tbaa !19
  store i64 %54, ptr %47, align 8, !tbaa !19
  br label %55

55:                                               ; preds = %50, %53
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %37, ptr %56, align 8, !tbaa !16
  store ptr %7, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %35, align 8, !tbaa !16
  store i8 0, ptr %7, align 8, !tbaa !19
  %57 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62, !prof !24

59:                                               ; preds = %55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %60 unwind label %117

60:                                               ; preds = %59
  %61 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 48
  %65 = load ptr, ptr %64, align 8, !tbaa !25
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %67 = load ptr, ptr %66, align 8, !tbaa !31
  %68 = getelementptr inbounds i8, ptr %67, i64 -32
  %69 = icmp eq ptr %65, %68
  br i1 %69, label %87, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 16
  store ptr %71, ptr %65, align 8, !tbaa !12
  %72 = load ptr, ptr %5, align 8, !tbaa !20
  %73 = icmp eq ptr %72, %47
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i64, ptr %56, align 8, !tbaa !16
  %76 = icmp ult i64 %75, 16
  call void @llvm.assume(i1 %76)
  %77 = add nuw nsw i64 %75, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, ptr noundef nonnull align 8 dereferenceable(1) %47, i64 %77, i1 false)
  br label %81

78:                                               ; preds = %70
  store ptr %72, ptr %65, align 8, !tbaa !20
  %79 = load i64, ptr %47, align 8, !tbaa !19
  store i64 %79, ptr %71, align 8, !tbaa !19
  %80 = load i64, ptr %56, align 8, !tbaa !16
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i64 [ %80, %78 ], [ %75, %74 ]
  %83 = icmp ult i64 %82, 9223372036854775807
  call void @llvm.assume(i1 %83)
  %84 = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %82, ptr %84, align 8, !tbaa !16
  store ptr %47, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %56, align 8, !tbaa !16
  store i8 0, ptr %47, align 8, !tbaa !19
  %85 = load ptr, ptr %64, align 8, !tbaa !25
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  store ptr %86, ptr %64, align 8, !tbaa !25
  br label %90

87:                                               ; preds = %62
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %63, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %88 unwind label %117

88:                                               ; preds = %87
  %89 = load ptr, ptr %64, align 8, !tbaa !32, !noalias !140
  br label %90

90:                                               ; preds = %88, %81
  %91 = phi ptr [ %86, %81 ], [ %89, %88 ]
  %92 = getelementptr inbounds nuw i8, ptr %63, i64 56
  %93 = load ptr, ptr %92, align 8, !tbaa !36, !noalias !140
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = getelementptr inbounds nuw i8, ptr %63, i64 72
  %97 = load ptr, ptr %96, align 8, !tbaa !37, !noalias !140
  %98 = getelementptr inbounds i8, ptr %97, i64 -8
  %99 = load ptr, ptr %98, align 8, !tbaa !38
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 512
  br label %101

101:                                              ; preds = %95, %90
  %102 = phi ptr [ %100, %95 ], [ %91, %90 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 -32
  %104 = load ptr, ptr %103, align 8, !tbaa !20
  %105 = load ptr, ptr %5, align 8, !tbaa !20
  %106 = icmp eq ptr %105, %47
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i64, ptr %47, align 8, !tbaa !19
  %109 = add i64 %108, 1
  call void @_ZdlPvm(ptr noundef %105, i64 noundef %109) #29
  br label %110

110:                                              ; preds = %101, %107
  %111 = load ptr, ptr %4, align 8, !tbaa !20
  %112 = icmp eq ptr %111, %7
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i64, ptr %7, align 8, !tbaa !19
  %115 = add i64 %114, 1
  call void @_ZdlPvm(ptr noundef %111, i64 noundef %115) #29
  br label %116

116:                                              ; preds = %110, %113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret ptr %104

117:                                              ; preds = %87, %59
  %118 = landingpad { ptr, i32 }
          cleanup
  %119 = load ptr, ptr %5, align 8, !tbaa !20
  %120 = icmp eq ptr %119, %47
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i64, ptr %47, align 8, !tbaa !19
  %123 = add i64 %122, 1
  call void @_ZdlPvm(ptr noundef %119, i64 noundef %123) #29
  br label %124

124:                                              ; preds = %117, %121, %44
  %125 = phi { ptr, i32 } [ %45, %44 ], [ %118, %121 ], [ %118, %117 ]
  %126 = load ptr, ptr %4, align 8, !tbaa !20
  %127 = icmp eq ptr %126, %7
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load i64, ptr %7, align 8, !tbaa !19
  %130 = add i64 %129, 1
  call void @_ZdlPvm(ptr noundef %126, i64 noundef %130) #29
  br label %131

131:                                              ; preds = %124, %128
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %125
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i8 noundef signext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !20
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !16
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
  %36 = load i8, ptr %32, align 1, !tbaa !19
  store i8 %36, ptr %33, align 1, !tbaa !19
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
  %48 = load i8, ptr %4, align 1, !tbaa !19
  store i8 %48, ptr %46, align 1, !tbaa !19
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
  %58 = load i8, ptr %55, align 1, !tbaa !19
  store i8 %58, ptr %54, align 1, !tbaa !19
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
  store ptr %46, ptr %0, align 8, !tbaa !20
  store i64 %44, ptr %15, align 8, !tbaa !19
  br label %66

66:                                               ; preds = %28, %35, %37, %65
  %67 = load ptr, ptr %0, align 8, !tbaa !20
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 %7
  store i8 %2, ptr %68, align 1, !tbaa !19
  store i64 %14, ptr %8, align 8, !tbaa !16
  %69 = load ptr, ptr %0, align 8, !tbaa !20
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 %14
  store i8 0, ptr %70, align 1, !tbaa !19
  %71 = load ptr, ptr %0, align 8, !tbaa !20
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %7
  ret ptr %72
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_pad_rightEPKciS1_(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %7, ptr %4, align 8, !tbaa !12, !alias.scope !143
  br i1 %6, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %9, align 8, !tbaa !16, !alias.scope !143
  store i8 0, ptr %7, align 8, !tbaa !19, !alias.scope !143
  br label %27

10:                                               ; preds = %3
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !143
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
  store ptr %18, ptr %4, align 8, !tbaa !20, !alias.scope !143
  store i64 %11, ptr %7, align 8, !tbaa !19, !alias.scope !143
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %7, %10 ]
  switch i64 %11, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %0, align 1, !tbaa !19, !noalias !143
  store i8 %22, ptr %20, align 1, !tbaa !19
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %0, i64 %11, i1 false)
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %11, ptr %25, align 8, !tbaa !16, !alias.scope !143
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 %11
  store i8 0, ptr %26, align 1, !tbaa !19
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
  %36 = load i64, ptr %35, align 8, !tbaa !16
  %37 = icmp ult i64 %36, 9223372036854775807
  call void @llvm.assume(i1 %37)
  %38 = trunc i64 %36 to i32
  %39 = icmp sgt i32 %1, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %33, %70
  %41 = phi i64 [ %75, %70 ], [ %36, %33 ]
  %42 = add nuw nsw i64 %41, 1
  %43 = load ptr, ptr %4, align 8, !tbaa !20
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
  store ptr %63, ptr %4, align 8, !tbaa !20
  store i64 %61, ptr %7, align 8, !tbaa !19
  br label %70

70:                                               ; preds = %46, %48, %69
  %71 = phi ptr [ %43, %48 ], [ %63, %69 ], [ %43, %46 ]
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %41
  store i8 %34, ptr %72, align 1, !tbaa !19
  store i64 %42, ptr %35, align 8, !tbaa !16
  %73 = load ptr, ptr %4, align 8, !tbaa !20
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 %42
  store i8 0, ptr %74, align 1, !tbaa !19
  %75 = load i64, ptr %35, align 8, !tbaa !16
  %76 = icmp ult i64 %75, 9223372036854775807
  call void @llvm.assume(i1 %76)
  %77 = trunc i64 %75 to i32
  %78 = icmp sgt i32 %1, %77
  br i1 %78, label %40, label %83

79:                                               ; preds = %57
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %162

81:                                               ; preds = %55
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %162

83:                                               ; preds = %70, %33
  %84 = phi i64 [ %36, %33 ], [ %75, %70 ]
  %85 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %85, ptr %5, align 8, !tbaa !12
  %86 = load ptr, ptr %4, align 8, !tbaa !20
  %87 = icmp eq ptr %86, %7
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = icmp samesign ult i64 %84, 16
  call void @llvm.assume(i1 %89)
  %90 = add nuw nsw i64 %84, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %85, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %90, i1 false)
  br label %93

91:                                               ; preds = %83
  store ptr %86, ptr %5, align 8, !tbaa !20
  %92 = load i64, ptr %7, align 8, !tbaa !19
  store i64 %92, ptr %85, align 8, !tbaa !19
  br label %93

93:                                               ; preds = %88, %91
  %94 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %84, ptr %94, align 8, !tbaa !16
  store ptr %7, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %35, align 8, !tbaa !16
  store i8 0, ptr %7, align 8, !tbaa !19
  %95 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %100, !prof !24

97:                                               ; preds = %93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %98 unwind label %155

98:                                               ; preds = %97
  %99 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %100

100:                                              ; preds = %98, %93
  %101 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 48
  %103 = load ptr, ptr %102, align 8, !tbaa !25
  %104 = getelementptr inbounds nuw i8, ptr %101, i64 64
  %105 = load ptr, ptr %104, align 8, !tbaa !31
  %106 = getelementptr inbounds i8, ptr %105, i64 -32
  %107 = icmp eq ptr %103, %106
  br i1 %107, label %125, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds nuw i8, ptr %103, i64 16
  store ptr %109, ptr %103, align 8, !tbaa !12
  %110 = load ptr, ptr %5, align 8, !tbaa !20
  %111 = icmp eq ptr %110, %85
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i64, ptr %94, align 8, !tbaa !16
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  %115 = add nuw nsw i64 %113, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %109, ptr noundef nonnull align 8 dereferenceable(1) %85, i64 %115, i1 false)
  br label %119

116:                                              ; preds = %108
  store ptr %110, ptr %103, align 8, !tbaa !20
  %117 = load i64, ptr %85, align 8, !tbaa !19
  store i64 %117, ptr %109, align 8, !tbaa !19
  %118 = load i64, ptr %94, align 8, !tbaa !16
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi i64 [ %118, %116 ], [ %113, %112 ]
  %121 = icmp ult i64 %120, 9223372036854775807
  call void @llvm.assume(i1 %121)
  %122 = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i64 %120, ptr %122, align 8, !tbaa !16
  store ptr %85, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %94, align 8, !tbaa !16
  store i8 0, ptr %85, align 8, !tbaa !19
  %123 = load ptr, ptr %102, align 8, !tbaa !25
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 32
  store ptr %124, ptr %102, align 8, !tbaa !25
  br label %128

125:                                              ; preds = %100
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %101, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %126 unwind label %155

126:                                              ; preds = %125
  %127 = load ptr, ptr %102, align 8, !tbaa !32, !noalias !146
  br label %128

128:                                              ; preds = %126, %119
  %129 = phi ptr [ %124, %119 ], [ %127, %126 ]
  %130 = getelementptr inbounds nuw i8, ptr %101, i64 56
  %131 = load ptr, ptr %130, align 8, !tbaa !36, !noalias !146
  %132 = icmp eq ptr %129, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = getelementptr inbounds nuw i8, ptr %101, i64 72
  %135 = load ptr, ptr %134, align 8, !tbaa !37, !noalias !146
  %136 = getelementptr inbounds i8, ptr %135, i64 -8
  %137 = load ptr, ptr %136, align 8, !tbaa !38
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 512
  br label %139

139:                                              ; preds = %133, %128
  %140 = phi ptr [ %138, %133 ], [ %129, %128 ]
  %141 = getelementptr inbounds i8, ptr %140, i64 -32
  %142 = load ptr, ptr %141, align 8, !tbaa !20
  %143 = load ptr, ptr %5, align 8, !tbaa !20
  %144 = icmp eq ptr %143, %85
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = load i64, ptr %85, align 8, !tbaa !19
  %147 = add i64 %146, 1
  call void @_ZdlPvm(ptr noundef %143, i64 noundef %147) #29
  br label %148

148:                                              ; preds = %139, %145
  %149 = load ptr, ptr %4, align 8, !tbaa !20
  %150 = icmp eq ptr %149, %7
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i64, ptr %7, align 8, !tbaa !19
  %153 = add i64 %152, 1
  call void @_ZdlPvm(ptr noundef %149, i64 noundef %153) #29
  br label %154

154:                                              ; preds = %148, %151
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret ptr %142

155:                                              ; preds = %125, %97
  %156 = landingpad { ptr, i32 }
          cleanup
  %157 = load ptr, ptr %5, align 8, !tbaa !20
  %158 = icmp eq ptr %157, %85
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load i64, ptr %85, align 8, !tbaa !19
  %161 = add i64 %160, 1
  call void @_ZdlPvm(ptr noundef %157, i64 noundef %161) #29
  br label %162

162:                                              ; preds = %155, %79, %81, %159
  %163 = phi { ptr, i32 } [ %156, %159 ], [ %82, %81 ], [ %80, %79 ], [ %156, %155 ]
  %164 = load ptr, ptr %4, align 8, !tbaa !20
  %165 = icmp eq ptr %164, %7
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i64, ptr %7, align 8, !tbaa !19
  %168 = add i64 %167, 1
  call void @_ZdlPvm(ptr noundef %164, i64 noundef %168) #29
  br label %169

169:                                              ; preds = %162, %166
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %163
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_substringEPKcii(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %8, ptr %4, align 8, !tbaa !12, !alias.scope !149
  br i1 %7, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %10, align 8, !tbaa !16, !alias.scope !149
  store i8 0, ptr %8, align 8, !tbaa !19, !alias.scope !149
  br label %28

11:                                               ; preds = %3
  %12 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !149
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
  store ptr %19, ptr %4, align 8, !tbaa !20, !alias.scope !149
  store i64 %12, ptr %8, align 8, !tbaa !19, !alias.scope !149
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %19, %17 ], [ %8, %11 ]
  switch i64 %12, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %0, align 1, !tbaa !19, !noalias !149
  store i8 %23, ptr %21, align 1, !tbaa !19
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %0, i64 %12, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %12, ptr %26, align 8, !tbaa !16, !alias.scope !149
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %12
  store i8 0, ptr %27, align 1, !tbaa !19
  br label %28

28:                                               ; preds = %9, %25
  %29 = icmp slt i32 %1, 0
  %30 = icmp slt i32 %2, 1
  %31 = or i1 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !16
  %35 = icmp ult i64 %34, 9223372036854775807
  call void @llvm.assume(i1 %35)
  %36 = trunc i64 %34 to i32
  %37 = icmp slt i32 %1, %36
  br i1 %37, label %100, label %38

38:                                               ; preds = %32, %28
  %39 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %39, ptr %5, align 8, !tbaa !12
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %40, align 8, !tbaa !16
  store i8 0, ptr %39, align 8, !tbaa !19
  %41 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %46, !prof !24

43:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %44 unwind label %93

44:                                               ; preds = %43
  %45 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %46

46:                                               ; preds = %44, %38
  %47 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 48
  %49 = load ptr, ptr %48, align 8, !tbaa !25
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = getelementptr inbounds i8, ptr %51, i64 -32
  %53 = icmp eq ptr %49, %52
  br i1 %53, label %71, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %55, ptr %49, align 8, !tbaa !12
  %56 = load ptr, ptr %5, align 8, !tbaa !20
  %57 = icmp eq ptr %56, %39
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, ptr %40, align 8, !tbaa !16
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %55, ptr noundef nonnull align 8 dereferenceable(1) %39, i64 %61, i1 false)
  br label %65

62:                                               ; preds = %54
  store ptr %56, ptr %49, align 8, !tbaa !20
  %63 = load i64, ptr %39, align 8, !tbaa !19
  store i64 %63, ptr %55, align 8, !tbaa !19
  %64 = load i64, ptr %40, align 8, !tbaa !16
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i64 [ %64, %62 ], [ %59, %58 ]
  %67 = icmp ult i64 %66, 9223372036854775807
  call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %66, ptr %68, align 8, !tbaa !16
  store ptr %39, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %40, align 8, !tbaa !16
  store i8 0, ptr %39, align 8, !tbaa !19
  %69 = load ptr, ptr %48, align 8, !tbaa !25
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  store ptr %70, ptr %48, align 8, !tbaa !25
  br label %74

71:                                               ; preds = %46
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %47, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %72 unwind label %93

72:                                               ; preds = %71
  %73 = load ptr, ptr %48, align 8, !tbaa !32, !noalias !152
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi ptr [ %70, %65 ], [ %73, %72 ]
  %76 = getelementptr inbounds nuw i8, ptr %47, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !36, !noalias !152
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %47, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !37, !noalias !152
  %82 = getelementptr inbounds i8, ptr %81, i64 -8
  %83 = load ptr, ptr %82, align 8, !tbaa !38
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 512
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi ptr [ %84, %79 ], [ %75, %74 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -32
  %88 = load ptr, ptr %87, align 8, !tbaa !20
  %89 = load ptr, ptr %5, align 8, !tbaa !20
  %90 = icmp eq ptr %89, %39
  br i1 %90, label %191, label %91

91:                                               ; preds = %85
  %92 = load i64, ptr %39, align 8, !tbaa !19
  br label %186

93:                                               ; preds = %71, %43
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = load ptr, ptr %5, align 8, !tbaa !20
  %96 = icmp eq ptr %95, %39
  br i1 %96, label %199, label %97

97:                                               ; preds = %93
  %98 = load i64, ptr %39, align 8, !tbaa !19
  %99 = add i64 %98, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %99) #29
  br label %199

100:                                              ; preds = %32
  %101 = zext nneg i32 %1 to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %102 = icmp samesign ult i64 %34, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, i64 noundef %101, i64 noundef %34) #27
          to label %104 unwind label %177

104:                                              ; preds = %103
  unreachable

105:                                              ; preds = %100
  %106 = zext nneg i32 %2 to i64
  %107 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %107, ptr %6, align 8, !tbaa !12, !alias.scope !155
  %108 = load ptr, ptr %4, align 8, !tbaa !20, !noalias !155
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 %101
  %110 = sub nuw nsw i64 %34, %101
  %111 = call noundef i64 @llvm.umin.i64(i64 %106, i64 %110)
  %112 = icmp samesign ugt i64 %111, 15
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = add nuw nsw i64 %111, 1
  %115 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %114) #28
          to label %116 unwind label %177

116:                                              ; preds = %113
  store ptr %115, ptr %6, align 8, !tbaa !20, !alias.scope !155
  store i64 %111, ptr %107, align 8, !tbaa !19, !alias.scope !155
  br label %117

117:                                              ; preds = %116, %105
  %118 = phi ptr [ %115, %116 ], [ %107, %105 ]
  switch i64 %111, label %121 [
    i64 1, label %119
    i64 0, label %122
  ]

119:                                              ; preds = %117
  %120 = load i8, ptr %109, align 1, !tbaa !19
  store i8 %120, ptr %118, align 1, !tbaa !19
  br label %122

121:                                              ; preds = %117
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %118, ptr align 1 %109, i64 %111, i1 false)
  br label %122

122:                                              ; preds = %121, %119, %117
  %123 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %111, ptr %123, align 8, !tbaa !16, !alias.scope !155
  %124 = getelementptr inbounds nuw i8, ptr %118, i64 %111
  store i8 0, ptr %124, align 1, !tbaa !19
  %125 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %130, !prof !24

127:                                              ; preds = %122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %128 unwind label %179

128:                                              ; preds = %127
  %129 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %130

130:                                              ; preds = %128, %122
  %131 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 48
  %133 = load ptr, ptr %132, align 8, !tbaa !25
  %134 = getelementptr inbounds nuw i8, ptr %131, i64 64
  %135 = load ptr, ptr %134, align 8, !tbaa !31
  %136 = getelementptr inbounds i8, ptr %135, i64 -32
  %137 = icmp eq ptr %133, %136
  br i1 %137, label %155, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds nuw i8, ptr %133, i64 16
  store ptr %139, ptr %133, align 8, !tbaa !12
  %140 = load ptr, ptr %6, align 8, !tbaa !20
  %141 = icmp eq ptr %140, %107
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i64, ptr %123, align 8, !tbaa !16
  %144 = icmp ult i64 %143, 16
  call void @llvm.assume(i1 %144)
  %145 = add nuw nsw i64 %143, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %139, ptr noundef nonnull align 8 dereferenceable(1) %107, i64 %145, i1 false)
  br label %149

146:                                              ; preds = %138
  store ptr %140, ptr %133, align 8, !tbaa !20
  %147 = load i64, ptr %107, align 8, !tbaa !19
  store i64 %147, ptr %139, align 8, !tbaa !19
  %148 = load i64, ptr %123, align 8, !tbaa !16
  br label %149

149:                                              ; preds = %146, %142
  %150 = phi i64 [ %148, %146 ], [ %143, %142 ]
  %151 = icmp ult i64 %150, 9223372036854775807
  call void @llvm.assume(i1 %151)
  %152 = getelementptr inbounds nuw i8, ptr %133, i64 8
  store i64 %150, ptr %152, align 8, !tbaa !16
  store ptr %107, ptr %6, align 8, !tbaa !20
  store i64 0, ptr %123, align 8, !tbaa !16
  store i8 0, ptr %107, align 8, !tbaa !19
  %153 = load ptr, ptr %132, align 8, !tbaa !25
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 32
  store ptr %154, ptr %132, align 8, !tbaa !25
  br label %158

155:                                              ; preds = %130
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %131, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %156 unwind label %179

156:                                              ; preds = %155
  %157 = load ptr, ptr %132, align 8, !tbaa !32, !noalias !158
  br label %158

158:                                              ; preds = %156, %149
  %159 = phi ptr [ %154, %149 ], [ %157, %156 ]
  %160 = getelementptr inbounds nuw i8, ptr %131, i64 56
  %161 = load ptr, ptr %160, align 8, !tbaa !36, !noalias !158
  %162 = icmp eq ptr %159, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = getelementptr inbounds nuw i8, ptr %131, i64 72
  %165 = load ptr, ptr %164, align 8, !tbaa !37, !noalias !158
  %166 = getelementptr inbounds i8, ptr %165, i64 -8
  %167 = load ptr, ptr %166, align 8, !tbaa !38
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 512
  br label %169

169:                                              ; preds = %163, %158
  %170 = phi ptr [ %168, %163 ], [ %159, %158 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 -32
  %172 = load ptr, ptr %171, align 8, !tbaa !20
  %173 = load ptr, ptr %6, align 8, !tbaa !20
  %174 = icmp eq ptr %173, %107
  br i1 %174, label %191, label %175

175:                                              ; preds = %169
  %176 = load i64, ptr %107, align 8, !tbaa !19
  br label %186

177:                                              ; preds = %113, %103
  %178 = landingpad { ptr, i32 }
          cleanup
  br label %199

179:                                              ; preds = %155, %127
  %180 = landingpad { ptr, i32 }
          cleanup
  %181 = load ptr, ptr %6, align 8, !tbaa !20
  %182 = icmp eq ptr %181, %107
  br i1 %182, label %199, label %183

183:                                              ; preds = %179
  %184 = load i64, ptr %107, align 8, !tbaa !19
  %185 = add i64 %184, 1
  call void @_ZdlPvm(ptr noundef %181, i64 noundef %185) #29
  br label %199

186:                                              ; preds = %91, %175
  %187 = phi i64 [ %176, %175 ], [ %92, %91 ]
  %188 = phi ptr [ %173, %175 ], [ %89, %91 ]
  %189 = phi ptr [ %172, %175 ], [ %88, %91 ]
  %190 = add i64 %187, 1
  call void @_ZdlPvm(ptr noundef %188, i64 noundef %190) #29
  br label %191

191:                                              ; preds = %186, %169, %85
  %192 = phi ptr [ %88, %85 ], [ %172, %169 ], [ %189, %186 ]
  %193 = load ptr, ptr %4, align 8, !tbaa !20
  %194 = icmp eq ptr %193, %8
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = load i64, ptr %8, align 8, !tbaa !19
  %197 = add i64 %196, 1
  call void @_ZdlPvm(ptr noundef %193, i64 noundef %197) #29
  br label %198

198:                                              ; preds = %191, %195
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret ptr %192

199:                                              ; preds = %179, %93, %183, %97, %177
  %200 = phi { ptr, i32 } [ %178, %177 ], [ %94, %97 ], [ %180, %183 ], [ %94, %93 ], [ %180, %179 ]
  %201 = load ptr, ptr %4, align 8, !tbaa !20
  %202 = icmp eq ptr %201, %8
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = load i64, ptr %8, align 8, !tbaa !19
  %205 = add i64 %204, 1
  call void @_ZdlPvm(ptr noundef %201, i64 noundef %205) #29
  br label %206

206:                                              ; preds = %199, %203
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %200
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
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
  %32 = phi i32 [ -1, %18 ], [ -1, %21 ], [ %26, %24 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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
  br i1 %17, label %33, label %18, !llvm.loop !161

18:                                               ; preds = %11, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %11 ]
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !19
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @tolower(i32 noundef %22) #30
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !19
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: inlinehint mustprogress sspstrong uwtable
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
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
  store ptr %32, ptr %6, align 8, !tbaa !162
  store ptr %32, ptr %34, align 8, !tbaa !164
  %35 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %32, i64 %0
  store ptr %35, ptr %28, align 8, !tbaa !165
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %37 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %45

38:                                               ; preds = %57
  %39 = load ptr, ptr %6, align 8, !tbaa !38
  %40 = load ptr, ptr %37, align 8, !tbaa !38
  %41 = load ptr, ptr %28, align 8, !tbaa !165
  %42 = icmp eq ptr %39, %40
  br i1 %42, label %62, label %80

43:                                               ; preds = %69, %30, %25
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %205

45:                                               ; preds = %33, %57
  %46 = phi ptr [ %1, %33 ], [ %58, %57 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %47 = load i8, ptr %46, align 1, !tbaa !19
  store i8 %47, ptr %7, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store i32 1, ptr %8, align 4, !tbaa !5
  %48 = load ptr, ptr %37, align 8, !tbaa !164
  %49 = load ptr, ptr %28, align 8, !tbaa !165
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %52, ptr %48, align 8, !tbaa !12
  store i8 %47, ptr %52, align 8, !tbaa !19
  %53 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 1, ptr %53, align 8, !tbaa !16
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 17
  store i8 0, ptr %54, align 1, !tbaa !19
  %55 = getelementptr inbounds nuw i8, ptr %48, i64 32
  store ptr %55, ptr %37, align 8, !tbaa !164
  br label %57

56:                                               ; preds = %45
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJiRcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %57 unwind label %60

57:                                               ; preds = %56, %51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %58 = getelementptr inbounds nuw i8, ptr %46, i64 1
  %59 = icmp eq ptr %58, %36
  br i1 %59, label %38, label %45

60:                                               ; preds = %56
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %205

62:                                               ; preds = %38
  %63 = icmp eq ptr %40, %41
  br i1 %63, label %69, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %65, ptr %40, align 8, !tbaa !12
  %66 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 0, ptr %66, align 8, !tbaa !16
  store i8 0, ptr %65, align 8, !tbaa !19
  %67 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %68 = load ptr, ptr %28, align 8, !tbaa !165
  br label %80

69:                                               ; preds = %27, %62
  %70 = phi ptr [ %41, %62 ], [ null, %27 ]
  %71 = phi ptr [ %39, %62 ], [ null, %27 ]
  %72 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %73 unwind label %43

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %72, i64 16
  store ptr %74, ptr %72, align 8, !tbaa !12
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 0, ptr %75, align 8, !tbaa !16
  store i8 0, ptr %74, align 8, !tbaa !19
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
  store ptr %83, ptr %9, align 8, !tbaa !162
  %84 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %82, ptr %84, align 8, !tbaa !164
  %85 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %81, ptr %85, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %86 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %196 unwind label %87

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #13
  br label %205

89:                                               ; preds = %16, %158
  %90 = phi i64 [ 0, %16 ], [ %159, %158 ]
  br i1 %17, label %91, label %119

91:                                               ; preds = %89
  %92 = load ptr, ptr %18, align 8, !tbaa !164
  %93 = load ptr, ptr %6, align 8, !tbaa !162
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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %103 = sub nuw i64 %0, %90
  %104 = getelementptr inbounds nuw i8, ptr %1, i64 %90
  store i64 %103, ptr %10, align 8
  %105 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %104, ptr %105, align 8
  %106 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %107 unwind label %115

107:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %108 = load ptr, ptr %6, align 8, !tbaa !162
  store ptr %108, ptr %11, align 8, !tbaa !162
  %109 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %110 = load ptr, ptr %18, align 8, !tbaa !164
  store ptr %110, ptr %109, align 8, !tbaa !164
  %111 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %112 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %113 = load ptr, ptr %112, align 8, !tbaa !165
  store ptr %113, ptr %111, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %114 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %196 unwind label %117

115:                                              ; preds = %102
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %205

117:                                              ; preds = %107
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #13
  br label %205

119:                                              ; preds = %89, %91
  %120 = icmp uge i64 %90, %0
  %121 = sub nuw i64 %0, %90
  %122 = icmp ult i64 %121, %2
  %123 = select i1 %120, i1 true, i1 %122
  br i1 %123, label %147, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 %90
  %126 = load i8, ptr %3, align 1, !tbaa !19
  %127 = sext i8 %126 to i32
  br label %128

128:                                              ; preds = %138, %124
  %129 = phi i64 [ %121, %124 ], [ %141, %138 ]
  %130 = phi ptr [ %125, %124 ], [ %139, %138 ]
  %131 = sub i64 %129, %2
  %132 = add i64 %131, 1
  %133 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %130, i32 noundef %127, i64 noundef %132) #13
  %134 = icmp eq ptr %133, null
  br i1 %134, label %147, label %135

135:                                              ; preds = %128
  %136 = call i32 @bcmp(ptr nonnull %133, ptr nonnull %3, i64 %2)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds nuw i8, ptr %133, i64 1
  %140 = ptrtoint ptr %139 to i64
  %141 = sub i64 %20, %140
  %142 = icmp ult i64 %141, %2
  br i1 %142, label %147, label %128, !llvm.loop !166

143:                                              ; preds = %135
  %144 = ptrtoint ptr %133 to i64
  %145 = sub i64 %144, %21
  %146 = icmp eq i64 %145, -1
  br i1 %146, label %147, label %154

147:                                              ; preds = %143, %119, %138, %128
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %148 = getelementptr inbounds nuw i8, ptr %1, i64 %90
  store i64 %121, ptr %12, align 8
  %149 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %148, ptr %149, align 8
  %150 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %151 unwind label %152

151:                                              ; preds = %147
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %163

152:                                              ; preds = %147
  %153 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %205

154:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %155 = sub i64 %145, %90
  %156 = call i64 @llvm.umin.i64(i64 %121, i64 %155)
  store i64 %156, ptr %13, align 8
  store ptr %125, ptr %22, align 8
  %157 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %158 unwind label %161

158:                                              ; preds = %154
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %159 = add i64 %145, %2
  %160 = icmp ugt i64 %159, %0
  br i1 %160, label %163, label %89

161:                                              ; preds = %154
  %162 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %205

163:                                              ; preds = %158, %151
  %164 = load ptr, ptr %6, align 8, !tbaa !38
  %165 = load ptr, ptr %18, align 8, !tbaa !38
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %167, label %186

167:                                              ; preds = %163
  %168 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !165
  %170 = icmp eq ptr %164, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds nuw i8, ptr %165, i64 16
  store ptr %172, ptr %165, align 8, !tbaa !12
  %173 = getelementptr inbounds nuw i8, ptr %165, i64 8
  store i64 0, ptr %173, align 8, !tbaa !16
  store i8 0, ptr %172, align 8, !tbaa !19
  %174 = getelementptr inbounds nuw i8, ptr %165, i64 32
  store ptr %174, ptr %18, align 8, !tbaa !164
  br label %186

175:                                              ; preds = %167
  %176 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %177 unwind label %184

177:                                              ; preds = %175
  %178 = getelementptr inbounds nuw i8, ptr %176, i64 16
  store ptr %178, ptr %176, align 8, !tbaa !12
  %179 = getelementptr inbounds nuw i8, ptr %176, i64 8
  store i64 0, ptr %179, align 8, !tbaa !16
  store i8 0, ptr %178, align 8, !tbaa !19
  %180 = icmp eq ptr %164, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  call void @_ZdlPvm(ptr noundef nonnull %164, i64 noundef 0) #29
  br label %182

182:                                              ; preds = %181, %177
  %183 = getelementptr inbounds nuw i8, ptr %176, i64 32
  store ptr %176, ptr %6, align 8, !tbaa !162
  store ptr %183, ptr %18, align 8, !tbaa !164
  store ptr %183, ptr %168, align 8, !tbaa !165
  br label %186

184:                                              ; preds = %175
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %205

186:                                              ; preds = %182, %171, %163
  %187 = phi ptr [ %183, %182 ], [ %174, %171 ], [ %165, %163 ]
  %188 = phi ptr [ %176, %182 ], [ %164, %171 ], [ %164, %163 ]
  store ptr %188, ptr %14, align 8, !tbaa !162
  %189 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %187, ptr %189, align 8, !tbaa !164
  %190 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %191 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %192 = load ptr, ptr %191, align 8, !tbaa !165
  store ptr %192, ptr %190, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %193 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %196 unwind label %194

194:                                              ; preds = %186
  %195 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #13
  br label %205

196:                                              ; preds = %186, %107, %80
  %197 = phi ptr [ %86, %80 ], [ %114, %107 ], [ %193, %186 ]
  %198 = phi ptr [ %83, %80 ], [ %108, %107 ], [ %188, %186 ]
  %199 = phi ptr [ %82, %80 ], [ %110, %107 ], [ %187, %186 ]
  %200 = phi ptr [ %81, %80 ], [ %113, %107 ], [ %192, %186 ]
  %201 = getelementptr inbounds nuw i8, ptr %197, i64 8
  store i32 4, ptr %201, align 8, !tbaa !167
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13vector_handleE, i64 16), ptr %197, align 8, !tbaa !170
  %202 = getelementptr inbounds nuw i8, ptr %197, i64 16
  %203 = getelementptr inbounds nuw i8, ptr %197, i64 24
  %204 = getelementptr inbounds nuw i8, ptr %197, i64 32
  store ptr %198, ptr %202, align 8, !tbaa !162
  store ptr %199, ptr %203, align 8, !tbaa !164
  store ptr %200, ptr %204, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret ptr %197

205:                                              ; preds = %115, %117, %184, %194, %161, %152, %87, %60, %43
  %206 = phi { ptr, i32 } [ %61, %60 ], [ %88, %87 ], [ %44, %43 ], [ %118, %117 ], [ %116, %115 ], [ %195, %194 ], [ %185, %184 ], [ %153, %152 ], [ %162, %161 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %206
}

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib22str_split_lines_handleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::basic_string_view", align 8
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
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
  %16 = load i8, ptr %15, align 1, !tbaa !19
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %24 = sub nuw i64 %0, %9
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 %9
  store i64 %24, ptr %4, align 8
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %25, ptr %26, align 8
  %27 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %28 unwind label %29

28:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %121

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %164

31:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %32 = sub i64 %14, %9
  %33 = sub nuw i64 %0, %9
  %34 = call i64 @llvm.umin.i64(i64 %33, i64 %32)
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 %9
  store i64 %34, ptr %5, align 8
  store ptr %35, ptr %7, align 8
  %36 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %37 unwind label %49

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %38 = add nuw i64 %14, 1
  %39 = icmp ult i64 %38, %0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i8, ptr %21, align 1, !tbaa !19
  %42 = icmp eq i8 %41, 13
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 %38
  %45 = load i8, ptr %44, align 1, !tbaa !19
  %46 = icmp eq i8 %45, 10
  %47 = add nuw i64 %14, 2
  %48 = select i1 %46, i64 %47, i64 %38
  br label %51

49:                                               ; preds = %31
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %164

51:                                               ; preds = %43, %40, %37
  %52 = phi i64 [ %38, %37 ], [ %48, %43 ], [ %38, %40 ]
  %53 = icmp eq i64 %52, %0
  br i1 %53, label %54, label %8

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %56 = load ptr, ptr %55, align 8, !tbaa !164
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !165
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds nuw i8, ptr %56, i64 16
  store ptr %61, ptr %56, align 8, !tbaa !12
  %62 = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 0, ptr %62, align 8, !tbaa !16
  store i8 0, ptr %61, align 8, !tbaa !19
  %63 = getelementptr inbounds nuw i8, ptr %56, i64 32
  store ptr %63, ptr %55, align 8, !tbaa !164
  br label %121

64:                                               ; preds = %54
  %65 = load ptr, ptr %3, align 8, !tbaa !162
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
  store ptr %82, ptr %81, align 8, !tbaa !12
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 0, ptr %83, align 8, !tbaa !16
  store i8 0, ptr %82, align 8, !tbaa !19
  %84 = icmp eq ptr %65, %56
  br i1 %84, label %109, label %85

85:                                               ; preds = %80, %101
  %86 = phi ptr [ %107, %101 ], [ %79, %80 ]
  %87 = phi ptr [ %106, %101 ], [ %65, %80 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 16
  store ptr %88, ptr %86, align 8, !tbaa !12, !alias.scope !173, !noalias !176
  %89 = load ptr, ptr %87, align 8, !tbaa !20, !alias.scope !176, !noalias !173
  %90 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %94 = load i64, ptr %93, align 8, !tbaa !16, !alias.scope !176, !noalias !173
  %95 = icmp ult i64 %94, 16
  call void @llvm.assume(i1 %95)
  %96 = add nuw nsw i64 %94, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %88, ptr noundef nonnull align 8 dereferenceable(1) %90, i64 %96, i1 false), !alias.scope !178
  br label %101

97:                                               ; preds = %85
  store ptr %89, ptr %86, align 8, !tbaa !20, !alias.scope !173, !noalias !176
  %98 = load i64, ptr %90, align 8, !tbaa !19, !alias.scope !176, !noalias !173
  store i64 %98, ptr %88, align 8, !tbaa !19, !alias.scope !173, !noalias !176
  %99 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %100 = load i64, ptr %99, align 8, !tbaa !16, !alias.scope !176, !noalias !173
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %94, %92 ], [ %100, %97 ]
  %103 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %104 = icmp ult i64 %102, 9223372036854775807
  call void @llvm.assume(i1 %104)
  %105 = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i64 %102, ptr %105, align 8, !tbaa !16, !alias.scope !173, !noalias !176
  store ptr %90, ptr %87, align 8, !tbaa !20, !alias.scope !176, !noalias !173
  store i64 0, ptr %103, align 8, !tbaa !16, !alias.scope !176, !noalias !173
  store i8 0, ptr %90, align 8, !tbaa !19, !alias.scope !176, !noalias !173
  %106 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %107 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %108 = icmp eq ptr %106, %56
  br i1 %108, label %109, label %85, !llvm.loop !179

109:                                              ; preds = %101, %80
  %110 = phi ptr [ %79, %80 ], [ %107, %101 ]
  %111 = icmp eq ptr %65, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %57, align 8, !tbaa !165
  %114 = ptrtoint ptr %113 to i64
  %115 = sub i64 %114, %67
  call void @_ZdlPvm(ptr noundef nonnull %65, i64 noundef %115) #29
  br label %116

116:                                              ; preds = %112, %109
  %117 = getelementptr inbounds nuw i8, ptr %110, i64 32
  store ptr %79, ptr %3, align 8, !tbaa !162
  store ptr %117, ptr %55, align 8, !tbaa !164
  %118 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %79, i64 %77
  store ptr %118, ptr %57, align 8, !tbaa !165
  br label %125

119:                                              ; preds = %74, %72
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %164

121:                                              ; preds = %8, %28, %60
  %122 = load ptr, ptr %3, align 8, !tbaa !38
  %123 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %124 = load ptr, ptr %123, align 8, !tbaa !38
  br label %125

125:                                              ; preds = %121, %116
  %126 = phi ptr [ %124, %121 ], [ %117, %116 ]
  %127 = phi ptr [ %122, %121 ], [ %79, %116 ]
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %129 = icmp eq ptr %127, %126
  br i1 %129, label %130, label %149

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %132 = load ptr, ptr %131, align 8, !tbaa !165
  %133 = icmp eq ptr %126, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds nuw i8, ptr %126, i64 16
  store ptr %135, ptr %126, align 8, !tbaa !12
  %136 = getelementptr inbounds nuw i8, ptr %126, i64 8
  store i64 0, ptr %136, align 8, !tbaa !16
  store i8 0, ptr %135, align 8, !tbaa !19
  %137 = getelementptr inbounds nuw i8, ptr %126, i64 32
  store ptr %137, ptr %128, align 8, !tbaa !164
  br label %149

138:                                              ; preds = %130
  %139 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %140 unwind label %147

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %139, i64 16
  store ptr %141, ptr %139, align 8, !tbaa !12
  %142 = getelementptr inbounds nuw i8, ptr %139, i64 8
  store i64 0, ptr %142, align 8, !tbaa !16
  store i8 0, ptr %141, align 8, !tbaa !19
  %143 = icmp eq ptr %126, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  call void @_ZdlPvm(ptr noundef nonnull %127, i64 noundef 0) #29
  br label %145

145:                                              ; preds = %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %139, i64 32
  store ptr %139, ptr %3, align 8, !tbaa !162
  store ptr %146, ptr %128, align 8, !tbaa !164
  store ptr %146, ptr %131, align 8, !tbaa !165
  br label %149

147:                                              ; preds = %138
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %164

149:                                              ; preds = %145, %134, %125
  %150 = phi ptr [ %146, %145 ], [ %137, %134 ], [ %126, %125 ]
  %151 = phi ptr [ %139, %145 ], [ %127, %134 ], [ %127, %125 ]
  store ptr %151, ptr %6, align 8, !tbaa !162
  %152 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %150, ptr %152, align 8, !tbaa !164
  %153 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %155 = load ptr, ptr %154, align 8, !tbaa !165
  store ptr %155, ptr %153, align 8, !tbaa !165
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
  store ptr %151, ptr %159, align 8, !tbaa !162
  store ptr %150, ptr %160, align 8, !tbaa !164
  store ptr %155, ptr %161, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %156

162:                                              ; preds = %149
  %163 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  br label %164

164:                                              ; preds = %29, %49, %119, %162, %147
  %165 = phi { ptr, i32 } [ %163, %162 ], [ %148, %147 ], [ %30, %29 ], [ %120, %119 ], [ %50, %49 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %165
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i64 @_ZN30__apollo_inline_inline_940_5_321sys__native_parse_intEPKci(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
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
  %12 = load i8, ptr %11, align 1, !tbaa !19, !noalias !180
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @isspace(i32 noundef %13) #30, !noalias !180
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = add nuw i64 %10, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %19, label %9, !llvm.loop !42

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
  %28 = load i8, ptr %27, align 1, !tbaa !19, !noalias !180
  %29 = zext i8 %28 to i32
  %30 = tail call i32 @isspace(i32 noundef %29) #30, !noalias !180
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %22, !llvm.loop !44

32:                                               ; preds = %25
  %33 = icmp ugt i64 %23, %21
  br i1 %33, label %36, label %34

34:                                               ; preds = %22, %32
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %35, align 8, !tbaa !16, !alias.scope !180
  br label %74

36:                                               ; preds = %32
  %37 = sub nuw i64 %23, %21
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %39, ptr %3, align 8, !tbaa !12, !alias.scope !180
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
  store ptr %46, ptr %3, align 8, !tbaa !20, !alias.scope !180
  store i64 %37, ptr %39, align 8, !tbaa !19, !alias.scope !180
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %39, %36 ]
  switch i64 %37, label %51 [
    i64 1, label %49
    i64 0, label %52
  ]

49:                                               ; preds = %47
  %50 = load i8, ptr %38, align 1, !tbaa !19, !noalias !180
  store i8 %50, ptr %48, align 1, !tbaa !19
  br label %52

51:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr align 1 %38, i64 %37, i1 false)
  br label %52

52:                                               ; preds = %47, %49, %51
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %37, ptr %53, align 8, !tbaa !16, !alias.scope !180
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 %37
  store i8 0, ptr %54, align 1, !tbaa !19
  %55 = load i64, ptr %53, align 8, !tbaa !16
  %56 = load ptr, ptr %3, align 8, !tbaa !20
  %57 = icmp eq i64 %55, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !183
  %59 = icmp eq i32 %1, 0
  %60 = add i32 %1, -37
  %61 = icmp ult i32 %60, -35
  %62 = select i1 %61, i32 10, i32 %1
  %63 = select i1 %59, i32 0, i32 %62
  %64 = call i64 @__isoc23_strtol(ptr noundef %56, ptr noundef nonnull %4, i32 noundef %63) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %65 = load ptr, ptr %3, align 8, !tbaa !20
  br label %66

66:                                               ; preds = %52, %58
  %67 = phi ptr [ %65, %58 ], [ %56, %52 ]
  %68 = phi i64 [ %64, %58 ], [ 0, %52 ]
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !19
  %73 = add i64 %72, 1
  call void @_ZdlPvm(ptr noundef %67, i64 noundef %73) #29
  br label %74

74:                                               ; preds = %66, %34, %71
  %75 = phi i64 [ %68, %71 ], [ 0, %34 ], [ %68, %66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i64 %75
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib16parse_bool_asciiESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %2 ]
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !19, !noalias !184
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @isspace(i32 noundef %10) #30, !noalias !184
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = add nuw i64 %7, 1
  %15 = icmp eq i64 %14, %0
  br i1 %15, label %16, label %6, !llvm.loop !42

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
  %24 = load i8, ptr %23, align 1, !tbaa !19, !noalias !184
  %25 = zext i8 %24 to i32
  %26 = tail call i32 @isspace(i32 noundef %25) #30, !noalias !184
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !44

28:                                               ; preds = %21
  %29 = icmp ugt i64 %19, %17
  br i1 %29, label %36, label %30

30:                                               ; preds = %18, %28
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %32, align 8, !tbaa !16, !alias.scope !184
  store i8 0, ptr %31, align 8, !tbaa !19, !alias.scope !184
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %34, ptr %3, align 8, !tbaa !12, !alias.scope !187
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %68

36:                                               ; preds = %28
  %37 = sub nuw i64 %19, %17
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 %17
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %39, ptr %4, align 8, !tbaa !12, !alias.scope !184
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
  store ptr %46, ptr %4, align 8, !tbaa !20, !alias.scope !184
  store i64 %37, ptr %39, align 8, !tbaa !19, !alias.scope !184
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %39, %36 ]
  switch i64 %37, label %51 [
    i64 1, label %49
    i64 0, label %52
  ]

49:                                               ; preds = %47
  %50 = load i8, ptr %38, align 1, !tbaa !19, !noalias !184
  store i8 %50, ptr %48, align 1, !tbaa !19
  br label %52

51:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr align 1 %38, i64 %37, i1 false)
  br label %52

52:                                               ; preds = %47, %49, %51
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %37, ptr %53, align 8, !tbaa !16, !alias.scope !184
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 %37
  store i8 0, ptr %54, align 1, !tbaa !19
  %55 = load ptr, ptr %4, align 8, !tbaa !20, !noalias !187
  %56 = load i64, ptr %53, align 8, !tbaa !16, !noalias !187
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %58 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds nuw i8, ptr %55, i64 %56
  %60 = icmp samesign eq i64 %56, 0
  br i1 %60, label %63, label %78

61:                                               ; preds = %78
  %62 = load ptr, ptr %4, align 8, !tbaa !20, !noalias !187
  br label %63

63:                                               ; preds = %61, %52
  %64 = phi ptr [ %62, %61 ], [ %55, %52 ]
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %65, ptr %3, align 8, !tbaa !12, !alias.scope !187
  %66 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %30, %63
  %69 = phi ptr [ %35, %30 ], [ %66, %63 ]
  %70 = phi ptr [ %34, %30 ], [ %65, %63 ]
  %71 = phi ptr [ %33, %30 ], [ %57, %63 ]
  %72 = load i64, ptr %71, align 8, !tbaa !16, !noalias !187
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  %74 = add nuw nsw i64 %72, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %70, ptr noundef nonnull align 8 dereferenceable(1) %69, i64 %74, i1 false)
  br label %86

75:                                               ; preds = %63
  store ptr %64, ptr %3, align 8, !tbaa !20, !alias.scope !187
  %76 = load i64, ptr %66, align 8, !tbaa !19, !noalias !187
  store i64 %76, ptr %65, align 8, !tbaa !19, !alias.scope !187
  %77 = load i64, ptr %57, align 8, !tbaa !16, !noalias !187
  br label %86

78:                                               ; preds = %52, %78
  %79 = phi ptr [ %84, %78 ], [ %55, %52 ]
  %80 = load i8, ptr %79, align 1, !tbaa !19, !noalias !187
  %81 = zext i8 %80 to i32
  %82 = call i32 @tolower(i32 noundef %81) #30, !noalias !187
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %79, align 1, !tbaa !19, !noalias !187
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
  store i64 %91, ptr %93, align 8, !tbaa !16, !alias.scope !187
  store ptr %87, ptr %4, align 8, !tbaa !20, !noalias !187
  store i64 0, ptr %89, align 8, !tbaa !16, !noalias !187
  store i8 0, ptr %87, align 1, !tbaa !19, !noalias !187
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
  %117 = phi i32 [ 0, %106 ], [ 1, %94 ], [ 1, %103 ], [ 1, %100 ], [ 1, %97 ], [ 0, %114 ], [ 0, %112 ], [ 0, %109 ]
  %118 = load ptr, ptr %3, align 8, !tbaa !20
  %119 = icmp eq ptr %118, %88
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i64, ptr %88, align 8, !tbaa !19
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %118, i64 noundef %122) #29
  br label %123

123:                                              ; preds = %116, %120
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %117
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_940_5_323sys__native_parse_floatEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
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
  %11 = load i8, ptr %10, align 1, !tbaa !19, !noalias !190
  %12 = zext i8 %11 to i32
  %13 = tail call i32 @isspace(i32 noundef %12) #30, !noalias !190
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = add nuw i64 %9, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %8, !llvm.loop !42

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
  %27 = load i8, ptr %26, align 1, !tbaa !19, !noalias !190
  %28 = zext i8 %27 to i32
  %29 = tail call i32 @isspace(i32 noundef %28) #30, !noalias !190
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %21, !llvm.loop !44

31:                                               ; preds = %24
  %32 = icmp ugt i64 %22, %20
  br i1 %32, label %35, label %33

33:                                               ; preds = %21, %31
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %34, align 8, !tbaa !16, !alias.scope !190
  br label %68

35:                                               ; preds = %31
  %36 = sub nuw i64 %22, %20
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %20
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %38, ptr %2, align 8, !tbaa !12, !alias.scope !190
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
  store ptr %45, ptr %2, align 8, !tbaa !20, !alias.scope !190
  store i64 %36, ptr %38, align 8, !tbaa !19, !alias.scope !190
  br label %46

46:                                               ; preds = %43, %35
  %47 = phi ptr [ %45, %43 ], [ %38, %35 ]
  switch i64 %36, label %50 [
    i64 1, label %48
    i64 0, label %51
  ]

48:                                               ; preds = %46
  %49 = load i8, ptr %37, align 1, !tbaa !19, !noalias !190
  store i8 %49, ptr %47, align 1, !tbaa !19
  br label %51

50:                                               ; preds = %46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %37, i64 %36, i1 false)
  br label %51

51:                                               ; preds = %46, %48, %50
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %36, ptr %52, align 8, !tbaa !16, !alias.scope !190
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 %36
  store i8 0, ptr %53, align 1, !tbaa !19
  %54 = load i64, ptr %52, align 8, !tbaa !16
  %55 = load ptr, ptr %2, align 8, !tbaa !20
  %56 = icmp eq i64 %54, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !183
  %58 = call double @strtod(ptr noundef %55, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %59 = load ptr, ptr %2, align 8, !tbaa !20
  br label %60

60:                                               ; preds = %51, %57
  %61 = phi ptr [ %59, %57 ], [ %55, %51 ]
  %62 = phi double [ %58, %57 ], [ 0.000000e+00, %51 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i64, ptr %63, align 8, !tbaa !19
  %67 = add i64 %66, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %67) #29
  br label %68

68:                                               ; preds = %60, %33, %65
  %69 = phi double [ %62, %65 ], [ 0.000000e+00, %33 ], [ %62, %60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret double %69
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_concat(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_322sys__native_str_concatEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_trim(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_320sys__native_str_trimEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_trim_start(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_326sys__native_str_trim_startEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_trim_end(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_324sys__native_str_trim_endEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_lowercase(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_lowercaseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_uppercase(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_uppercaseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_titlecase(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_titlecaseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_str_contains(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_940_5_324sys__native_str_containsEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_str_find(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_940_5_320sys__native_str_findEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_str_rfind(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_940_5_321sys__native_str_rfindEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_replace(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_323sys__native_str_replaceEPKcS1_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_replace_n(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_replace_nEPKcS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret ptr %5
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_reverse(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_323sys__native_str_reverseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_repeat(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_322sys__native_str_repeatEPKci(ptr noundef %0, i32 noundef %1)
  ret ptr %3
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_pad_left(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
  %4 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_324sys__native_str_pad_leftEPKciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_pad_right(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
  %4 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_pad_rightEPKciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_str_substring(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call noundef ptr @_ZN30__apollo_inline_inline_940_5_325sys__native_str_substringEPKcii(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
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
  %32 = phi i32 [ -1, %18 ], [ -1, %21 ], [ %26, %24 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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
  br i1 %17, label %33, label %18, !llvm.loop !161

18:                                               ; preds = %11, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %11 ]
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !19
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @tolower(i32 noundef %22) #30
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !19
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i64 @sys__native_parse_int(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef i64 @_ZN30__apollo_inline_inline_940_5_321sys__native_parse_intEPKci(ptr noundef %0, i32 noundef %1)
  ret i64 %3
}

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef double @sys__native_parse_float(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @_ZN30__apollo_inline_inline_940_5_323sys__native_parse_floatEPKc(ptr noundef %0)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
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

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
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

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !38, !noalias !193
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !38
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !196, !noalias !193
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !196
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !38, !noalias !197
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !38
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !196, !noalias !197
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !196
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
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
  %26 = load ptr, ptr %25, align 8, !tbaa !38
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

; Function Attrs: mustprogress sspstrong uwtable
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
  store ptr %20, ptr %19, align 8, !tbaa !38
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
  %31 = load ptr, ptr %30, align 8, !tbaa !38
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
  store ptr %15, ptr %52, align 8, !tbaa !37
  %53 = load ptr, ptr %15, align 8, !tbaa !38
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !36
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !207
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !37
  %60 = load ptr, ptr %58, align 8, !tbaa !38
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !36
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !207
  store ptr %53, ptr %51, align 8, !tbaa !208
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !25
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !37
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !37
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !32
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !19
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #29
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
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #29
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
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #29
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
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #29
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
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #29
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
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #29
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
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #29
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
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #29
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
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #29
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
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #29
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
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #29
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
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #29
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
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #29
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
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #29
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
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #29
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
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #29
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !37
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !209

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !207
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
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #29
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !210

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !36
  %168 = load ptr, ptr %2, align 8, !tbaa !32
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
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #29
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !210

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !32
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
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #29
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !210

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !207
  %27 = load ptr, ptr %4, align 8, !tbaa !32
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
  store ptr %49, ptr %50, align 8, !tbaa !38
  %51 = load ptr, ptr %3, align 8, !tbaa !25
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
  %68 = load ptr, ptr %5, align 8, !tbaa !202
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !37
  %70 = load ptr, ptr %69, align 8, !tbaa !38
  store ptr %70, ptr %18, align 8, !tbaa !36
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !207
  store ptr %70, ptr %3, align 8, !tbaa !25
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress sspstrong uwtable
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
  %35 = load ptr, ptr %7, align 8, !tbaa !38
  store ptr %35, ptr %24, align 8, !tbaa !38
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
  %48 = load ptr, ptr %7, align 8, !tbaa !38
  store ptr %48, ptr %42, align 8, !tbaa !38
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
  %69 = load ptr, ptr %7, align 8, !tbaa !38
  store ptr %69, ptr %60, align 8, !tbaa !38
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !200
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #29
  store ptr %55, ptr %0, align 8, !tbaa !200
  store i64 %52, ptr %14, align 8, !tbaa !204
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !37
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !36
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !207
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !37
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !36
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #19

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !16
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
  %16 = load ptr, ptr %0, align 8, !tbaa !20
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
  %34 = select i1 %31, i1 true, i1 %33, !prof !213
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
  %44 = load i8, ptr %41, align 1, !tbaa !19
  store i8 %44, ptr %40, align 1, !tbaa !19
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
  %48 = load i8, ptr %3, align 1, !tbaa !19
  store i8 %48, ptr %28, align 1, !tbaa !19
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
  store i64 %15, ptr %6, align 8, !tbaa !16
  %53 = load ptr, ptr %0, align 8, !tbaa !20
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 %15
  store i8 0, ptr %54, align 1, !tbaa !19
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !16
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, %1
  %10 = sub i64 %7, %9
  %11 = sub i64 %4, %2
  %12 = add i64 %11, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !20
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
  %37 = load i8, ptr %13, align 1, !tbaa !19
  store i8 %37, ptr %35, align 1, !tbaa !19
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
  %47 = load i8, ptr %3, align 1, !tbaa !19
  store i8 %47, ptr %44, align 1, !tbaa !19
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
  %58 = load i8, ptr %55, align 1, !tbaa !19
  store i8 %58, ptr %53, align 1, !tbaa !19
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
  store ptr %35, ptr %0, align 8, !tbaa !20
  store i64 %33, ptr %14, align 8, !tbaa !19
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

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !162
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %19, label %6

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %15, %14 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i64, ptr %9, align 8, !tbaa !19
  %13 = add i64 %12, 1
  tail call void @_ZdlPvm(ptr noundef %8, i64 noundef %13) #29
  br label %14

14:                                               ; preds = %6, %11
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %6, !llvm.loop !210

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !162
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !165
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %20 to i64
  %27 = sub i64 %25, %26
  tail call void @_ZdlPvm(ptr noundef nonnull %20, i64 noundef %27) #29
  br label %28

28:                                               ; preds = %19, %22
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !165
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8, !tbaa !214
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %12, ptr %4, align 8, !tbaa !12
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
  store ptr %24, ptr %4, align 8, !tbaa !20
  store i64 %9, ptr %12, align 8, !tbaa !19
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %24, %22 ], [ %12, %17 ]
  switch i64 %9, label %29 [
    i64 1, label %27
    i64 0, label %30
  ]

27:                                               ; preds = %25
  %28 = load i8, ptr %11, align 1, !tbaa !19
  store i8 %28, ptr %26, align 1, !tbaa !19
  br label %30

29:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %11, i64 %9, i1 false)
  br label %30

30:                                               ; preds = %25, %27, %29
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %9, ptr %31, align 8, !tbaa !16
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 %9
  store i8 0, ptr %32, align 1, !tbaa !19
  %33 = load ptr, ptr %3, align 8, !tbaa !164
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %3, align 8, !tbaa !164
  br label %37

35:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJSt17basic_string_viewIcS3_EEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %36 = load ptr, ptr %3, align 8, !tbaa !38
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi ptr [ %36, %35 ], [ %34, %30 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 -32
  ret ptr %39
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJiRcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = load ptr, ptr %0, align 8, !tbaa !162
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
  %21 = load i32, ptr %1, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %23 = load i8, ptr %2, align 1, !tbaa !19
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %24, ptr %20, align 8, !tbaa !12
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
  store ptr %32, ptr %20, align 8, !tbaa !20
  store i64 %22, ptr %24, align 8, !tbaa !19
  br label %36

34:                                               ; preds = %14
  switch i32 %21, label %36 [
    i32 0, label %38
    i32 1, label %35
  ]

35:                                               ; preds = %34
  store i8 %23, ptr %24, align 1, !tbaa !19
  br label %38

36:                                               ; preds = %34, %33
  %37 = phi ptr [ %32, %33 ], [ %24, %34 ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %37, i8 %23, i64 %22, i1 false)
  br label %38

38:                                               ; preds = %34, %35, %36
  %39 = phi ptr [ %24, %34 ], [ %37, %36 ], [ %24, %35 ]
  %40 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %22, ptr %40, align 8, !tbaa !16
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 %22
  store i8 0, ptr %41, align 1, !tbaa !19
  %42 = icmp eq ptr %6, %5
  br i1 %42, label %67, label %43

43:                                               ; preds = %38, %59
  %44 = phi ptr [ %65, %59 ], [ %19, %38 ]
  %45 = phi ptr [ %64, %59 ], [ %6, %38 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %46, ptr %44, align 8, !tbaa !12, !alias.scope !215, !noalias !218
  %47 = load ptr, ptr %45, align 8, !tbaa !20, !alias.scope !218, !noalias !215
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %52 = load i64, ptr %51, align 8, !tbaa !16, !alias.scope !218, !noalias !215
  %53 = icmp ult i64 %52, 16
  tail call void @llvm.assume(i1 %53)
  %54 = add nuw nsw i64 %52, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %46, ptr noundef nonnull align 8 dereferenceable(1) %48, i64 %54, i1 false), !alias.scope !220
  br label %59

55:                                               ; preds = %43
  store ptr %47, ptr %44, align 8, !tbaa !20, !alias.scope !215, !noalias !218
  %56 = load i64, ptr %48, align 8, !tbaa !19, !alias.scope !218, !noalias !215
  store i64 %56, ptr %46, align 8, !tbaa !19, !alias.scope !215, !noalias !218
  %57 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !16, !alias.scope !218, !noalias !215
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i64 [ %52, %50 ], [ %58, %55 ]
  %61 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %62 = icmp ult i64 %60, 9223372036854775807
  tail call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %60, ptr %63, align 8, !tbaa !16, !alias.scope !215, !noalias !218
  store ptr %48, ptr %45, align 8, !tbaa !20, !alias.scope !218, !noalias !215
  store i64 0, ptr %61, align 8, !tbaa !16, !alias.scope !218, !noalias !215
  store i8 0, ptr %48, align 8, !tbaa !19, !alias.scope !218, !noalias !215
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
  %72 = load ptr, ptr %69, align 8, !tbaa !165
  %73 = ptrtoint ptr %72 to i64
  %74 = sub i64 %73, %8
  tail call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %74) #29
  br label %75

75:                                               ; preds = %67, %71
  %76 = getelementptr inbounds nuw i8, ptr %68, i64 32
  store ptr %19, ptr %0, align 8, !tbaa !162
  store ptr %76, ptr %4, align 8, !tbaa !164
  %77 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %19, i64 %17
  store ptr %77, ptr %69, align 8, !tbaa !165
  ret void

78:                                               ; preds = %30, %28
  %79 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %19, i64 noundef %18) #29
  resume { ptr, i32 } %79
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13vector_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %1, %15
  %8 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i64, ptr %10, align 8, !tbaa !19
  %14 = add i64 %13, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %14) #29
  br label %15

15:                                               ; preds = %7, %12
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %7, !llvm.loop !210

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !tbaa !162
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %25 = load ptr, ptr %24, align 8, !tbaa !165
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %26, %27
  tail call void @_ZdlPvm(ptr noundef nonnull %21, i64 noundef %28) #29
  br label %29

29:                                               ; preds = %20, %23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13vector_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %1, %15
  %8 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i64, ptr %10, align 8, !tbaa !19
  %14 = add i64 %13, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %14) #29
  br label %15

15:                                               ; preds = %7, %12
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %7, !llvm.loop !210

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !tbaa !162
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %25 = load ptr, ptr %24, align 8, !tbaa !165
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %26, %27
  tail call void @_ZdlPvm(ptr noundef nonnull %21, i64 noundef %28) #29
  br label %29

29:                                               ; preds = %20, %23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJSt17basic_string_viewIcS3_EEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = load ptr, ptr %0, align 8, !tbaa !162
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
  store ptr %23, ptr %19, align 8, !tbaa !12
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
  store ptr %37, ptr %19, align 8, !tbaa !20
  store i64 %20, ptr %23, align 8, !tbaa !19
  br label %39

39:                                               ; preds = %38, %29
  %40 = phi ptr [ %37, %38 ], [ %23, %29 ]
  switch i64 %20, label %43 [
    i64 1, label %41
    i64 0, label %44
  ]

41:                                               ; preds = %39
  %42 = load i8, ptr %22, align 1, !tbaa !19
  store i8 %42, ptr %40, align 1, !tbaa !19
  br label %44

43:                                               ; preds = %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %22, i64 %20, i1 false)
  br label %44

44:                                               ; preds = %39, %41, %43
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %20, ptr %45, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw i8, ptr %40, i64 %20
  store i8 0, ptr %46, align 1, !tbaa !19
  %47 = icmp eq ptr %5, %4
  br i1 %47, label %72, label %48

48:                                               ; preds = %44, %64
  %49 = phi ptr [ %70, %64 ], [ %18, %44 ]
  %50 = phi ptr [ %69, %64 ], [ %5, %44 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %51 = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %51, ptr %49, align 8, !tbaa !12, !alias.scope !221, !noalias !224
  %52 = load ptr, ptr %50, align 8, !tbaa !20, !alias.scope !224, !noalias !221
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %57 = load i64, ptr %56, align 8, !tbaa !16, !alias.scope !224, !noalias !221
  %58 = icmp ult i64 %57, 16
  tail call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 8 dereferenceable(1) %53, i64 %59, i1 false), !alias.scope !226
  br label %64

60:                                               ; preds = %48
  store ptr %52, ptr %49, align 8, !tbaa !20, !alias.scope !221, !noalias !224
  %61 = load i64, ptr %53, align 8, !tbaa !19, !alias.scope !224, !noalias !221
  store i64 %61, ptr %51, align 8, !tbaa !19, !alias.scope !221, !noalias !224
  %62 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %63 = load i64, ptr %62, align 8, !tbaa !16, !alias.scope !224, !noalias !221
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i64 [ %57, %55 ], [ %63, %60 ]
  %66 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %67 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %65, ptr %68, align 8, !tbaa !16, !alias.scope !221, !noalias !224
  store ptr %53, ptr %50, align 8, !tbaa !20, !alias.scope !224, !noalias !221
  store i64 0, ptr %66, align 8, !tbaa !16, !alias.scope !224, !noalias !221
  store i8 0, ptr %53, align 8, !tbaa !19, !alias.scope !224, !noalias !221
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
  %77 = load ptr, ptr %74, align 8, !tbaa !165
  %78 = ptrtoint ptr %77 to i64
  %79 = sub i64 %78, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %79) #29
  br label %80

80:                                               ; preds = %72, %76
  %81 = getelementptr inbounds nuw i8, ptr %73, i64 32
  store ptr %18, ptr %0, align 8, !tbaa !162
  store ptr %81, ptr %3, align 8, !tbaa !164
  %82 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %18, i64 %16
  store ptr %82, ptr %74, align 8, !tbaa !165
  ret void

83:                                               ; preds = %35, %33, %27
  %84 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %18, i64 noundef %17) #29
  resume { ptr, i32 } %84
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !16
  %5 = icmp ult i64 %4, 9223372036854775807
  tail call void @llvm.assume(i1 %5)
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !20
  %12 = tail call i32 @bcmp(ptr %11, ptr nonnull %1, i64 %4)
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %10, %8, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ], [ true, %8 ]
  ret i1 %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!23 = distinct !{!23, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!24 = !{!"branch_weights", i32 1, i32 1023}
!25 = !{!26, !30, i64 48}
!26 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !27, i64 0, !18, i64 8, !29, i64 16, !29, i64 48}
!27 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0}
!28 = !{!"any p2 pointer", !15, i64 0}
!29 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !30, i64 0, !30, i64 8, !30, i64 16, !27, i64 24}
!30 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!31 = !{!26, !30, i64 64}
!32 = !{!29, !30, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!35 = distinct !{!35, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!36 = !{!29, !30, i64 8}
!37 = !{!29, !27, i64 24}
!38 = !{!30, !30, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!41 = distinct !{!41, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!47 = distinct !{!47, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN12__apo_stdlib15trim_start_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!50 = distinct !{!50, !"_ZN12__apo_stdlib15trim_start_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!53 = distinct !{!53, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN12__apo_stdlib13trim_end_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!56 = distinct !{!56, !"_ZN12__apo_stdlib13trim_end_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!59 = distinct !{!59, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!62 = distinct !{!62, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN12__apo_stdlib20lowercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!65 = distinct !{!65, !"_ZN12__apo_stdlib20lowercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!68 = distinct !{!68, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!71 = distinct !{!71, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN12__apo_stdlib20uppercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!74 = distinct !{!74, !"_ZN12__apo_stdlib20uppercase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!77 = distinct !{!77, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!80 = distinct !{!80, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN12__apo_stdlib20titlecase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!83 = distinct !{!83, !"_ZN12__apo_stdlib20titlecase_ascii_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!86 = distinct !{!86, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!89 = distinct !{!89, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!92 = distinct !{!92, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!93 = distinct !{!93, !43}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!96 = distinct !{!96, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!99 = distinct !{!99, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!102 = distinct !{!102, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!105 = distinct !{!105, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!106 = distinct !{!106, !43}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!109 = distinct !{!109, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!112 = distinct !{!112, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!115 = distinct !{!115, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!118 = distinct !{!118, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!121 = distinct !{!121, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN12__apo_stdlib12reverse_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!124 = distinct !{!124, !"_ZN12__apo_stdlib12reverse_copyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!125 = distinct !{!125, !43}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!128 = distinct !{!128, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!131 = distinct !{!131, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!132 = distinct !{!132, !43}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!135 = distinct !{!135, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!138 = distinct !{!138, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!139 = distinct !{!139, !43}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!142 = distinct !{!142, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!145 = distinct !{!145, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!148 = distinct !{!148, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!151 = distinct !{!151, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!154 = distinct !{!154, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!157 = distinct !{!157, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!160 = distinct !{!160, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!161 = distinct !{!161, !43}
!162 = !{!163, !30, i64 0}
!163 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!164 = !{!163, !30, i64 8}
!165 = !{!163, !30, i64 16}
!166 = distinct !{!166, !43}
!167 = !{!168, !169, i64 8}
!168 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !169, i64 8}
!169 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !7, i64 0}
!170 = !{!171, !171, i64 0}
!171 = !{!"vtable pointer", !8, i64 0}
!172 = distinct !{!172, !43}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!175 = distinct !{!175, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!178 = !{!174, !177}
!179 = distinct !{!179, !43}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!182 = distinct !{!182, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!183 = !{!14, !14, i64 0}
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
!196 = !{!15, !15, i64 0}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!199 = distinct !{!199, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!200 = !{!26, !27, i64 0}
!201 = !{!26, !27, i64 40}
!202 = !{!26, !27, i64 72}
!203 = distinct !{!203, !43}
!204 = !{!26, !18, i64 8}
!205 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!206 = distinct !{!206, !43}
!207 = !{!29, !30, i64 16}
!208 = !{!26, !30, i64 16}
!209 = distinct !{!209, !43}
!210 = distinct !{!210, !43}
!211 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!212 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!213 = !{!"branch_weights", i32 -2146410, i32 2146410}
!214 = !{!18, !18, i64 0}
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
