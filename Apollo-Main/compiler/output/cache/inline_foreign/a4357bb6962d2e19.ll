; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/a4357bb6962d2e19.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/a4357bb6962d2e19.cpp"
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
%"class.std::allocator" = type { i8 }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.7" }
%"struct.std::_Head_base.7" = type { ptr }

$_ZN12__apo_stdlib9url_parseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN12__apo_stdlib10url_schemeEPv = comdat any

$_ZN12__apo_stdlib12url_usernameEPv = comdat any

$_ZN12__apo_stdlib12url_passwordEPv = comdat any

$_ZN12__apo_stdlib8url_hostEPv = comdat any

$_ZN12__apo_stdlib8url_portEPv = comdat any

$_ZN12__apo_stdlib8url_pathEPv = comdat any

$_ZN12__apo_stdlib9url_queryEPv = comdat any

$_ZN12__apo_stdlib12url_fragmentEPv = comdat any

$_ZN12__apo_stdlib8url_joinESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$_ZN12__apo_stdlib10url_handleD2Ev = comdat any

$_ZN12__apo_stdlib10url_handleD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZTVN12__apo_stdlib10url_handleE = comdat any

$_ZTIN12__apo_stdlib10url_handleE = comdat any

$_ZTSN12__apo_stdlib10url_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@_ZTVN12__apo_stdlib10url_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib10url_handleE, ptr @_ZN12__apo_stdlib10url_handleD2Ev, ptr @_ZN12__apo_stdlib10url_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib10url_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib10url_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib10url_handleE = linkonce_odr dso_local constant [29 x i8] c"N12__apo_stdlib10url_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.5 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1921sys__native_url_parseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %4, ptr %2, align 8, !tbaa !8, !alias.scope !5
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %6, align 8, !tbaa !14, !alias.scope !5
  store i8 0, ptr %4, align 8, !tbaa !17, !alias.scope !5
  br label %24

7:                                                ; preds = %1
  %8 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !5
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ugt i64 %8, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %8, 1
  %15 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #23
  store ptr %15, ptr %2, align 8, !tbaa !18, !alias.scope !5
  store i64 %8, ptr %4, align 8, !tbaa !17, !alias.scope !5
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %15, %13 ], [ %4, %7 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %0, align 1, !tbaa !17, !noalias !5
  store i8 %19, ptr %17, align 1, !tbaa !17
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %0, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !14, !alias.scope !5
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !17
  br label %24

24:                                               ; preds = %5, %21
  %25 = invoke noundef ptr @_ZN12__apo_stdlib9url_parseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2)
          to label %26 unwind label %37

26:                                               ; preds = %24
  %27 = load ptr, ptr %2, align 8, !tbaa !18
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !14
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  br label %36

33:                                               ; preds = %26
  %34 = load i64, ptr %4, align 8, !tbaa !17
  %35 = add i64 %34, 1
  call void @_ZdlPvm(ptr noundef %27, i64 noundef %35) #24
  br label %36

36:                                               ; preds = %29, %33
  ret ptr %25

37:                                               ; preds = %24
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %2, align 8, !tbaa !18
  %40 = icmp eq ptr %39, %4
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %43 = load i64, ptr %42, align 8, !tbaa !14
  %44 = icmp ult i64 %43, 16
  call void @llvm.assume(i1 %44)
  br label %48

45:                                               ; preds = %37
  %46 = load i64, ptr %4, align 8, !tbaa !17
  %47 = add i64 %46, 1
  call void @_ZdlPvm(ptr noundef %39, i64 noundef %47) #24
  br label %48

48:                                               ; preds = %41, %45
  resume { ptr, i32 } %38
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib9url_parseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #23
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 17, ptr %13, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib10url_handleE, i64 16), ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %15, ptr %14, align 8, !tbaa !8
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 0, ptr %16, align 8, !tbaa !14
  store i8 0, ptr %15, align 1, !tbaa !17
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %18, ptr %17, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i64 0, ptr %19, align 8, !tbaa !14
  store i8 0, ptr %18, align 1, !tbaa !17
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %21 = getelementptr inbounds nuw i8, ptr %12, i64 96
  store ptr %21, ptr %20, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i64 0, ptr %22, align 8, !tbaa !14
  store i8 0, ptr %21, align 1, !tbaa !17
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %24 = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %24, ptr %23, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i64 0, ptr %25, align 8, !tbaa !14
  store i8 0, ptr %24, align 1, !tbaa !17
  %26 = getelementptr inbounds nuw i8, ptr %12, i64 144
  %27 = getelementptr inbounds nuw i8, ptr %12, i64 160
  store ptr %27, ptr %26, align 8, !tbaa !8
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 152
  store i64 0, ptr %28, align 8, !tbaa !14
  store i8 0, ptr %27, align 1, !tbaa !17
  %29 = getelementptr inbounds nuw i8, ptr %12, i64 176
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 192
  store ptr %30, ptr %29, align 8, !tbaa !8
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 184
  store i64 0, ptr %31, align 8, !tbaa !14
  store i8 0, ptr %30, align 1, !tbaa !17
  %32 = getelementptr inbounds nuw i8, ptr %12, i64 208
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 224
  store ptr %33, ptr %32, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 216
  store i64 0, ptr %34, align 8, !tbaa !14
  store i8 0, ptr %33, align 1, !tbaa !17
  %35 = getelementptr inbounds nuw i8, ptr %12, i64 240
  %36 = getelementptr inbounds nuw i8, ptr %12, i64 256
  store ptr %36, ptr %35, align 8, !tbaa !8
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 248
  store i64 0, ptr %37, align 8, !tbaa !14
  store i8 0, ptr %36, align 1, !tbaa !17
  %38 = load ptr, ptr %0, align 8, !tbaa !18
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !14
  %41 = icmp ult i64 %40, 9223372036854775807
  tail call void @llvm.assume(i1 %41)
  %42 = icmp eq i64 %40, 0
  br i1 %42, label %587, label %43

43:                                               ; preds = %1
  %44 = icmp samesign ult i64 %40, 3
  br i1 %44, label %117, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 %40
  %47 = ptrtoint ptr %46 to i64
  br label %48

48:                                               ; preds = %57, %45
  %49 = phi i64 [ %40, %45 ], [ %60, %57 ]
  %50 = phi ptr [ %38, %45 ], [ %58, %57 ]
  %51 = add i64 %49, -2
  %52 = tail call ptr @memchr(ptr noundef %50, i32 noundef 58, i64 noundef %51) #13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %113, label %54

54:                                               ; preds = %48
  %55 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %52, ptr noundef nonnull dereferenceable(3) @.str, i64 3)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %47, %59
  %61 = icmp ult i64 %60, 3
  br i1 %61, label %113, label %48, !llvm.loop !24

62:                                               ; preds = %54
  %63 = ptrtoint ptr %52 to i64
  %64 = ptrtoint ptr %38 to i64
  %65 = sub i64 %63, %64
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %113, label %67

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  %68 = tail call i64 @llvm.umin.i64(i64 %40, i64 %65)
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %69, ptr %2, align 8, !tbaa !8
  %70 = icmp eq ptr %38, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

72:                                               ; preds = %67
  %73 = icmp samesign ugt i64 %68, 15
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = add nuw nsw i64 %68, 1
  %76 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %75) #23
  store ptr %76, ptr %2, align 8, !tbaa !18
  store i64 %68, ptr %69, align 8, !tbaa !17
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi ptr [ %76, %74 ], [ %69, %72 ]
  switch i64 %68, label %81 [
    i64 1, label %79
    i64 0, label %82
  ]

79:                                               ; preds = %77
  %80 = load i8, ptr %38, align 1, !tbaa !17
  store i8 %80, ptr %78, align 1, !tbaa !17
  br label %82

81:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %78, ptr nonnull align 1 %38, i64 %68, i1 false)
  br label %82

82:                                               ; preds = %77, %79, %81
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %68, ptr %83, align 8, !tbaa !14
  %84 = getelementptr inbounds nuw i8, ptr %78, i64 %68
  store i8 0, ptr %84, align 1, !tbaa !17
  %85 = load ptr, ptr %2, align 8, !tbaa !18
  %86 = icmp eq ptr %85, %69
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i64, ptr %83, align 8, !tbaa !14
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  switch i64 %88, label %92 [
    i64 0, label %93
    i64 1, label %90
  ]

90:                                               ; preds = %87
  %91 = load i8, ptr %85, align 1, !tbaa !17
  store i8 %91, ptr %15, align 1, !tbaa !17
  br label %93

92:                                               ; preds = %87
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %15, ptr align 1 %85, i64 %88, i1 false)
  br label %93

93:                                               ; preds = %92, %90, %87
  store i64 %88, ptr %16, align 8, !tbaa !14
  %94 = getelementptr inbounds nuw i8, ptr %15, i64 %88
  store i8 0, ptr %94, align 1, !tbaa !17
  br label %99

95:                                               ; preds = %82
  store ptr %85, ptr %14, align 8, !tbaa !18
  %96 = load i64, ptr %83, align 8, !tbaa !14
  %97 = icmp ult i64 %96, 9223372036854775807
  call void @llvm.assume(i1 %97)
  store i64 %96, ptr %16, align 8, !tbaa !14
  %98 = load i64, ptr %69, align 8, !tbaa !17
  store i64 %98, ptr %15, align 8, !tbaa !17
  store ptr %69, ptr %2, align 8, !tbaa !18
  br label %99

99:                                               ; preds = %93, %95
  %100 = phi ptr [ %85, %93 ], [ %69, %95 ]
  store i64 0, ptr %83, align 8, !tbaa !14
  store i8 0, ptr %100, align 1, !tbaa !17
  %101 = load ptr, ptr %2, align 8, !tbaa !18
  %102 = icmp eq ptr %101, %69
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i64, ptr %83, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %99
  %107 = load i64, ptr %69, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %101, i64 noundef %108) #24
  br label %109

109:                                              ; preds = %103, %106
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  %110 = add i64 %65, 3
  %111 = getelementptr inbounds nuw i8, ptr %38, i64 %110
  %112 = sub i64 %40, %110
  br label %113

113:                                              ; preds = %48, %57, %109, %62
  %114 = phi i64 [ %40, %62 ], [ %112, %109 ], [ %40, %57 ], [ %40, %48 ]
  %115 = phi ptr [ %38, %62 ], [ %111, %109 ], [ %38, %57 ], [ %38, %48 ]
  %116 = icmp eq i64 %114, 0
  br i1 %116, label %587, label %117

117:                                              ; preds = %43, %113
  %118 = phi ptr [ %115, %113 ], [ %38, %43 ]
  %119 = phi i64 [ %114, %113 ], [ %40, %43 ]
  %120 = call ptr @memchr(ptr noundef %118, i32 noundef 35, i64 noundef %119) #13
  %121 = icmp eq ptr %120, null
  %122 = ptrtoint ptr %120 to i64
  %123 = ptrtoint ptr %118 to i64
  %124 = sub i64 %122, %123
  %125 = icmp eq i64 %124, -1
  %126 = or i1 %121, %125
  br i1 %126, label %197, label %127

127:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %128 = add nuw i64 %124, 1
  %129 = icmp ult i64 %124, %119
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %128, i64 noundef %119) #22
  unreachable

131:                                              ; preds = %127
  %132 = sub nuw i64 %119, %128
  %133 = getelementptr inbounds nuw i8, ptr %118, i64 %128
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %134, ptr %3, align 8, !tbaa !8
  %135 = icmp ugt i64 %132, 15
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = icmp ugt i64 %132, 9223372036854775806
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

139:                                              ; preds = %136
  %140 = add nuw nsw i64 %132, 1
  %141 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %140) #23
  store ptr %141, ptr %3, align 8, !tbaa !18
  store i64 %132, ptr %134, align 8, !tbaa !17
  br label %142

142:                                              ; preds = %139, %131
  %143 = phi ptr [ %141, %139 ], [ %134, %131 ]
  switch i64 %132, label %146 [
    i64 1, label %144
    i64 0, label %147
  ]

144:                                              ; preds = %142
  %145 = load i8, ptr %133, align 1, !tbaa !17
  store i8 %145, ptr %143, align 1, !tbaa !17
  br label %147

146:                                              ; preds = %142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %143, ptr nonnull align 1 %133, i64 %132, i1 false)
  br label %147

147:                                              ; preds = %146, %144, %142
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %132, ptr %148, align 8, !tbaa !14
  %149 = getelementptr inbounds nuw i8, ptr %143, i64 %132
  store i8 0, ptr %149, align 1, !tbaa !17
  %150 = load ptr, ptr %35, align 8, !tbaa !18
  %151 = icmp eq ptr %150, %36
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i64, ptr %37, align 8, !tbaa !14
  %154 = icmp ult i64 %153, 16
  call void @llvm.assume(i1 %154)
  %155 = load ptr, ptr %3, align 8, !tbaa !18
  %156 = icmp eq ptr %155, %134
  br i1 %156, label %160, label %175

157:                                              ; preds = %147
  %158 = load ptr, ptr %3, align 8, !tbaa !18
  %159 = icmp eq ptr %158, %134
  br i1 %159, label %160, label %173

160:                                              ; preds = %157, %152
  %161 = phi ptr [ %158, %157 ], [ %155, %152 ]
  %162 = load i64, ptr %148, align 8, !tbaa !14
  %163 = icmp ult i64 %162, 16
  call void @llvm.assume(i1 %163)
  switch i64 %162, label %166 [
    i64 0, label %167
    i64 1, label %164
  ]

164:                                              ; preds = %160
  %165 = load i8, ptr %161, align 1, !tbaa !17
  store i8 %165, ptr %150, align 1, !tbaa !17
  br label %167

166:                                              ; preds = %160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %150, ptr align 1 %161, i64 %162, i1 false)
  br label %167

167:                                              ; preds = %166, %164, %160
  %168 = load i64, ptr %148, align 8, !tbaa !14
  %169 = icmp ult i64 %168, 9223372036854775807
  call void @llvm.assume(i1 %169)
  store i64 %168, ptr %37, align 8, !tbaa !14
  %170 = load ptr, ptr %35, align 8, !tbaa !18
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 %168
  store i8 0, ptr %171, align 1, !tbaa !17
  %172 = load ptr, ptr %3, align 8, !tbaa !18
  br label %185

173:                                              ; preds = %157
  %174 = load i64, ptr %36, align 8, !tbaa !17
  br label %175

175:                                              ; preds = %173, %152
  %176 = phi ptr [ %158, %173 ], [ %155, %152 ]
  %177 = phi ptr [ %150, %173 ], [ null, %152 ]
  %178 = phi i64 [ %174, %173 ], [ undef, %152 ]
  store ptr %176, ptr %35, align 8, !tbaa !18
  %179 = load i64, ptr %148, align 8, !tbaa !14
  %180 = icmp ult i64 %179, 9223372036854775807
  call void @llvm.assume(i1 %180)
  store i64 %179, ptr %37, align 8, !tbaa !14
  %181 = load i64, ptr %134, align 8, !tbaa !17
  store i64 %181, ptr %36, align 8, !tbaa !17
  %182 = icmp eq ptr %177, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %175
  store ptr %177, ptr %3, align 8, !tbaa !18
  store i64 %178, ptr %134, align 8, !tbaa !17
  br label %185

184:                                              ; preds = %175
  store ptr %134, ptr %3, align 8, !tbaa !18
  br label %185

185:                                              ; preds = %167, %183, %184
  %186 = phi ptr [ %172, %167 ], [ %177, %183 ], [ %134, %184 ]
  store i64 0, ptr %148, align 8, !tbaa !14
  store i8 0, ptr %186, align 1, !tbaa !17
  %187 = load ptr, ptr %3, align 8, !tbaa !18
  %188 = icmp eq ptr %187, %134
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i64, ptr %148, align 8, !tbaa !14
  %191 = icmp ult i64 %190, 16
  call void @llvm.assume(i1 %191)
  br label %195

192:                                              ; preds = %185
  %193 = load i64, ptr %134, align 8, !tbaa !17
  %194 = add i64 %193, 1
  call void @_ZdlPvm(ptr noundef %187, i64 noundef %194) #24
  br label %195

195:                                              ; preds = %192, %189
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  %196 = icmp eq i64 %124, 0
  br i1 %196, label %587, label %197

197:                                              ; preds = %117, %195
  %198 = phi i64 [ %124, %195 ], [ %119, %117 ]
  %199 = call ptr @memchr(ptr noundef %118, i32 noundef 63, i64 noundef %198) #13
  %200 = icmp eq ptr %199, null
  %201 = ptrtoint ptr %199 to i64
  %202 = ptrtoint ptr %118 to i64
  %203 = sub i64 %201, %202
  %204 = icmp eq i64 %203, -1
  %205 = or i1 %200, %204
  br i1 %205, label %276, label %206

206:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %207 = add nuw i64 %203, 1
  %208 = icmp ult i64 %203, %198
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %207, i64 noundef %198) #22
  unreachable

210:                                              ; preds = %206
  %211 = sub nuw i64 %198, %207
  %212 = getelementptr inbounds nuw i8, ptr %118, i64 %207
  %213 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %213, ptr %4, align 8, !tbaa !8
  %214 = icmp ugt i64 %211, 15
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = icmp ugt i64 %211, 9223372036854775806
  br i1 %216, label %217, label %218

217:                                              ; preds = %215
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

218:                                              ; preds = %215
  %219 = add nuw nsw i64 %211, 1
  %220 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %219) #23
  store ptr %220, ptr %4, align 8, !tbaa !18
  store i64 %211, ptr %213, align 8, !tbaa !17
  br label %221

221:                                              ; preds = %218, %210
  %222 = phi ptr [ %220, %218 ], [ %213, %210 ]
  switch i64 %211, label %225 [
    i64 1, label %223
    i64 0, label %226
  ]

223:                                              ; preds = %221
  %224 = load i8, ptr %212, align 1, !tbaa !17
  store i8 %224, ptr %222, align 1, !tbaa !17
  br label %226

225:                                              ; preds = %221
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %222, ptr nonnull align 1 %212, i64 %211, i1 false)
  br label %226

226:                                              ; preds = %225, %223, %221
  %227 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %211, ptr %227, align 8, !tbaa !14
  %228 = getelementptr inbounds nuw i8, ptr %222, i64 %211
  store i8 0, ptr %228, align 1, !tbaa !17
  %229 = load ptr, ptr %32, align 8, !tbaa !18
  %230 = icmp eq ptr %229, %33
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i64, ptr %34, align 8, !tbaa !14
  %233 = icmp ult i64 %232, 16
  call void @llvm.assume(i1 %233)
  %234 = load ptr, ptr %4, align 8, !tbaa !18
  %235 = icmp eq ptr %234, %213
  br i1 %235, label %239, label %254

236:                                              ; preds = %226
  %237 = load ptr, ptr %4, align 8, !tbaa !18
  %238 = icmp eq ptr %237, %213
  br i1 %238, label %239, label %252

239:                                              ; preds = %236, %231
  %240 = phi ptr [ %237, %236 ], [ %234, %231 ]
  %241 = load i64, ptr %227, align 8, !tbaa !14
  %242 = icmp ult i64 %241, 16
  call void @llvm.assume(i1 %242)
  switch i64 %241, label %245 [
    i64 0, label %246
    i64 1, label %243
  ]

243:                                              ; preds = %239
  %244 = load i8, ptr %240, align 1, !tbaa !17
  store i8 %244, ptr %229, align 1, !tbaa !17
  br label %246

245:                                              ; preds = %239
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %229, ptr align 1 %240, i64 %241, i1 false)
  br label %246

246:                                              ; preds = %245, %243, %239
  %247 = load i64, ptr %227, align 8, !tbaa !14
  %248 = icmp ult i64 %247, 9223372036854775807
  call void @llvm.assume(i1 %248)
  store i64 %247, ptr %34, align 8, !tbaa !14
  %249 = load ptr, ptr %32, align 8, !tbaa !18
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 %247
  store i8 0, ptr %250, align 1, !tbaa !17
  %251 = load ptr, ptr %4, align 8, !tbaa !18
  br label %264

252:                                              ; preds = %236
  %253 = load i64, ptr %33, align 8, !tbaa !17
  br label %254

254:                                              ; preds = %252, %231
  %255 = phi ptr [ %237, %252 ], [ %234, %231 ]
  %256 = phi ptr [ %229, %252 ], [ null, %231 ]
  %257 = phi i64 [ %253, %252 ], [ undef, %231 ]
  store ptr %255, ptr %32, align 8, !tbaa !18
  %258 = load i64, ptr %227, align 8, !tbaa !14
  %259 = icmp ult i64 %258, 9223372036854775807
  call void @llvm.assume(i1 %259)
  store i64 %258, ptr %34, align 8, !tbaa !14
  %260 = load i64, ptr %213, align 8, !tbaa !17
  store i64 %260, ptr %33, align 8, !tbaa !17
  %261 = icmp eq ptr %256, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %254
  store ptr %256, ptr %4, align 8, !tbaa !18
  store i64 %257, ptr %213, align 8, !tbaa !17
  br label %264

263:                                              ; preds = %254
  store ptr %213, ptr %4, align 8, !tbaa !18
  br label %264

264:                                              ; preds = %246, %262, %263
  %265 = phi ptr [ %251, %246 ], [ %256, %262 ], [ %213, %263 ]
  store i64 0, ptr %227, align 8, !tbaa !14
  store i8 0, ptr %265, align 1, !tbaa !17
  %266 = load ptr, ptr %4, align 8, !tbaa !18
  %267 = icmp eq ptr %266, %213
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = load i64, ptr %227, align 8, !tbaa !14
  %270 = icmp ult i64 %269, 16
  call void @llvm.assume(i1 %270)
  br label %274

271:                                              ; preds = %264
  %272 = load i64, ptr %213, align 8, !tbaa !17
  %273 = add i64 %272, 1
  call void @_ZdlPvm(ptr noundef %266, i64 noundef %273) #24
  br label %274

274:                                              ; preds = %271, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  %275 = icmp eq i64 %203, 0
  br i1 %275, label %587, label %276

276:                                              ; preds = %197, %274
  %277 = phi i64 [ %203, %274 ], [ %198, %197 ]
  %278 = call ptr @memchr(ptr noundef %118, i32 noundef 47, i64 noundef %277) #13
  %279 = icmp eq ptr %278, null
  %280 = ptrtoint ptr %278 to i64
  %281 = ptrtoint ptr %118 to i64
  %282 = sub i64 %280, %281
  %283 = icmp eq i64 %282, -1
  %284 = or i1 %279, %283
  br i1 %284, label %355, label %285

285:                                              ; preds = %276
  %286 = call i64 @llvm.umin.i64(i64 %277, i64 %282)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %287 = icmp ugt i64 %282, %277
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %282, i64 noundef %277) #22
  unreachable

289:                                              ; preds = %285
  %290 = sub nuw i64 %277, %282
  %291 = getelementptr inbounds nuw i8, ptr %118, i64 %282
  %292 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %292, ptr %5, align 8, !tbaa !8
  %293 = icmp ugt i64 %290, 15
  br i1 %293, label %294, label %300

294:                                              ; preds = %289
  %295 = icmp ugt i64 %290, 9223372036854775806
  br i1 %295, label %296, label %297

296:                                              ; preds = %294
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

297:                                              ; preds = %294
  %298 = add nuw nsw i64 %290, 1
  %299 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %298) #23
  store ptr %299, ptr %5, align 8, !tbaa !18
  store i64 %290, ptr %292, align 8, !tbaa !17
  br label %300

300:                                              ; preds = %297, %289
  %301 = phi ptr [ %299, %297 ], [ %292, %289 ]
  switch i64 %290, label %304 [
    i64 1, label %302
    i64 0, label %305
  ]

302:                                              ; preds = %300
  %303 = load i8, ptr %291, align 1, !tbaa !17
  store i8 %303, ptr %301, align 1, !tbaa !17
  br label %305

304:                                              ; preds = %300
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %301, ptr align 1 %291, i64 %290, i1 false)
  br label %305

305:                                              ; preds = %304, %302, %300
  %306 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %290, ptr %306, align 8, !tbaa !14
  %307 = getelementptr inbounds nuw i8, ptr %301, i64 %290
  store i8 0, ptr %307, align 1, !tbaa !17
  %308 = load ptr, ptr %29, align 8, !tbaa !18
  %309 = icmp eq ptr %308, %30
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load i64, ptr %31, align 8, !tbaa !14
  %312 = icmp ult i64 %311, 16
  call void @llvm.assume(i1 %312)
  %313 = load ptr, ptr %5, align 8, !tbaa !18
  %314 = icmp eq ptr %313, %292
  br i1 %314, label %318, label %333

315:                                              ; preds = %305
  %316 = load ptr, ptr %5, align 8, !tbaa !18
  %317 = icmp eq ptr %316, %292
  br i1 %317, label %318, label %331

318:                                              ; preds = %315, %310
  %319 = phi ptr [ %316, %315 ], [ %313, %310 ]
  %320 = load i64, ptr %306, align 8, !tbaa !14
  %321 = icmp ult i64 %320, 16
  call void @llvm.assume(i1 %321)
  switch i64 %320, label %324 [
    i64 0, label %325
    i64 1, label %322
  ]

322:                                              ; preds = %318
  %323 = load i8, ptr %319, align 1, !tbaa !17
  store i8 %323, ptr %308, align 1, !tbaa !17
  br label %325

324:                                              ; preds = %318
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %308, ptr align 1 %319, i64 %320, i1 false)
  br label %325

325:                                              ; preds = %324, %322, %318
  %326 = load i64, ptr %306, align 8, !tbaa !14
  %327 = icmp ult i64 %326, 9223372036854775807
  call void @llvm.assume(i1 %327)
  store i64 %326, ptr %31, align 8, !tbaa !14
  %328 = load ptr, ptr %29, align 8, !tbaa !18
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 %326
  store i8 0, ptr %329, align 1, !tbaa !17
  %330 = load ptr, ptr %5, align 8, !tbaa !18
  br label %343

331:                                              ; preds = %315
  %332 = load i64, ptr %30, align 8, !tbaa !17
  br label %333

333:                                              ; preds = %331, %310
  %334 = phi ptr [ %316, %331 ], [ %313, %310 ]
  %335 = phi ptr [ %308, %331 ], [ null, %310 ]
  %336 = phi i64 [ %332, %331 ], [ undef, %310 ]
  store ptr %334, ptr %29, align 8, !tbaa !18
  %337 = load i64, ptr %306, align 8, !tbaa !14
  %338 = icmp ult i64 %337, 9223372036854775807
  call void @llvm.assume(i1 %338)
  store i64 %337, ptr %31, align 8, !tbaa !14
  %339 = load i64, ptr %292, align 8, !tbaa !17
  store i64 %339, ptr %30, align 8, !tbaa !17
  %340 = icmp eq ptr %335, null
  br i1 %340, label %342, label %341

341:                                              ; preds = %333
  store ptr %335, ptr %5, align 8, !tbaa !18
  store i64 %336, ptr %292, align 8, !tbaa !17
  br label %343

342:                                              ; preds = %333
  store ptr %292, ptr %5, align 8, !tbaa !18
  br label %343

343:                                              ; preds = %325, %341, %342
  %344 = phi ptr [ %330, %325 ], [ %335, %341 ], [ %292, %342 ]
  store i64 0, ptr %306, align 8, !tbaa !14
  store i8 0, ptr %344, align 1, !tbaa !17
  %345 = load ptr, ptr %5, align 8, !tbaa !18
  %346 = icmp eq ptr %345, %292
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = load i64, ptr %306, align 8, !tbaa !14
  %349 = icmp ult i64 %348, 16
  call void @llvm.assume(i1 %349)
  br label %353

350:                                              ; preds = %343
  %351 = load i64, ptr %292, align 8, !tbaa !17
  %352 = add i64 %351, 1
  call void @_ZdlPvm(ptr noundef %345, i64 noundef %352) #24
  br label %353

353:                                              ; preds = %350, %347
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  %354 = icmp eq i64 %286, 0
  br i1 %354, label %587, label %355

355:                                              ; preds = %276, %353
  %356 = phi i64 [ %286, %353 ], [ %277, %276 ]
  %357 = call ptr @memchr(ptr noundef %118, i32 noundef 64, i64 noundef %356) #13
  %358 = icmp eq ptr %357, null
  %359 = ptrtoint ptr %357 to i64
  %360 = ptrtoint ptr %118 to i64
  %361 = sub i64 %359, %360
  %362 = icmp eq i64 %361, -1
  %363 = or i1 %358, %362
  br i1 %363, label %589, label %364

364:                                              ; preds = %355
  %365 = call i64 @llvm.umin.i64(i64 %356, i64 %361)
  %366 = add nuw i64 %361, 1
  %367 = icmp ult i64 %361, %356
  br i1 %367, label %369, label %368

368:                                              ; preds = %364
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %366, i64 noundef %356) #22
  unreachable

369:                                              ; preds = %364
  %370 = sub nuw i64 %356, %366
  %371 = getelementptr inbounds nuw i8, ptr %118, i64 %366
  %372 = icmp eq ptr %357, %118
  br i1 %372, label %373, label %375

373:                                              ; preds = %369
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  %374 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %374, ptr %8, align 8, !tbaa !8
  br label %534

375:                                              ; preds = %369
  %376 = call ptr @memchr(ptr noundef %118, i32 noundef 58, i64 noundef %365) #13
  %377 = icmp eq ptr %376, null
  %378 = ptrtoint ptr %376 to i64
  %379 = sub i64 %378, %360
  %380 = icmp eq i64 %379, -1
  %381 = or i1 %377, %380
  br i1 %381, label %517, label %382

382:                                              ; preds = %375
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  %383 = call i64 @llvm.umin.i64(i64 %365, i64 %379)
  %384 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %384, ptr %6, align 8, !tbaa !8
  %385 = icmp eq ptr %118, null
  br i1 %385, label %386, label %387

386:                                              ; preds = %382
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

387:                                              ; preds = %382
  %388 = icmp ugt i64 %383, 15
  br i1 %388, label %389, label %395

389:                                              ; preds = %387
  %390 = icmp ugt i64 %383, 9223372036854775806
  br i1 %390, label %391, label %392

391:                                              ; preds = %389
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

392:                                              ; preds = %389
  %393 = add nuw nsw i64 %383, 1
  %394 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %393) #23
  store ptr %394, ptr %6, align 8, !tbaa !18
  store i64 %383, ptr %384, align 8, !tbaa !17
  br label %395

395:                                              ; preds = %392, %387
  %396 = phi ptr [ %394, %392 ], [ %384, %387 ]
  switch i64 %383, label %399 [
    i64 1, label %397
    i64 0, label %400
  ]

397:                                              ; preds = %395
  %398 = load i8, ptr %118, align 1, !tbaa !17
  store i8 %398, ptr %396, align 1, !tbaa !17
  br label %400

399:                                              ; preds = %395
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %396, ptr nonnull align 1 %118, i64 %383, i1 false)
  br label %400

400:                                              ; preds = %399, %397, %395
  %401 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %383, ptr %401, align 8, !tbaa !14
  %402 = getelementptr inbounds nuw i8, ptr %396, i64 %383
  store i8 0, ptr %402, align 1, !tbaa !17
  %403 = load ptr, ptr %17, align 8, !tbaa !18
  %404 = icmp eq ptr %403, %18
  br i1 %404, label %405, label %410

405:                                              ; preds = %400
  %406 = load i64, ptr %19, align 8, !tbaa !14
  %407 = icmp ult i64 %406, 16
  call void @llvm.assume(i1 %407)
  %408 = load ptr, ptr %6, align 8, !tbaa !18
  %409 = icmp eq ptr %408, %384
  br i1 %409, label %413, label %428

410:                                              ; preds = %400
  %411 = load ptr, ptr %6, align 8, !tbaa !18
  %412 = icmp eq ptr %411, %384
  br i1 %412, label %413, label %426

413:                                              ; preds = %410, %405
  %414 = phi ptr [ %411, %410 ], [ %408, %405 ]
  %415 = load i64, ptr %401, align 8, !tbaa !14
  %416 = icmp ult i64 %415, 16
  call void @llvm.assume(i1 %416)
  switch i64 %415, label %419 [
    i64 0, label %420
    i64 1, label %417
  ]

417:                                              ; preds = %413
  %418 = load i8, ptr %414, align 1, !tbaa !17
  store i8 %418, ptr %403, align 1, !tbaa !17
  br label %420

419:                                              ; preds = %413
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %403, ptr align 1 %414, i64 %415, i1 false)
  br label %420

420:                                              ; preds = %419, %417, %413
  %421 = load i64, ptr %401, align 8, !tbaa !14
  %422 = icmp ult i64 %421, 9223372036854775807
  call void @llvm.assume(i1 %422)
  store i64 %421, ptr %19, align 8, !tbaa !14
  %423 = load ptr, ptr %17, align 8, !tbaa !18
  %424 = getelementptr inbounds nuw i8, ptr %423, i64 %421
  store i8 0, ptr %424, align 1, !tbaa !17
  %425 = load ptr, ptr %6, align 8, !tbaa !18
  br label %438

426:                                              ; preds = %410
  %427 = load i64, ptr %18, align 8, !tbaa !17
  br label %428

428:                                              ; preds = %426, %405
  %429 = phi ptr [ %411, %426 ], [ %408, %405 ]
  %430 = phi ptr [ %403, %426 ], [ null, %405 ]
  %431 = phi i64 [ %427, %426 ], [ undef, %405 ]
  store ptr %429, ptr %17, align 8, !tbaa !18
  %432 = load i64, ptr %401, align 8, !tbaa !14
  %433 = icmp ult i64 %432, 9223372036854775807
  call void @llvm.assume(i1 %433)
  store i64 %432, ptr %19, align 8, !tbaa !14
  %434 = load i64, ptr %384, align 8, !tbaa !17
  store i64 %434, ptr %18, align 8, !tbaa !17
  %435 = icmp eq ptr %430, null
  br i1 %435, label %437, label %436

436:                                              ; preds = %428
  store ptr %430, ptr %6, align 8, !tbaa !18
  store i64 %431, ptr %384, align 8, !tbaa !17
  br label %438

437:                                              ; preds = %428
  store ptr %384, ptr %6, align 8, !tbaa !18
  br label %438

438:                                              ; preds = %420, %436, %437
  %439 = phi ptr [ %425, %420 ], [ %430, %436 ], [ %384, %437 ]
  store i64 0, ptr %401, align 8, !tbaa !14
  store i8 0, ptr %439, align 1, !tbaa !17
  %440 = load ptr, ptr %6, align 8, !tbaa !18
  %441 = icmp eq ptr %440, %384
  br i1 %441, label %442, label %445

442:                                              ; preds = %438
  %443 = load i64, ptr %401, align 8, !tbaa !14
  %444 = icmp ult i64 %443, 16
  call void @llvm.assume(i1 %444)
  br label %448

445:                                              ; preds = %438
  %446 = load i64, ptr %384, align 8, !tbaa !17
  %447 = add i64 %446, 1
  call void @_ZdlPvm(ptr noundef %440, i64 noundef %447) #24
  br label %448

448:                                              ; preds = %442, %445
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #13
  %449 = add nuw i64 %379, 1
  %450 = icmp ult i64 %379, %365
  br i1 %450, label %452, label %451

451:                                              ; preds = %448
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %449, i64 noundef %365) #22
  unreachable

452:                                              ; preds = %448
  %453 = sub nuw i64 %365, %449
  %454 = getelementptr inbounds nuw i8, ptr %118, i64 %449
  %455 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %455, ptr %7, align 8, !tbaa !8
  %456 = icmp ugt i64 %453, 15
  br i1 %456, label %457, label %463

457:                                              ; preds = %452
  %458 = icmp ugt i64 %453, 9223372036854775806
  br i1 %458, label %459, label %460

459:                                              ; preds = %457
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

460:                                              ; preds = %457
  %461 = add nuw nsw i64 %453, 1
  %462 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %461) #23
  store ptr %462, ptr %7, align 8, !tbaa !18
  store i64 %453, ptr %455, align 8, !tbaa !17
  br label %463

463:                                              ; preds = %460, %452
  %464 = phi ptr [ %462, %460 ], [ %455, %452 ]
  switch i64 %453, label %467 [
    i64 1, label %465
    i64 0, label %468
  ]

465:                                              ; preds = %463
  %466 = load i8, ptr %454, align 1, !tbaa !17
  store i8 %466, ptr %464, align 1, !tbaa !17
  br label %468

467:                                              ; preds = %463
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %464, ptr nonnull align 1 %454, i64 %453, i1 false)
  br label %468

468:                                              ; preds = %467, %465, %463
  %469 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %453, ptr %469, align 8, !tbaa !14
  %470 = getelementptr inbounds nuw i8, ptr %464, i64 %453
  store i8 0, ptr %470, align 1, !tbaa !17
  %471 = load ptr, ptr %20, align 8, !tbaa !18
  %472 = icmp eq ptr %471, %21
  br i1 %472, label %473, label %478

473:                                              ; preds = %468
  %474 = load i64, ptr %22, align 8, !tbaa !14
  %475 = icmp ult i64 %474, 16
  call void @llvm.assume(i1 %475)
  %476 = load ptr, ptr %7, align 8, !tbaa !18
  %477 = icmp eq ptr %476, %455
  br i1 %477, label %481, label %496

478:                                              ; preds = %468
  %479 = load ptr, ptr %7, align 8, !tbaa !18
  %480 = icmp eq ptr %479, %455
  br i1 %480, label %481, label %494

481:                                              ; preds = %478, %473
  %482 = phi ptr [ %479, %478 ], [ %476, %473 ]
  %483 = load i64, ptr %469, align 8, !tbaa !14
  %484 = icmp ult i64 %483, 16
  call void @llvm.assume(i1 %484)
  switch i64 %483, label %487 [
    i64 0, label %488
    i64 1, label %485
  ]

485:                                              ; preds = %481
  %486 = load i8, ptr %482, align 1, !tbaa !17
  store i8 %486, ptr %471, align 1, !tbaa !17
  br label %488

487:                                              ; preds = %481
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %471, ptr align 1 %482, i64 %483, i1 false)
  br label %488

488:                                              ; preds = %487, %485, %481
  %489 = load i64, ptr %469, align 8, !tbaa !14
  %490 = icmp ult i64 %489, 9223372036854775807
  call void @llvm.assume(i1 %490)
  store i64 %489, ptr %22, align 8, !tbaa !14
  %491 = load ptr, ptr %20, align 8, !tbaa !18
  %492 = getelementptr inbounds nuw i8, ptr %491, i64 %489
  store i8 0, ptr %492, align 1, !tbaa !17
  %493 = load ptr, ptr %7, align 8, !tbaa !18
  br label %506

494:                                              ; preds = %478
  %495 = load i64, ptr %21, align 8, !tbaa !17
  br label %496

496:                                              ; preds = %494, %473
  %497 = phi ptr [ %479, %494 ], [ %476, %473 ]
  %498 = phi ptr [ %471, %494 ], [ null, %473 ]
  %499 = phi i64 [ %495, %494 ], [ undef, %473 ]
  store ptr %497, ptr %20, align 8, !tbaa !18
  %500 = load i64, ptr %469, align 8, !tbaa !14
  %501 = icmp ult i64 %500, 9223372036854775807
  call void @llvm.assume(i1 %501)
  store i64 %500, ptr %22, align 8, !tbaa !14
  %502 = load i64, ptr %455, align 8, !tbaa !17
  store i64 %502, ptr %21, align 8, !tbaa !17
  %503 = icmp eq ptr %498, null
  br i1 %503, label %505, label %504

504:                                              ; preds = %496
  store ptr %498, ptr %7, align 8, !tbaa !18
  store i64 %499, ptr %455, align 8, !tbaa !17
  br label %506

505:                                              ; preds = %496
  store ptr %455, ptr %7, align 8, !tbaa !18
  br label %506

506:                                              ; preds = %488, %504, %505
  %507 = phi ptr [ %493, %488 ], [ %498, %504 ], [ %455, %505 ]
  store i64 0, ptr %469, align 8, !tbaa !14
  store i8 0, ptr %507, align 1, !tbaa !17
  %508 = load ptr, ptr %7, align 8, !tbaa !18
  %509 = icmp eq ptr %508, %455
  br i1 %509, label %510, label %513

510:                                              ; preds = %506
  %511 = load i64, ptr %469, align 8, !tbaa !14
  %512 = icmp ult i64 %511, 16
  call void @llvm.assume(i1 %512)
  br label %516

513:                                              ; preds = %506
  %514 = load i64, ptr %455, align 8, !tbaa !17
  %515 = add i64 %514, 1
  call void @_ZdlPvm(ptr noundef %508, i64 noundef %515) #24
  br label %516

516:                                              ; preds = %510, %513
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  br label %585

517:                                              ; preds = %375
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  %518 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %518, ptr %8, align 8, !tbaa !8
  %519 = icmp eq ptr %118, null
  br i1 %519, label %520, label %521

520:                                              ; preds = %517
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

521:                                              ; preds = %517
  %522 = icmp ugt i64 %365, 15
  br i1 %522, label %523, label %529

523:                                              ; preds = %521
  %524 = icmp ugt i64 %365, 9223372036854775806
  br i1 %524, label %525, label %526

525:                                              ; preds = %523
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

526:                                              ; preds = %523
  %527 = add nuw nsw i64 %365, 1
  %528 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %527) #23
  store ptr %528, ptr %8, align 8, !tbaa !18
  store i64 %365, ptr %518, align 8, !tbaa !17
  br label %529

529:                                              ; preds = %526, %521
  %530 = phi ptr [ %528, %526 ], [ %518, %521 ]
  switch i64 %365, label %533 [
    i64 1, label %531
    i64 0, label %534
  ]

531:                                              ; preds = %529
  %532 = load i8, ptr %118, align 1, !tbaa !17
  store i8 %532, ptr %530, align 1, !tbaa !17
  br label %534

533:                                              ; preds = %529
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %530, ptr nonnull align 1 %118, i64 %365, i1 false)
  br label %534

534:                                              ; preds = %373, %533, %531, %529
  %535 = phi ptr [ %374, %373 ], [ %530, %533 ], [ %530, %531 ], [ %530, %529 ]
  %536 = phi ptr [ %374, %373 ], [ %518, %533 ], [ %518, %531 ], [ %518, %529 ]
  %537 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %365, ptr %537, align 8, !tbaa !14
  %538 = getelementptr inbounds nuw i8, ptr %535, i64 %365
  store i8 0, ptr %538, align 1, !tbaa !17
  %539 = load ptr, ptr %17, align 8, !tbaa !18
  %540 = icmp eq ptr %539, %18
  br i1 %540, label %541, label %546

541:                                              ; preds = %534
  %542 = load i64, ptr %19, align 8, !tbaa !14
  %543 = icmp ult i64 %542, 16
  call void @llvm.assume(i1 %543)
  %544 = load ptr, ptr %8, align 8, !tbaa !18
  %545 = icmp eq ptr %544, %536
  br i1 %545, label %549, label %564

546:                                              ; preds = %534
  %547 = load ptr, ptr %8, align 8, !tbaa !18
  %548 = icmp eq ptr %547, %536
  br i1 %548, label %549, label %562

549:                                              ; preds = %546, %541
  %550 = phi ptr [ %547, %546 ], [ %544, %541 ]
  %551 = load i64, ptr %537, align 8, !tbaa !14
  %552 = icmp ult i64 %551, 16
  call void @llvm.assume(i1 %552)
  switch i64 %551, label %555 [
    i64 0, label %556
    i64 1, label %553
  ]

553:                                              ; preds = %549
  %554 = load i8, ptr %550, align 1, !tbaa !17
  store i8 %554, ptr %539, align 1, !tbaa !17
  br label %556

555:                                              ; preds = %549
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %539, ptr align 1 %550, i64 %551, i1 false)
  br label %556

556:                                              ; preds = %555, %553, %549
  %557 = load i64, ptr %537, align 8, !tbaa !14
  %558 = icmp ult i64 %557, 9223372036854775807
  call void @llvm.assume(i1 %558)
  store i64 %557, ptr %19, align 8, !tbaa !14
  %559 = load ptr, ptr %17, align 8, !tbaa !18
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 %557
  store i8 0, ptr %560, align 1, !tbaa !17
  %561 = load ptr, ptr %8, align 8, !tbaa !18
  br label %574

562:                                              ; preds = %546
  %563 = load i64, ptr %18, align 8, !tbaa !17
  br label %564

564:                                              ; preds = %562, %541
  %565 = phi ptr [ %547, %562 ], [ %544, %541 ]
  %566 = phi ptr [ %539, %562 ], [ null, %541 ]
  %567 = phi i64 [ %563, %562 ], [ undef, %541 ]
  store ptr %565, ptr %17, align 8, !tbaa !18
  %568 = load i64, ptr %537, align 8, !tbaa !14
  %569 = icmp ult i64 %568, 9223372036854775807
  call void @llvm.assume(i1 %569)
  store i64 %568, ptr %19, align 8, !tbaa !14
  %570 = load i64, ptr %536, align 8, !tbaa !17
  store i64 %570, ptr %18, align 8, !tbaa !17
  %571 = icmp eq ptr %566, null
  br i1 %571, label %573, label %572

572:                                              ; preds = %564
  store ptr %566, ptr %8, align 8, !tbaa !18
  store i64 %567, ptr %536, align 8, !tbaa !17
  br label %574

573:                                              ; preds = %564
  store ptr %536, ptr %8, align 8, !tbaa !18
  br label %574

574:                                              ; preds = %556, %572, %573
  %575 = phi ptr [ %561, %556 ], [ %566, %572 ], [ %536, %573 ]
  store i64 0, ptr %537, align 8, !tbaa !14
  store i8 0, ptr %575, align 1, !tbaa !17
  %576 = load ptr, ptr %8, align 8, !tbaa !18
  %577 = icmp eq ptr %576, %536
  br i1 %577, label %578, label %581

578:                                              ; preds = %574
  %579 = load i64, ptr %537, align 8, !tbaa !14
  %580 = icmp ult i64 %579, 16
  call void @llvm.assume(i1 %580)
  br label %584

581:                                              ; preds = %574
  %582 = load i64, ptr %536, align 8, !tbaa !17
  %583 = add i64 %582, 1
  call void @_ZdlPvm(ptr noundef %576, i64 noundef %583) #24
  br label %584

584:                                              ; preds = %578, %581
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  br label %585

585:                                              ; preds = %516, %584
  %586 = icmp eq i64 %370, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %1, %113, %195, %274, %353, %585
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #13
  %588 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %588, ptr %11, align 8, !tbaa !8
  br label %754

589:                                              ; preds = %355, %585
  %590 = phi ptr [ %371, %585 ], [ %118, %355 ]
  %591 = phi i64 [ %370, %585 ], [ %356, %355 ]
  br label %592

592:                                              ; preds = %595, %589
  %593 = phi i64 [ %591, %589 ], [ %596, %595 ]
  %594 = icmp eq i64 %593, 0
  br i1 %594, label %736, label %595

595:                                              ; preds = %592
  %596 = add i64 %593, -1
  %597 = getelementptr inbounds nuw i8, ptr %590, i64 %596
  %598 = load i8, ptr %597, align 1, !tbaa !17
  %599 = icmp eq i8 %598, 58
  br i1 %599, label %600, label %592, !llvm.loop !26

600:                                              ; preds = %595
  %601 = call ptr @memchr(ptr noundef nonnull %590, i32 noundef 93, i64 noundef %591) #13
  %602 = icmp eq ptr %601, null
  %603 = ptrtoint ptr %601 to i64
  %604 = ptrtoint ptr %590 to i64
  %605 = sub i64 %603, %604
  %606 = icmp eq i64 %605, -1
  %607 = select i1 %602, i1 true, i1 %606
  br i1 %607, label %610, label %608

608:                                              ; preds = %600
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #13
  %609 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %609, ptr %11, align 8, !tbaa !8
  br label %740

610:                                              ; preds = %600
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #13
  %611 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %611, ptr %9, align 8, !tbaa !8
  %612 = icmp ugt i64 %596, 15
  br i1 %612, label %613, label %618

613:                                              ; preds = %610
  %614 = icmp slt i64 %593, 1
  br i1 %614, label %615, label %616

615:                                              ; preds = %613
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

616:                                              ; preds = %613
  %617 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %593) #23
  store ptr %617, ptr %9, align 8, !tbaa !18
  store i64 %596, ptr %611, align 8, !tbaa !17
  br label %618

618:                                              ; preds = %616, %610
  %619 = phi ptr [ %617, %616 ], [ %611, %610 ]
  switch i64 %593, label %622 [
    i64 2, label %620
    i64 1, label %623
  ]

620:                                              ; preds = %618
  %621 = load i8, ptr %590, align 1, !tbaa !17
  store i8 %621, ptr %619, align 1, !tbaa !17
  br label %623

622:                                              ; preds = %618
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %619, ptr nonnull align 1 %590, i64 %596, i1 false)
  br label %623

623:                                              ; preds = %622, %620, %618
  %624 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %596, ptr %624, align 8, !tbaa !14
  %625 = getelementptr inbounds nuw i8, ptr %619, i64 %596
  store i8 0, ptr %625, align 1, !tbaa !17
  %626 = load ptr, ptr %23, align 8, !tbaa !18
  %627 = icmp eq ptr %626, %24
  br i1 %627, label %628, label %633

628:                                              ; preds = %623
  %629 = load i64, ptr %25, align 8, !tbaa !14
  %630 = icmp ult i64 %629, 16
  call void @llvm.assume(i1 %630)
  %631 = load ptr, ptr %9, align 8, !tbaa !18
  %632 = icmp eq ptr %631, %611
  br i1 %632, label %636, label %651

633:                                              ; preds = %623
  %634 = load ptr, ptr %9, align 8, !tbaa !18
  %635 = icmp eq ptr %634, %611
  br i1 %635, label %636, label %649

636:                                              ; preds = %633, %628
  %637 = phi ptr [ %634, %633 ], [ %631, %628 ]
  %638 = load i64, ptr %624, align 8, !tbaa !14
  %639 = icmp ult i64 %638, 16
  call void @llvm.assume(i1 %639)
  switch i64 %638, label %642 [
    i64 0, label %643
    i64 1, label %640
  ]

640:                                              ; preds = %636
  %641 = load i8, ptr %637, align 1, !tbaa !17
  store i8 %641, ptr %626, align 1, !tbaa !17
  br label %643

642:                                              ; preds = %636
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %626, ptr align 1 %637, i64 %638, i1 false)
  br label %643

643:                                              ; preds = %642, %640, %636
  %644 = load i64, ptr %624, align 8, !tbaa !14
  %645 = icmp ult i64 %644, 9223372036854775807
  call void @llvm.assume(i1 %645)
  store i64 %644, ptr %25, align 8, !tbaa !14
  %646 = load ptr, ptr %23, align 8, !tbaa !18
  %647 = getelementptr inbounds nuw i8, ptr %646, i64 %644
  store i8 0, ptr %647, align 1, !tbaa !17
  %648 = load ptr, ptr %9, align 8, !tbaa !18
  br label %661

649:                                              ; preds = %633
  %650 = load i64, ptr %24, align 8, !tbaa !17
  br label %651

651:                                              ; preds = %649, %628
  %652 = phi ptr [ %634, %649 ], [ %631, %628 ]
  %653 = phi ptr [ %626, %649 ], [ null, %628 ]
  %654 = phi i64 [ %650, %649 ], [ undef, %628 ]
  store ptr %652, ptr %23, align 8, !tbaa !18
  %655 = load i64, ptr %624, align 8, !tbaa !14
  %656 = icmp ult i64 %655, 9223372036854775807
  call void @llvm.assume(i1 %656)
  store i64 %655, ptr %25, align 8, !tbaa !14
  %657 = load i64, ptr %611, align 8, !tbaa !17
  store i64 %657, ptr %24, align 8, !tbaa !17
  %658 = icmp eq ptr %653, null
  br i1 %658, label %660, label %659

659:                                              ; preds = %651
  store ptr %653, ptr %9, align 8, !tbaa !18
  store i64 %654, ptr %611, align 8, !tbaa !17
  br label %661

660:                                              ; preds = %651
  store ptr %611, ptr %9, align 8, !tbaa !18
  br label %661

661:                                              ; preds = %643, %659, %660
  %662 = phi ptr [ %648, %643 ], [ %653, %659 ], [ %611, %660 ]
  store i64 0, ptr %624, align 8, !tbaa !14
  store i8 0, ptr %662, align 1, !tbaa !17
  %663 = load ptr, ptr %9, align 8, !tbaa !18
  %664 = icmp eq ptr %663, %611
  br i1 %664, label %665, label %668

665:                                              ; preds = %661
  %666 = load i64, ptr %624, align 8, !tbaa !14
  %667 = icmp ult i64 %666, 16
  call void @llvm.assume(i1 %667)
  br label %671

668:                                              ; preds = %661
  %669 = load i64, ptr %611, align 8, !tbaa !17
  %670 = add i64 %669, 1
  call void @_ZdlPvm(ptr noundef %663, i64 noundef %670) #24
  br label %671

671:                                              ; preds = %665, %668
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #13
  %672 = sub nuw i64 %591, %593
  %673 = getelementptr inbounds nuw i8, ptr %590, i64 %593
  %674 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %674, ptr %10, align 8, !tbaa !8
  %675 = icmp ugt i64 %672, 15
  br i1 %675, label %676, label %682

676:                                              ; preds = %671
  %677 = icmp ugt i64 %672, 9223372036854775806
  br i1 %677, label %678, label %679

678:                                              ; preds = %676
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

679:                                              ; preds = %676
  %680 = add nuw nsw i64 %672, 1
  %681 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %680) #23
  store ptr %681, ptr %10, align 8, !tbaa !18
  store i64 %672, ptr %674, align 8, !tbaa !17
  br label %682

682:                                              ; preds = %679, %671
  %683 = phi ptr [ %681, %679 ], [ %674, %671 ]
  switch i64 %672, label %686 [
    i64 1, label %684
    i64 0, label %687
  ]

684:                                              ; preds = %682
  %685 = load i8, ptr %673, align 1, !tbaa !17
  store i8 %685, ptr %683, align 1, !tbaa !17
  br label %687

686:                                              ; preds = %682
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %683, ptr nonnull align 1 %673, i64 %672, i1 false)
  br label %687

687:                                              ; preds = %686, %684, %682
  %688 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %672, ptr %688, align 8, !tbaa !14
  %689 = getelementptr inbounds nuw i8, ptr %683, i64 %672
  store i8 0, ptr %689, align 1, !tbaa !17
  %690 = load ptr, ptr %26, align 8, !tbaa !18
  %691 = icmp eq ptr %690, %27
  br i1 %691, label %692, label %697

692:                                              ; preds = %687
  %693 = load i64, ptr %28, align 8, !tbaa !14
  %694 = icmp ult i64 %693, 16
  call void @llvm.assume(i1 %694)
  %695 = load ptr, ptr %10, align 8, !tbaa !18
  %696 = icmp eq ptr %695, %674
  br i1 %696, label %700, label %715

697:                                              ; preds = %687
  %698 = load ptr, ptr %10, align 8, !tbaa !18
  %699 = icmp eq ptr %698, %674
  br i1 %699, label %700, label %713

700:                                              ; preds = %697, %692
  %701 = phi ptr [ %698, %697 ], [ %695, %692 ]
  %702 = load i64, ptr %688, align 8, !tbaa !14
  %703 = icmp ult i64 %702, 16
  call void @llvm.assume(i1 %703)
  switch i64 %702, label %706 [
    i64 0, label %707
    i64 1, label %704
  ]

704:                                              ; preds = %700
  %705 = load i8, ptr %701, align 1, !tbaa !17
  store i8 %705, ptr %690, align 1, !tbaa !17
  br label %707

706:                                              ; preds = %700
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %690, ptr align 1 %701, i64 %702, i1 false)
  br label %707

707:                                              ; preds = %706, %704, %700
  %708 = load i64, ptr %688, align 8, !tbaa !14
  %709 = icmp ult i64 %708, 9223372036854775807
  call void @llvm.assume(i1 %709)
  store i64 %708, ptr %28, align 8, !tbaa !14
  %710 = load ptr, ptr %26, align 8, !tbaa !18
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 %708
  store i8 0, ptr %711, align 1, !tbaa !17
  %712 = load ptr, ptr %10, align 8, !tbaa !18
  br label %725

713:                                              ; preds = %697
  %714 = load i64, ptr %27, align 8, !tbaa !17
  br label %715

715:                                              ; preds = %713, %692
  %716 = phi ptr [ %698, %713 ], [ %695, %692 ]
  %717 = phi ptr [ %690, %713 ], [ null, %692 ]
  %718 = phi i64 [ %714, %713 ], [ undef, %692 ]
  store ptr %716, ptr %26, align 8, !tbaa !18
  %719 = load i64, ptr %688, align 8, !tbaa !14
  %720 = icmp ult i64 %719, 9223372036854775807
  call void @llvm.assume(i1 %720)
  store i64 %719, ptr %28, align 8, !tbaa !14
  %721 = load i64, ptr %674, align 8, !tbaa !17
  store i64 %721, ptr %27, align 8, !tbaa !17
  %722 = icmp eq ptr %717, null
  br i1 %722, label %724, label %723

723:                                              ; preds = %715
  store ptr %717, ptr %10, align 8, !tbaa !18
  store i64 %718, ptr %674, align 8, !tbaa !17
  br label %725

724:                                              ; preds = %715
  store ptr %674, ptr %10, align 8, !tbaa !18
  br label %725

725:                                              ; preds = %707, %723, %724
  %726 = phi ptr [ %712, %707 ], [ %717, %723 ], [ %674, %724 ]
  store i64 0, ptr %688, align 8, !tbaa !14
  store i8 0, ptr %726, align 1, !tbaa !17
  %727 = load ptr, ptr %10, align 8, !tbaa !18
  %728 = icmp eq ptr %727, %674
  br i1 %728, label %729, label %732

729:                                              ; preds = %725
  %730 = load i64, ptr %688, align 8, !tbaa !14
  %731 = icmp ult i64 %730, 16
  call void @llvm.assume(i1 %731)
  br label %735

732:                                              ; preds = %725
  %733 = load i64, ptr %674, align 8, !tbaa !17
  %734 = add i64 %733, 1
  call void @_ZdlPvm(ptr noundef %727, i64 noundef %734) #24
  br label %735

735:                                              ; preds = %729, %732
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #13
  br label %806

736:                                              ; preds = %592
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #13
  %737 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %737, ptr %11, align 8, !tbaa !8
  %738 = icmp eq ptr %590, null
  br i1 %738, label %739, label %740

739:                                              ; preds = %736
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

740:                                              ; preds = %608, %736
  %741 = phi ptr [ %609, %608 ], [ %737, %736 ]
  %742 = icmp ugt i64 %591, 15
  br i1 %742, label %743, label %749

743:                                              ; preds = %740
  %744 = icmp ugt i64 %591, 9223372036854775806
  br i1 %744, label %745, label %746

745:                                              ; preds = %743
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

746:                                              ; preds = %743
  %747 = add nuw nsw i64 %591, 1
  %748 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %747) #23
  store ptr %748, ptr %11, align 8, !tbaa !18
  store i64 %591, ptr %741, align 8, !tbaa !17
  br label %749

749:                                              ; preds = %746, %740
  %750 = phi ptr [ %748, %746 ], [ %741, %740 ]
  switch i64 %591, label %753 [
    i64 1, label %751
    i64 0, label %754
  ]

751:                                              ; preds = %749
  %752 = load i8, ptr %590, align 1, !tbaa !17
  store i8 %752, ptr %750, align 1, !tbaa !17
  br label %754

753:                                              ; preds = %749
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %750, ptr nonnull align 1 %590, i64 %591, i1 false)
  br label %754

754:                                              ; preds = %753, %751, %749, %587
  %755 = phi ptr [ %588, %587 ], [ %750, %749 ], [ %750, %751 ], [ %750, %753 ]
  %756 = phi ptr [ %588, %587 ], [ %741, %749 ], [ %741, %751 ], [ %741, %753 ]
  %757 = phi i64 [ 0, %587 ], [ %591, %749 ], [ 1, %751 ], [ %591, %753 ]
  %758 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %757, ptr %758, align 8, !tbaa !14
  %759 = getelementptr inbounds nuw i8, ptr %755, i64 %757
  store i8 0, ptr %759, align 1, !tbaa !17
  %760 = load ptr, ptr %23, align 8, !tbaa !18
  %761 = icmp eq ptr %760, %24
  br i1 %761, label %762, label %767

762:                                              ; preds = %754
  %763 = load i64, ptr %25, align 8, !tbaa !14
  %764 = icmp ult i64 %763, 16
  call void @llvm.assume(i1 %764)
  %765 = load ptr, ptr %11, align 8, !tbaa !18
  %766 = icmp eq ptr %765, %756
  br i1 %766, label %770, label %785

767:                                              ; preds = %754
  %768 = load ptr, ptr %11, align 8, !tbaa !18
  %769 = icmp eq ptr %768, %756
  br i1 %769, label %770, label %783

770:                                              ; preds = %767, %762
  %771 = phi ptr [ %768, %767 ], [ %765, %762 ]
  %772 = load i64, ptr %758, align 8, !tbaa !14
  %773 = icmp ult i64 %772, 16
  call void @llvm.assume(i1 %773)
  switch i64 %772, label %776 [
    i64 0, label %777
    i64 1, label %774
  ]

774:                                              ; preds = %770
  %775 = load i8, ptr %771, align 1, !tbaa !17
  store i8 %775, ptr %760, align 1, !tbaa !17
  br label %777

776:                                              ; preds = %770
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %760, ptr align 1 %771, i64 %772, i1 false)
  br label %777

777:                                              ; preds = %776, %774, %770
  %778 = load i64, ptr %758, align 8, !tbaa !14
  %779 = icmp ult i64 %778, 9223372036854775807
  call void @llvm.assume(i1 %779)
  store i64 %778, ptr %25, align 8, !tbaa !14
  %780 = load ptr, ptr %23, align 8, !tbaa !18
  %781 = getelementptr inbounds nuw i8, ptr %780, i64 %778
  store i8 0, ptr %781, align 1, !tbaa !17
  %782 = load ptr, ptr %11, align 8, !tbaa !18
  br label %795

783:                                              ; preds = %767
  %784 = load i64, ptr %24, align 8, !tbaa !17
  br label %785

785:                                              ; preds = %783, %762
  %786 = phi ptr [ %768, %783 ], [ %765, %762 ]
  %787 = phi ptr [ %760, %783 ], [ null, %762 ]
  %788 = phi i64 [ %784, %783 ], [ undef, %762 ]
  store ptr %786, ptr %23, align 8, !tbaa !18
  %789 = load i64, ptr %758, align 8, !tbaa !14
  %790 = icmp ult i64 %789, 9223372036854775807
  call void @llvm.assume(i1 %790)
  store i64 %789, ptr %25, align 8, !tbaa !14
  %791 = load i64, ptr %756, align 8, !tbaa !17
  store i64 %791, ptr %24, align 8, !tbaa !17
  %792 = icmp eq ptr %787, null
  br i1 %792, label %794, label %793

793:                                              ; preds = %785
  store ptr %787, ptr %11, align 8, !tbaa !18
  store i64 %788, ptr %756, align 8, !tbaa !17
  br label %795

794:                                              ; preds = %785
  store ptr %756, ptr %11, align 8, !tbaa !18
  br label %795

795:                                              ; preds = %777, %793, %794
  %796 = phi ptr [ %782, %777 ], [ %787, %793 ], [ %756, %794 ]
  store i64 0, ptr %758, align 8, !tbaa !14
  store i8 0, ptr %796, align 1, !tbaa !17
  %797 = load ptr, ptr %11, align 8, !tbaa !18
  %798 = icmp eq ptr %797, %756
  br i1 %798, label %799, label %802

799:                                              ; preds = %795
  %800 = load i64, ptr %758, align 8, !tbaa !14
  %801 = icmp ult i64 %800, 16
  call void @llvm.assume(i1 %801)
  br label %805

802:                                              ; preds = %795
  %803 = load i64, ptr %756, align 8, !tbaa !17
  %804 = add i64 %803, 1
  call void @_ZdlPvm(ptr noundef %797, i64 noundef %804) #24
  br label %805

805:                                              ; preds = %799, %802
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #13
  br label %806

806:                                              ; preds = %805, %735
  ret ptr %12
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1922sys__native_url_schemeEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib10url_schemeEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10url_schemeEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #23
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !27

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !28
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !35, !noalias !36
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !39, !noalias !36
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !40, !noalias !36
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #24
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #24
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1924sys__native_url_usernameEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_usernameEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12url_usernameEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #23
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !27

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !28
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !35, !noalias !42
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !39, !noalias !42
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !40, !noalias !42
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #24
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #24
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1924sys__native_url_passwordEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_passwordEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12url_passwordEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #23
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !27

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !28
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !35, !noalias !45
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !39, !noalias !45
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !40, !noalias !45
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #24
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #24
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1920sys__native_url_hostEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_hostEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib8url_hostEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #23
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !27

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !28
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !35, !noalias !48
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !39, !noalias !48
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !40, !noalias !48
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #24
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #24
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1920sys__native_url_portEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_portEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib8url_portEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #23
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !27

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !28
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !35, !noalias !51
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !39, !noalias !51
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !40, !noalias !51
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #24
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #24
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1920sys__native_url_pathEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_pathEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib8url_pathEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #23
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !27

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !28
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !35, !noalias !54
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !39, !noalias !54
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !40, !noalias !54
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #24
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #24
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1921sys__native_url_queryEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib9url_queryEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib9url_queryEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #23
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !27

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !28
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !35, !noalias !57
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !39, !noalias !57
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !40, !noalias !57
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #24
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #24
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1924sys__native_url_fragmentEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_fragmentEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12url_fragmentEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !19
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #23
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !27

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !28
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !28
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !35, !noalias !60
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !39, !noalias !60
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !40, !noalias !60
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #24
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #24
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1920sys__native_url_joinEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %13 = tail call noundef ptr @_ZN12__apo_stdlib8url_joinESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret ptr %13
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib8url_joinESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::basic_string_view", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  store i64 %2, ptr %8, align 8, !tbaa !63
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %23, align 8, !tbaa !64
  %24 = icmp ult i64 %2, 3
  br i1 %24, label %133, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 %2
  %27 = ptrtoint ptr %26 to i64
  br label %28

28:                                               ; preds = %37, %25
  %29 = phi i64 [ %2, %25 ], [ %40, %37 ]
  %30 = phi ptr [ %3, %25 ], [ %38, %37 ]
  %31 = add i64 %29, -2
  %32 = tail call ptr @memchr(ptr noundef %30, i32 noundef 58, i64 noundef %31) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %133, label %34

34:                                               ; preds = %28
  %35 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %32, ptr noundef nonnull dereferenceable(3) @.str, i64 3)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %27, %39
  %41 = icmp ult i64 %40, 3
  br i1 %41, label %133, label %28, !llvm.loop !24

42:                                               ; preds = %34
  %43 = ptrtoint ptr %32 to i64
  %44 = ptrtoint ptr %3 to i64
  %45 = sub i64 %43, %44
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %133, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %48, ptr %9, align 8, !tbaa !8
  %49 = icmp eq ptr %3, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

51:                                               ; preds = %47
  %52 = icmp ugt i64 %2, 15
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = icmp ugt i64 %2, 9223372036854775806
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

56:                                               ; preds = %53
  %57 = add nuw nsw i64 %2, 1
  %58 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %57) #23
  store ptr %58, ptr %9, align 8, !tbaa !18
  store i64 %2, ptr %48, align 8, !tbaa !17
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi ptr [ %58, %56 ], [ %48, %51 ]
  switch i64 %2, label %63 [
    i64 1, label %61
    i64 0, label %64
  ]

61:                                               ; preds = %59
  %62 = load i8, ptr %3, align 1, !tbaa !17
  store i8 %62, ptr %60, align 1, !tbaa !17
  br label %64

63:                                               ; preds = %59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %60, ptr nonnull align 1 %3, i64 %2, i1 false)
  br label %64

64:                                               ; preds = %63, %61, %59
  %65 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %65, align 8, !tbaa !14
  %66 = getelementptr inbounds nuw i8, ptr %60, i64 %2
  store i8 0, ptr %66, align 1, !tbaa !17
  %67 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %72, !prof !27

69:                                               ; preds = %64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %70 unwind label %123

70:                                               ; preds = %69
  %71 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %72

72:                                               ; preds = %70, %64
  %73 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 48
  %75 = load ptr, ptr %74, align 8, !tbaa !28
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 64
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %77, i64 -32
  %79 = icmp eq ptr %75, %78
  br i1 %79, label %97, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds nuw i8, ptr %75, i64 16
  store ptr %81, ptr %75, align 8, !tbaa !8
  %82 = load ptr, ptr %9, align 8, !tbaa !18
  %83 = icmp eq ptr %82, %48
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i64, ptr %65, align 8, !tbaa !14
  %86 = icmp ult i64 %85, 16
  call void @llvm.assume(i1 %86)
  %87 = add nuw nsw i64 %85, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %81, ptr noundef nonnull align 8 dereferenceable(1) %48, i64 %87, i1 false)
  br label %91

88:                                               ; preds = %80
  store ptr %82, ptr %75, align 8, !tbaa !18
  %89 = load i64, ptr %48, align 8, !tbaa !17
  store i64 %89, ptr %81, align 8, !tbaa !17
  %90 = load i64, ptr %65, align 8, !tbaa !14
  br label %91

91:                                               ; preds = %88, %84
  %92 = phi i64 [ %90, %88 ], [ %85, %84 ]
  %93 = icmp ult i64 %92, 9223372036854775807
  call void @llvm.assume(i1 %93)
  %94 = getelementptr inbounds nuw i8, ptr %75, i64 8
  store i64 %92, ptr %94, align 8, !tbaa !14
  store ptr %48, ptr %9, align 8, !tbaa !18
  store i64 0, ptr %65, align 8, !tbaa !14
  store i8 0, ptr %48, align 8, !tbaa !17
  %95 = load ptr, ptr %74, align 8, !tbaa !28
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 32
  store ptr %96, ptr %74, align 8, !tbaa !28
  br label %100

97:                                               ; preds = %72
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %73, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %98 unwind label %123

98:                                               ; preds = %97
  %99 = load ptr, ptr %74, align 8, !tbaa !35, !noalias !65
  br label %100

100:                                              ; preds = %98, %91
  %101 = phi ptr [ %96, %91 ], [ %99, %98 ]
  %102 = getelementptr inbounds nuw i8, ptr %73, i64 56
  %103 = load ptr, ptr %102, align 8, !tbaa !39, !noalias !65
  %104 = icmp eq ptr %101, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = getelementptr inbounds nuw i8, ptr %73, i64 72
  %107 = load ptr, ptr %106, align 8, !tbaa !40, !noalias !65
  %108 = getelementptr inbounds i8, ptr %107, i64 -8
  %109 = load ptr, ptr %108, align 8, !tbaa !41
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 512
  br label %111

111:                                              ; preds = %105, %100
  %112 = phi ptr [ %110, %105 ], [ %101, %100 ]
  %113 = getelementptr inbounds i8, ptr %112, i64 -32
  %114 = load ptr, ptr %113, align 8, !tbaa !18
  %115 = load ptr, ptr %9, align 8, !tbaa !18
  %116 = icmp eq ptr %115, %48
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i64, ptr %65, align 8, !tbaa !14
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %948

120:                                              ; preds = %111
  %121 = load i64, ptr %48, align 8, !tbaa !17
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %115, i64 noundef %122) #24
  br label %948

123:                                              ; preds = %97, %69
  %124 = landingpad { ptr, i32 }
          cleanup
  %125 = load ptr, ptr %9, align 8, !tbaa !18
  %126 = icmp eq ptr %125, %48
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, ptr %65, align 8, !tbaa !14
  %129 = icmp ult i64 %128, 16
  call void @llvm.assume(i1 %129)
  br label %950

130:                                              ; preds = %123
  %131 = load i64, ptr %48, align 8, !tbaa !17
  %132 = add i64 %131, 1
  call void @_ZdlPvm(ptr noundef %125, i64 noundef %132) #24
  br label %950

133:                                              ; preds = %28, %37, %4, %42
  %134 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %134, ptr %10, align 8, !tbaa !8
  %135 = icmp eq ptr %1, null
  %136 = icmp ne i64 %0, 0
  %137 = and i1 %136, %135
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

139:                                              ; preds = %133
  %140 = icmp ugt i64 %0, 15
  br i1 %140, label %141, label %147

141:                                              ; preds = %139
  %142 = icmp ugt i64 %0, 9223372036854775806
  br i1 %142, label %143, label %144

143:                                              ; preds = %141
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

144:                                              ; preds = %141
  %145 = add nuw nsw i64 %0, 1
  %146 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %145) #23
  store ptr %146, ptr %10, align 8, !tbaa !18
  store i64 %0, ptr %134, align 8, !tbaa !17
  br label %147

147:                                              ; preds = %144, %139
  %148 = phi ptr [ %146, %144 ], [ %134, %139 ]
  switch i64 %0, label %151 [
    i64 1, label %149
    i64 0, label %152
  ]

149:                                              ; preds = %147
  %150 = load i8, ptr %1, align 1, !tbaa !17
  store i8 %150, ptr %148, align 1, !tbaa !17
  br label %152

151:                                              ; preds = %147
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %148, ptr align 1 %1, i64 %0, i1 false)
  br label %152

152:                                              ; preds = %151, %149, %147
  %153 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %0, ptr %153, align 8, !tbaa !14
  %154 = getelementptr inbounds nuw i8, ptr %148, i64 %0
  store i8 0, ptr %154, align 1, !tbaa !17
  %155 = invoke noundef ptr @_ZN12__apo_stdlib9url_parseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %10)
          to label %156 unwind label %255

156:                                              ; preds = %152
  %157 = icmp eq ptr %155, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds nuw i8, ptr %155, i64 8
  %160 = load i32, ptr %159, align 8, !tbaa !19
  %161 = icmp eq i32 %160, 17
  %162 = select i1 %161, ptr %155, ptr null
  br label %163

163:                                              ; preds = %156, %158
  %164 = phi ptr [ null, %156 ], [ %162, %158 ]
  %165 = load ptr, ptr %10, align 8, !tbaa !18
  %166 = icmp eq ptr %165, %134
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i64, ptr %153, align 8, !tbaa !14
  %169 = icmp ult i64 %168, 16
  call void @llvm.assume(i1 %169)
  br label %173

170:                                              ; preds = %163
  %171 = load i64, ptr %134, align 8, !tbaa !17
  %172 = add i64 %171, 1
  call void @_ZdlPvm(ptr noundef %165, i64 noundef %172) #24
  br label %173

173:                                              ; preds = %167, %170
  %174 = icmp eq ptr %164, null
  br i1 %174, label %175, label %275

175:                                              ; preds = %173
  %176 = load i64, ptr %8, align 8, !tbaa !63
  %177 = load ptr, ptr %23, align 8, !tbaa !64
  %178 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %178, ptr %11, align 8, !tbaa !8
  %179 = icmp eq ptr %177, null
  %180 = icmp ne i64 %176, 0
  %181 = and i1 %180, %179
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

183:                                              ; preds = %175
  %184 = icmp ugt i64 %176, 15
  br i1 %184, label %185, label %191

185:                                              ; preds = %183
  %186 = icmp ugt i64 %176, 9223372036854775806
  br i1 %186, label %187, label %188

187:                                              ; preds = %185
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

188:                                              ; preds = %185
  %189 = add nuw nsw i64 %176, 1
  %190 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %189) #23
  store ptr %190, ptr %11, align 8, !tbaa !18
  store i64 %176, ptr %178, align 8, !tbaa !17
  br label %191

191:                                              ; preds = %188, %183
  %192 = phi ptr [ %190, %188 ], [ %178, %183 ]
  switch i64 %176, label %195 [
    i64 1, label %193
    i64 0, label %196
  ]

193:                                              ; preds = %191
  %194 = load i8, ptr %177, align 1, !tbaa !17
  store i8 %194, ptr %192, align 1, !tbaa !17
  br label %196

195:                                              ; preds = %191
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %192, ptr align 1 %177, i64 %176, i1 false)
  br label %196

196:                                              ; preds = %195, %193, %191
  %197 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %176, ptr %197, align 8, !tbaa !14
  %198 = getelementptr inbounds nuw i8, ptr %192, i64 %176
  store i8 0, ptr %198, align 1, !tbaa !17
  %199 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %204, !prof !27

201:                                              ; preds = %196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %202 unwind label %265

202:                                              ; preds = %201
  %203 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %204

204:                                              ; preds = %202, %196
  %205 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 48
  %207 = load ptr, ptr %206, align 8, !tbaa !28
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 64
  %209 = load ptr, ptr %208, align 8, !tbaa !34
  %210 = getelementptr inbounds i8, ptr %209, i64 -32
  %211 = icmp eq ptr %207, %210
  br i1 %211, label %229, label %212

212:                                              ; preds = %204
  %213 = getelementptr inbounds nuw i8, ptr %207, i64 16
  store ptr %213, ptr %207, align 8, !tbaa !8
  %214 = load ptr, ptr %11, align 8, !tbaa !18
  %215 = icmp eq ptr %214, %178
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = load i64, ptr %197, align 8, !tbaa !14
  %218 = icmp ult i64 %217, 16
  call void @llvm.assume(i1 %218)
  %219 = add nuw nsw i64 %217, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %213, ptr noundef nonnull align 8 dereferenceable(1) %178, i64 %219, i1 false)
  br label %223

220:                                              ; preds = %212
  store ptr %214, ptr %207, align 8, !tbaa !18
  %221 = load i64, ptr %178, align 8, !tbaa !17
  store i64 %221, ptr %213, align 8, !tbaa !17
  %222 = load i64, ptr %197, align 8, !tbaa !14
  br label %223

223:                                              ; preds = %220, %216
  %224 = phi i64 [ %222, %220 ], [ %217, %216 ]
  %225 = icmp ult i64 %224, 9223372036854775807
  call void @llvm.assume(i1 %225)
  %226 = getelementptr inbounds nuw i8, ptr %207, i64 8
  store i64 %224, ptr %226, align 8, !tbaa !14
  store ptr %178, ptr %11, align 8, !tbaa !18
  store i64 0, ptr %197, align 8, !tbaa !14
  store i8 0, ptr %178, align 8, !tbaa !17
  %227 = load ptr, ptr %206, align 8, !tbaa !28
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 32
  store ptr %228, ptr %206, align 8, !tbaa !28
  br label %232

229:                                              ; preds = %204
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %205, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %230 unwind label %265

230:                                              ; preds = %229
  %231 = load ptr, ptr %206, align 8, !tbaa !35, !noalias !68
  br label %232

232:                                              ; preds = %230, %223
  %233 = phi ptr [ %228, %223 ], [ %231, %230 ]
  %234 = getelementptr inbounds nuw i8, ptr %205, i64 56
  %235 = load ptr, ptr %234, align 8, !tbaa !39, !noalias !68
  %236 = icmp eq ptr %233, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = getelementptr inbounds nuw i8, ptr %205, i64 72
  %239 = load ptr, ptr %238, align 8, !tbaa !40, !noalias !68
  %240 = getelementptr inbounds i8, ptr %239, i64 -8
  %241 = load ptr, ptr %240, align 8, !tbaa !41
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 512
  br label %243

243:                                              ; preds = %237, %232
  %244 = phi ptr [ %242, %237 ], [ %233, %232 ]
  %245 = getelementptr inbounds i8, ptr %244, i64 -32
  %246 = load ptr, ptr %245, align 8, !tbaa !18
  %247 = load ptr, ptr %11, align 8, !tbaa !18
  %248 = icmp eq ptr %247, %178
  br i1 %248, label %249, label %252

249:                                              ; preds = %243
  %250 = load i64, ptr %197, align 8, !tbaa !14
  %251 = icmp ult i64 %250, 16
  call void @llvm.assume(i1 %251)
  br label %948

252:                                              ; preds = %243
  %253 = load i64, ptr %178, align 8, !tbaa !17
  %254 = add i64 %253, 1
  call void @_ZdlPvm(ptr noundef %247, i64 noundef %254) #24
  br label %948

255:                                              ; preds = %152
  %256 = landingpad { ptr, i32 }
          cleanup
  %257 = load ptr, ptr %10, align 8, !tbaa !18
  %258 = icmp eq ptr %257, %134
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load i64, ptr %153, align 8, !tbaa !14
  %261 = icmp ult i64 %260, 16
  call void @llvm.assume(i1 %261)
  br label %950

262:                                              ; preds = %255
  %263 = load i64, ptr %134, align 8, !tbaa !17
  %264 = add i64 %263, 1
  call void @_ZdlPvm(ptr noundef %257, i64 noundef %264) #24
  br label %950

265:                                              ; preds = %229, %201
  %266 = landingpad { ptr, i32 }
          cleanup
  %267 = load ptr, ptr %11, align 8, !tbaa !18
  %268 = icmp eq ptr %267, %178
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load i64, ptr %197, align 8, !tbaa !14
  %271 = icmp ult i64 %270, 16
  call void @llvm.assume(i1 %271)
  br label %950

272:                                              ; preds = %265
  %273 = load i64, ptr %178, align 8, !tbaa !17
  %274 = add i64 %273, 1
  call void @_ZdlPvm(ptr noundef %267, i64 noundef %274) #24
  br label %950

275:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #13
  %276 = getelementptr inbounds nuw i8, ptr %164, i64 24
  %277 = load i64, ptr %276, align 8, !tbaa !14
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %280, ptr %12, align 8, !tbaa !8
  %281 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %281, align 8, !tbaa !14
  store i8 0, ptr %280, align 8, !tbaa !17
  br label %286

282:                                              ; preds = %275
  %283 = getelementptr inbounds nuw i8, ptr %164, i64 16
  %284 = load ptr, ptr %283, align 8, !tbaa !18, !noalias !71
  %285 = icmp ult i64 %277, 9223372036854775807
  call void @llvm.assume(i1 %285)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13, !noalias !71
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %284, i64 noundef %277, ptr noundef nonnull @.str, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13, !noalias !71
  br label %286

286:                                              ; preds = %282, %279
  %287 = getelementptr inbounds nuw i8, ptr %164, i64 56
  %288 = load i64, ptr %287, align 8, !tbaa !14
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %427, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds nuw i8, ptr %164, i64 48
  %292 = load ptr, ptr %291, align 8, !tbaa !18
  %293 = icmp ult i64 %288, 9223372036854775807
  call void @llvm.assume(i1 %293)
  %294 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %295 = load i64, ptr %294, align 8, !tbaa !14
  %296 = icmp ult i64 %295, 9223372036854775807
  call void @llvm.assume(i1 %296)
  %297 = sub nuw nsw i64 9223372036854775806, %295
  %298 = icmp samesign ult i64 %297, %288
  br i1 %298, label %438, label %299

299:                                              ; preds = %290
  %300 = add nuw i64 %295, %288
  %301 = load ptr, ptr %12, align 8, !tbaa !18
  %302 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %303 = icmp eq ptr %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = icmp samesign ult i64 %295, 16
  call void @llvm.assume(i1 %305)
  br label %306

306:                                              ; preds = %304, %299
  %307 = load i64, ptr %302, align 8
  %308 = select i1 %303, i64 15, i64 %307
  %309 = icmp samesign ugt i64 %308, 14
  call void @llvm.assume(i1 %309)
  %310 = icmp ult i64 %308, 9223372036854775807
  call void @llvm.assume(i1 %310)
  %311 = icmp ugt i64 %300, %308
  br i1 %311, label %318, label %312

312:                                              ; preds = %306
  %313 = getelementptr inbounds nuw i8, ptr %301, i64 %295
  %314 = icmp eq i64 %288, 1
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  %316 = load i8, ptr %292, align 1, !tbaa !17
  store i8 %316, ptr %313, align 1, !tbaa !17
  br label %319

317:                                              ; preds = %312
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %313, ptr align 1 %292, i64 %288, i1 false)
  br label %319

318:                                              ; preds = %306
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %295, i64 noundef 0, ptr noundef %292, i64 noundef %288)
          to label %319 unwind label %374

319:                                              ; preds = %317, %315, %318
  store i64 %300, ptr %294, align 8, !tbaa !14
  %320 = load ptr, ptr %12, align 8, !tbaa !18
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 %300
  store i8 0, ptr %321, align 1, !tbaa !17
  %322 = getelementptr inbounds nuw i8, ptr %164, i64 88
  %323 = load i64, ptr %322, align 8, !tbaa !14
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %391, label %325

325:                                              ; preds = %319
  %326 = getelementptr inbounds nuw i8, ptr %164, i64 80
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #13
  %327 = load ptr, ptr %326, align 8, !tbaa !18, !noalias !74
  %328 = icmp ult i64 %323, 9223372036854775807
  call void @llvm.assume(i1 %328)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13, !noalias !74
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.6, i64 noundef 1, ptr noundef %327, i64 noundef %323, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %329 unwind label %376

329:                                              ; preds = %325
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13, !noalias !74
  %330 = load ptr, ptr %13, align 8, !tbaa !18
  %331 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %332 = load i64, ptr %331, align 8, !tbaa !14
  %333 = icmp ult i64 %332, 9223372036854775807
  call void @llvm.assume(i1 %333)
  %334 = load i64, ptr %294, align 8, !tbaa !14
  %335 = icmp ult i64 %334, 9223372036854775807
  call void @llvm.assume(i1 %335)
  %336 = sub nuw nsw i64 9223372036854775806, %334
  %337 = icmp samesign ult i64 %336, %332
  br i1 %337, label %338, label %340

338:                                              ; preds = %329
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %339 unwind label %378

339:                                              ; preds = %338
  unreachable

340:                                              ; preds = %329
  %341 = add nuw i64 %334, %332
  %342 = load ptr, ptr %12, align 8, !tbaa !18
  %343 = icmp eq ptr %342, %302
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = icmp samesign ult i64 %334, 16
  call void @llvm.assume(i1 %345)
  br label %346

346:                                              ; preds = %344, %340
  %347 = load i64, ptr %302, align 8
  %348 = select i1 %343, i64 15, i64 %347
  %349 = icmp samesign ugt i64 %348, 14
  call void @llvm.assume(i1 %349)
  %350 = icmp ult i64 %348, 9223372036854775807
  call void @llvm.assume(i1 %350)
  %351 = icmp ugt i64 %341, %348
  br i1 %351, label %360, label %352

352:                                              ; preds = %346
  %353 = icmp eq i64 %332, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %352
  %355 = getelementptr inbounds nuw i8, ptr %342, i64 %334
  %356 = icmp eq i64 %332, 1
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = load i8, ptr %330, align 1, !tbaa !17
  store i8 %358, ptr %355, align 1, !tbaa !17
  br label %361

359:                                              ; preds = %354
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %355, ptr align 1 %330, i64 %332, i1 false)
  br label %361

360:                                              ; preds = %346
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %334, i64 noundef 0, ptr noundef %330, i64 noundef %332)
          to label %361 unwind label %378

361:                                              ; preds = %359, %357, %352, %360
  store i64 %341, ptr %294, align 8, !tbaa !14
  %362 = load ptr, ptr %12, align 8, !tbaa !18
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 %341
  store i8 0, ptr %363, align 1, !tbaa !17
  %364 = load ptr, ptr %13, align 8, !tbaa !18
  %365 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %366 = icmp eq ptr %364, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %361
  %368 = load i64, ptr %331, align 8, !tbaa !14
  %369 = icmp ult i64 %368, 16
  call void @llvm.assume(i1 %369)
  br label %373

370:                                              ; preds = %361
  %371 = load i64, ptr %365, align 8, !tbaa !17
  %372 = add i64 %371, 1
  call void @_ZdlPvm(ptr noundef %364, i64 noundef %372) #24
  br label %373

373:                                              ; preds = %367, %370
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #13
  br label %391

374:                                              ; preds = %438, %409, %461, %318
  %375 = landingpad { ptr, i32 }
          cleanup
  br label %935

376:                                              ; preds = %325
  %377 = landingpad { ptr, i32 }
          cleanup
  br label %389

378:                                              ; preds = %360, %338
  %379 = landingpad { ptr, i32 }
          cleanup
  %380 = load ptr, ptr %13, align 8, !tbaa !18
  %381 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %382 = icmp eq ptr %380, %381
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load i64, ptr %331, align 8, !tbaa !14
  %385 = icmp ult i64 %384, 16
  call void @llvm.assume(i1 %385)
  br label %389

386:                                              ; preds = %378
  %387 = load i64, ptr %381, align 8, !tbaa !17
  %388 = add i64 %387, 1
  call void @_ZdlPvm(ptr noundef %380, i64 noundef %388) #24
  br label %389

389:                                              ; preds = %386, %383, %376
  %390 = phi { ptr, i32 } [ %377, %376 ], [ %379, %383 ], [ %379, %386 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #13
  br label %935

391:                                              ; preds = %373, %319
  %392 = load i64, ptr %294, align 8, !tbaa !14
  %393 = icmp ult i64 %392, 9223372036854775807
  call void @llvm.assume(i1 %393)
  %394 = icmp eq i64 %392, 9223372036854775806
  br i1 %394, label %438, label %395

395:                                              ; preds = %391
  %396 = add nuw nsw i64 %392, 1
  %397 = load ptr, ptr %12, align 8, !tbaa !18
  %398 = icmp eq ptr %397, %302
  %399 = load i64, ptr %302, align 8
  br i1 %398, label %400, label %402

400:                                              ; preds = %395
  %401 = icmp samesign ugt i64 %392, 14
  br i1 %401, label %409, label %406

402:                                              ; preds = %395
  %403 = icmp samesign ugt i64 %399, 14
  call void @llvm.assume(i1 %403)
  %404 = icmp ult i64 %399, 9223372036854775807
  call void @llvm.assume(i1 %404)
  %405 = icmp samesign ult i64 %392, %399
  br i1 %405, label %406, label %409

406:                                              ; preds = %402, %400
  %407 = getelementptr inbounds nuw i8, ptr %397, i64 %392
  store i8 64, ptr %407, align 1, !tbaa !17
  %408 = load ptr, ptr %12, align 8, !tbaa !18
  br label %424

409:                                              ; preds = %402, %400
  %410 = phi i64 [ %399, %402 ], [ 15, %400 ]
  %411 = shl nuw i64 %410, 1
  %412 = icmp ult i64 %396, %411
  %413 = call i64 @llvm.umin.i64(i64 %411, i64 9223372036854775806)
  %414 = select i1 %412, i64 %413, i64 %396
  %415 = add nuw nsw i64 %414, 1
  %416 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %415) #23
          to label %417 unwind label %374

417:                                              ; preds = %409
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %416, ptr align 1 %397, i64 %392, i1 false)
  %418 = getelementptr inbounds nuw i8, ptr %416, i64 %392
  store i8 64, ptr %418, align 1, !tbaa !17
  br i1 %398, label %419, label %421

419:                                              ; preds = %417
  %420 = icmp samesign ult i64 %392, 16
  call void @llvm.assume(i1 %420)
  br label %423

421:                                              ; preds = %417
  %422 = add i64 %399, 1
  call void @_ZdlPvm(ptr noundef %397, i64 noundef %422) #24
  br label %423

423:                                              ; preds = %421, %419
  store ptr %416, ptr %12, align 8, !tbaa !18
  store i64 %414, ptr %302, align 8, !tbaa !17
  br label %424

424:                                              ; preds = %406, %423
  %425 = phi ptr [ %408, %406 ], [ %416, %423 ]
  store i64 %396, ptr %294, align 8, !tbaa !14
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 %396
  store i8 0, ptr %426, align 1, !tbaa !17
  br label %427

427:                                              ; preds = %424, %286
  %428 = getelementptr inbounds nuw i8, ptr %164, i64 112
  %429 = load ptr, ptr %428, align 8, !tbaa !18
  %430 = getelementptr inbounds nuw i8, ptr %164, i64 120
  %431 = load i64, ptr %430, align 8, !tbaa !14
  %432 = icmp ult i64 %431, 9223372036854775807
  call void @llvm.assume(i1 %432)
  %433 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %434 = load i64, ptr %433, align 8, !tbaa !14
  %435 = icmp ult i64 %434, 9223372036854775807
  call void @llvm.assume(i1 %435)
  %436 = sub nuw nsw i64 9223372036854775806, %434
  %437 = icmp samesign ult i64 %436, %431
  br i1 %437, label %438, label %440

438:                                              ; preds = %290, %427, %391
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %439 unwind label %374

439:                                              ; preds = %438
  unreachable

440:                                              ; preds = %427
  %441 = add nuw i64 %434, %431
  %442 = load ptr, ptr %12, align 8, !tbaa !18
  %443 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %444 = icmp eq ptr %442, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %440
  %446 = icmp samesign ult i64 %434, 16
  call void @llvm.assume(i1 %446)
  br label %447

447:                                              ; preds = %445, %440
  %448 = load i64, ptr %443, align 8
  %449 = select i1 %444, i64 15, i64 %448
  %450 = icmp samesign ugt i64 %449, 14
  call void @llvm.assume(i1 %450)
  %451 = icmp ult i64 %449, 9223372036854775807
  call void @llvm.assume(i1 %451)
  %452 = icmp ugt i64 %441, %449
  br i1 %452, label %461, label %453

453:                                              ; preds = %447
  %454 = icmp eq i64 %431, 0
  br i1 %454, label %462, label %455

455:                                              ; preds = %453
  %456 = getelementptr inbounds nuw i8, ptr %442, i64 %434
  %457 = icmp eq i64 %431, 1
  br i1 %457, label %458, label %460

458:                                              ; preds = %455
  %459 = load i8, ptr %429, align 1, !tbaa !17
  store i8 %459, ptr %456, align 1, !tbaa !17
  br label %462

460:                                              ; preds = %455
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %456, ptr align 1 %429, i64 %431, i1 false)
  br label %462

461:                                              ; preds = %447
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %434, i64 noundef 0, ptr noundef %429, i64 noundef %431)
          to label %462 unwind label %374

462:                                              ; preds = %460, %458, %453, %461
  store i64 %441, ptr %433, align 8, !tbaa !14
  %463 = load ptr, ptr %12, align 8, !tbaa !18
  %464 = getelementptr inbounds nuw i8, ptr %463, i64 %441
  store i8 0, ptr %464, align 1, !tbaa !17
  %465 = getelementptr inbounds nuw i8, ptr %164, i64 152
  %466 = load i64, ptr %465, align 8, !tbaa !14
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %532, label %468

468:                                              ; preds = %462
  %469 = getelementptr inbounds nuw i8, ptr %164, i64 144
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #13
  %470 = load ptr, ptr %469, align 8, !tbaa !18, !noalias !77
  %471 = icmp ult i64 %466, 9223372036854775807
  call void @llvm.assume(i1 %471)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13, !noalias !77
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.6, i64 noundef 1, ptr noundef %470, i64 noundef %466, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %472 unwind label %517

472:                                              ; preds = %468
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13, !noalias !77
  %473 = load ptr, ptr %14, align 8, !tbaa !18
  %474 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %475 = load i64, ptr %474, align 8, !tbaa !14
  %476 = icmp ult i64 %475, 9223372036854775807
  call void @llvm.assume(i1 %476)
  %477 = load i64, ptr %433, align 8, !tbaa !14
  %478 = icmp ult i64 %477, 9223372036854775807
  call void @llvm.assume(i1 %478)
  %479 = sub nuw nsw i64 9223372036854775806, %477
  %480 = icmp samesign ult i64 %479, %475
  br i1 %480, label %481, label %483

481:                                              ; preds = %472
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %482 unwind label %519

482:                                              ; preds = %481
  unreachable

483:                                              ; preds = %472
  %484 = add nuw i64 %477, %475
  %485 = load ptr, ptr %12, align 8, !tbaa !18
  %486 = icmp eq ptr %485, %443
  br i1 %486, label %487, label %489

487:                                              ; preds = %483
  %488 = icmp samesign ult i64 %477, 16
  call void @llvm.assume(i1 %488)
  br label %489

489:                                              ; preds = %487, %483
  %490 = load i64, ptr %443, align 8
  %491 = select i1 %486, i64 15, i64 %490
  %492 = icmp samesign ugt i64 %491, 14
  call void @llvm.assume(i1 %492)
  %493 = icmp ult i64 %491, 9223372036854775807
  call void @llvm.assume(i1 %493)
  %494 = icmp ugt i64 %484, %491
  br i1 %494, label %503, label %495

495:                                              ; preds = %489
  %496 = icmp eq i64 %475, 0
  br i1 %496, label %504, label %497

497:                                              ; preds = %495
  %498 = getelementptr inbounds nuw i8, ptr %485, i64 %477
  %499 = icmp eq i64 %475, 1
  br i1 %499, label %500, label %502

500:                                              ; preds = %497
  %501 = load i8, ptr %473, align 1, !tbaa !17
  store i8 %501, ptr %498, align 1, !tbaa !17
  br label %504

502:                                              ; preds = %497
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %498, ptr align 1 %473, i64 %475, i1 false)
  br label %504

503:                                              ; preds = %489
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %477, i64 noundef 0, ptr noundef %473, i64 noundef %475)
          to label %504 unwind label %519

504:                                              ; preds = %502, %500, %495, %503
  store i64 %484, ptr %433, align 8, !tbaa !14
  %505 = load ptr, ptr %12, align 8, !tbaa !18
  %506 = getelementptr inbounds nuw i8, ptr %505, i64 %484
  store i8 0, ptr %506, align 1, !tbaa !17
  %507 = load ptr, ptr %14, align 8, !tbaa !18
  %508 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %509 = icmp eq ptr %507, %508
  br i1 %509, label %510, label %513

510:                                              ; preds = %504
  %511 = load i64, ptr %474, align 8, !tbaa !14
  %512 = icmp ult i64 %511, 16
  call void @llvm.assume(i1 %512)
  br label %516

513:                                              ; preds = %504
  %514 = load i64, ptr %508, align 8, !tbaa !17
  %515 = add i64 %514, 1
  call void @_ZdlPvm(ptr noundef %507, i64 noundef %515) #24
  br label %516

516:                                              ; preds = %510, %513
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #13
  br label %532

517:                                              ; preds = %468
  %518 = landingpad { ptr, i32 }
          cleanup
  br label %530

519:                                              ; preds = %503, %481
  %520 = landingpad { ptr, i32 }
          cleanup
  %521 = load ptr, ptr %14, align 8, !tbaa !18
  %522 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %523 = icmp eq ptr %521, %522
  br i1 %523, label %524, label %527

524:                                              ; preds = %519
  %525 = load i64, ptr %474, align 8, !tbaa !14
  %526 = icmp ult i64 %525, 16
  call void @llvm.assume(i1 %526)
  br label %530

527:                                              ; preds = %519
  %528 = load i64, ptr %522, align 8, !tbaa !17
  %529 = add i64 %528, 1
  call void @_ZdlPvm(ptr noundef %521, i64 noundef %529) #24
  br label %530

530:                                              ; preds = %527, %524, %517
  %531 = phi { ptr, i32 } [ %518, %517 ], [ %520, %524 ], [ %520, %527 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #13
  br label %935

532:                                              ; preds = %516, %462
  %533 = load i64, ptr %8, align 8, !tbaa !80
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %616, label %535

535:                                              ; preds = %532
  %536 = load ptr, ptr %23, align 8, !tbaa !82
  %537 = load i8, ptr %536, align 1, !tbaa !17
  %538 = icmp eq i8 %537, 47
  br i1 %538, label %539, label %616

539:                                              ; preds = %535
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #13
  %540 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %540, ptr %15, align 8, !tbaa !8
  %541 = icmp ugt i64 %533, 15
  br i1 %541, label %542, label %550

542:                                              ; preds = %539
  %543 = icmp ugt i64 %533, 9223372036854775806
  br i1 %543, label %544, label %546

544:                                              ; preds = %542
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %545 unwind label %602

545:                                              ; preds = %544
  unreachable

546:                                              ; preds = %542
  %547 = add nuw nsw i64 %533, 1
  %548 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %547) #23
          to label %549 unwind label %602

549:                                              ; preds = %546
  store ptr %548, ptr %15, align 8, !tbaa !18
  store i64 %533, ptr %540, align 8, !tbaa !17
  br label %554

550:                                              ; preds = %539
  %551 = icmp eq i64 %533, 1
  br i1 %551, label %552, label %554

552:                                              ; preds = %550
  %553 = load i8, ptr %536, align 1, !tbaa !17
  store i8 %553, ptr %540, align 8, !tbaa !17
  br label %556

554:                                              ; preds = %549, %550
  %555 = phi ptr [ %548, %549 ], [ %540, %550 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %555, ptr nonnull align 1 %536, i64 %533, i1 false)
  br label %556

556:                                              ; preds = %554, %552
  %557 = phi ptr [ %555, %554 ], [ %540, %552 ]
  %558 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %533, ptr %558, align 8, !tbaa !14
  %559 = getelementptr inbounds nuw i8, ptr %557, i64 %533
  store i8 0, ptr %559, align 1, !tbaa !17
  %560 = load ptr, ptr %15, align 8, !tbaa !18
  %561 = load i64, ptr %558, align 8, !tbaa !14
  %562 = icmp ult i64 %561, 9223372036854775807
  call void @llvm.assume(i1 %562)
  %563 = load i64, ptr %433, align 8, !tbaa !14
  %564 = icmp ult i64 %563, 9223372036854775807
  call void @llvm.assume(i1 %564)
  %565 = sub nuw nsw i64 9223372036854775806, %563
  %566 = icmp samesign ult i64 %565, %561
  br i1 %566, label %567, label %569

567:                                              ; preds = %556
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %568 unwind label %604

568:                                              ; preds = %567
  unreachable

569:                                              ; preds = %556
  %570 = add nuw i64 %563, %561
  %571 = load ptr, ptr %12, align 8, !tbaa !18
  %572 = icmp eq ptr %571, %443
  br i1 %572, label %573, label %575

573:                                              ; preds = %569
  %574 = icmp samesign ult i64 %563, 16
  call void @llvm.assume(i1 %574)
  br label %575

575:                                              ; preds = %573, %569
  %576 = load i64, ptr %443, align 8
  %577 = select i1 %572, i64 15, i64 %576
  %578 = icmp samesign ugt i64 %577, 14
  call void @llvm.assume(i1 %578)
  %579 = icmp ult i64 %577, 9223372036854775807
  call void @llvm.assume(i1 %579)
  %580 = icmp ugt i64 %570, %577
  br i1 %580, label %589, label %581

581:                                              ; preds = %575
  %582 = icmp eq i64 %561, 0
  br i1 %582, label %590, label %583

583:                                              ; preds = %581
  %584 = getelementptr inbounds nuw i8, ptr %571, i64 %563
  %585 = icmp eq i64 %561, 1
  br i1 %585, label %586, label %588

586:                                              ; preds = %583
  %587 = load i8, ptr %560, align 1, !tbaa !17
  store i8 %587, ptr %584, align 1, !tbaa !17
  br label %590

588:                                              ; preds = %583
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %584, ptr align 1 %560, i64 %561, i1 false)
  br label %590

589:                                              ; preds = %575
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %563, i64 noundef 0, ptr noundef %560, i64 noundef %561)
          to label %590 unwind label %604

590:                                              ; preds = %588, %586, %581, %589
  store i64 %570, ptr %433, align 8, !tbaa !14
  %591 = load ptr, ptr %12, align 8, !tbaa !18
  %592 = getelementptr inbounds nuw i8, ptr %591, i64 %570
  store i8 0, ptr %592, align 1, !tbaa !17
  %593 = load ptr, ptr %15, align 8, !tbaa !18
  %594 = icmp eq ptr %593, %540
  br i1 %594, label %595, label %598

595:                                              ; preds = %590
  %596 = load i64, ptr %558, align 8, !tbaa !14
  %597 = icmp ult i64 %596, 16
  call void @llvm.assume(i1 %597)
  br label %601

598:                                              ; preds = %590
  %599 = load i64, ptr %540, align 8, !tbaa !17
  %600 = add i64 %599, 1
  call void @_ZdlPvm(ptr noundef %593, i64 noundef %600) #24
  br label %601

601:                                              ; preds = %595, %598
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #13
  br label %844

602:                                              ; preds = %546, %544
  %603 = landingpad { ptr, i32 }
          cleanup
  br label %614

604:                                              ; preds = %589, %567
  %605 = landingpad { ptr, i32 }
          cleanup
  %606 = load ptr, ptr %15, align 8, !tbaa !18
  %607 = icmp eq ptr %606, %540
  br i1 %607, label %608, label %611

608:                                              ; preds = %604
  %609 = load i64, ptr %558, align 8, !tbaa !14
  %610 = icmp ult i64 %609, 16
  call void @llvm.assume(i1 %610)
  br label %614

611:                                              ; preds = %604
  %612 = load i64, ptr %540, align 8, !tbaa !17
  %613 = add i64 %612, 1
  call void @_ZdlPvm(ptr noundef %606, i64 noundef %613) #24
  br label %614

614:                                              ; preds = %611, %608, %602
  %615 = phi { ptr, i32 } [ %603, %602 ], [ %605, %608 ], [ %605, %611 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #13
  br label %935

616:                                              ; preds = %535, %532
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %16) #13
  %617 = getelementptr inbounds nuw i8, ptr %164, i64 184
  %618 = load i64, ptr %617, align 8, !tbaa !14
  %619 = icmp eq i64 %618, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %616
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(2) @.str.8, i8 noundef zeroext 2)
          to label %641 unwind label %804

621:                                              ; preds = %616
  %622 = getelementptr inbounds nuw i8, ptr %164, i64 176
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %17) #13
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(32) %622, i8 noundef zeroext 2)
          to label %623 unwind label %806

623:                                              ; preds = %621
  invoke void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %16, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %624 unwind label %808

624:                                              ; preds = %623
  %625 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %626 = load ptr, ptr %625, align 8, !tbaa !83
  %627 = icmp eq ptr %626, null
  br i1 %627, label %629, label %628

628:                                              ; preds = %624
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %625, ptr noundef nonnull %626) #13
  br label %629

629:                                              ; preds = %628, %624
  store ptr null, ptr %625, align 8, !tbaa !83
  %630 = load ptr, ptr %17, align 8, !tbaa !18
  %631 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %632 = icmp eq ptr %630, %631
  br i1 %632, label %633, label %637

633:                                              ; preds = %629
  %634 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %635 = load i64, ptr %634, align 8, !tbaa !14
  %636 = icmp ult i64 %635, 16
  call void @llvm.assume(i1 %636)
  br label %640

637:                                              ; preds = %629
  %638 = load i64, ptr %631, align 8, !tbaa !17
  %639 = add i64 %638, 1
  call void @_ZdlPvm(ptr noundef %630, i64 noundef %639) #24
  br label %640

640:                                              ; preds = %633, %637
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %17) #13
  br label %641

641:                                              ; preds = %620, %640
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #13
  %642 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %642, ptr %18, align 8, !tbaa !8
  %643 = load ptr, ptr %16, align 8, !tbaa !18
  %644 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %645 = load i64, ptr %644, align 8, !tbaa !14
  %646 = icmp ult i64 %645, 9223372036854775807
  call void @llvm.assume(i1 %646)
  %647 = icmp samesign ugt i64 %645, 15
  br i1 %647, label %648, label %652

648:                                              ; preds = %641
  %649 = add nuw nsw i64 %645, 1
  %650 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %649) #23
          to label %651 unwind label %812

651:                                              ; preds = %648
  store ptr %650, ptr %18, align 8, !tbaa !18
  store i64 %645, ptr %642, align 8, !tbaa !17
  br label %658

652:                                              ; preds = %641
  %653 = icmp eq i64 %645, 0
  br i1 %653, label %656, label %654

654:                                              ; preds = %652
  %655 = add nuw nsw i64 %645, 1
  br label %658

656:                                              ; preds = %652
  %657 = load i8, ptr %643, align 1, !tbaa !17
  store i8 %657, ptr %642, align 8, !tbaa !17
  br label %661

658:                                              ; preds = %654, %651
  %659 = phi i64 [ %655, %654 ], [ %649, %651 ]
  %660 = phi ptr [ %642, %654 ], [ %650, %651 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %660, ptr noundef nonnull align 1 dereferenceable(1) %643, i64 %659, i1 false)
  br label %661

661:                                              ; preds = %658, %656
  %662 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %645, ptr %662, align 8, !tbaa !14
  %663 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %664 = getelementptr inbounds nuw i8, ptr %16, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %663, ptr noundef nonnull align 8 dereferenceable(8) %664)
          to label %675 unwind label %665

665:                                              ; preds = %661
  %666 = landingpad { ptr, i32 }
          cleanup
  %667 = load ptr, ptr %18, align 8, !tbaa !18
  %668 = icmp eq ptr %667, %642
  br i1 %668, label %669, label %672

669:                                              ; preds = %665
  %670 = load i64, ptr %662, align 8, !tbaa !14
  %671 = icmp ult i64 %670, 16
  call void @llvm.assume(i1 %671)
  br label %840

672:                                              ; preds = %665
  %673 = load i64, ptr %642, align 8, !tbaa !17
  %674 = add i64 %673, 1
  call void @_ZdlPvm(ptr noundef %667, i64 noundef %674) #24
  br label %840

675:                                              ; preds = %661
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %19) #13
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 2)
          to label %676 unwind label %814

676:                                              ; preds = %675
  %677 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %678 unwind label %816

678:                                              ; preds = %676
  %679 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %680 = load ptr, ptr %679, align 8, !tbaa !83
  %681 = icmp eq ptr %680, null
  br i1 %681, label %683, label %682

682:                                              ; preds = %678
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %679, ptr noundef nonnull %680) #13
  br label %683

683:                                              ; preds = %682, %678
  store ptr null, ptr %679, align 8, !tbaa !83
  %684 = load ptr, ptr %19, align 8, !tbaa !18
  %685 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %686 = icmp eq ptr %684, %685
  br i1 %686, label %687, label %691

687:                                              ; preds = %683
  %688 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %689 = load i64, ptr %688, align 8, !tbaa !14
  %690 = icmp ult i64 %689, 16
  call void @llvm.assume(i1 %690)
  br label %694

691:                                              ; preds = %683
  %692 = load i64, ptr %685, align 8, !tbaa !17
  %693 = add i64 %692, 1
  call void @_ZdlPvm(ptr noundef %684, i64 noundef %693) #24
  br label %694

694:                                              ; preds = %687, %691
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %21) #13
  invoke void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %21, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %695 unwind label %820

695:                                              ; preds = %694
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %696 = load ptr, ptr %21, align 8, !tbaa !18, !noalias !91
  %697 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %698 = load i64, ptr %697, align 8, !tbaa !14, !noalias !91
  %699 = icmp ult i64 %698, 9223372036854775807
  call void @llvm.assume(i1 %699)
  %700 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %700, ptr %20, align 8, !tbaa !8, !alias.scope !91
  %701 = icmp eq ptr %696, null
  %702 = icmp ne i64 %698, 0
  %703 = and i1 %701, %702
  br i1 %703, label %704, label %706

704:                                              ; preds = %695
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
          to label %705 unwind label %822

705:                                              ; preds = %704
  unreachable

706:                                              ; preds = %695
  %707 = icmp samesign ugt i64 %698, 15
  br i1 %707, label %708, label %712

708:                                              ; preds = %706
  %709 = add nuw nsw i64 %698, 1
  %710 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %709) #23
          to label %711 unwind label %822

711:                                              ; preds = %708
  store ptr %710, ptr %20, align 8, !tbaa !18, !alias.scope !91
  store i64 %698, ptr %700, align 8, !tbaa !17, !alias.scope !91
  br label %712

712:                                              ; preds = %711, %706
  %713 = phi ptr [ %710, %711 ], [ %700, %706 ]
  switch i64 %698, label %716 [
    i64 1, label %714
    i64 0, label %717
  ]

714:                                              ; preds = %712
  %715 = load i8, ptr %696, align 1, !tbaa !17
  store i8 %715, ptr %713, align 1, !tbaa !17
  br label %717

716:                                              ; preds = %712
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %713, ptr align 1 %696, i64 %698, i1 false)
  br label %717

717:                                              ; preds = %716, %714, %712
  %718 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %698, ptr %718, align 8, !tbaa !14, !alias.scope !91
  %719 = getelementptr inbounds nuw i8, ptr %713, i64 %698
  store i8 0, ptr %719, align 1, !tbaa !17
  %720 = load ptr, ptr %20, align 8, !tbaa !18
  %721 = load i64, ptr %718, align 8, !tbaa !14
  %722 = icmp ult i64 %721, 9223372036854775807
  call void @llvm.assume(i1 %722)
  %723 = load i64, ptr %433, align 8, !tbaa !14
  %724 = icmp ult i64 %723, 9223372036854775807
  call void @llvm.assume(i1 %724)
  %725 = sub nuw nsw i64 9223372036854775806, %723
  %726 = icmp samesign ult i64 %725, %721
  br i1 %726, label %727, label %729

727:                                              ; preds = %717
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %728 unwind label %824

728:                                              ; preds = %727
  unreachable

729:                                              ; preds = %717
  %730 = add nuw i64 %723, %721
  %731 = load ptr, ptr %12, align 8, !tbaa !18
  %732 = icmp eq ptr %731, %443
  br i1 %732, label %733, label %735

733:                                              ; preds = %729
  %734 = icmp samesign ult i64 %723, 16
  call void @llvm.assume(i1 %734)
  br label %735

735:                                              ; preds = %733, %729
  %736 = load i64, ptr %443, align 8
  %737 = select i1 %732, i64 15, i64 %736
  %738 = icmp samesign ugt i64 %737, 14
  call void @llvm.assume(i1 %738)
  %739 = icmp ult i64 %737, 9223372036854775807
  call void @llvm.assume(i1 %739)
  %740 = icmp ugt i64 %730, %737
  br i1 %740, label %749, label %741

741:                                              ; preds = %735
  %742 = icmp eq i64 %721, 0
  br i1 %742, label %750, label %743

743:                                              ; preds = %741
  %744 = getelementptr inbounds nuw i8, ptr %731, i64 %723
  %745 = icmp eq i64 %721, 1
  br i1 %745, label %746, label %748

746:                                              ; preds = %743
  %747 = load i8, ptr %720, align 1, !tbaa !17
  store i8 %747, ptr %744, align 1, !tbaa !17
  br label %750

748:                                              ; preds = %743
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %744, ptr align 1 %720, i64 %721, i1 false)
  br label %750

749:                                              ; preds = %735
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %723, i64 noundef 0, ptr noundef %720, i64 noundef %721)
          to label %750 unwind label %824

750:                                              ; preds = %748, %746, %741, %749
  store i64 %730, ptr %433, align 8, !tbaa !14
  %751 = load ptr, ptr %12, align 8, !tbaa !18
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 %730
  store i8 0, ptr %752, align 1, !tbaa !17
  %753 = load ptr, ptr %20, align 8, !tbaa !18
  %754 = icmp eq ptr %753, %700
  br i1 %754, label %755, label %758

755:                                              ; preds = %750
  %756 = load i64, ptr %718, align 8, !tbaa !14
  %757 = icmp ult i64 %756, 16
  call void @llvm.assume(i1 %757)
  br label %761

758:                                              ; preds = %750
  %759 = load i64, ptr %700, align 8, !tbaa !17
  %760 = add i64 %759, 1
  call void @_ZdlPvm(ptr noundef %753, i64 noundef %760) #24
  br label %761

761:                                              ; preds = %755, %758
  %762 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %763 = load ptr, ptr %762, align 8, !tbaa !83
  %764 = icmp eq ptr %763, null
  br i1 %764, label %766, label %765

765:                                              ; preds = %761
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %762, ptr noundef nonnull %763) #13
  br label %766

766:                                              ; preds = %765, %761
  store ptr null, ptr %762, align 8, !tbaa !83
  %767 = load ptr, ptr %21, align 8, !tbaa !18
  %768 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %769 = icmp eq ptr %767, %768
  br i1 %769, label %770, label %773

770:                                              ; preds = %766
  %771 = load i64, ptr %697, align 8, !tbaa !14
  %772 = icmp ult i64 %771, 16
  call void @llvm.assume(i1 %772)
  br label %776

773:                                              ; preds = %766
  %774 = load i64, ptr %768, align 8, !tbaa !17
  %775 = add i64 %774, 1
  call void @_ZdlPvm(ptr noundef %767, i64 noundef %775) #24
  br label %776

776:                                              ; preds = %770, %773
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #13
  %777 = load ptr, ptr %663, align 8, !tbaa !83
  %778 = icmp eq ptr %777, null
  br i1 %778, label %780, label %779

779:                                              ; preds = %776
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %663, ptr noundef nonnull %777) #13
  br label %780

780:                                              ; preds = %779, %776
  store ptr null, ptr %663, align 8, !tbaa !83
  %781 = load ptr, ptr %18, align 8, !tbaa !18
  %782 = icmp eq ptr %781, %642
  br i1 %782, label %783, label %786

783:                                              ; preds = %780
  %784 = load i64, ptr %662, align 8, !tbaa !14
  %785 = icmp ult i64 %784, 16
  call void @llvm.assume(i1 %785)
  br label %789

786:                                              ; preds = %780
  %787 = load i64, ptr %642, align 8, !tbaa !17
  %788 = add i64 %787, 1
  call void @_ZdlPvm(ptr noundef %781, i64 noundef %788) #24
  br label %789

789:                                              ; preds = %783, %786
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #13
  %790 = load ptr, ptr %664, align 8, !tbaa !83
  %791 = icmp eq ptr %790, null
  br i1 %791, label %793, label %792

792:                                              ; preds = %789
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %664, ptr noundef nonnull %790) #13
  br label %793

793:                                              ; preds = %792, %789
  store ptr null, ptr %664, align 8, !tbaa !83
  %794 = load ptr, ptr %16, align 8, !tbaa !18
  %795 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %796 = icmp eq ptr %794, %795
  br i1 %796, label %797, label %800

797:                                              ; preds = %793
  %798 = load i64, ptr %644, align 8, !tbaa !14
  %799 = icmp ult i64 %798, 16
  call void @llvm.assume(i1 %799)
  br label %803

800:                                              ; preds = %793
  %801 = load i64, ptr %795, align 8, !tbaa !17
  %802 = add i64 %801, 1
  call void @_ZdlPvm(ptr noundef %794, i64 noundef %802) #24
  br label %803

803:                                              ; preds = %797, %800
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #13
  br label %844

804:                                              ; preds = %620
  %805 = landingpad { ptr, i32 }
          cleanup
  br label %842

806:                                              ; preds = %621
  %807 = landingpad { ptr, i32 }
          cleanup
  br label %810

808:                                              ; preds = %623
  %809 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %17) #13
  br label %810

810:                                              ; preds = %806, %808
  %811 = phi { ptr, i32 } [ %809, %808 ], [ %807, %806 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %17) #13
  br label %842

812:                                              ; preds = %648
  %813 = landingpad { ptr, i32 }
          cleanup
  br label %840

814:                                              ; preds = %675
  %815 = landingpad { ptr, i32 }
          cleanup
  br label %818

816:                                              ; preds = %676
  %817 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %19) #13
  br label %818

818:                                              ; preds = %816, %814
  %819 = phi { ptr, i32 } [ %817, %816 ], [ %815, %814 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %19) #13
  br label %838

820:                                              ; preds = %694
  %821 = landingpad { ptr, i32 }
          cleanup
  br label %836

822:                                              ; preds = %708, %704
  %823 = landingpad { ptr, i32 }
          cleanup
  br label %834

824:                                              ; preds = %749, %727
  %825 = landingpad { ptr, i32 }
          cleanup
  %826 = load ptr, ptr %20, align 8, !tbaa !18
  %827 = icmp eq ptr %826, %700
  br i1 %827, label %828, label %831

828:                                              ; preds = %824
  %829 = load i64, ptr %718, align 8, !tbaa !14
  %830 = icmp ult i64 %829, 16
  call void @llvm.assume(i1 %830)
  br label %834

831:                                              ; preds = %824
  %832 = load i64, ptr %700, align 8, !tbaa !17
  %833 = add i64 %832, 1
  call void @_ZdlPvm(ptr noundef %826, i64 noundef %833) #24
  br label %834

834:                                              ; preds = %831, %828, %822
  %835 = phi { ptr, i32 } [ %823, %822 ], [ %825, %828 ], [ %825, %831 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %21) #13
  br label %836

836:                                              ; preds = %834, %820
  %837 = phi { ptr, i32 } [ %835, %834 ], [ %821, %820 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #13
  br label %838

838:                                              ; preds = %836, %818
  %839 = phi { ptr, i32 } [ %837, %836 ], [ %819, %818 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #13
  br label %840

840:                                              ; preds = %812, %672, %669, %838
  %841 = phi { ptr, i32 } [ %839, %838 ], [ %813, %812 ], [ %666, %672 ], [ %666, %669 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #13
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #13
  br label %842

842:                                              ; preds = %810, %840, %804
  %843 = phi { ptr, i32 } [ %841, %840 ], [ %805, %804 ], [ %811, %810 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #13
  br label %935

844:                                              ; preds = %601, %803
  call void @_ZN12__apo_stdlib10url_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %164) #13
  call void @_ZdlPvm(ptr noundef nonnull %164, i64 noundef 272) #24
  %845 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %845, ptr %22, align 8, !tbaa !8
  %846 = load ptr, ptr %12, align 8, !tbaa !18
  %847 = icmp eq ptr %846, %443
  br i1 %847, label %848, label %852

848:                                              ; preds = %844
  %849 = load i64, ptr %433, align 8, !tbaa !14
  %850 = icmp ult i64 %849, 16
  call void @llvm.assume(i1 %850)
  %851 = add nuw nsw i64 %849, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %845, ptr noundef nonnull align 8 dereferenceable(1) %443, i64 %851, i1 false)
  br label %855

852:                                              ; preds = %844
  store ptr %846, ptr %22, align 8, !tbaa !18
  %853 = load i64, ptr %443, align 8, !tbaa !17
  store i64 %853, ptr %845, align 8, !tbaa !17
  %854 = load i64, ptr %433, align 8, !tbaa !14
  br label %855

855:                                              ; preds = %848, %852
  %856 = phi i64 [ %849, %848 ], [ %854, %852 ]
  %857 = icmp ult i64 %856, 9223372036854775807
  call void @llvm.assume(i1 %857)
  %858 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %856, ptr %858, align 8, !tbaa !14
  store ptr %443, ptr %12, align 8, !tbaa !18
  store i64 0, ptr %433, align 8, !tbaa !14
  store i8 0, ptr %443, align 8, !tbaa !17
  %859 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %860 = icmp eq i8 %859, 0
  br i1 %860, label %861, label %864, !prof !27

861:                                              ; preds = %855
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %862 unwind label %925

862:                                              ; preds = %861
  %863 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %864

864:                                              ; preds = %862, %855
  %865 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %866 = getelementptr inbounds nuw i8, ptr %865, i64 48
  %867 = load ptr, ptr %866, align 8, !tbaa !28
  %868 = getelementptr inbounds nuw i8, ptr %865, i64 64
  %869 = load ptr, ptr %868, align 8, !tbaa !34
  %870 = getelementptr inbounds i8, ptr %869, i64 -32
  %871 = icmp eq ptr %867, %870
  br i1 %871, label %889, label %872

872:                                              ; preds = %864
  %873 = getelementptr inbounds nuw i8, ptr %867, i64 16
  store ptr %873, ptr %867, align 8, !tbaa !8
  %874 = load ptr, ptr %22, align 8, !tbaa !18
  %875 = icmp eq ptr %874, %845
  br i1 %875, label %876, label %880

876:                                              ; preds = %872
  %877 = load i64, ptr %858, align 8, !tbaa !14
  %878 = icmp ult i64 %877, 16
  call void @llvm.assume(i1 %878)
  %879 = add nuw nsw i64 %877, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %873, ptr noundef nonnull align 8 dereferenceable(1) %845, i64 %879, i1 false)
  br label %883

880:                                              ; preds = %872
  store ptr %874, ptr %867, align 8, !tbaa !18
  %881 = load i64, ptr %845, align 8, !tbaa !17
  store i64 %881, ptr %873, align 8, !tbaa !17
  %882 = load i64, ptr %858, align 8, !tbaa !14
  br label %883

883:                                              ; preds = %880, %876
  %884 = phi i64 [ %882, %880 ], [ %877, %876 ]
  %885 = icmp ult i64 %884, 9223372036854775807
  call void @llvm.assume(i1 %885)
  %886 = getelementptr inbounds nuw i8, ptr %867, i64 8
  store i64 %884, ptr %886, align 8, !tbaa !14
  store ptr %845, ptr %22, align 8, !tbaa !18
  store i64 0, ptr %858, align 8, !tbaa !14
  store i8 0, ptr %845, align 8, !tbaa !17
  %887 = load ptr, ptr %866, align 8, !tbaa !28
  %888 = getelementptr inbounds nuw i8, ptr %887, i64 32
  store ptr %888, ptr %866, align 8, !tbaa !28
  br label %892

889:                                              ; preds = %864
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %865, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %890 unwind label %925

890:                                              ; preds = %889
  %891 = load ptr, ptr %866, align 8, !tbaa !35, !noalias !92
  br label %892

892:                                              ; preds = %890, %883
  %893 = phi ptr [ %888, %883 ], [ %891, %890 ]
  %894 = getelementptr inbounds nuw i8, ptr %865, i64 56
  %895 = load ptr, ptr %894, align 8, !tbaa !39, !noalias !92
  %896 = icmp eq ptr %893, %895
  br i1 %896, label %897, label %903

897:                                              ; preds = %892
  %898 = getelementptr inbounds nuw i8, ptr %865, i64 72
  %899 = load ptr, ptr %898, align 8, !tbaa !40, !noalias !92
  %900 = getelementptr inbounds i8, ptr %899, i64 -8
  %901 = load ptr, ptr %900, align 8, !tbaa !41
  %902 = getelementptr inbounds nuw i8, ptr %901, i64 512
  br label %903

903:                                              ; preds = %897, %892
  %904 = phi ptr [ %902, %897 ], [ %893, %892 ]
  %905 = getelementptr inbounds i8, ptr %904, i64 -32
  %906 = load ptr, ptr %905, align 8, !tbaa !18
  %907 = load ptr, ptr %22, align 8, !tbaa !18
  %908 = icmp eq ptr %907, %845
  br i1 %908, label %909, label %912

909:                                              ; preds = %903
  %910 = load i64, ptr %858, align 8, !tbaa !14
  %911 = icmp ult i64 %910, 16
  call void @llvm.assume(i1 %911)
  br label %915

912:                                              ; preds = %903
  %913 = load i64, ptr %845, align 8, !tbaa !17
  %914 = add i64 %913, 1
  call void @_ZdlPvm(ptr noundef %907, i64 noundef %914) #24
  br label %915

915:                                              ; preds = %909, %912
  %916 = load ptr, ptr %12, align 8, !tbaa !18
  %917 = icmp eq ptr %916, %443
  br i1 %917, label %918, label %921

918:                                              ; preds = %915
  %919 = load i64, ptr %433, align 8, !tbaa !14
  %920 = icmp ult i64 %919, 16
  call void @llvm.assume(i1 %920)
  br label %924

921:                                              ; preds = %915
  %922 = load i64, ptr %443, align 8, !tbaa !17
  %923 = add i64 %922, 1
  call void @_ZdlPvm(ptr noundef %916, i64 noundef %923) #24
  br label %924

924:                                              ; preds = %918, %921
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #13
  br label %948

925:                                              ; preds = %889, %861
  %926 = landingpad { ptr, i32 }
          cleanup
  %927 = load ptr, ptr %22, align 8, !tbaa !18
  %928 = icmp eq ptr %927, %845
  br i1 %928, label %929, label %932

929:                                              ; preds = %925
  %930 = load i64, ptr %858, align 8, !tbaa !14
  %931 = icmp ult i64 %930, 16
  call void @llvm.assume(i1 %931)
  br label %935

932:                                              ; preds = %925
  %933 = load i64, ptr %845, align 8, !tbaa !17
  %934 = add i64 %933, 1
  call void @_ZdlPvm(ptr noundef %927, i64 noundef %934) #24
  br label %935

935:                                              ; preds = %932, %929, %842, %614, %530, %389, %374
  %936 = phi { ptr, i32 } [ %843, %842 ], [ %615, %614 ], [ %531, %530 ], [ %375, %374 ], [ %390, %389 ], [ %926, %929 ], [ %926, %932 ]
  %937 = load ptr, ptr %12, align 8, !tbaa !18
  %938 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %939 = icmp eq ptr %937, %938
  br i1 %939, label %940, label %944

940:                                              ; preds = %935
  %941 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %942 = load i64, ptr %941, align 8, !tbaa !14
  %943 = icmp ult i64 %942, 16
  call void @llvm.assume(i1 %943)
  br label %947

944:                                              ; preds = %935
  %945 = load i64, ptr %938, align 8, !tbaa !17
  %946 = add i64 %945, 1
  call void @_ZdlPvm(ptr noundef %937, i64 noundef %946) #24
  br label %947

947:                                              ; preds = %940, %944
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #13
  br label %950

948:                                              ; preds = %252, %249, %120, %117, %924
  %949 = phi ptr [ %906, %924 ], [ %114, %117 ], [ %114, %120 ], [ %246, %249 ], [ %246, %252 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  ret ptr %949

950:                                              ; preds = %269, %272, %259, %262, %127, %130, %947
  %951 = phi { ptr, i32 } [ %936, %947 ], [ %124, %127 ], [ %124, %130 ], [ %256, %259 ], [ %256, %262 ], [ %266, %269 ], [ %266, %272 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  resume { ptr, i32 } %951
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_parse(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN32__apollo_inline_inline_3016_5_1921sys__native_url_parseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_scheme(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib10url_schemeEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_username(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_usernameEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_password(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_passwordEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_hostEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_port(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_portEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_pathEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_query(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib9url_queryEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_fragment(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_fragmentEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_join(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %13 = tail call noundef ptr @_ZN12__apo_stdlib8url_joinESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib10url_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %13

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !17
  %12 = add i64 %11, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %12) #24
  br label %13

13:                                               ; preds = %6, %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %20 = load i64, ptr %19, align 8, !tbaa !14
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  br label %25

22:                                               ; preds = %13
  %23 = load i64, ptr %16, align 8, !tbaa !17
  %24 = add i64 %23, 1
  tail call void @_ZdlPvm(ptr noundef %15, i64 noundef %24) #24
  br label %25

25:                                               ; preds = %18, %22
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %32 = load i64, ptr %31, align 8, !tbaa !14
  %33 = icmp ult i64 %32, 16
  tail call void @llvm.assume(i1 %33)
  br label %37

34:                                               ; preds = %25
  %35 = load i64, ptr %28, align 8, !tbaa !17
  %36 = add i64 %35, 1
  tail call void @_ZdlPvm(ptr noundef %27, i64 noundef %36) #24
  br label %37

37:                                               ; preds = %30, %34
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %39 = load ptr, ptr %38, align 8, !tbaa !18
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %44 = load i64, ptr %43, align 8, !tbaa !14
  %45 = icmp ult i64 %44, 16
  tail call void @llvm.assume(i1 %45)
  br label %49

46:                                               ; preds = %37
  %47 = load i64, ptr %40, align 8, !tbaa !17
  %48 = add i64 %47, 1
  tail call void @_ZdlPvm(ptr noundef %39, i64 noundef %48) #24
  br label %49

49:                                               ; preds = %42, %46
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %51 = load ptr, ptr %50, align 8, !tbaa !18
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %56 = load i64, ptr %55, align 8, !tbaa !14
  %57 = icmp ult i64 %56, 16
  tail call void @llvm.assume(i1 %57)
  br label %61

58:                                               ; preds = %49
  %59 = load i64, ptr %52, align 8, !tbaa !17
  %60 = add i64 %59, 1
  tail call void @_ZdlPvm(ptr noundef %51, i64 noundef %60) #24
  br label %61

61:                                               ; preds = %54, %58
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %63 = load ptr, ptr %62, align 8, !tbaa !18
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %68 = load i64, ptr %67, align 8, !tbaa !14
  %69 = icmp ult i64 %68, 16
  tail call void @llvm.assume(i1 %69)
  br label %73

70:                                               ; preds = %61
  %71 = load i64, ptr %64, align 8, !tbaa !17
  %72 = add i64 %71, 1
  tail call void @_ZdlPvm(ptr noundef %63, i64 noundef %72) #24
  br label %73

73:                                               ; preds = %66, %70
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %75 = load ptr, ptr %74, align 8, !tbaa !18
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %80 = load i64, ptr %79, align 8, !tbaa !14
  %81 = icmp ult i64 %80, 16
  tail call void @llvm.assume(i1 %81)
  br label %85

82:                                               ; preds = %73
  %83 = load i64, ptr %76, align 8, !tbaa !17
  %84 = add i64 %83, 1
  tail call void @_ZdlPvm(ptr noundef %75, i64 noundef %84) #24
  br label %85

85:                                               ; preds = %78, %82
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %87 = load ptr, ptr %86, align 8, !tbaa !18
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %92 = load i64, ptr %91, align 8, !tbaa !14
  %93 = icmp ult i64 %92, 16
  tail call void @llvm.assume(i1 %93)
  br label %97

94:                                               ; preds = %85
  %95 = load i64, ptr %88, align 8, !tbaa !17
  %96 = add i64 %95, 1
  tail call void @_ZdlPvm(ptr noundef %87, i64 noundef %96) #24
  br label %97

97:                                               ; preds = %90, %94
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib10url_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN12__apo_stdlib10url_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #24
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: cold noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: cold noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !41, !noalias !95
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !41
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !98, !noalias !95
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !98
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !41, !noalias !99
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !41
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !98, !noalias !99
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !98
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !102
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !103
  %21 = load ptr, ptr %9, align 8, !tbaa !104
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #24
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !105

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !102
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !106
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #24
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #25
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !106
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !107

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  store ptr %12, ptr %0, align 8, !tbaa !102
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
  store ptr %20, ptr %19, align 8, !tbaa !41
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !108

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #13
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #24
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !105

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #26
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
  tail call void @__clang_call_terminate(ptr %39) #25
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #13
  %44 = load ptr, ptr %0, align 8, !tbaa !102
  %45 = load i64, ptr %6, align 8, !tbaa !106
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #26
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
  store ptr %15, ptr %52, align 8, !tbaa !40
  %53 = load ptr, ptr %15, align 8, !tbaa !41
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !39
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !109
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !40
  %60 = load ptr, ptr %58, align 8, !tbaa !41
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !39
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !109
  store ptr %53, ptr %51, align 8, !tbaa !110
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !28
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #25
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !40
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %210
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %212, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !35
  br i1 %15, label %253, label %214

17:                                               ; preds = %3, %210
  %18 = phi ptr [ %211, %210 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !41
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
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #24
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
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #24
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
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #24
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
  tail call void @_ZdlPvm(ptr noundef %56, i64 noundef %61) #24
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
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #24
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
  tail call void @_ZdlPvm(ptr noundef %80, i64 noundef %85) #24
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
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #24
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
  tail call void @_ZdlPvm(ptr noundef %104, i64 noundef %109) #24
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
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #24
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
  tail call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #24
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
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #24
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
  tail call void @_ZdlPvm(ptr noundef %152, i64 noundef %157) #24
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
  tail call void @_ZdlPvm(ptr noundef %164, i64 noundef %169) #24
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
  tail call void @_ZdlPvm(ptr noundef %176, i64 noundef %181) #24
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
  tail call void @_ZdlPvm(ptr noundef %188, i64 noundef %193) #24
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
  tail call void @_ZdlPvm(ptr noundef %200, i64 noundef %205) #24
  br label %210

206:                                              ; preds = %198
  %207 = getelementptr inbounds nuw i8, ptr %19, i64 488
  %208 = load i64, ptr %207, align 8, !tbaa !14
  %209 = icmp ult i64 %208, 16
  tail call void @llvm.assume(i1 %209)
  br label %210

210:                                              ; preds = %206, %203
  %211 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %212 = load ptr, ptr %6, align 8, !tbaa !40
  %213 = icmp ult ptr %211, %212
  br i1 %213, label %17, label %10, !llvm.loop !111

214:                                              ; preds = %12
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %216 = load ptr, ptr %215, align 8, !tbaa !109
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
  tail call void @_ZdlPvm(ptr noundef %220, i64 noundef %229) #24
  br label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %232 = icmp eq ptr %231, %216
  br i1 %232, label %233, label %218, !llvm.loop !112

233:                                              ; preds = %230, %214
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !39
  %236 = load ptr, ptr %2, align 8, !tbaa !35
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
  tail call void @_ZdlPvm(ptr noundef %240, i64 noundef %249) #24
  br label %250

250:                                              ; preds = %247, %243
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %252 = icmp eq ptr %251, %236
  br i1 %252, label %271, label %238, !llvm.loop !112

253:                                              ; preds = %12
  %254 = load ptr, ptr %2, align 8, !tbaa !35
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
  tail call void @_ZdlPvm(ptr noundef %258, i64 noundef %267) #24
  br label %268

268:                                              ; preds = %265, %261
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %270 = icmp eq ptr %269, %254
  br i1 %270, label %271, label %256, !llvm.loop !112

271:                                              ; preds = %250, %268, %253, %233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !35
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !109
  %27 = load ptr, ptr %4, align 8, !tbaa !35
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
  %38 = load i64, ptr %37, align 8, !tbaa !106
  %39 = load ptr, ptr %0, align 8, !tbaa !102
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !104
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !41
  %51 = load ptr, ptr %3, align 8, !tbaa !28
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
  %68 = load ptr, ptr %5, align 8, !tbaa !104
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !40
  %70 = load ptr, ptr %69, align 8, !tbaa !41
  store ptr %70, ptr %18, align 8, !tbaa !39
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !109
  store ptr %70, ptr %3, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !106
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !102
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
  br i1 %30, label %31, label %32, !prof !113

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !41
  store ptr %35, ptr %24, align 8, !tbaa !41
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !114

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !41
  store ptr %48, ptr %42, align 8, !tbaa !41
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
  br i1 %64, label %65, label %66, !prof !113

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !41
  store ptr %69, ptr %60, align 8, !tbaa !41
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !102
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #24
  store ptr %55, ptr %0, align 8, !tbaa !102
  store i64 %52, ptr %14, align 8, !tbaa !106
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %31 ], [ %24, %32 ], [ %24, %34 ], [ %24, %44 ], [ %24, %45 ], [ %24, %47 ]
  store ptr %74, ptr %6, align 8, !tbaa !40
  %75 = load ptr, ptr %74, align 8, !tbaa !41
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !39
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !109
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !40
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !39
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %1) #13
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %0, align 8, !tbaa !8
  %6 = icmp ugt i64 %4, 15
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = icmp ugt i64 %4, 9223372036854775806
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

10:                                               ; preds = %7
  %11 = add nuw nsw i64 %4, 1
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  store ptr %12, ptr %0, align 8, !tbaa !18
  store i64 %4, ptr %5, align 8, !tbaa !17
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %5, %3 ]
  switch i64 %4, label %17 [
    i64 1, label %15
    i64 0, label %18
  ]

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !17
  store i8 %16, ptr %14, align 1, !tbaa !17
  br label %18

17:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr nonnull align 1 %1, i64 %4, i1 false)
  br label %18

18:                                               ; preds = %17, %15, %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %19, align 8, !tbaa !14
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 %4
  store i8 0, ptr %20, align 1, !tbaa !17
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %22 unwind label %24

22:                                               ; preds = %18
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %23 unwind label %26

23:                                               ; preds = %22
  ret void

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %32

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = load ptr, ptr %21, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %28) #13
  br label %31

31:                                               ; preds = %26, %30
  store ptr null, ptr %21, align 8, !tbaa !83
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi { ptr, i32 } [ %27, %31 ], [ %25, %24 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !18
  %35 = icmp eq ptr %34, %5
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, ptr %19, align 8, !tbaa !14
  %38 = icmp ult i64 %37, 16
  tail call void @llvm.assume(i1 %38)
  br label %42

39:                                               ; preds = %32
  %40 = load i64, ptr %5, align 8, !tbaa !17
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %34, i64 noundef %41) #24
  br label %42

42:                                               ; preds = %39, %36
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !18
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !14
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %8, ptr %0, align 8, !tbaa !8
  %9 = icmp eq ptr %4, null
  %10 = icmp ne i64 %6, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

13:                                               ; preds = %3
  %14 = icmp samesign ugt i64 %6, 15
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = add nuw nsw i64 %6, 1
  %17 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #23
  store ptr %17, ptr %0, align 8, !tbaa !18
  store i64 %6, ptr %8, align 8, !tbaa !17
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ %17, %15 ], [ %8, %13 ]
  switch i64 %6, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %4, align 1, !tbaa !17
  store i8 %21, ptr %19, align 1, !tbaa !17
  br label %23

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %4, i64 %6, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %24, align 8, !tbaa !14
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %6
  store i8 0, ptr %25, align 1, !tbaa !17
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %27 unwind label %29

27:                                               ; preds = %23
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %28 unwind label %31

28:                                               ; preds = %27
  ret void

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %37

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %26, align 8, !tbaa !83
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %33) #13
  br label %36

36:                                               ; preds = %31, %35
  store ptr null, ptr %26, align 8, !tbaa !83
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi { ptr, i32 } [ %32, %36 ], [ %30, %29 ]
  %39 = load ptr, ptr %0, align 8, !tbaa !18
  %40 = icmp eq ptr %39, %8
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, ptr %24, align 8, !tbaa !14
  %43 = icmp ult i64 %42, 16
  tail call void @llvm.assume(i1 %43)
  br label %47

44:                                               ; preds = %37
  %45 = load i64, ptr %8, align 8, !tbaa !17
  %46 = add i64 %45, 1
  tail call void @_ZdlPvm(ptr noundef %39, i64 noundef %46) #24
  br label %47

47:                                               ; preds = %44, %41
  resume { ptr, i32 } %38
}

declare void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !83
  %7 = load ptr, ptr %0, align 8, !tbaa !18
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %17

14:                                               ; preds = %6
  %15 = load i64, ptr %8, align 8, !tbaa !17
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %16) #24
  br label %17

17:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load i64, ptr %1, align 8, !tbaa !63
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !8
  %8 = icmp eq ptr %6, null
  %9 = icmp ne i64 %4, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

12:                                               ; preds = %3
  %13 = icmp ugt i64 %4, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = icmp ugt i64 %4, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %4, 1
  %19 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #23
  store ptr %19, ptr %0, align 8, !tbaa !18
  store i64 %4, ptr %7, align 8, !tbaa !17
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %4, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %6, align 1, !tbaa !17
  store i8 %23, ptr %21, align 1, !tbaa !17
  br label %25

24:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %6, i64 %4, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %4
  store i8 0, ptr %27, align 1, !tbaa !17
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
  %35 = load ptr, ptr %28, align 8, !tbaa !83
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %35) #13
  br label %38

38:                                               ; preds = %33, %37
  store ptr null, ptr %28, align 8, !tbaa !83
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi { ptr, i32 } [ %34, %38 ], [ %32, %31 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !18
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, ptr %26, align 8, !tbaa !14
  %45 = icmp ult i64 %44, 16
  tail call void @llvm.assume(i1 %45)
  br label %49

46:                                               ; preds = %39
  %47 = load i64, ptr %7, align 8, !tbaa !17
  %48 = add i64 %47, 1
  tail call void @_ZdlPvm(ptr noundef %41, i64 noundef %48) #24
  br label %49

49:                                               ; preds = %46, %43
  resume { ptr, i32 } %40
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %8, align 8, !tbaa !14
  store i8 0, ptr %7, align 8, !tbaa !17
  %9 = add i64 %4, %2
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = icmp ugt i64 %9, 9223372036854775806
  br i1 %12, label %42, label %13

13:                                               ; preds = %11
  %14 = tail call i64 @llvm.umax.i64(i64 %9, i64 30)
  %15 = add nuw nsw i64 %14, 1
  %16 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %15) #23
          to label %17 unwind label %66

17:                                               ; preds = %13
  store i8 0, ptr %16, align 1, !tbaa !17
  store ptr %16, ptr %0, align 8, !tbaa !18
  store i64 %14, ptr %7, align 8, !tbaa !17
  br label %18

18:                                               ; preds = %17, %6
  %19 = phi ptr [ %16, %17 ], [ %7, %6 ]
  %20 = icmp ugt i64 %2, 9223372036854775806
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = icmp eq ptr %19, %7
  %23 = load i64, ptr %7, align 8
  %24 = select i1 %22, i64 15, i64 %23
  %25 = icmp samesign ugt i64 %24, 14
  tail call void @llvm.assume(i1 %25)
  %26 = icmp ult i64 %24, 9223372036854775807
  tail call void @llvm.assume(i1 %26)
  %27 = icmp samesign ugt i64 %2, %24
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  switch i64 %2, label %31 [
    i64 0, label %35
    i64 1, label %29
  ]

29:                                               ; preds = %28
  %30 = load i8, ptr %1, align 1, !tbaa !17
  store i8 %30, ptr %19, align 1, !tbaa !17
  br label %35

31:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %1, i64 %2, i1 false)
  br label %35

32:                                               ; preds = %21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %1, i64 noundef %2)
          to label %33 unwind label %66

33:                                               ; preds = %32
  %34 = load ptr, ptr %0, align 8, !tbaa !18
  br label %35

35:                                               ; preds = %28, %33, %31, %29
  %36 = phi ptr [ %34, %33 ], [ %19, %31 ], [ %19, %29 ], [ %19, %28 ]
  store i64 %2, ptr %8, align 8, !tbaa !14
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %2
  store i8 0, ptr %37, align 1, !tbaa !17
  %38 = load i64, ptr %8, align 8, !tbaa !14
  %39 = icmp ult i64 %38, 9223372036854775807
  tail call void @llvm.assume(i1 %39)
  %40 = sub nuw nsw i64 9223372036854775806, %38
  %41 = icmp ult i64 %40, %4
  br i1 %41, label %42, label %45

42:                                               ; preds = %35, %18, %11
  %43 = phi ptr [ @.str.4, %11 ], [ @.str.9, %18 ], [ @.str.9, %35 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %43) #22
          to label %44 unwind label %66

44:                                               ; preds = %42
  unreachable

45:                                               ; preds = %35
  %46 = add nuw i64 %38, %4
  %47 = load ptr, ptr %0, align 8, !tbaa !18
  %48 = icmp eq ptr %47, %7
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = icmp samesign ult i64 %38, 16
  tail call void @llvm.assume(i1 %50)
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i64, ptr %7, align 8
  %53 = select i1 %48, i64 15, i64 %52
  %54 = icmp samesign ugt i64 %53, 14
  tail call void @llvm.assume(i1 %54)
  %55 = icmp ult i64 %53, 9223372036854775807
  tail call void @llvm.assume(i1 %55)
  %56 = icmp ugt i64 %46, %53
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = icmp eq i64 %4, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds nuw i8, ptr %47, i64 %38
  %61 = icmp eq i64 %4, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i8, ptr %3, align 1, !tbaa !17
  store i8 %63, ptr %60, align 1, !tbaa !17
  br label %77

64:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %3, i64 %4, i1 false)
  br label %77

65:                                               ; preds = %51
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %38, i64 noundef 0, ptr noundef %3, i64 noundef %4)
          to label %77 unwind label %66

66:                                               ; preds = %42, %65, %32, %13
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %0, align 8, !tbaa !18
  %69 = icmp eq ptr %68, %7
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i64, ptr %8, align 8, !tbaa !14
  %72 = icmp ult i64 %71, 16
  tail call void @llvm.assume(i1 %72)
  br label %76

73:                                               ; preds = %66
  %74 = load i64, ptr %7, align 8, !tbaa !17
  %75 = add i64 %74, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %75) #24
  br label %76

76:                                               ; preds = %70, %73
  resume { ptr, i32 } %67

77:                                               ; preds = %64, %62, %57, %65
  store i64 %46, ptr %8, align 8, !tbaa !14
  %78 = load ptr, ptr %0, align 8, !tbaa !18
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 %46
  store i8 0, ptr %79, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
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
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #23
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
  tail call void @_ZdlPvm(ptr noundef %13, i64 noundef %64) #24
  br label %65

65:                                               ; preds = %61, %63
  store ptr %35, ptr %0, align 8, !tbaa !18
  store i64 %33, ptr %14, align 8, !tbaa !17
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #16

declare void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { cold noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }

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
!19 = !{!20, !21, i64 8}
!20 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !21, i64 8}
!21 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !12, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !13, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!"branch_weights", i32 1, i32 1023}
!28 = !{!29, !33, i64 48}
!29 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !30, i64 0, !16, i64 8, !32, i64 16, !32, i64 48}
!30 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0}
!31 = !{!"any p2 pointer", !11, i64 0}
!32 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !33, i64 0, !33, i64 8, !33, i64 16, !30, i64 24}
!33 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!34 = !{!29, !33, i64 64}
!35 = !{!32, !33, i64 0}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!38 = distinct !{!38, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!39 = !{!32, !33, i64 8}
!40 = !{!32, !30, i64 24}
!41 = !{!33, !33, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!44 = distinct !{!44, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!47 = distinct !{!47, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!50 = distinct !{!50, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
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
!61 = distinct !{!61, !62, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!62 = distinct !{!62, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!63 = !{!16, !16, i64 0}
!64 = !{!10, !10, i64 0}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!67 = distinct !{!67, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!70 = distinct !{!70, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!73 = distinct !{!73, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!76 = distinct !{!76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!79 = distinct !{!79, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!80 = !{!81, !16, i64 0}
!81 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !16, i64 0, !10, i64 8}
!82 = !{!81, !10, i64 8}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!87 = distinct !{!87, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!90 = distinct !{!90, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!91 = !{!89, !86}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!94 = distinct !{!94, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!97 = distinct !{!97, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!98 = !{!11, !11, i64 0}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!101 = distinct !{!101, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!102 = !{!29, !30, i64 0}
!103 = !{!29, !30, i64 40}
!104 = !{!29, !30, i64 72}
!105 = distinct !{!105, !25}
!106 = !{!29, !16, i64 8}
!107 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!108 = distinct !{!108, !25}
!109 = !{!32, !33, i64 16}
!110 = !{!29, !33, i64 16}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!114 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
