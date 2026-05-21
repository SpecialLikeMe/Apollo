; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/96472e99c97a9abf.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/96472e99c97a9abf.cpp"
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1921sys__native_url_parseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %4, ptr %2, align 8, !tbaa !12, !alias.scope !9
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %6, align 8, !tbaa !16, !alias.scope !9
  store i8 0, ptr %4, align 8, !tbaa !19, !alias.scope !9
  br label %24

7:                                                ; preds = %1
  %8 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13, !noalias !9
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
  store ptr %15, ptr %2, align 8, !tbaa !20, !alias.scope !9
  store i64 %8, ptr %4, align 8, !tbaa !19, !alias.scope !9
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %15, %13 ], [ %4, %7 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %0, align 1, !tbaa !19, !noalias !9
  store i8 %19, ptr %17, align 1, !tbaa !19
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %0, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !16, !alias.scope !9
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !19
  br label %24

24:                                               ; preds = %5, %21
  %25 = invoke noundef ptr @_ZN12__apo_stdlib9url_parseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2)
          to label %26 unwind label %33

26:                                               ; preds = %24
  %27 = load ptr, ptr %2, align 8, !tbaa !20
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, ptr %4, align 8, !tbaa !19
  %31 = add i64 %30, 1
  call void @_ZdlPvm(ptr noundef %27, i64 noundef %31) #24
  br label %32

32:                                               ; preds = %26, %29
  ret ptr %25

33:                                               ; preds = %24
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load ptr, ptr %2, align 8, !tbaa !20
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i64, ptr %4, align 8, !tbaa !19
  %39 = add i64 %38, 1
  call void @_ZdlPvm(ptr noundef %35, i64 noundef %39) #24
  br label %40

40:                                               ; preds = %33, %37
  resume { ptr, i32 } %34
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
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
  store i32 17, ptr %13, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib10url_handleE, i64 16), ptr %12, align 8, !tbaa !24
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %15, ptr %14, align 8, !tbaa !12
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 0, ptr %16, align 8, !tbaa !16
  store i8 0, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %18, ptr %17, align 8, !tbaa !12
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i64 0, ptr %19, align 8, !tbaa !16
  store i8 0, ptr %18, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 80
  %21 = getelementptr inbounds nuw i8, ptr %12, i64 96
  store ptr %21, ptr %20, align 8, !tbaa !12
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i64 0, ptr %22, align 8, !tbaa !16
  store i8 0, ptr %21, align 8, !tbaa !19
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 112
  %24 = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %24, ptr %23, align 8, !tbaa !12
  %25 = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i64 0, ptr %25, align 8, !tbaa !16
  store i8 0, ptr %24, align 8, !tbaa !19
  %26 = getelementptr inbounds nuw i8, ptr %12, i64 144
  %27 = getelementptr inbounds nuw i8, ptr %12, i64 160
  store ptr %27, ptr %26, align 8, !tbaa !12
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 152
  store i64 0, ptr %28, align 8, !tbaa !16
  store i8 0, ptr %27, align 8, !tbaa !19
  %29 = getelementptr inbounds nuw i8, ptr %12, i64 176
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 192
  store ptr %30, ptr %29, align 8, !tbaa !12
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 184
  store i64 0, ptr %31, align 8, !tbaa !16
  store i8 0, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds nuw i8, ptr %12, i64 208
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 224
  store ptr %33, ptr %32, align 8, !tbaa !12
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 216
  store i64 0, ptr %34, align 8, !tbaa !16
  store i8 0, ptr %33, align 8, !tbaa !19
  %35 = getelementptr inbounds nuw i8, ptr %12, i64 240
  %36 = getelementptr inbounds nuw i8, ptr %12, i64 256
  store ptr %36, ptr %35, align 8, !tbaa !12
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 248
  store i64 0, ptr %37, align 8, !tbaa !16
  store i8 0, ptr %36, align 8, !tbaa !19
  %38 = load ptr, ptr %0, align 8, !tbaa !20
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !16
  %41 = icmp ult i64 %40, 9223372036854775807
  tail call void @llvm.assume(i1 %41)
  %42 = icmp eq i64 %40, 0
  br i1 %42, label %530, label %43

43:                                               ; preds = %1
  %44 = icmp samesign ult i64 %40, 3
  br i1 %44, label %114, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 %40
  %47 = ptrtoint ptr %46 to i64
  br label %48

48:                                               ; preds = %57, %45
  %49 = phi i64 [ %40, %45 ], [ %60, %57 ]
  %50 = phi ptr [ %38, %45 ], [ %58, %57 ]
  %51 = add i64 %49, -2
  %52 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %50, i32 noundef 58, i64 noundef %51) #13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %110, label %54

54:                                               ; preds = %48
  %55 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %52, ptr noundef nonnull dereferenceable(3) @.str, i64 3)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %47, %59
  %61 = icmp ult i64 %60, 3
  br i1 %61, label %110, label %48, !llvm.loop !26

62:                                               ; preds = %54
  %63 = ptrtoint ptr %52 to i64
  %64 = ptrtoint ptr %38 to i64
  %65 = sub i64 %63, %64
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %110, label %67

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %68 = tail call i64 @llvm.umin.i64(i64 %40, i64 %65)
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %69, ptr %2, align 8, !tbaa !12
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
  store ptr %76, ptr %2, align 8, !tbaa !20
  store i64 %68, ptr %69, align 8, !tbaa !19
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi ptr [ %76, %74 ], [ %69, %72 ]
  switch i64 %68, label %81 [
    i64 1, label %79
    i64 0, label %82
  ]

79:                                               ; preds = %77
  %80 = load i8, ptr %38, align 1, !tbaa !19
  store i8 %80, ptr %78, align 1, !tbaa !19
  br label %82

81:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %78, ptr nonnull align 1 %38, i64 %68, i1 false)
  br label %82

82:                                               ; preds = %77, %79, %81
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %68, ptr %83, align 8, !tbaa !16
  %84 = getelementptr inbounds nuw i8, ptr %78, i64 %68
  store i8 0, ptr %84, align 1, !tbaa !19
  %85 = load ptr, ptr %2, align 8, !tbaa !20
  %86 = icmp eq ptr %85, %69
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i64, ptr %83, align 8, !tbaa !16
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  switch i64 %88, label %92 [
    i64 0, label %93
    i64 1, label %90
  ]

90:                                               ; preds = %87
  %91 = load i8, ptr %85, align 1, !tbaa !19
  store i8 %91, ptr %15, align 1, !tbaa !19
  br label %93

92:                                               ; preds = %87
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %15, ptr align 1 %85, i64 %88, i1 false)
  br label %93

93:                                               ; preds = %92, %90, %87
  store i64 %88, ptr %16, align 8, !tbaa !16
  %94 = getelementptr inbounds nuw i8, ptr %15, i64 %88
  store i8 0, ptr %94, align 1, !tbaa !19
  br label %99

95:                                               ; preds = %82
  store ptr %85, ptr %14, align 8, !tbaa !20
  %96 = load i64, ptr %83, align 8, !tbaa !16
  %97 = icmp ult i64 %96, 9223372036854775807
  call void @llvm.assume(i1 %97)
  store i64 %96, ptr %16, align 8, !tbaa !16
  %98 = load i64, ptr %69, align 8, !tbaa !19
  store i64 %98, ptr %15, align 8, !tbaa !19
  store ptr %69, ptr %2, align 8, !tbaa !20
  br label %99

99:                                               ; preds = %93, %95
  %100 = phi ptr [ %85, %93 ], [ %69, %95 ]
  store i64 0, ptr %83, align 8, !tbaa !16
  store i8 0, ptr %100, align 1, !tbaa !19
  %101 = load ptr, ptr %2, align 8, !tbaa !20
  %102 = icmp eq ptr %101, %69
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i64, ptr %69, align 8, !tbaa !19
  %105 = add i64 %104, 1
  call void @_ZdlPvm(ptr noundef %101, i64 noundef %105) #24
  br label %106

106:                                              ; preds = %99, %103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %107 = add i64 %65, 3
  %108 = getelementptr inbounds nuw i8, ptr %38, i64 %107
  %109 = sub i64 %40, %107
  br label %110

110:                                              ; preds = %57, %48, %106, %62
  %111 = phi i64 [ %40, %62 ], [ %109, %106 ], [ %40, %48 ], [ %40, %57 ]
  %112 = phi ptr [ %38, %62 ], [ %108, %106 ], [ %38, %48 ], [ %38, %57 ]
  %113 = icmp eq i64 %111, 0
  br i1 %113, label %530, label %114

114:                                              ; preds = %43, %110
  %115 = phi ptr [ %112, %110 ], [ %38, %43 ]
  %116 = phi i64 [ %111, %110 ], [ %40, %43 ]
  %117 = call ptr @memchr(ptr noundef %115, i32 noundef 35, i64 noundef %116) #13
  %118 = icmp eq ptr %117, null
  %119 = ptrtoint ptr %117 to i64
  %120 = ptrtoint ptr %115 to i64
  %121 = sub i64 %119, %120
  %122 = icmp eq i64 %121, -1
  %123 = or i1 %118, %122
  br i1 %123, label %185, label %124

124:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %125 = add nuw i64 %121, 1
  %126 = icmp ult i64 %121, %116
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %125, i64 noundef %116) #22
  unreachable

128:                                              ; preds = %124
  %129 = sub nuw i64 %116, %125
  %130 = getelementptr inbounds nuw i8, ptr %115, i64 %125
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %131, ptr %3, align 8, !tbaa !12
  %132 = icmp ugt i64 %129, 15
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = icmp ugt i64 %129, 9223372036854775806
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

136:                                              ; preds = %133
  %137 = add nuw nsw i64 %129, 1
  %138 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %137) #23
  store ptr %138, ptr %3, align 8, !tbaa !20
  store i64 %129, ptr %131, align 8, !tbaa !19
  br label %139

139:                                              ; preds = %136, %128
  %140 = phi ptr [ %138, %136 ], [ %131, %128 ]
  switch i64 %129, label %143 [
    i64 1, label %141
    i64 0, label %144
  ]

141:                                              ; preds = %139
  %142 = load i8, ptr %130, align 1, !tbaa !19
  store i8 %142, ptr %140, align 1, !tbaa !19
  br label %144

143:                                              ; preds = %139
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %140, ptr nonnull align 1 %130, i64 %129, i1 false)
  br label %144

144:                                              ; preds = %143, %141, %139
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %129, ptr %145, align 8, !tbaa !16
  %146 = getelementptr inbounds nuw i8, ptr %140, i64 %129
  store i8 0, ptr %146, align 1, !tbaa !19
  %147 = load ptr, ptr %35, align 8, !tbaa !20
  %148 = icmp eq ptr %147, %36
  %149 = load ptr, ptr %3, align 8, !tbaa !20
  %150 = icmp eq ptr %149, %131
  br i1 %148, label %151, label %152

151:                                              ; preds = %144
  br i1 %150, label %153, label %167

152:                                              ; preds = %144
  br i1 %150, label %153, label %165

153:                                              ; preds = %152, %151
  %154 = load i64, ptr %145, align 8, !tbaa !16
  %155 = icmp ult i64 %154, 16
  call void @llvm.assume(i1 %155)
  switch i64 %154, label %158 [
    i64 0, label %159
    i64 1, label %156
  ]

156:                                              ; preds = %153
  %157 = load i8, ptr %149, align 1, !tbaa !19
  store i8 %157, ptr %147, align 1, !tbaa !19
  br label %159

158:                                              ; preds = %153
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %147, ptr align 1 %149, i64 %154, i1 false)
  br label %159

159:                                              ; preds = %158, %156, %153
  %160 = load i64, ptr %145, align 8, !tbaa !16
  %161 = icmp ult i64 %160, 9223372036854775807
  call void @llvm.assume(i1 %161)
  store i64 %160, ptr %37, align 8, !tbaa !16
  %162 = load ptr, ptr %35, align 8, !tbaa !20
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 %160
  store i8 0, ptr %163, align 1, !tbaa !19
  %164 = load ptr, ptr %3, align 8, !tbaa !20
  br label %176

165:                                              ; preds = %152
  %166 = load i64, ptr %36, align 8, !tbaa !19
  br label %167

167:                                              ; preds = %165, %151
  %168 = phi ptr [ %147, %165 ], [ null, %151 ]
  %169 = phi i64 [ %166, %165 ], [ undef, %151 ]
  store ptr %149, ptr %35, align 8, !tbaa !20
  %170 = load i64, ptr %145, align 8, !tbaa !16
  %171 = icmp ult i64 %170, 9223372036854775807
  call void @llvm.assume(i1 %171)
  store i64 %170, ptr %37, align 8, !tbaa !16
  %172 = load i64, ptr %131, align 8, !tbaa !19
  store i64 %172, ptr %36, align 8, !tbaa !19
  %173 = icmp eq ptr %168, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %167
  store ptr %168, ptr %3, align 8, !tbaa !20
  store i64 %169, ptr %131, align 8, !tbaa !19
  br label %176

175:                                              ; preds = %167
  store ptr %131, ptr %3, align 8, !tbaa !20
  br label %176

176:                                              ; preds = %159, %174, %175
  %177 = phi ptr [ %164, %159 ], [ %168, %174 ], [ %131, %175 ]
  store i64 0, ptr %145, align 8, !tbaa !16
  store i8 0, ptr %177, align 1, !tbaa !19
  %178 = load ptr, ptr %3, align 8, !tbaa !20
  %179 = icmp eq ptr %178, %131
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = load i64, ptr %131, align 8, !tbaa !19
  %182 = add i64 %181, 1
  call void @_ZdlPvm(ptr noundef %178, i64 noundef %182) #24
  br label %183

183:                                              ; preds = %176, %180
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %184 = icmp eq i64 %121, 0
  br i1 %184, label %530, label %185

185:                                              ; preds = %114, %183
  %186 = phi i64 [ %121, %183 ], [ %116, %114 ]
  %187 = call ptr @memchr(ptr noundef %115, i32 noundef 63, i64 noundef %186) #13
  %188 = icmp eq ptr %187, null
  %189 = ptrtoint ptr %187 to i64
  %190 = ptrtoint ptr %115 to i64
  %191 = sub i64 %189, %190
  %192 = icmp eq i64 %191, -1
  %193 = or i1 %188, %192
  br i1 %193, label %255, label %194

194:                                              ; preds = %185
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %195 = add nuw i64 %191, 1
  %196 = icmp ult i64 %191, %186
  br i1 %196, label %198, label %197

197:                                              ; preds = %194
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %195, i64 noundef %186) #22
  unreachable

198:                                              ; preds = %194
  %199 = sub nuw i64 %186, %195
  %200 = getelementptr inbounds nuw i8, ptr %115, i64 %195
  %201 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %201, ptr %4, align 8, !tbaa !12
  %202 = icmp ugt i64 %199, 15
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = icmp ugt i64 %199, 9223372036854775806
  br i1 %204, label %205, label %206

205:                                              ; preds = %203
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

206:                                              ; preds = %203
  %207 = add nuw nsw i64 %199, 1
  %208 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %207) #23
  store ptr %208, ptr %4, align 8, !tbaa !20
  store i64 %199, ptr %201, align 8, !tbaa !19
  br label %209

209:                                              ; preds = %206, %198
  %210 = phi ptr [ %208, %206 ], [ %201, %198 ]
  switch i64 %199, label %213 [
    i64 1, label %211
    i64 0, label %214
  ]

211:                                              ; preds = %209
  %212 = load i8, ptr %200, align 1, !tbaa !19
  store i8 %212, ptr %210, align 1, !tbaa !19
  br label %214

213:                                              ; preds = %209
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %210, ptr nonnull align 1 %200, i64 %199, i1 false)
  br label %214

214:                                              ; preds = %213, %211, %209
  %215 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %199, ptr %215, align 8, !tbaa !16
  %216 = getelementptr inbounds nuw i8, ptr %210, i64 %199
  store i8 0, ptr %216, align 1, !tbaa !19
  %217 = load ptr, ptr %32, align 8, !tbaa !20
  %218 = icmp eq ptr %217, %33
  %219 = load ptr, ptr %4, align 8, !tbaa !20
  %220 = icmp eq ptr %219, %201
  br i1 %218, label %221, label %222

221:                                              ; preds = %214
  br i1 %220, label %223, label %237

222:                                              ; preds = %214
  br i1 %220, label %223, label %235

223:                                              ; preds = %222, %221
  %224 = load i64, ptr %215, align 8, !tbaa !16
  %225 = icmp ult i64 %224, 16
  call void @llvm.assume(i1 %225)
  switch i64 %224, label %228 [
    i64 0, label %229
    i64 1, label %226
  ]

226:                                              ; preds = %223
  %227 = load i8, ptr %219, align 1, !tbaa !19
  store i8 %227, ptr %217, align 1, !tbaa !19
  br label %229

228:                                              ; preds = %223
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %217, ptr align 1 %219, i64 %224, i1 false)
  br label %229

229:                                              ; preds = %228, %226, %223
  %230 = load i64, ptr %215, align 8, !tbaa !16
  %231 = icmp ult i64 %230, 9223372036854775807
  call void @llvm.assume(i1 %231)
  store i64 %230, ptr %34, align 8, !tbaa !16
  %232 = load ptr, ptr %32, align 8, !tbaa !20
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 %230
  store i8 0, ptr %233, align 1, !tbaa !19
  %234 = load ptr, ptr %4, align 8, !tbaa !20
  br label %246

235:                                              ; preds = %222
  %236 = load i64, ptr %33, align 8, !tbaa !19
  br label %237

237:                                              ; preds = %235, %221
  %238 = phi ptr [ %217, %235 ], [ null, %221 ]
  %239 = phi i64 [ %236, %235 ], [ undef, %221 ]
  store ptr %219, ptr %32, align 8, !tbaa !20
  %240 = load i64, ptr %215, align 8, !tbaa !16
  %241 = icmp ult i64 %240, 9223372036854775807
  call void @llvm.assume(i1 %241)
  store i64 %240, ptr %34, align 8, !tbaa !16
  %242 = load i64, ptr %201, align 8, !tbaa !19
  store i64 %242, ptr %33, align 8, !tbaa !19
  %243 = icmp eq ptr %238, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %237
  store ptr %238, ptr %4, align 8, !tbaa !20
  store i64 %239, ptr %201, align 8, !tbaa !19
  br label %246

245:                                              ; preds = %237
  store ptr %201, ptr %4, align 8, !tbaa !20
  br label %246

246:                                              ; preds = %229, %244, %245
  %247 = phi ptr [ %234, %229 ], [ %238, %244 ], [ %201, %245 ]
  store i64 0, ptr %215, align 8, !tbaa !16
  store i8 0, ptr %247, align 1, !tbaa !19
  %248 = load ptr, ptr %4, align 8, !tbaa !20
  %249 = icmp eq ptr %248, %201
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = load i64, ptr %201, align 8, !tbaa !19
  %252 = add i64 %251, 1
  call void @_ZdlPvm(ptr noundef %248, i64 noundef %252) #24
  br label %253

253:                                              ; preds = %246, %250
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %254 = icmp eq i64 %191, 0
  br i1 %254, label %530, label %255

255:                                              ; preds = %185, %253
  %256 = phi i64 [ %191, %253 ], [ %186, %185 ]
  %257 = call ptr @memchr(ptr noundef %115, i32 noundef 47, i64 noundef %256) #13
  %258 = icmp eq ptr %257, null
  %259 = ptrtoint ptr %257 to i64
  %260 = ptrtoint ptr %115 to i64
  %261 = sub i64 %259, %260
  %262 = icmp eq i64 %261, -1
  %263 = or i1 %258, %262
  br i1 %263, label %325, label %264

264:                                              ; preds = %255
  %265 = call i64 @llvm.umin.i64(i64 %256, i64 %261)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %266 = icmp ugt i64 %261, %256
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %261, i64 noundef %256) #22
  unreachable

268:                                              ; preds = %264
  %269 = sub nuw i64 %256, %261
  %270 = getelementptr inbounds nuw i8, ptr %115, i64 %261
  %271 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %271, ptr %5, align 8, !tbaa !12
  %272 = icmp ugt i64 %269, 15
  br i1 %272, label %273, label %279

273:                                              ; preds = %268
  %274 = icmp ugt i64 %269, 9223372036854775806
  br i1 %274, label %275, label %276

275:                                              ; preds = %273
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

276:                                              ; preds = %273
  %277 = add nuw nsw i64 %269, 1
  %278 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %277) #23
  store ptr %278, ptr %5, align 8, !tbaa !20
  store i64 %269, ptr %271, align 8, !tbaa !19
  br label %279

279:                                              ; preds = %276, %268
  %280 = phi ptr [ %278, %276 ], [ %271, %268 ]
  switch i64 %269, label %283 [
    i64 1, label %281
    i64 0, label %284
  ]

281:                                              ; preds = %279
  %282 = load i8, ptr %270, align 1, !tbaa !19
  store i8 %282, ptr %280, align 1, !tbaa !19
  br label %284

283:                                              ; preds = %279
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %280, ptr align 1 %270, i64 %269, i1 false)
  br label %284

284:                                              ; preds = %283, %281, %279
  %285 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %269, ptr %285, align 8, !tbaa !16
  %286 = getelementptr inbounds nuw i8, ptr %280, i64 %269
  store i8 0, ptr %286, align 1, !tbaa !19
  %287 = load ptr, ptr %29, align 8, !tbaa !20
  %288 = icmp eq ptr %287, %30
  %289 = load ptr, ptr %5, align 8, !tbaa !20
  %290 = icmp eq ptr %289, %271
  br i1 %288, label %291, label %292

291:                                              ; preds = %284
  br i1 %290, label %293, label %307

292:                                              ; preds = %284
  br i1 %290, label %293, label %305

293:                                              ; preds = %292, %291
  %294 = load i64, ptr %285, align 8, !tbaa !16
  %295 = icmp ult i64 %294, 16
  call void @llvm.assume(i1 %295)
  switch i64 %294, label %298 [
    i64 0, label %299
    i64 1, label %296
  ]

296:                                              ; preds = %293
  %297 = load i8, ptr %289, align 1, !tbaa !19
  store i8 %297, ptr %287, align 1, !tbaa !19
  br label %299

298:                                              ; preds = %293
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %287, ptr align 1 %289, i64 %294, i1 false)
  br label %299

299:                                              ; preds = %298, %296, %293
  %300 = load i64, ptr %285, align 8, !tbaa !16
  %301 = icmp ult i64 %300, 9223372036854775807
  call void @llvm.assume(i1 %301)
  store i64 %300, ptr %31, align 8, !tbaa !16
  %302 = load ptr, ptr %29, align 8, !tbaa !20
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 %300
  store i8 0, ptr %303, align 1, !tbaa !19
  %304 = load ptr, ptr %5, align 8, !tbaa !20
  br label %316

305:                                              ; preds = %292
  %306 = load i64, ptr %30, align 8, !tbaa !19
  br label %307

307:                                              ; preds = %305, %291
  %308 = phi ptr [ %287, %305 ], [ null, %291 ]
  %309 = phi i64 [ %306, %305 ], [ undef, %291 ]
  store ptr %289, ptr %29, align 8, !tbaa !20
  %310 = load i64, ptr %285, align 8, !tbaa !16
  %311 = icmp ult i64 %310, 9223372036854775807
  call void @llvm.assume(i1 %311)
  store i64 %310, ptr %31, align 8, !tbaa !16
  %312 = load i64, ptr %271, align 8, !tbaa !19
  store i64 %312, ptr %30, align 8, !tbaa !19
  %313 = icmp eq ptr %308, null
  br i1 %313, label %315, label %314

314:                                              ; preds = %307
  store ptr %308, ptr %5, align 8, !tbaa !20
  store i64 %309, ptr %271, align 8, !tbaa !19
  br label %316

315:                                              ; preds = %307
  store ptr %271, ptr %5, align 8, !tbaa !20
  br label %316

316:                                              ; preds = %299, %314, %315
  %317 = phi ptr [ %304, %299 ], [ %308, %314 ], [ %271, %315 ]
  store i64 0, ptr %285, align 8, !tbaa !16
  store i8 0, ptr %317, align 1, !tbaa !19
  %318 = load ptr, ptr %5, align 8, !tbaa !20
  %319 = icmp eq ptr %318, %271
  br i1 %319, label %323, label %320

320:                                              ; preds = %316
  %321 = load i64, ptr %271, align 8, !tbaa !19
  %322 = add i64 %321, 1
  call void @_ZdlPvm(ptr noundef %318, i64 noundef %322) #24
  br label %323

323:                                              ; preds = %316, %320
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %324 = icmp eq i64 %265, 0
  br i1 %324, label %530, label %325

325:                                              ; preds = %255, %323
  %326 = phi i64 [ %265, %323 ], [ %256, %255 ]
  %327 = call ptr @memchr(ptr noundef %115, i32 noundef 64, i64 noundef %326) #13
  %328 = icmp eq ptr %327, null
  %329 = ptrtoint ptr %327 to i64
  %330 = ptrtoint ptr %115 to i64
  %331 = sub i64 %329, %330
  %332 = icmp eq i64 %331, -1
  %333 = or i1 %328, %332
  br i1 %333, label %532, label %334

334:                                              ; preds = %325
  %335 = call i64 @llvm.umin.i64(i64 %326, i64 %331)
  %336 = add nuw i64 %331, 1
  %337 = icmp ult i64 %331, %326
  br i1 %337, label %339, label %338

338:                                              ; preds = %334
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %336, i64 noundef %326) #22
  unreachable

339:                                              ; preds = %334
  %340 = sub nuw i64 %326, %336
  %341 = getelementptr inbounds nuw i8, ptr %115, i64 %336
  %342 = icmp eq ptr %327, %115
  br i1 %342, label %343, label %345

343:                                              ; preds = %339
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %344 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %344, ptr %8, align 8, !tbaa !12
  br label %486

345:                                              ; preds = %339
  %346 = call ptr @memchr(ptr noundef %115, i32 noundef 58, i64 noundef %335) #13
  %347 = icmp eq ptr %346, null
  %348 = ptrtoint ptr %346 to i64
  %349 = sub i64 %348, %330
  %350 = icmp eq i64 %349, -1
  %351 = or i1 %347, %350
  br i1 %351, label %469, label %352

352:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %353 = call i64 @llvm.umin.i64(i64 %335, i64 %349)
  %354 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %354, ptr %6, align 8, !tbaa !12
  %355 = icmp eq ptr %115, null
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

357:                                              ; preds = %352
  %358 = icmp ugt i64 %353, 15
  br i1 %358, label %359, label %365

359:                                              ; preds = %357
  %360 = icmp ugt i64 %353, 9223372036854775806
  br i1 %360, label %361, label %362

361:                                              ; preds = %359
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

362:                                              ; preds = %359
  %363 = add nuw nsw i64 %353, 1
  %364 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %363) #23
  store ptr %364, ptr %6, align 8, !tbaa !20
  store i64 %353, ptr %354, align 8, !tbaa !19
  br label %365

365:                                              ; preds = %362, %357
  %366 = phi ptr [ %364, %362 ], [ %354, %357 ]
  switch i64 %353, label %369 [
    i64 1, label %367
    i64 0, label %370
  ]

367:                                              ; preds = %365
  %368 = load i8, ptr %115, align 1, !tbaa !19
  store i8 %368, ptr %366, align 1, !tbaa !19
  br label %370

369:                                              ; preds = %365
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %366, ptr nonnull align 1 %115, i64 %353, i1 false)
  br label %370

370:                                              ; preds = %369, %367, %365
  %371 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %353, ptr %371, align 8, !tbaa !16
  %372 = getelementptr inbounds nuw i8, ptr %366, i64 %353
  store i8 0, ptr %372, align 1, !tbaa !19
  %373 = load ptr, ptr %17, align 8, !tbaa !20
  %374 = icmp eq ptr %373, %18
  %375 = load ptr, ptr %6, align 8, !tbaa !20
  %376 = icmp eq ptr %375, %354
  br i1 %374, label %377, label %378

377:                                              ; preds = %370
  br i1 %376, label %379, label %393

378:                                              ; preds = %370
  br i1 %376, label %379, label %391

379:                                              ; preds = %378, %377
  %380 = load i64, ptr %371, align 8, !tbaa !16
  %381 = icmp ult i64 %380, 16
  call void @llvm.assume(i1 %381)
  switch i64 %380, label %384 [
    i64 0, label %385
    i64 1, label %382
  ]

382:                                              ; preds = %379
  %383 = load i8, ptr %375, align 1, !tbaa !19
  store i8 %383, ptr %373, align 1, !tbaa !19
  br label %385

384:                                              ; preds = %379
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %373, ptr align 1 %375, i64 %380, i1 false)
  br label %385

385:                                              ; preds = %384, %382, %379
  %386 = load i64, ptr %371, align 8, !tbaa !16
  %387 = icmp ult i64 %386, 9223372036854775807
  call void @llvm.assume(i1 %387)
  store i64 %386, ptr %19, align 8, !tbaa !16
  %388 = load ptr, ptr %17, align 8, !tbaa !20
  %389 = getelementptr inbounds nuw i8, ptr %388, i64 %386
  store i8 0, ptr %389, align 1, !tbaa !19
  %390 = load ptr, ptr %6, align 8, !tbaa !20
  br label %402

391:                                              ; preds = %378
  %392 = load i64, ptr %18, align 8, !tbaa !19
  br label %393

393:                                              ; preds = %391, %377
  %394 = phi ptr [ %373, %391 ], [ null, %377 ]
  %395 = phi i64 [ %392, %391 ], [ undef, %377 ]
  store ptr %375, ptr %17, align 8, !tbaa !20
  %396 = load i64, ptr %371, align 8, !tbaa !16
  %397 = icmp ult i64 %396, 9223372036854775807
  call void @llvm.assume(i1 %397)
  store i64 %396, ptr %19, align 8, !tbaa !16
  %398 = load i64, ptr %354, align 8, !tbaa !19
  store i64 %398, ptr %18, align 8, !tbaa !19
  %399 = icmp eq ptr %394, null
  br i1 %399, label %401, label %400

400:                                              ; preds = %393
  store ptr %394, ptr %6, align 8, !tbaa !20
  store i64 %395, ptr %354, align 8, !tbaa !19
  br label %402

401:                                              ; preds = %393
  store ptr %354, ptr %6, align 8, !tbaa !20
  br label %402

402:                                              ; preds = %385, %400, %401
  %403 = phi ptr [ %390, %385 ], [ %394, %400 ], [ %354, %401 ]
  store i64 0, ptr %371, align 8, !tbaa !16
  store i8 0, ptr %403, align 1, !tbaa !19
  %404 = load ptr, ptr %6, align 8, !tbaa !20
  %405 = icmp eq ptr %404, %354
  br i1 %405, label %409, label %406

406:                                              ; preds = %402
  %407 = load i64, ptr %354, align 8, !tbaa !19
  %408 = add i64 %407, 1
  call void @_ZdlPvm(ptr noundef %404, i64 noundef %408) #24
  br label %409

409:                                              ; preds = %402, %406
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %410 = add nuw i64 %349, 1
  %411 = icmp ult i64 %349, %335
  br i1 %411, label %413, label %412

412:                                              ; preds = %409
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %410, i64 noundef %335) #22
  unreachable

413:                                              ; preds = %409
  %414 = sub nuw i64 %335, %410
  %415 = getelementptr inbounds nuw i8, ptr %115, i64 %410
  %416 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %416, ptr %7, align 8, !tbaa !12
  %417 = icmp ugt i64 %414, 15
  br i1 %417, label %418, label %424

418:                                              ; preds = %413
  %419 = icmp ugt i64 %414, 9223372036854775806
  br i1 %419, label %420, label %421

420:                                              ; preds = %418
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

421:                                              ; preds = %418
  %422 = add nuw nsw i64 %414, 1
  %423 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %422) #23
  store ptr %423, ptr %7, align 8, !tbaa !20
  store i64 %414, ptr %416, align 8, !tbaa !19
  br label %424

424:                                              ; preds = %421, %413
  %425 = phi ptr [ %423, %421 ], [ %416, %413 ]
  switch i64 %414, label %428 [
    i64 1, label %426
    i64 0, label %429
  ]

426:                                              ; preds = %424
  %427 = load i8, ptr %415, align 1, !tbaa !19
  store i8 %427, ptr %425, align 1, !tbaa !19
  br label %429

428:                                              ; preds = %424
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %425, ptr nonnull align 1 %415, i64 %414, i1 false)
  br label %429

429:                                              ; preds = %428, %426, %424
  %430 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %414, ptr %430, align 8, !tbaa !16
  %431 = getelementptr inbounds nuw i8, ptr %425, i64 %414
  store i8 0, ptr %431, align 1, !tbaa !19
  %432 = load ptr, ptr %20, align 8, !tbaa !20
  %433 = icmp eq ptr %432, %21
  %434 = load ptr, ptr %7, align 8, !tbaa !20
  %435 = icmp eq ptr %434, %416
  br i1 %433, label %436, label %437

436:                                              ; preds = %429
  br i1 %435, label %438, label %452

437:                                              ; preds = %429
  br i1 %435, label %438, label %450

438:                                              ; preds = %437, %436
  %439 = load i64, ptr %430, align 8, !tbaa !16
  %440 = icmp ult i64 %439, 16
  call void @llvm.assume(i1 %440)
  switch i64 %439, label %443 [
    i64 0, label %444
    i64 1, label %441
  ]

441:                                              ; preds = %438
  %442 = load i8, ptr %434, align 1, !tbaa !19
  store i8 %442, ptr %432, align 1, !tbaa !19
  br label %444

443:                                              ; preds = %438
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %432, ptr align 1 %434, i64 %439, i1 false)
  br label %444

444:                                              ; preds = %443, %441, %438
  %445 = load i64, ptr %430, align 8, !tbaa !16
  %446 = icmp ult i64 %445, 9223372036854775807
  call void @llvm.assume(i1 %446)
  store i64 %445, ptr %22, align 8, !tbaa !16
  %447 = load ptr, ptr %20, align 8, !tbaa !20
  %448 = getelementptr inbounds nuw i8, ptr %447, i64 %445
  store i8 0, ptr %448, align 1, !tbaa !19
  %449 = load ptr, ptr %7, align 8, !tbaa !20
  br label %461

450:                                              ; preds = %437
  %451 = load i64, ptr %21, align 8, !tbaa !19
  br label %452

452:                                              ; preds = %450, %436
  %453 = phi ptr [ %432, %450 ], [ null, %436 ]
  %454 = phi i64 [ %451, %450 ], [ undef, %436 ]
  store ptr %434, ptr %20, align 8, !tbaa !20
  %455 = load i64, ptr %430, align 8, !tbaa !16
  %456 = icmp ult i64 %455, 9223372036854775807
  call void @llvm.assume(i1 %456)
  store i64 %455, ptr %22, align 8, !tbaa !16
  %457 = load i64, ptr %416, align 8, !tbaa !19
  store i64 %457, ptr %21, align 8, !tbaa !19
  %458 = icmp eq ptr %453, null
  br i1 %458, label %460, label %459

459:                                              ; preds = %452
  store ptr %453, ptr %7, align 8, !tbaa !20
  store i64 %454, ptr %416, align 8, !tbaa !19
  br label %461

460:                                              ; preds = %452
  store ptr %416, ptr %7, align 8, !tbaa !20
  br label %461

461:                                              ; preds = %444, %459, %460
  %462 = phi ptr [ %449, %444 ], [ %453, %459 ], [ %416, %460 ]
  store i64 0, ptr %430, align 8, !tbaa !16
  store i8 0, ptr %462, align 1, !tbaa !19
  %463 = load ptr, ptr %7, align 8, !tbaa !20
  %464 = icmp eq ptr %463, %416
  br i1 %464, label %468, label %465

465:                                              ; preds = %461
  %466 = load i64, ptr %416, align 8, !tbaa !19
  %467 = add i64 %466, 1
  call void @_ZdlPvm(ptr noundef %463, i64 noundef %467) #24
  br label %468

468:                                              ; preds = %461, %465
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %528

469:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %470 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %470, ptr %8, align 8, !tbaa !12
  %471 = icmp eq ptr %115, null
  br i1 %471, label %472, label %473

472:                                              ; preds = %469
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

473:                                              ; preds = %469
  %474 = icmp ugt i64 %335, 15
  br i1 %474, label %475, label %481

475:                                              ; preds = %473
  %476 = icmp ugt i64 %335, 9223372036854775806
  br i1 %476, label %477, label %478

477:                                              ; preds = %475
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

478:                                              ; preds = %475
  %479 = add nuw nsw i64 %335, 1
  %480 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %479) #23
  store ptr %480, ptr %8, align 8, !tbaa !20
  store i64 %335, ptr %470, align 8, !tbaa !19
  br label %481

481:                                              ; preds = %478, %473
  %482 = phi ptr [ %480, %478 ], [ %470, %473 ]
  switch i64 %335, label %485 [
    i64 1, label %483
    i64 0, label %486
  ]

483:                                              ; preds = %481
  %484 = load i8, ptr %115, align 1, !tbaa !19
  store i8 %484, ptr %482, align 1, !tbaa !19
  br label %486

485:                                              ; preds = %481
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %482, ptr nonnull align 1 %115, i64 %335, i1 false)
  br label %486

486:                                              ; preds = %343, %485, %483, %481
  %487 = phi ptr [ %344, %343 ], [ %482, %485 ], [ %482, %483 ], [ %482, %481 ]
  %488 = phi ptr [ %344, %343 ], [ %470, %485 ], [ %470, %483 ], [ %470, %481 ]
  %489 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %335, ptr %489, align 8, !tbaa !16
  %490 = getelementptr inbounds nuw i8, ptr %487, i64 %335
  store i8 0, ptr %490, align 1, !tbaa !19
  %491 = load ptr, ptr %17, align 8, !tbaa !20
  %492 = icmp eq ptr %491, %18
  %493 = load ptr, ptr %8, align 8, !tbaa !20
  %494 = icmp eq ptr %493, %488
  br i1 %492, label %495, label %496

495:                                              ; preds = %486
  br i1 %494, label %497, label %511

496:                                              ; preds = %486
  br i1 %494, label %497, label %509

497:                                              ; preds = %496, %495
  %498 = load i64, ptr %489, align 8, !tbaa !16
  %499 = icmp ult i64 %498, 16
  call void @llvm.assume(i1 %499)
  switch i64 %498, label %502 [
    i64 0, label %503
    i64 1, label %500
  ]

500:                                              ; preds = %497
  %501 = load i8, ptr %493, align 1, !tbaa !19
  store i8 %501, ptr %491, align 1, !tbaa !19
  br label %503

502:                                              ; preds = %497
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %491, ptr align 1 %493, i64 %498, i1 false)
  br label %503

503:                                              ; preds = %502, %500, %497
  %504 = load i64, ptr %489, align 8, !tbaa !16
  %505 = icmp ult i64 %504, 9223372036854775807
  call void @llvm.assume(i1 %505)
  store i64 %504, ptr %19, align 8, !tbaa !16
  %506 = load ptr, ptr %17, align 8, !tbaa !20
  %507 = getelementptr inbounds nuw i8, ptr %506, i64 %504
  store i8 0, ptr %507, align 1, !tbaa !19
  %508 = load ptr, ptr %8, align 8, !tbaa !20
  br label %520

509:                                              ; preds = %496
  %510 = load i64, ptr %18, align 8, !tbaa !19
  br label %511

511:                                              ; preds = %509, %495
  %512 = phi ptr [ %491, %509 ], [ null, %495 ]
  %513 = phi i64 [ %510, %509 ], [ undef, %495 ]
  store ptr %493, ptr %17, align 8, !tbaa !20
  %514 = load i64, ptr %489, align 8, !tbaa !16
  %515 = icmp ult i64 %514, 9223372036854775807
  call void @llvm.assume(i1 %515)
  store i64 %514, ptr %19, align 8, !tbaa !16
  %516 = load i64, ptr %488, align 8, !tbaa !19
  store i64 %516, ptr %18, align 8, !tbaa !19
  %517 = icmp eq ptr %512, null
  br i1 %517, label %519, label %518

518:                                              ; preds = %511
  store ptr %512, ptr %8, align 8, !tbaa !20
  store i64 %513, ptr %488, align 8, !tbaa !19
  br label %520

519:                                              ; preds = %511
  store ptr %488, ptr %8, align 8, !tbaa !20
  br label %520

520:                                              ; preds = %503, %518, %519
  %521 = phi ptr [ %508, %503 ], [ %512, %518 ], [ %488, %519 ]
  store i64 0, ptr %489, align 8, !tbaa !16
  store i8 0, ptr %521, align 1, !tbaa !19
  %522 = load ptr, ptr %8, align 8, !tbaa !20
  %523 = icmp eq ptr %522, %488
  br i1 %523, label %527, label %524

524:                                              ; preds = %520
  %525 = load i64, ptr %488, align 8, !tbaa !19
  %526 = add i64 %525, 1
  call void @_ZdlPvm(ptr noundef %522, i64 noundef %526) #24
  br label %527

527:                                              ; preds = %520, %524
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %528

528:                                              ; preds = %468, %527
  %529 = icmp eq i64 %340, 0
  br i1 %529, label %530, label %532

530:                                              ; preds = %1, %110, %183, %253, %323, %528
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %531 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %531, ptr %11, align 8, !tbaa !12
  br label %680

532:                                              ; preds = %325, %528
  %533 = phi ptr [ %341, %528 ], [ %115, %325 ]
  %534 = phi i64 [ %340, %528 ], [ %326, %325 ]
  br label %535

535:                                              ; preds = %538, %532
  %536 = phi i64 [ %534, %532 ], [ %539, %538 ]
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %661, label %538

538:                                              ; preds = %535
  %539 = add i64 %536, -1
  %540 = getelementptr inbounds nuw i8, ptr %533, i64 %539
  %541 = load i8, ptr %540, align 1, !tbaa !19
  %542 = icmp eq i8 %541, 58
  br i1 %542, label %543, label %535, !llvm.loop !28

543:                                              ; preds = %538
  %544 = call ptr @memchr(ptr noundef nonnull %533, i32 noundef 93, i64 noundef %534) #13
  %545 = icmp eq ptr %544, null
  %546 = ptrtoint ptr %544 to i64
  %547 = ptrtoint ptr %533 to i64
  %548 = sub i64 %546, %547
  %549 = icmp eq i64 %548, -1
  %550 = select i1 %545, i1 true, i1 %549
  br i1 %550, label %553, label %551

551:                                              ; preds = %543
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %552 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %552, ptr %11, align 8, !tbaa !12
  br label %665

553:                                              ; preds = %543
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %554 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %554, ptr %9, align 8, !tbaa !12
  %555 = icmp ugt i64 %539, 15
  br i1 %555, label %556, label %561

556:                                              ; preds = %553
  %557 = icmp slt i64 %536, 1
  br i1 %557, label %558, label %559

558:                                              ; preds = %556
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

559:                                              ; preds = %556
  %560 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %536) #23
  store ptr %560, ptr %9, align 8, !tbaa !20
  store i64 %539, ptr %554, align 8, !tbaa !19
  br label %561

561:                                              ; preds = %559, %553
  %562 = phi ptr [ %560, %559 ], [ %554, %553 ]
  switch i64 %536, label %565 [
    i64 2, label %563
    i64 1, label %566
  ]

563:                                              ; preds = %561
  %564 = load i8, ptr %533, align 1, !tbaa !19
  store i8 %564, ptr %562, align 1, !tbaa !19
  br label %566

565:                                              ; preds = %561
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %562, ptr nonnull align 1 %533, i64 %539, i1 false)
  br label %566

566:                                              ; preds = %565, %563, %561
  %567 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %539, ptr %567, align 8, !tbaa !16
  %568 = getelementptr inbounds nuw i8, ptr %562, i64 %539
  store i8 0, ptr %568, align 1, !tbaa !19
  %569 = load ptr, ptr %23, align 8, !tbaa !20
  %570 = icmp eq ptr %569, %24
  %571 = load ptr, ptr %9, align 8, !tbaa !20
  %572 = icmp eq ptr %571, %554
  br i1 %570, label %573, label %574

573:                                              ; preds = %566
  br i1 %572, label %575, label %589

574:                                              ; preds = %566
  br i1 %572, label %575, label %587

575:                                              ; preds = %574, %573
  %576 = load i64, ptr %567, align 8, !tbaa !16
  %577 = icmp ult i64 %576, 16
  call void @llvm.assume(i1 %577)
  switch i64 %576, label %580 [
    i64 0, label %581
    i64 1, label %578
  ]

578:                                              ; preds = %575
  %579 = load i8, ptr %571, align 1, !tbaa !19
  store i8 %579, ptr %569, align 1, !tbaa !19
  br label %581

580:                                              ; preds = %575
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %569, ptr align 1 %571, i64 %576, i1 false)
  br label %581

581:                                              ; preds = %580, %578, %575
  %582 = load i64, ptr %567, align 8, !tbaa !16
  %583 = icmp ult i64 %582, 9223372036854775807
  call void @llvm.assume(i1 %583)
  store i64 %582, ptr %25, align 8, !tbaa !16
  %584 = load ptr, ptr %23, align 8, !tbaa !20
  %585 = getelementptr inbounds nuw i8, ptr %584, i64 %582
  store i8 0, ptr %585, align 1, !tbaa !19
  %586 = load ptr, ptr %9, align 8, !tbaa !20
  br label %598

587:                                              ; preds = %574
  %588 = load i64, ptr %24, align 8, !tbaa !19
  br label %589

589:                                              ; preds = %587, %573
  %590 = phi ptr [ %569, %587 ], [ null, %573 ]
  %591 = phi i64 [ %588, %587 ], [ undef, %573 ]
  store ptr %571, ptr %23, align 8, !tbaa !20
  %592 = load i64, ptr %567, align 8, !tbaa !16
  %593 = icmp ult i64 %592, 9223372036854775807
  call void @llvm.assume(i1 %593)
  store i64 %592, ptr %25, align 8, !tbaa !16
  %594 = load i64, ptr %554, align 8, !tbaa !19
  store i64 %594, ptr %24, align 8, !tbaa !19
  %595 = icmp eq ptr %590, null
  br i1 %595, label %597, label %596

596:                                              ; preds = %589
  store ptr %590, ptr %9, align 8, !tbaa !20
  store i64 %591, ptr %554, align 8, !tbaa !19
  br label %598

597:                                              ; preds = %589
  store ptr %554, ptr %9, align 8, !tbaa !20
  br label %598

598:                                              ; preds = %581, %596, %597
  %599 = phi ptr [ %586, %581 ], [ %590, %596 ], [ %554, %597 ]
  store i64 0, ptr %567, align 8, !tbaa !16
  store i8 0, ptr %599, align 1, !tbaa !19
  %600 = load ptr, ptr %9, align 8, !tbaa !20
  %601 = icmp eq ptr %600, %554
  br i1 %601, label %605, label %602

602:                                              ; preds = %598
  %603 = load i64, ptr %554, align 8, !tbaa !19
  %604 = add i64 %603, 1
  call void @_ZdlPvm(ptr noundef %600, i64 noundef %604) #24
  br label %605

605:                                              ; preds = %598, %602
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %606 = sub nuw i64 %534, %536
  %607 = getelementptr inbounds nuw i8, ptr %533, i64 %536
  %608 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %608, ptr %10, align 8, !tbaa !12
  %609 = icmp ugt i64 %606, 15
  br i1 %609, label %610, label %616

610:                                              ; preds = %605
  %611 = icmp ugt i64 %606, 9223372036854775806
  br i1 %611, label %612, label %613

612:                                              ; preds = %610
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

613:                                              ; preds = %610
  %614 = add nuw nsw i64 %606, 1
  %615 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %614) #23
  store ptr %615, ptr %10, align 8, !tbaa !20
  store i64 %606, ptr %608, align 8, !tbaa !19
  br label %616

616:                                              ; preds = %613, %605
  %617 = phi ptr [ %615, %613 ], [ %608, %605 ]
  switch i64 %606, label %620 [
    i64 1, label %618
    i64 0, label %621
  ]

618:                                              ; preds = %616
  %619 = load i8, ptr %607, align 1, !tbaa !19
  store i8 %619, ptr %617, align 1, !tbaa !19
  br label %621

620:                                              ; preds = %616
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %617, ptr nonnull align 1 %607, i64 %606, i1 false)
  br label %621

621:                                              ; preds = %620, %618, %616
  %622 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %606, ptr %622, align 8, !tbaa !16
  %623 = getelementptr inbounds nuw i8, ptr %617, i64 %606
  store i8 0, ptr %623, align 1, !tbaa !19
  %624 = load ptr, ptr %26, align 8, !tbaa !20
  %625 = icmp eq ptr %624, %27
  %626 = load ptr, ptr %10, align 8, !tbaa !20
  %627 = icmp eq ptr %626, %608
  br i1 %625, label %628, label %629

628:                                              ; preds = %621
  br i1 %627, label %630, label %644

629:                                              ; preds = %621
  br i1 %627, label %630, label %642

630:                                              ; preds = %629, %628
  %631 = load i64, ptr %622, align 8, !tbaa !16
  %632 = icmp ult i64 %631, 16
  call void @llvm.assume(i1 %632)
  switch i64 %631, label %635 [
    i64 0, label %636
    i64 1, label %633
  ]

633:                                              ; preds = %630
  %634 = load i8, ptr %626, align 1, !tbaa !19
  store i8 %634, ptr %624, align 1, !tbaa !19
  br label %636

635:                                              ; preds = %630
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %624, ptr align 1 %626, i64 %631, i1 false)
  br label %636

636:                                              ; preds = %635, %633, %630
  %637 = load i64, ptr %622, align 8, !tbaa !16
  %638 = icmp ult i64 %637, 9223372036854775807
  call void @llvm.assume(i1 %638)
  store i64 %637, ptr %28, align 8, !tbaa !16
  %639 = load ptr, ptr %26, align 8, !tbaa !20
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 %637
  store i8 0, ptr %640, align 1, !tbaa !19
  %641 = load ptr, ptr %10, align 8, !tbaa !20
  br label %653

642:                                              ; preds = %629
  %643 = load i64, ptr %27, align 8, !tbaa !19
  br label %644

644:                                              ; preds = %642, %628
  %645 = phi ptr [ %624, %642 ], [ null, %628 ]
  %646 = phi i64 [ %643, %642 ], [ undef, %628 ]
  store ptr %626, ptr %26, align 8, !tbaa !20
  %647 = load i64, ptr %622, align 8, !tbaa !16
  %648 = icmp ult i64 %647, 9223372036854775807
  call void @llvm.assume(i1 %648)
  store i64 %647, ptr %28, align 8, !tbaa !16
  %649 = load i64, ptr %608, align 8, !tbaa !19
  store i64 %649, ptr %27, align 8, !tbaa !19
  %650 = icmp eq ptr %645, null
  br i1 %650, label %652, label %651

651:                                              ; preds = %644
  store ptr %645, ptr %10, align 8, !tbaa !20
  store i64 %646, ptr %608, align 8, !tbaa !19
  br label %653

652:                                              ; preds = %644
  store ptr %608, ptr %10, align 8, !tbaa !20
  br label %653

653:                                              ; preds = %636, %651, %652
  %654 = phi ptr [ %641, %636 ], [ %645, %651 ], [ %608, %652 ]
  store i64 0, ptr %622, align 8, !tbaa !16
  store i8 0, ptr %654, align 1, !tbaa !19
  %655 = load ptr, ptr %10, align 8, !tbaa !20
  %656 = icmp eq ptr %655, %608
  br i1 %656, label %660, label %657

657:                                              ; preds = %653
  %658 = load i64, ptr %608, align 8, !tbaa !19
  %659 = add i64 %658, 1
  call void @_ZdlPvm(ptr noundef %655, i64 noundef %659) #24
  br label %660

660:                                              ; preds = %653, %657
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %723

661:                                              ; preds = %535
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %662 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %662, ptr %11, align 8, !tbaa !12
  %663 = icmp eq ptr %533, null
  br i1 %663, label %664, label %665

664:                                              ; preds = %661
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

665:                                              ; preds = %551, %661
  %666 = phi ptr [ %552, %551 ], [ %662, %661 ]
  %667 = icmp ugt i64 %534, 15
  br i1 %667, label %668, label %674

668:                                              ; preds = %665
  %669 = icmp ugt i64 %534, 9223372036854775806
  br i1 %669, label %670, label %671

670:                                              ; preds = %668
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

671:                                              ; preds = %668
  %672 = add nuw nsw i64 %534, 1
  %673 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %672) #23
  store ptr %673, ptr %11, align 8, !tbaa !20
  store i64 %534, ptr %666, align 8, !tbaa !19
  br label %674

674:                                              ; preds = %671, %665
  %675 = phi ptr [ %673, %671 ], [ %666, %665 ]
  %676 = icmp eq i64 %534, 1
  br i1 %676, label %677, label %679

677:                                              ; preds = %674
  %678 = load i8, ptr %533, align 1, !tbaa !19
  store i8 %678, ptr %675, align 1, !tbaa !19
  br label %680

679:                                              ; preds = %674
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %675, ptr nonnull align 1 %533, i64 %534, i1 false)
  br label %680

680:                                              ; preds = %679, %677, %530
  %681 = phi ptr [ %531, %530 ], [ %675, %679 ], [ %675, %677 ]
  %682 = phi ptr [ %531, %530 ], [ %666, %679 ], [ %666, %677 ]
  %683 = phi i64 [ 0, %530 ], [ %534, %679 ], [ 1, %677 ]
  %684 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %683, ptr %684, align 8, !tbaa !16
  %685 = getelementptr inbounds nuw i8, ptr %681, i64 %683
  store i8 0, ptr %685, align 1, !tbaa !19
  %686 = load ptr, ptr %23, align 8, !tbaa !20
  %687 = icmp eq ptr %686, %24
  %688 = load ptr, ptr %11, align 8, !tbaa !20
  %689 = icmp eq ptr %688, %682
  br i1 %687, label %690, label %691

690:                                              ; preds = %680
  br i1 %689, label %692, label %706

691:                                              ; preds = %680
  br i1 %689, label %692, label %704

692:                                              ; preds = %691, %690
  %693 = load i64, ptr %684, align 8, !tbaa !16
  %694 = icmp ult i64 %693, 16
  call void @llvm.assume(i1 %694)
  switch i64 %693, label %697 [
    i64 0, label %698
    i64 1, label %695
  ]

695:                                              ; preds = %692
  %696 = load i8, ptr %688, align 1, !tbaa !19
  store i8 %696, ptr %686, align 1, !tbaa !19
  br label %698

697:                                              ; preds = %692
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %686, ptr align 1 %688, i64 %693, i1 false)
  br label %698

698:                                              ; preds = %697, %695, %692
  %699 = load i64, ptr %684, align 8, !tbaa !16
  %700 = icmp ult i64 %699, 9223372036854775807
  call void @llvm.assume(i1 %700)
  store i64 %699, ptr %25, align 8, !tbaa !16
  %701 = load ptr, ptr %23, align 8, !tbaa !20
  %702 = getelementptr inbounds nuw i8, ptr %701, i64 %699
  store i8 0, ptr %702, align 1, !tbaa !19
  %703 = load ptr, ptr %11, align 8, !tbaa !20
  br label %715

704:                                              ; preds = %691
  %705 = load i64, ptr %24, align 8, !tbaa !19
  br label %706

706:                                              ; preds = %704, %690
  %707 = phi ptr [ %686, %704 ], [ null, %690 ]
  %708 = phi i64 [ %705, %704 ], [ undef, %690 ]
  store ptr %688, ptr %23, align 8, !tbaa !20
  %709 = load i64, ptr %684, align 8, !tbaa !16
  %710 = icmp ult i64 %709, 9223372036854775807
  call void @llvm.assume(i1 %710)
  store i64 %709, ptr %25, align 8, !tbaa !16
  %711 = load i64, ptr %682, align 8, !tbaa !19
  store i64 %711, ptr %24, align 8, !tbaa !19
  %712 = icmp eq ptr %707, null
  br i1 %712, label %714, label %713

713:                                              ; preds = %706
  store ptr %707, ptr %11, align 8, !tbaa !20
  store i64 %708, ptr %682, align 8, !tbaa !19
  br label %715

714:                                              ; preds = %706
  store ptr %682, ptr %11, align 8, !tbaa !20
  br label %715

715:                                              ; preds = %698, %713, %714
  %716 = phi ptr [ %703, %698 ], [ %707, %713 ], [ %682, %714 ]
  store i64 0, ptr %684, align 8, !tbaa !16
  store i8 0, ptr %716, align 1, !tbaa !19
  %717 = load ptr, ptr %11, align 8, !tbaa !20
  %718 = icmp eq ptr %717, %682
  br i1 %718, label %722, label %719

719:                                              ; preds = %715
  %720 = load i64, ptr %682, align 8, !tbaa !19
  %721 = add i64 %720, 1
  call void @_ZdlPvm(ptr noundef %717, i64 noundef %721) #24
  br label %722

722:                                              ; preds = %715, %719
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %723

723:                                              ; preds = %722, %660
  ret ptr %12
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1922sys__native_url_schemeEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib10url_schemeEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10url_schemeEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 17
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
  br i1 %35, label %36, label %39, !prof !29

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !36
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
  %66 = load ptr, ptr %41, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !30
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !37, !noalias !38
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !41, !noalias !38
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !42, !noalias !38
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !43
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
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #24
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
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1924sys__native_url_usernameEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_usernameEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12url_usernameEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
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
  br i1 %35, label %36, label %39, !prof !29

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !36
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
  %66 = load ptr, ptr %41, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !30
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !37, !noalias !44
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !41, !noalias !44
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !42, !noalias !44
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !43
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
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #24
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
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1924sys__native_url_passwordEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_passwordEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12url_passwordEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 88
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
  br i1 %35, label %36, label %39, !prof !29

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !36
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
  %66 = load ptr, ptr %41, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !30
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !37, !noalias !47
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !41, !noalias !47
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !42, !noalias !47
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !43
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
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #24
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
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1920sys__native_url_hostEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_hostEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib8url_hostEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
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
  br i1 %35, label %36, label %39, !prof !29

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !36
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
  %66 = load ptr, ptr %41, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !30
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !37, !noalias !50
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !41, !noalias !50
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !42, !noalias !50
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !43
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
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #24
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
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1920sys__native_url_portEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_portEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib8url_portEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 152
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
  br i1 %35, label %36, label %39, !prof !29

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !36
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
  %66 = load ptr, ptr %41, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !30
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !37, !noalias !53
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !41, !noalias !53
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !42, !noalias !53
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !43
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
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #24
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
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1920sys__native_url_pathEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_pathEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib8url_pathEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 184
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
  br i1 %35, label %36, label %39, !prof !29

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !36
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
  %66 = load ptr, ptr %41, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !30
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !37, !noalias !56
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !41, !noalias !56
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !42, !noalias !56
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !43
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
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #24
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
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1921sys__native_url_queryEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib9url_queryEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib9url_queryEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 216
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
  br i1 %35, label %36, label %39, !prof !29

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !36
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
  %66 = load ptr, ptr %41, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !30
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !37, !noalias !59
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !41, !noalias !59
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !42, !noalias !59
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !43
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
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #24
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
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_3016_5_1924sys__native_url_fragmentEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_fragmentEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12url_fragmentEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 248
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
  br i1 %35, label %36, label %39, !prof !29

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !36
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
  %66 = load ptr, ptr %41, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !30
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !37, !noalias !62
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !41, !noalias !62
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !42, !noalias !62
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !43
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
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #24
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
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: inlinehint mustprogress sspstrong uwtable
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store i64 %2, ptr %8, align 8, !tbaa !65
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %23, align 8, !tbaa !66
  %24 = icmp ult i64 %2, 3
  br i1 %24, label %123, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 %2
  %27 = ptrtoint ptr %26 to i64
  br label %28

28:                                               ; preds = %37, %25
  %29 = phi i64 [ %2, %25 ], [ %40, %37 ]
  %30 = phi ptr [ %3, %25 ], [ %38, %37 ]
  %31 = add i64 %29, -2
  %32 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %30, i32 noundef 58, i64 noundef %31) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %123, label %34

34:                                               ; preds = %28
  %35 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %32, ptr noundef nonnull dereferenceable(3) @.str, i64 3)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %27, %39
  %41 = icmp ult i64 %40, 3
  br i1 %41, label %123, label %28, !llvm.loop !26

42:                                               ; preds = %34
  %43 = ptrtoint ptr %32 to i64
  %44 = ptrtoint ptr %3 to i64
  %45 = sub i64 %43, %44
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %123, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %48, ptr %9, align 8, !tbaa !12
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
  store ptr %58, ptr %9, align 8, !tbaa !20
  store i64 %2, ptr %48, align 8, !tbaa !19
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi ptr [ %58, %56 ], [ %48, %51 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %60, ptr nonnull align 1 %3, i64 %2, i1 false)
  %61 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %61, align 8, !tbaa !16
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 %2
  store i8 0, ptr %62, align 1, !tbaa !19
  %63 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %68, !prof !29

65:                                               ; preds = %59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %66 unwind label %116

66:                                               ; preds = %65
  %67 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %68

68:                                               ; preds = %66, %59
  %69 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 48
  %71 = load ptr, ptr %70, align 8, !tbaa !30
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 64
  %73 = load ptr, ptr %72, align 8, !tbaa !36
  %74 = getelementptr inbounds i8, ptr %73, i64 -32
  %75 = icmp eq ptr %71, %74
  br i1 %75, label %93, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds nuw i8, ptr %71, i64 16
  store ptr %77, ptr %71, align 8, !tbaa !12
  %78 = load ptr, ptr %9, align 8, !tbaa !20
  %79 = icmp eq ptr %78, %48
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64, ptr %61, align 8, !tbaa !16
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  %83 = add nuw nsw i64 %81, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %77, ptr noundef nonnull align 8 dereferenceable(1) %48, i64 %83, i1 false)
  br label %87

84:                                               ; preds = %76
  store ptr %78, ptr %71, align 8, !tbaa !20
  %85 = load i64, ptr %48, align 8, !tbaa !19
  store i64 %85, ptr %77, align 8, !tbaa !19
  %86 = load i64, ptr %61, align 8, !tbaa !16
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i64 [ %86, %84 ], [ %81, %80 ]
  %89 = icmp ult i64 %88, 9223372036854775807
  call void @llvm.assume(i1 %89)
  %90 = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 %88, ptr %90, align 8, !tbaa !16
  store ptr %48, ptr %9, align 8, !tbaa !20
  store i64 0, ptr %61, align 8, !tbaa !16
  store i8 0, ptr %48, align 8, !tbaa !19
  %91 = load ptr, ptr %70, align 8, !tbaa !30
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 32
  store ptr %92, ptr %70, align 8, !tbaa !30
  br label %96

93:                                               ; preds = %68
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %69, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %94 unwind label %116

94:                                               ; preds = %93
  %95 = load ptr, ptr %70, align 8, !tbaa !37, !noalias !67
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi ptr [ %92, %87 ], [ %95, %94 ]
  %98 = getelementptr inbounds nuw i8, ptr %69, i64 56
  %99 = load ptr, ptr %98, align 8, !tbaa !41, !noalias !67
  %100 = icmp eq ptr %97, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = getelementptr inbounds nuw i8, ptr %69, i64 72
  %103 = load ptr, ptr %102, align 8, !tbaa !42, !noalias !67
  %104 = getelementptr inbounds i8, ptr %103, i64 -8
  %105 = load ptr, ptr %104, align 8, !tbaa !43
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 512
  br label %107

107:                                              ; preds = %101, %96
  %108 = phi ptr [ %106, %101 ], [ %97, %96 ]
  %109 = getelementptr inbounds i8, ptr %108, i64 -32
  %110 = load ptr, ptr %109, align 8, !tbaa !20
  %111 = load ptr, ptr %9, align 8, !tbaa !20
  %112 = icmp eq ptr %111, %48
  br i1 %112, label %869, label %113

113:                                              ; preds = %107
  %114 = load i64, ptr %48, align 8, !tbaa !19
  %115 = add i64 %114, 1
  call void @_ZdlPvm(ptr noundef %111, i64 noundef %115) #24
  br label %869

116:                                              ; preds = %93, %65
  %117 = landingpad { ptr, i32 }
          cleanup
  %118 = load ptr, ptr %9, align 8, !tbaa !20
  %119 = icmp eq ptr %118, %48
  br i1 %119, label %871, label %120

120:                                              ; preds = %116
  %121 = load i64, ptr %48, align 8, !tbaa !19
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %118, i64 noundef %122) #24
  br label %871

123:                                              ; preds = %37, %28, %4, %42
  %124 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %124, ptr %10, align 8, !tbaa !12
  %125 = icmp eq ptr %1, null
  %126 = icmp ne i64 %0, 0
  %127 = and i1 %126, %125
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

129:                                              ; preds = %123
  %130 = icmp ugt i64 %0, 15
  br i1 %130, label %131, label %137

131:                                              ; preds = %129
  %132 = icmp ugt i64 %0, 9223372036854775806
  br i1 %132, label %133, label %134

133:                                              ; preds = %131
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

134:                                              ; preds = %131
  %135 = add nuw nsw i64 %0, 1
  %136 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %135) #23
  store ptr %136, ptr %10, align 8, !tbaa !20
  store i64 %0, ptr %124, align 8, !tbaa !19
  br label %137

137:                                              ; preds = %134, %129
  %138 = phi ptr [ %136, %134 ], [ %124, %129 ]
  switch i64 %0, label %141 [
    i64 1, label %139
    i64 0, label %142
  ]

139:                                              ; preds = %137
  %140 = load i8, ptr %1, align 1, !tbaa !19
  store i8 %140, ptr %138, align 1, !tbaa !19
  br label %142

141:                                              ; preds = %137
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %138, ptr align 1 %1, i64 %0, i1 false)
  br label %142

142:                                              ; preds = %141, %139, %137
  %143 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %0, ptr %143, align 8, !tbaa !16
  %144 = getelementptr inbounds nuw i8, ptr %138, i64 %0
  store i8 0, ptr %144, align 1, !tbaa !19
  %145 = invoke noundef ptr @_ZN12__apo_stdlib9url_parseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %10)
          to label %146 unwind label %239

146:                                              ; preds = %142
  %147 = icmp eq ptr %145, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %150 = load i32, ptr %149, align 8, !tbaa !21
  %151 = icmp eq i32 %150, 17
  %152 = select i1 %151, ptr %145, ptr null
  br label %153

153:                                              ; preds = %146, %148
  %154 = phi ptr [ null, %146 ], [ %152, %148 ]
  %155 = load ptr, ptr %10, align 8, !tbaa !20
  %156 = icmp eq ptr %155, %124
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load i64, ptr %124, align 8, !tbaa !19
  %159 = add i64 %158, 1
  call void @_ZdlPvm(ptr noundef %155, i64 noundef %159) #24
  br label %160

160:                                              ; preds = %153, %157
  %161 = icmp eq ptr %154, null
  br i1 %161, label %162, label %253

162:                                              ; preds = %160
  %163 = load i64, ptr %8, align 8, !tbaa !65
  %164 = load ptr, ptr %23, align 8, !tbaa !66
  %165 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %165, ptr %11, align 8, !tbaa !12
  %166 = icmp eq ptr %164, null
  %167 = icmp ne i64 %163, 0
  %168 = and i1 %167, %166
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

170:                                              ; preds = %162
  %171 = icmp ugt i64 %163, 15
  br i1 %171, label %172, label %178

172:                                              ; preds = %170
  %173 = icmp ugt i64 %163, 9223372036854775806
  br i1 %173, label %174, label %175

174:                                              ; preds = %172
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

175:                                              ; preds = %172
  %176 = add nuw nsw i64 %163, 1
  %177 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %176) #23
  store ptr %177, ptr %11, align 8, !tbaa !20
  store i64 %163, ptr %165, align 8, !tbaa !19
  br label %178

178:                                              ; preds = %175, %170
  %179 = phi ptr [ %177, %175 ], [ %165, %170 ]
  switch i64 %163, label %182 [
    i64 1, label %180
    i64 0, label %183
  ]

180:                                              ; preds = %178
  %181 = load i8, ptr %164, align 1, !tbaa !19
  store i8 %181, ptr %179, align 1, !tbaa !19
  br label %183

182:                                              ; preds = %178
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %179, ptr align 1 %164, i64 %163, i1 false)
  br label %183

183:                                              ; preds = %182, %180, %178
  %184 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %163, ptr %184, align 8, !tbaa !16
  %185 = getelementptr inbounds nuw i8, ptr %179, i64 %163
  store i8 0, ptr %185, align 1, !tbaa !19
  %186 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %191, !prof !29

188:                                              ; preds = %183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %189 unwind label %246

189:                                              ; preds = %188
  %190 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %191

191:                                              ; preds = %189, %183
  %192 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 48
  %194 = load ptr, ptr %193, align 8, !tbaa !30
  %195 = getelementptr inbounds nuw i8, ptr %192, i64 64
  %196 = load ptr, ptr %195, align 8, !tbaa !36
  %197 = getelementptr inbounds i8, ptr %196, i64 -32
  %198 = icmp eq ptr %194, %197
  br i1 %198, label %216, label %199

199:                                              ; preds = %191
  %200 = getelementptr inbounds nuw i8, ptr %194, i64 16
  store ptr %200, ptr %194, align 8, !tbaa !12
  %201 = load ptr, ptr %11, align 8, !tbaa !20
  %202 = icmp eq ptr %201, %165
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i64, ptr %184, align 8, !tbaa !16
  %205 = icmp ult i64 %204, 16
  call void @llvm.assume(i1 %205)
  %206 = add nuw nsw i64 %204, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %200, ptr noundef nonnull align 8 dereferenceable(1) %165, i64 %206, i1 false)
  br label %210

207:                                              ; preds = %199
  store ptr %201, ptr %194, align 8, !tbaa !20
  %208 = load i64, ptr %165, align 8, !tbaa !19
  store i64 %208, ptr %200, align 8, !tbaa !19
  %209 = load i64, ptr %184, align 8, !tbaa !16
  br label %210

210:                                              ; preds = %207, %203
  %211 = phi i64 [ %209, %207 ], [ %204, %203 ]
  %212 = icmp ult i64 %211, 9223372036854775807
  call void @llvm.assume(i1 %212)
  %213 = getelementptr inbounds nuw i8, ptr %194, i64 8
  store i64 %211, ptr %213, align 8, !tbaa !16
  store ptr %165, ptr %11, align 8, !tbaa !20
  store i64 0, ptr %184, align 8, !tbaa !16
  store i8 0, ptr %165, align 8, !tbaa !19
  %214 = load ptr, ptr %193, align 8, !tbaa !30
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 32
  store ptr %215, ptr %193, align 8, !tbaa !30
  br label %219

216:                                              ; preds = %191
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %192, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %217 unwind label %246

217:                                              ; preds = %216
  %218 = load ptr, ptr %193, align 8, !tbaa !37, !noalias !70
  br label %219

219:                                              ; preds = %217, %210
  %220 = phi ptr [ %215, %210 ], [ %218, %217 ]
  %221 = getelementptr inbounds nuw i8, ptr %192, i64 56
  %222 = load ptr, ptr %221, align 8, !tbaa !41, !noalias !70
  %223 = icmp eq ptr %220, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = getelementptr inbounds nuw i8, ptr %192, i64 72
  %226 = load ptr, ptr %225, align 8, !tbaa !42, !noalias !70
  %227 = getelementptr inbounds i8, ptr %226, i64 -8
  %228 = load ptr, ptr %227, align 8, !tbaa !43
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 512
  br label %230

230:                                              ; preds = %224, %219
  %231 = phi ptr [ %229, %224 ], [ %220, %219 ]
  %232 = getelementptr inbounds i8, ptr %231, i64 -32
  %233 = load ptr, ptr %232, align 8, !tbaa !20
  %234 = load ptr, ptr %11, align 8, !tbaa !20
  %235 = icmp eq ptr %234, %165
  br i1 %235, label %869, label %236

236:                                              ; preds = %230
  %237 = load i64, ptr %165, align 8, !tbaa !19
  %238 = add i64 %237, 1
  call void @_ZdlPvm(ptr noundef %234, i64 noundef %238) #24
  br label %869

239:                                              ; preds = %142
  %240 = landingpad { ptr, i32 }
          cleanup
  %241 = load ptr, ptr %10, align 8, !tbaa !20
  %242 = icmp eq ptr %241, %124
  br i1 %242, label %871, label %243

243:                                              ; preds = %239
  %244 = load i64, ptr %124, align 8, !tbaa !19
  %245 = add i64 %244, 1
  call void @_ZdlPvm(ptr noundef %241, i64 noundef %245) #24
  br label %871

246:                                              ; preds = %216, %188
  %247 = landingpad { ptr, i32 }
          cleanup
  %248 = load ptr, ptr %11, align 8, !tbaa !20
  %249 = icmp eq ptr %248, %165
  br i1 %249, label %871, label %250

250:                                              ; preds = %246
  %251 = load i64, ptr %165, align 8, !tbaa !19
  %252 = add i64 %251, 1
  call void @_ZdlPvm(ptr noundef %248, i64 noundef %252) #24
  br label %871

253:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %254 = getelementptr inbounds nuw i8, ptr %154, i64 24
  %255 = load i64, ptr %254, align 8, !tbaa !16
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %258, ptr %12, align 8, !tbaa !12
  %259 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %259, align 8, !tbaa !16
  store i8 0, ptr %258, align 8, !tbaa !19
  br label %264

260:                                              ; preds = %253
  %261 = getelementptr inbounds nuw i8, ptr %154, i64 16
  %262 = load ptr, ptr %261, align 8, !tbaa !20, !noalias !73
  %263 = icmp ult i64 %255, 9223372036854775807
  call void @llvm.assume(i1 %263)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13, !noalias !73
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %262, i64 noundef %255, ptr noundef nonnull @.str, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13, !noalias !73
  br label %264

264:                                              ; preds = %260, %257
  %265 = getelementptr inbounds nuw i8, ptr %154, i64 56
  %266 = load i64, ptr %265, align 8, !tbaa !16
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %399, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds nuw i8, ptr %154, i64 48
  %270 = load ptr, ptr %269, align 8, !tbaa !20
  %271 = icmp ult i64 %266, 9223372036854775807
  call void @llvm.assume(i1 %271)
  %272 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %273 = load i64, ptr %272, align 8, !tbaa !16
  %274 = icmp ult i64 %273, 9223372036854775807
  call void @llvm.assume(i1 %274)
  %275 = sub nuw nsw i64 9223372036854775806, %273
  %276 = icmp samesign ult i64 %275, %266
  br i1 %276, label %410, label %277

277:                                              ; preds = %268
  %278 = add nuw i64 %273, %266
  %279 = load ptr, ptr %12, align 8, !tbaa !20
  %280 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %281 = icmp eq ptr %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = icmp samesign ult i64 %273, 16
  call void @llvm.assume(i1 %283)
  br label %284

284:                                              ; preds = %282, %277
  %285 = load i64, ptr %280, align 8
  %286 = select i1 %281, i64 15, i64 %285
  %287 = icmp samesign ugt i64 %286, 14
  call void @llvm.assume(i1 %287)
  %288 = icmp ult i64 %286, 9223372036854775807
  call void @llvm.assume(i1 %288)
  %289 = icmp ugt i64 %278, %286
  br i1 %289, label %296, label %290

290:                                              ; preds = %284
  %291 = getelementptr inbounds nuw i8, ptr %279, i64 %273
  %292 = icmp eq i64 %266, 1
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i8, ptr %270, align 1, !tbaa !19
  store i8 %294, ptr %291, align 1, !tbaa !19
  br label %297

295:                                              ; preds = %290
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %291, ptr align 1 %270, i64 %266, i1 false)
  br label %297

296:                                              ; preds = %284
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %273, i64 noundef 0, ptr noundef %270, i64 noundef %266)
          to label %297 unwind label %349

297:                                              ; preds = %295, %293, %296
  store i64 %278, ptr %272, align 8, !tbaa !16
  %298 = load ptr, ptr %12, align 8, !tbaa !20
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %278
  store i8 0, ptr %299, align 1, !tbaa !19
  %300 = getelementptr inbounds nuw i8, ptr %154, i64 88
  %301 = load i64, ptr %300, align 8, !tbaa !16
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %363, label %303

303:                                              ; preds = %297
  %304 = getelementptr inbounds nuw i8, ptr %154, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %305 = load ptr, ptr %304, align 8, !tbaa !20, !noalias !76
  %306 = icmp ult i64 %301, 9223372036854775807
  call void @llvm.assume(i1 %306)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !76
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.6, i64 noundef 1, ptr noundef %305, i64 noundef %301, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %307 unwind label %351

307:                                              ; preds = %303
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !76
  %308 = load ptr, ptr %13, align 8, !tbaa !20
  %309 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %310 = load i64, ptr %309, align 8, !tbaa !16
  %311 = icmp ult i64 %310, 9223372036854775807
  call void @llvm.assume(i1 %311)
  %312 = load i64, ptr %272, align 8, !tbaa !16
  %313 = icmp ult i64 %312, 9223372036854775807
  call void @llvm.assume(i1 %313)
  %314 = sub nuw nsw i64 9223372036854775806, %312
  %315 = icmp samesign ult i64 %314, %310
  br i1 %315, label %316, label %318

316:                                              ; preds = %307
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %317 unwind label %353

317:                                              ; preds = %316
  unreachable

318:                                              ; preds = %307
  %319 = add nuw i64 %312, %310
  %320 = load ptr, ptr %12, align 8, !tbaa !20
  %321 = icmp eq ptr %320, %280
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = icmp samesign ult i64 %312, 16
  call void @llvm.assume(i1 %323)
  br label %324

324:                                              ; preds = %322, %318
  %325 = load i64, ptr %280, align 8
  %326 = select i1 %321, i64 15, i64 %325
  %327 = icmp samesign ugt i64 %326, 14
  call void @llvm.assume(i1 %327)
  %328 = icmp ult i64 %326, 9223372036854775807
  call void @llvm.assume(i1 %328)
  %329 = icmp ugt i64 %319, %326
  br i1 %329, label %338, label %330

330:                                              ; preds = %324
  %331 = icmp eq i64 %310, 0
  br i1 %331, label %339, label %332

332:                                              ; preds = %330
  %333 = getelementptr inbounds nuw i8, ptr %320, i64 %312
  %334 = icmp eq i64 %310, 1
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = load i8, ptr %308, align 1, !tbaa !19
  store i8 %336, ptr %333, align 1, !tbaa !19
  br label %339

337:                                              ; preds = %332
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %333, ptr align 1 %308, i64 %310, i1 false)
  br label %339

338:                                              ; preds = %324
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %312, i64 noundef 0, ptr noundef %308, i64 noundef %310)
          to label %339 unwind label %353

339:                                              ; preds = %337, %335, %330, %338
  store i64 %319, ptr %272, align 8, !tbaa !16
  %340 = load ptr, ptr %12, align 8, !tbaa !20
  %341 = getelementptr inbounds nuw i8, ptr %340, i64 %319
  store i8 0, ptr %341, align 1, !tbaa !19
  %342 = load ptr, ptr %13, align 8, !tbaa !20
  %343 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %344 = icmp eq ptr %342, %343
  br i1 %344, label %348, label %345

345:                                              ; preds = %339
  %346 = load i64, ptr %343, align 8, !tbaa !19
  %347 = add i64 %346, 1
  call void @_ZdlPvm(ptr noundef %342, i64 noundef %347) #24
  br label %348

348:                                              ; preds = %339, %345
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %363

349:                                              ; preds = %410, %381, %433, %296
  %350 = landingpad { ptr, i32 }
          cleanup
  br label %860

351:                                              ; preds = %303
  %352 = landingpad { ptr, i32 }
          cleanup
  br label %361

353:                                              ; preds = %338, %316
  %354 = landingpad { ptr, i32 }
          cleanup
  %355 = load ptr, ptr %13, align 8, !tbaa !20
  %356 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %357 = icmp eq ptr %355, %356
  br i1 %357, label %361, label %358

358:                                              ; preds = %353
  %359 = load i64, ptr %356, align 8, !tbaa !19
  %360 = add i64 %359, 1
  call void @_ZdlPvm(ptr noundef %355, i64 noundef %360) #24
  br label %361

361:                                              ; preds = %353, %358, %351
  %362 = phi { ptr, i32 } [ %352, %351 ], [ %354, %358 ], [ %354, %353 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %860

363:                                              ; preds = %348, %297
  %364 = load i64, ptr %272, align 8, !tbaa !16
  %365 = icmp ult i64 %364, 9223372036854775807
  call void @llvm.assume(i1 %365)
  %366 = icmp eq i64 %364, 9223372036854775806
  br i1 %366, label %410, label %367

367:                                              ; preds = %363
  %368 = add nuw nsw i64 %364, 1
  %369 = load ptr, ptr %12, align 8, !tbaa !20
  %370 = icmp eq ptr %369, %280
  %371 = load i64, ptr %280, align 8
  br i1 %370, label %372, label %374

372:                                              ; preds = %367
  %373 = icmp samesign ugt i64 %364, 14
  br i1 %373, label %381, label %378

374:                                              ; preds = %367
  %375 = icmp samesign ugt i64 %371, 14
  call void @llvm.assume(i1 %375)
  %376 = icmp ult i64 %371, 9223372036854775807
  call void @llvm.assume(i1 %376)
  %377 = icmp samesign ult i64 %364, %371
  br i1 %377, label %378, label %381

378:                                              ; preds = %374, %372
  %379 = getelementptr inbounds nuw i8, ptr %369, i64 %364
  store i8 64, ptr %379, align 1, !tbaa !19
  %380 = load ptr, ptr %12, align 8, !tbaa !20
  br label %396

381:                                              ; preds = %374, %372
  %382 = phi i64 [ %371, %374 ], [ 15, %372 ]
  %383 = shl nuw i64 %382, 1
  %384 = icmp ult i64 %368, %383
  %385 = call i64 @llvm.umin.i64(i64 %383, i64 9223372036854775806)
  %386 = select i1 %384, i64 %385, i64 %368
  %387 = add nuw nsw i64 %386, 1
  %388 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %387) #23
          to label %389 unwind label %349

389:                                              ; preds = %381
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %388, ptr align 1 %369, i64 %364, i1 false)
  %390 = getelementptr inbounds nuw i8, ptr %388, i64 %364
  store i8 64, ptr %390, align 1, !tbaa !19
  br i1 %370, label %391, label %393

391:                                              ; preds = %389
  %392 = icmp samesign ult i64 %364, 16
  call void @llvm.assume(i1 %392)
  br label %395

393:                                              ; preds = %389
  %394 = add i64 %371, 1
  call void @_ZdlPvm(ptr noundef %369, i64 noundef %394) #24
  br label %395

395:                                              ; preds = %393, %391
  store ptr %388, ptr %12, align 8, !tbaa !20
  store i64 %386, ptr %280, align 8, !tbaa !19
  br label %396

396:                                              ; preds = %378, %395
  %397 = phi ptr [ %380, %378 ], [ %388, %395 ]
  store i64 %368, ptr %272, align 8, !tbaa !16
  %398 = getelementptr inbounds nuw i8, ptr %397, i64 %368
  store i8 0, ptr %398, align 1, !tbaa !19
  br label %399

399:                                              ; preds = %396, %264
  %400 = getelementptr inbounds nuw i8, ptr %154, i64 112
  %401 = load ptr, ptr %400, align 8, !tbaa !20
  %402 = getelementptr inbounds nuw i8, ptr %154, i64 120
  %403 = load i64, ptr %402, align 8, !tbaa !16
  %404 = icmp ult i64 %403, 9223372036854775807
  call void @llvm.assume(i1 %404)
  %405 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %406 = load i64, ptr %405, align 8, !tbaa !16
  %407 = icmp ult i64 %406, 9223372036854775807
  call void @llvm.assume(i1 %407)
  %408 = sub nuw nsw i64 9223372036854775806, %406
  %409 = icmp samesign ult i64 %408, %403
  br i1 %409, label %410, label %412

410:                                              ; preds = %268, %399, %363
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %411 unwind label %349

411:                                              ; preds = %410
  unreachable

412:                                              ; preds = %399
  %413 = add nuw i64 %406, %403
  %414 = load ptr, ptr %12, align 8, !tbaa !20
  %415 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %416 = icmp eq ptr %414, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %412
  %418 = icmp samesign ult i64 %406, 16
  call void @llvm.assume(i1 %418)
  br label %419

419:                                              ; preds = %417, %412
  %420 = load i64, ptr %415, align 8
  %421 = select i1 %416, i64 15, i64 %420
  %422 = icmp samesign ugt i64 %421, 14
  call void @llvm.assume(i1 %422)
  %423 = icmp ult i64 %421, 9223372036854775807
  call void @llvm.assume(i1 %423)
  %424 = icmp ugt i64 %413, %421
  br i1 %424, label %433, label %425

425:                                              ; preds = %419
  %426 = icmp eq i64 %403, 0
  br i1 %426, label %434, label %427

427:                                              ; preds = %425
  %428 = getelementptr inbounds nuw i8, ptr %414, i64 %406
  %429 = icmp eq i64 %403, 1
  br i1 %429, label %430, label %432

430:                                              ; preds = %427
  %431 = load i8, ptr %401, align 1, !tbaa !19
  store i8 %431, ptr %428, align 1, !tbaa !19
  br label %434

432:                                              ; preds = %427
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %428, ptr align 1 %401, i64 %403, i1 false)
  br label %434

433:                                              ; preds = %419
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %406, i64 noundef 0, ptr noundef %401, i64 noundef %403)
          to label %434 unwind label %349

434:                                              ; preds = %432, %430, %425, %433
  store i64 %413, ptr %405, align 8, !tbaa !16
  %435 = load ptr, ptr %12, align 8, !tbaa !20
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 %413
  store i8 0, ptr %436, align 1, !tbaa !19
  %437 = getelementptr inbounds nuw i8, ptr %154, i64 152
  %438 = load i64, ptr %437, align 8, !tbaa !16
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %498, label %440

440:                                              ; preds = %434
  %441 = getelementptr inbounds nuw i8, ptr %154, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %442 = load ptr, ptr %441, align 8, !tbaa !20, !noalias !79
  %443 = icmp ult i64 %438, 9223372036854775807
  call void @llvm.assume(i1 %443)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !79
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.6, i64 noundef 1, ptr noundef %442, i64 noundef %438, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %444 unwind label %486

444:                                              ; preds = %440
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !79
  %445 = load ptr, ptr %14, align 8, !tbaa !20
  %446 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %447 = load i64, ptr %446, align 8, !tbaa !16
  %448 = icmp ult i64 %447, 9223372036854775807
  call void @llvm.assume(i1 %448)
  %449 = load i64, ptr %405, align 8, !tbaa !16
  %450 = icmp ult i64 %449, 9223372036854775807
  call void @llvm.assume(i1 %450)
  %451 = sub nuw nsw i64 9223372036854775806, %449
  %452 = icmp samesign ult i64 %451, %447
  br i1 %452, label %453, label %455

453:                                              ; preds = %444
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %454 unwind label %488

454:                                              ; preds = %453
  unreachable

455:                                              ; preds = %444
  %456 = add nuw i64 %449, %447
  %457 = load ptr, ptr %12, align 8, !tbaa !20
  %458 = icmp eq ptr %457, %415
  br i1 %458, label %459, label %461

459:                                              ; preds = %455
  %460 = icmp samesign ult i64 %449, 16
  call void @llvm.assume(i1 %460)
  br label %461

461:                                              ; preds = %459, %455
  %462 = load i64, ptr %415, align 8
  %463 = select i1 %458, i64 15, i64 %462
  %464 = icmp samesign ugt i64 %463, 14
  call void @llvm.assume(i1 %464)
  %465 = icmp ult i64 %463, 9223372036854775807
  call void @llvm.assume(i1 %465)
  %466 = icmp ugt i64 %456, %463
  br i1 %466, label %475, label %467

467:                                              ; preds = %461
  %468 = icmp eq i64 %447, 0
  br i1 %468, label %476, label %469

469:                                              ; preds = %467
  %470 = getelementptr inbounds nuw i8, ptr %457, i64 %449
  %471 = icmp eq i64 %447, 1
  br i1 %471, label %472, label %474

472:                                              ; preds = %469
  %473 = load i8, ptr %445, align 1, !tbaa !19
  store i8 %473, ptr %470, align 1, !tbaa !19
  br label %476

474:                                              ; preds = %469
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %470, ptr align 1 %445, i64 %447, i1 false)
  br label %476

475:                                              ; preds = %461
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %449, i64 noundef 0, ptr noundef %445, i64 noundef %447)
          to label %476 unwind label %488

476:                                              ; preds = %474, %472, %467, %475
  store i64 %456, ptr %405, align 8, !tbaa !16
  %477 = load ptr, ptr %12, align 8, !tbaa !20
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 %456
  store i8 0, ptr %478, align 1, !tbaa !19
  %479 = load ptr, ptr %14, align 8, !tbaa !20
  %480 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %481 = icmp eq ptr %479, %480
  br i1 %481, label %485, label %482

482:                                              ; preds = %476
  %483 = load i64, ptr %480, align 8, !tbaa !19
  %484 = add i64 %483, 1
  call void @_ZdlPvm(ptr noundef %479, i64 noundef %484) #24
  br label %485

485:                                              ; preds = %476, %482
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %498

486:                                              ; preds = %440
  %487 = landingpad { ptr, i32 }
          cleanup
  br label %496

488:                                              ; preds = %475, %453
  %489 = landingpad { ptr, i32 }
          cleanup
  %490 = load ptr, ptr %14, align 8, !tbaa !20
  %491 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %492 = icmp eq ptr %490, %491
  br i1 %492, label %496, label %493

493:                                              ; preds = %488
  %494 = load i64, ptr %491, align 8, !tbaa !19
  %495 = add i64 %494, 1
  call void @_ZdlPvm(ptr noundef %490, i64 noundef %495) #24
  br label %496

496:                                              ; preds = %488, %493, %486
  %497 = phi { ptr, i32 } [ %487, %486 ], [ %489, %493 ], [ %489, %488 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %860

498:                                              ; preds = %485, %434
  %499 = load i64, ptr %8, align 8, !tbaa !82
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %576, label %501

501:                                              ; preds = %498
  %502 = load ptr, ptr %23, align 8, !tbaa !84
  %503 = load i8, ptr %502, align 1, !tbaa !19
  %504 = icmp eq i8 %503, 47
  br i1 %504, label %505, label %576

505:                                              ; preds = %501
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %506 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %506, ptr %15, align 8, !tbaa !12
  %507 = icmp ugt i64 %499, 15
  br i1 %507, label %508, label %516

508:                                              ; preds = %505
  %509 = icmp ugt i64 %499, 9223372036854775806
  br i1 %509, label %510, label %512

510:                                              ; preds = %508
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %511 unwind label %565

511:                                              ; preds = %510
  unreachable

512:                                              ; preds = %508
  %513 = add nuw nsw i64 %499, 1
  %514 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %513) #23
          to label %515 unwind label %565

515:                                              ; preds = %512
  store ptr %514, ptr %15, align 8, !tbaa !20
  store i64 %499, ptr %506, align 8, !tbaa !19
  br label %520

516:                                              ; preds = %505
  %517 = icmp eq i64 %499, 1
  br i1 %517, label %518, label %520

518:                                              ; preds = %516
  %519 = load i8, ptr %502, align 1, !tbaa !19
  store i8 %519, ptr %506, align 8, !tbaa !19
  br label %522

520:                                              ; preds = %515, %516
  %521 = phi ptr [ %514, %515 ], [ %506, %516 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %521, ptr nonnull align 1 %502, i64 %499, i1 false)
  br label %522

522:                                              ; preds = %520, %518
  %523 = phi ptr [ %521, %520 ], [ %506, %518 ]
  %524 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %499, ptr %524, align 8, !tbaa !16
  %525 = getelementptr inbounds nuw i8, ptr %523, i64 %499
  store i8 0, ptr %525, align 1, !tbaa !19
  %526 = load ptr, ptr %15, align 8, !tbaa !20
  %527 = load i64, ptr %524, align 8, !tbaa !16
  %528 = icmp ult i64 %527, 9223372036854775807
  call void @llvm.assume(i1 %528)
  %529 = load i64, ptr %405, align 8, !tbaa !16
  %530 = icmp ult i64 %529, 9223372036854775807
  call void @llvm.assume(i1 %530)
  %531 = sub nuw nsw i64 9223372036854775806, %529
  %532 = icmp samesign ult i64 %531, %527
  br i1 %532, label %533, label %535

533:                                              ; preds = %522
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %534 unwind label %567

534:                                              ; preds = %533
  unreachable

535:                                              ; preds = %522
  %536 = add nuw i64 %529, %527
  %537 = load ptr, ptr %12, align 8, !tbaa !20
  %538 = icmp eq ptr %537, %415
  br i1 %538, label %539, label %541

539:                                              ; preds = %535
  %540 = icmp samesign ult i64 %529, 16
  call void @llvm.assume(i1 %540)
  br label %541

541:                                              ; preds = %539, %535
  %542 = load i64, ptr %415, align 8
  %543 = select i1 %538, i64 15, i64 %542
  %544 = icmp samesign ugt i64 %543, 14
  call void @llvm.assume(i1 %544)
  %545 = icmp ult i64 %543, 9223372036854775807
  call void @llvm.assume(i1 %545)
  %546 = icmp ugt i64 %536, %543
  br i1 %546, label %555, label %547

547:                                              ; preds = %541
  %548 = icmp eq i64 %527, 0
  br i1 %548, label %556, label %549

549:                                              ; preds = %547
  %550 = getelementptr inbounds nuw i8, ptr %537, i64 %529
  %551 = icmp eq i64 %527, 1
  br i1 %551, label %552, label %554

552:                                              ; preds = %549
  %553 = load i8, ptr %526, align 1, !tbaa !19
  store i8 %553, ptr %550, align 1, !tbaa !19
  br label %556

554:                                              ; preds = %549
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %550, ptr align 1 %526, i64 %527, i1 false)
  br label %556

555:                                              ; preds = %541
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %529, i64 noundef 0, ptr noundef %526, i64 noundef %527)
          to label %556 unwind label %567

556:                                              ; preds = %554, %552, %547, %555
  store i64 %536, ptr %405, align 8, !tbaa !16
  %557 = load ptr, ptr %12, align 8, !tbaa !20
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 %536
  store i8 0, ptr %558, align 1, !tbaa !19
  %559 = load ptr, ptr %15, align 8, !tbaa !20
  %560 = icmp eq ptr %559, %506
  br i1 %560, label %564, label %561

561:                                              ; preds = %556
  %562 = load i64, ptr %506, align 8, !tbaa !19
  %563 = add i64 %562, 1
  call void @_ZdlPvm(ptr noundef %559, i64 noundef %563) #24
  br label %564

564:                                              ; preds = %556, %561
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %778

565:                                              ; preds = %512, %510
  %566 = landingpad { ptr, i32 }
          cleanup
  br label %574

567:                                              ; preds = %555, %533
  %568 = landingpad { ptr, i32 }
          cleanup
  %569 = load ptr, ptr %15, align 8, !tbaa !20
  %570 = icmp eq ptr %569, %506
  br i1 %570, label %574, label %571

571:                                              ; preds = %567
  %572 = load i64, ptr %506, align 8, !tbaa !19
  %573 = add i64 %572, 1
  call void @_ZdlPvm(ptr noundef %569, i64 noundef %573) #24
  br label %574

574:                                              ; preds = %567, %571, %565
  %575 = phi { ptr, i32 } [ %566, %565 ], [ %568, %571 ], [ %568, %567 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %860

576:                                              ; preds = %501, %498
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  %577 = getelementptr inbounds nuw i8, ptr %154, i64 184
  %578 = load i64, ptr %577, align 8, !tbaa !16
  %579 = icmp eq i64 %578, 0
  br i1 %579, label %580, label %581

580:                                              ; preds = %576
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(2) @.str.8, i8 noundef zeroext 2)
          to label %597 unwind label %741

581:                                              ; preds = %576
  %582 = getelementptr inbounds nuw i8, ptr %154, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(32) %582, i8 noundef zeroext 2)
          to label %583 unwind label %743

583:                                              ; preds = %581
  invoke void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %16, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %584 unwind label %745

584:                                              ; preds = %583
  %585 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %586 = load ptr, ptr %585, align 8, !tbaa !85
  %587 = icmp eq ptr %586, null
  br i1 %587, label %589, label %588

588:                                              ; preds = %584
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %585, ptr noundef nonnull %586) #13
  br label %589

589:                                              ; preds = %588, %584
  store ptr null, ptr %585, align 8, !tbaa !85
  %590 = load ptr, ptr %17, align 8, !tbaa !20
  %591 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %592 = icmp eq ptr %590, %591
  br i1 %592, label %596, label %593

593:                                              ; preds = %589
  %594 = load i64, ptr %591, align 8, !tbaa !19
  %595 = add i64 %594, 1
  call void @_ZdlPvm(ptr noundef %590, i64 noundef %595) #24
  br label %596

596:                                              ; preds = %589, %593
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %597

597:                                              ; preds = %580, %596
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %598 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %598, ptr %18, align 8, !tbaa !12
  %599 = load ptr, ptr %16, align 8, !tbaa !20
  %600 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %601 = load i64, ptr %600, align 8, !tbaa !16
  %602 = icmp ult i64 %601, 9223372036854775807
  call void @llvm.assume(i1 %602)
  %603 = icmp samesign ugt i64 %601, 15
  br i1 %603, label %604, label %608

604:                                              ; preds = %597
  %605 = add nuw nsw i64 %601, 1
  %606 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %605) #23
          to label %607 unwind label %749

607:                                              ; preds = %604
  store ptr %606, ptr %18, align 8, !tbaa !20
  store i64 %601, ptr %598, align 8, !tbaa !19
  br label %614

608:                                              ; preds = %597
  %609 = icmp eq i64 %601, 0
  br i1 %609, label %612, label %610

610:                                              ; preds = %608
  %611 = add nuw nsw i64 %601, 1
  br label %614

612:                                              ; preds = %608
  %613 = load i8, ptr %599, align 1, !tbaa !19
  store i8 %613, ptr %598, align 8, !tbaa !19
  br label %617

614:                                              ; preds = %610, %607
  %615 = phi i64 [ %611, %610 ], [ %605, %607 ]
  %616 = phi ptr [ %598, %610 ], [ %606, %607 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %616, ptr noundef nonnull align 1 dereferenceable(1) %599, i64 %615, i1 false)
  br label %617

617:                                              ; preds = %614, %612
  %618 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %601, ptr %618, align 8, !tbaa !16
  %619 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %620 = getelementptr inbounds nuw i8, ptr %16, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %619, ptr noundef nonnull align 8 dereferenceable(8) %620)
          to label %628 unwind label %621

621:                                              ; preds = %617
  %622 = landingpad { ptr, i32 }
          cleanup
  %623 = load ptr, ptr %18, align 8, !tbaa !20
  %624 = icmp eq ptr %623, %598
  br i1 %624, label %774, label %625

625:                                              ; preds = %621
  %626 = load i64, ptr %598, align 8, !tbaa !19
  %627 = add i64 %626, 1
  call void @_ZdlPvm(ptr noundef %623, i64 noundef %627) #24
  br label %774

628:                                              ; preds = %617
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 2)
          to label %629 unwind label %751

629:                                              ; preds = %628
  %630 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %631 unwind label %753

631:                                              ; preds = %629
  %632 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %633 = load ptr, ptr %632, align 8, !tbaa !85
  %634 = icmp eq ptr %633, null
  br i1 %634, label %636, label %635

635:                                              ; preds = %631
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %632, ptr noundef nonnull %633) #13
  br label %636

636:                                              ; preds = %635, %631
  store ptr null, ptr %632, align 8, !tbaa !85
  %637 = load ptr, ptr %19, align 8, !tbaa !20
  %638 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %639 = icmp eq ptr %637, %638
  br i1 %639, label %643, label %640

640:                                              ; preds = %636
  %641 = load i64, ptr %638, align 8, !tbaa !19
  %642 = add i64 %641, 1
  call void @_ZdlPvm(ptr noundef %637, i64 noundef %642) #24
  br label %643

643:                                              ; preds = %636, %640
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  invoke void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %21, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %644 unwind label %757

644:                                              ; preds = %643
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %645 = load ptr, ptr %21, align 8, !tbaa !20, !noalias !93
  %646 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %647 = load i64, ptr %646, align 8, !tbaa !16, !noalias !93
  %648 = icmp ult i64 %647, 9223372036854775807
  call void @llvm.assume(i1 %648)
  %649 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %649, ptr %20, align 8, !tbaa !12, !alias.scope !93
  %650 = icmp eq ptr %645, null
  %651 = icmp ne i64 %647, 0
  %652 = and i1 %650, %651
  br i1 %652, label %653, label %655

653:                                              ; preds = %644
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
          to label %654 unwind label %759

654:                                              ; preds = %653
  unreachable

655:                                              ; preds = %644
  %656 = icmp samesign ugt i64 %647, 15
  br i1 %656, label %657, label %661

657:                                              ; preds = %655
  %658 = add nuw nsw i64 %647, 1
  %659 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %658) #23
          to label %660 unwind label %759

660:                                              ; preds = %657
  store ptr %659, ptr %20, align 8, !tbaa !20, !alias.scope !93
  store i64 %647, ptr %649, align 8, !tbaa !19, !alias.scope !93
  br label %661

661:                                              ; preds = %660, %655
  %662 = phi ptr [ %659, %660 ], [ %649, %655 ]
  switch i64 %647, label %665 [
    i64 1, label %663
    i64 0, label %666
  ]

663:                                              ; preds = %661
  %664 = load i8, ptr %645, align 1, !tbaa !19
  store i8 %664, ptr %662, align 1, !tbaa !19
  br label %666

665:                                              ; preds = %661
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %662, ptr align 1 %645, i64 %647, i1 false)
  br label %666

666:                                              ; preds = %665, %663, %661
  %667 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %647, ptr %667, align 8, !tbaa !16, !alias.scope !93
  %668 = getelementptr inbounds nuw i8, ptr %662, i64 %647
  store i8 0, ptr %668, align 1, !tbaa !19
  %669 = load ptr, ptr %20, align 8, !tbaa !20
  %670 = load i64, ptr %667, align 8, !tbaa !16
  %671 = icmp ult i64 %670, 9223372036854775807
  call void @llvm.assume(i1 %671)
  %672 = load i64, ptr %405, align 8, !tbaa !16
  %673 = icmp ult i64 %672, 9223372036854775807
  call void @llvm.assume(i1 %673)
  %674 = sub nuw nsw i64 9223372036854775806, %672
  %675 = icmp samesign ult i64 %674, %670
  br i1 %675, label %676, label %678

676:                                              ; preds = %666
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
          to label %677 unwind label %761

677:                                              ; preds = %676
  unreachable

678:                                              ; preds = %666
  %679 = add nuw i64 %672, %670
  %680 = load ptr, ptr %12, align 8, !tbaa !20
  %681 = icmp eq ptr %680, %415
  br i1 %681, label %682, label %684

682:                                              ; preds = %678
  %683 = icmp samesign ult i64 %672, 16
  call void @llvm.assume(i1 %683)
  br label %684

684:                                              ; preds = %682, %678
  %685 = load i64, ptr %415, align 8
  %686 = select i1 %681, i64 15, i64 %685
  %687 = icmp samesign ugt i64 %686, 14
  call void @llvm.assume(i1 %687)
  %688 = icmp ult i64 %686, 9223372036854775807
  call void @llvm.assume(i1 %688)
  %689 = icmp ugt i64 %679, %686
  br i1 %689, label %698, label %690

690:                                              ; preds = %684
  %691 = icmp eq i64 %670, 0
  br i1 %691, label %699, label %692

692:                                              ; preds = %690
  %693 = getelementptr inbounds nuw i8, ptr %680, i64 %672
  %694 = icmp eq i64 %670, 1
  br i1 %694, label %695, label %697

695:                                              ; preds = %692
  %696 = load i8, ptr %669, align 1, !tbaa !19
  store i8 %696, ptr %693, align 1, !tbaa !19
  br label %699

697:                                              ; preds = %692
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %693, ptr align 1 %669, i64 %670, i1 false)
  br label %699

698:                                              ; preds = %684
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %672, i64 noundef 0, ptr noundef %669, i64 noundef %670)
          to label %699 unwind label %761

699:                                              ; preds = %697, %695, %690, %698
  store i64 %679, ptr %405, align 8, !tbaa !16
  %700 = load ptr, ptr %12, align 8, !tbaa !20
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 %679
  store i8 0, ptr %701, align 1, !tbaa !19
  %702 = load ptr, ptr %20, align 8, !tbaa !20
  %703 = icmp eq ptr %702, %649
  br i1 %703, label %707, label %704

704:                                              ; preds = %699
  %705 = load i64, ptr %649, align 8, !tbaa !19
  %706 = add i64 %705, 1
  call void @_ZdlPvm(ptr noundef %702, i64 noundef %706) #24
  br label %707

707:                                              ; preds = %699, %704
  %708 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %709 = load ptr, ptr %708, align 8, !tbaa !85
  %710 = icmp eq ptr %709, null
  br i1 %710, label %712, label %711

711:                                              ; preds = %707
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %708, ptr noundef nonnull %709) #13
  br label %712

712:                                              ; preds = %711, %707
  store ptr null, ptr %708, align 8, !tbaa !85
  %713 = load ptr, ptr %21, align 8, !tbaa !20
  %714 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %715 = icmp eq ptr %713, %714
  br i1 %715, label %719, label %716

716:                                              ; preds = %712
  %717 = load i64, ptr %714, align 8, !tbaa !19
  %718 = add i64 %717, 1
  call void @_ZdlPvm(ptr noundef %713, i64 noundef %718) #24
  br label %719

719:                                              ; preds = %712, %716
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  %720 = load ptr, ptr %619, align 8, !tbaa !85
  %721 = icmp eq ptr %720, null
  br i1 %721, label %723, label %722

722:                                              ; preds = %719
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %619, ptr noundef nonnull %720) #13
  br label %723

723:                                              ; preds = %722, %719
  store ptr null, ptr %619, align 8, !tbaa !85
  %724 = load ptr, ptr %18, align 8, !tbaa !20
  %725 = icmp eq ptr %724, %598
  br i1 %725, label %729, label %726

726:                                              ; preds = %723
  %727 = load i64, ptr %598, align 8, !tbaa !19
  %728 = add i64 %727, 1
  call void @_ZdlPvm(ptr noundef %724, i64 noundef %728) #24
  br label %729

729:                                              ; preds = %723, %726
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %730 = load ptr, ptr %620, align 8, !tbaa !85
  %731 = icmp eq ptr %730, null
  br i1 %731, label %733, label %732

732:                                              ; preds = %729
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %620, ptr noundef nonnull %730) #13
  br label %733

733:                                              ; preds = %732, %729
  store ptr null, ptr %620, align 8, !tbaa !85
  %734 = load ptr, ptr %16, align 8, !tbaa !20
  %735 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %736 = icmp eq ptr %734, %735
  br i1 %736, label %740, label %737

737:                                              ; preds = %733
  %738 = load i64, ptr %735, align 8, !tbaa !19
  %739 = add i64 %738, 1
  call void @_ZdlPvm(ptr noundef %734, i64 noundef %739) #24
  br label %740

740:                                              ; preds = %733, %737
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %778

741:                                              ; preds = %580
  %742 = landingpad { ptr, i32 }
          cleanup
  br label %776

743:                                              ; preds = %581
  %744 = landingpad { ptr, i32 }
          cleanup
  br label %747

745:                                              ; preds = %583
  %746 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %17) #13
  br label %747

747:                                              ; preds = %743, %745
  %748 = phi { ptr, i32 } [ %746, %745 ], [ %744, %743 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %776

749:                                              ; preds = %604
  %750 = landingpad { ptr, i32 }
          cleanup
  br label %774

751:                                              ; preds = %628
  %752 = landingpad { ptr, i32 }
          cleanup
  br label %755

753:                                              ; preds = %629
  %754 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %19) #13
  br label %755

755:                                              ; preds = %753, %751
  %756 = phi { ptr, i32 } [ %754, %753 ], [ %752, %751 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %772

757:                                              ; preds = %643
  %758 = landingpad { ptr, i32 }
          cleanup
  br label %770

759:                                              ; preds = %657, %653
  %760 = landingpad { ptr, i32 }
          cleanup
  br label %768

761:                                              ; preds = %698, %676
  %762 = landingpad { ptr, i32 }
          cleanup
  %763 = load ptr, ptr %20, align 8, !tbaa !20
  %764 = icmp eq ptr %763, %649
  br i1 %764, label %768, label %765

765:                                              ; preds = %761
  %766 = load i64, ptr %649, align 8, !tbaa !19
  %767 = add i64 %766, 1
  call void @_ZdlPvm(ptr noundef %763, i64 noundef %767) #24
  br label %768

768:                                              ; preds = %761, %765, %759
  %769 = phi { ptr, i32 } [ %760, %759 ], [ %762, %765 ], [ %762, %761 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %21) #13
  br label %770

770:                                              ; preds = %768, %757
  %771 = phi { ptr, i32 } [ %769, %768 ], [ %758, %757 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  br label %772

772:                                              ; preds = %770, %755
  %773 = phi { ptr, i32 } [ %771, %770 ], [ %756, %755 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #13
  br label %774

774:                                              ; preds = %621, %749, %625, %772
  %775 = phi { ptr, i32 } [ %773, %772 ], [ %750, %749 ], [ %622, %625 ], [ %622, %621 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #13
  br label %776

776:                                              ; preds = %747, %774, %741
  %777 = phi { ptr, i32 } [ %775, %774 ], [ %742, %741 ], [ %748, %747 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %860

778:                                              ; preds = %564, %740
  call void @_ZN12__apo_stdlib10url_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %154) #13
  call void @_ZdlPvm(ptr noundef nonnull %154, i64 noundef 272) #24
  %779 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %779, ptr %22, align 8, !tbaa !12
  %780 = load ptr, ptr %12, align 8, !tbaa !20
  %781 = icmp eq ptr %780, %415
  br i1 %781, label %782, label %786

782:                                              ; preds = %778
  %783 = load i64, ptr %405, align 8, !tbaa !16
  %784 = icmp ult i64 %783, 16
  call void @llvm.assume(i1 %784)
  %785 = add nuw nsw i64 %783, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %779, ptr noundef nonnull align 8 dereferenceable(1) %415, i64 %785, i1 false)
  br label %789

786:                                              ; preds = %778
  store ptr %780, ptr %22, align 8, !tbaa !20
  %787 = load i64, ptr %415, align 8, !tbaa !19
  store i64 %787, ptr %779, align 8, !tbaa !19
  %788 = load i64, ptr %405, align 8, !tbaa !16
  br label %789

789:                                              ; preds = %782, %786
  %790 = phi i64 [ %783, %782 ], [ %788, %786 ]
  %791 = icmp ult i64 %790, 9223372036854775807
  call void @llvm.assume(i1 %791)
  %792 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %790, ptr %792, align 8, !tbaa !16
  store ptr %415, ptr %12, align 8, !tbaa !20
  store i64 0, ptr %405, align 8, !tbaa !16
  store i8 0, ptr %415, align 8, !tbaa !19
  %793 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %794 = icmp eq i8 %793, 0
  br i1 %794, label %795, label %798, !prof !29

795:                                              ; preds = %789
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %796 unwind label %853

796:                                              ; preds = %795
  %797 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %798

798:                                              ; preds = %796, %789
  %799 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %800 = getelementptr inbounds nuw i8, ptr %799, i64 48
  %801 = load ptr, ptr %800, align 8, !tbaa !30
  %802 = getelementptr inbounds nuw i8, ptr %799, i64 64
  %803 = load ptr, ptr %802, align 8, !tbaa !36
  %804 = getelementptr inbounds i8, ptr %803, i64 -32
  %805 = icmp eq ptr %801, %804
  br i1 %805, label %823, label %806

806:                                              ; preds = %798
  %807 = getelementptr inbounds nuw i8, ptr %801, i64 16
  store ptr %807, ptr %801, align 8, !tbaa !12
  %808 = load ptr, ptr %22, align 8, !tbaa !20
  %809 = icmp eq ptr %808, %779
  br i1 %809, label %810, label %814

810:                                              ; preds = %806
  %811 = load i64, ptr %792, align 8, !tbaa !16
  %812 = icmp ult i64 %811, 16
  call void @llvm.assume(i1 %812)
  %813 = add nuw nsw i64 %811, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %807, ptr noundef nonnull align 8 dereferenceable(1) %779, i64 %813, i1 false)
  br label %817

814:                                              ; preds = %806
  store ptr %808, ptr %801, align 8, !tbaa !20
  %815 = load i64, ptr %779, align 8, !tbaa !19
  store i64 %815, ptr %807, align 8, !tbaa !19
  %816 = load i64, ptr %792, align 8, !tbaa !16
  br label %817

817:                                              ; preds = %814, %810
  %818 = phi i64 [ %816, %814 ], [ %811, %810 ]
  %819 = icmp ult i64 %818, 9223372036854775807
  call void @llvm.assume(i1 %819)
  %820 = getelementptr inbounds nuw i8, ptr %801, i64 8
  store i64 %818, ptr %820, align 8, !tbaa !16
  store ptr %779, ptr %22, align 8, !tbaa !20
  store i64 0, ptr %792, align 8, !tbaa !16
  store i8 0, ptr %779, align 8, !tbaa !19
  %821 = load ptr, ptr %800, align 8, !tbaa !30
  %822 = getelementptr inbounds nuw i8, ptr %821, i64 32
  store ptr %822, ptr %800, align 8, !tbaa !30
  br label %826

823:                                              ; preds = %798
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %799, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %824 unwind label %853

824:                                              ; preds = %823
  %825 = load ptr, ptr %800, align 8, !tbaa !37, !noalias !94
  br label %826

826:                                              ; preds = %824, %817
  %827 = phi ptr [ %822, %817 ], [ %825, %824 ]
  %828 = getelementptr inbounds nuw i8, ptr %799, i64 56
  %829 = load ptr, ptr %828, align 8, !tbaa !41, !noalias !94
  %830 = icmp eq ptr %827, %829
  br i1 %830, label %831, label %837

831:                                              ; preds = %826
  %832 = getelementptr inbounds nuw i8, ptr %799, i64 72
  %833 = load ptr, ptr %832, align 8, !tbaa !42, !noalias !94
  %834 = getelementptr inbounds i8, ptr %833, i64 -8
  %835 = load ptr, ptr %834, align 8, !tbaa !43
  %836 = getelementptr inbounds nuw i8, ptr %835, i64 512
  br label %837

837:                                              ; preds = %831, %826
  %838 = phi ptr [ %836, %831 ], [ %827, %826 ]
  %839 = getelementptr inbounds i8, ptr %838, i64 -32
  %840 = load ptr, ptr %839, align 8, !tbaa !20
  %841 = load ptr, ptr %22, align 8, !tbaa !20
  %842 = icmp eq ptr %841, %779
  br i1 %842, label %846, label %843

843:                                              ; preds = %837
  %844 = load i64, ptr %779, align 8, !tbaa !19
  %845 = add i64 %844, 1
  call void @_ZdlPvm(ptr noundef %841, i64 noundef %845) #24
  br label %846

846:                                              ; preds = %837, %843
  %847 = load ptr, ptr %12, align 8, !tbaa !20
  %848 = icmp eq ptr %847, %415
  br i1 %848, label %852, label %849

849:                                              ; preds = %846
  %850 = load i64, ptr %415, align 8, !tbaa !19
  %851 = add i64 %850, 1
  call void @_ZdlPvm(ptr noundef %847, i64 noundef %851) #24
  br label %852

852:                                              ; preds = %846, %849
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %869

853:                                              ; preds = %823, %795
  %854 = landingpad { ptr, i32 }
          cleanup
  %855 = load ptr, ptr %22, align 8, !tbaa !20
  %856 = icmp eq ptr %855, %779
  br i1 %856, label %860, label %857

857:                                              ; preds = %853
  %858 = load i64, ptr %779, align 8, !tbaa !19
  %859 = add i64 %858, 1
  call void @_ZdlPvm(ptr noundef %855, i64 noundef %859) #24
  br label %860

860:                                              ; preds = %853, %857, %776, %574, %496, %361, %349
  %861 = phi { ptr, i32 } [ %362, %361 ], [ %777, %776 ], [ %575, %574 ], [ %497, %496 ], [ %350, %349 ], [ %854, %857 ], [ %854, %853 ]
  %862 = load ptr, ptr %12, align 8, !tbaa !20
  %863 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %864 = icmp eq ptr %862, %863
  br i1 %864, label %868, label %865

865:                                              ; preds = %860
  %866 = load i64, ptr %863, align 8, !tbaa !19
  %867 = add i64 %866, 1
  call void @_ZdlPvm(ptr noundef %862, i64 noundef %867) #24
  br label %868

868:                                              ; preds = %860, %865
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %871

869:                                              ; preds = %230, %107, %236, %113, %852
  %870 = phi ptr [ %840, %852 ], [ %110, %113 ], [ %233, %236 ], [ %110, %107 ], [ %233, %230 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret ptr %870

871:                                              ; preds = %246, %239, %116, %250, %243, %120, %868
  %872 = phi { ptr, i32 } [ %117, %120 ], [ %240, %243 ], [ %861, %868 ], [ %247, %250 ], [ %117, %116 ], [ %240, %239 ], [ %247, %246 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %872
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_parse(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN32__apollo_inline_inline_3016_5_1921sys__native_url_parseEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_scheme(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib10url_schemeEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_username(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_usernameEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_password(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_passwordEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_hostEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_port(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_portEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib8url_pathEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_query(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib9url_queryEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_fragment(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib12url_fragmentEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
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
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib10url_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !19
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #24
  br label %9

9:                                                ; preds = %1, %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i64, ptr %12, align 8, !tbaa !19
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %11, i64 noundef %16) #24
  br label %17

17:                                               ; preds = %9, %14
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i64, ptr %20, align 8, !tbaa !19
  %24 = add i64 %23, 1
  tail call void @_ZdlPvm(ptr noundef %19, i64 noundef %24) #24
  br label %25

25:                                               ; preds = %17, %22
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i64, ptr %28, align 8, !tbaa !19
  %32 = add i64 %31, 1
  tail call void @_ZdlPvm(ptr noundef %27, i64 noundef %32) #24
  br label %33

33:                                               ; preds = %25, %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i64, ptr %36, align 8, !tbaa !19
  %40 = add i64 %39, 1
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %40) #24
  br label %41

41:                                               ; preds = %33, %38
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %43 = load ptr, ptr %42, align 8, !tbaa !20
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i64, ptr %44, align 8, !tbaa !19
  %48 = add i64 %47, 1
  tail call void @_ZdlPvm(ptr noundef %43, i64 noundef %48) #24
  br label %49

49:                                               ; preds = %41, %46
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %51 = load ptr, ptr %50, align 8, !tbaa !20
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i64, ptr %52, align 8, !tbaa !19
  %56 = add i64 %55, 1
  tail call void @_ZdlPvm(ptr noundef %51, i64 noundef %56) #24
  br label %57

57:                                               ; preds = %49, %54
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %59 = load ptr, ptr %58, align 8, !tbaa !20
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i64, ptr %60, align 8, !tbaa !19
  %64 = add i64 %63, 1
  tail call void @_ZdlPvm(ptr noundef %59, i64 noundef %64) #24
  br label %65

65:                                               ; preds = %57, %62
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib10url_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN12__apo_stdlib10url_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #24
  ret void
}

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !43, !noalias !97
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !43
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !100, !noalias !97
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !100
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !43, !noalias !101
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !43
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !100, !noalias !101
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !100
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !104
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !105
  %21 = load ptr, ptr %9, align 8, !tbaa !106
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #24
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !107

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !104
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !108
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !108
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !109

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  store ptr %12, ptr %0, align 8, !tbaa !104
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
  store ptr %20, ptr %19, align 8, !tbaa !43
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !110

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #13
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #24
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !107

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
  %44 = load ptr, ptr %0, align 8, !tbaa !104
  %45 = load i64, ptr %6, align 8, !tbaa !108
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
  store ptr %15, ptr %52, align 8, !tbaa !42
  %53 = load ptr, ptr %15, align 8, !tbaa !43
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !41
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !111
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !42
  %60 = load ptr, ptr %58, align 8, !tbaa !43
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !41
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !111
  store ptr %53, ptr %51, align 8, !tbaa !112
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !30
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !42
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !42
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !37
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !19
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #24
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
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #24
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
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #24
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
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #24
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
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #24
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
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #24
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
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #24
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
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #24
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
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #24
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
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #24
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
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #24
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
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #24
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
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #24
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
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #24
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
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #24
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
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #24
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !42
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !113

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !111
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
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #24
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !114

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !41
  %168 = load ptr, ptr %2, align 8, !tbaa !37
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
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #24
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !114

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !37
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
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #24
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !114

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !37
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !111
  %27 = load ptr, ptr %4, align 8, !tbaa !37
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
  %38 = load i64, ptr %37, align 8, !tbaa !108
  %39 = load ptr, ptr %0, align 8, !tbaa !104
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !106
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !43
  %51 = load ptr, ptr %3, align 8, !tbaa !30
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
  %68 = load ptr, ptr %5, align 8, !tbaa !106
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !42
  %70 = load ptr, ptr %69, align 8, !tbaa !43
  store ptr %70, ptr %18, align 8, !tbaa !41
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !111
  store ptr %70, ptr %3, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !108
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !104
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
  br i1 %30, label %31, label %32, !prof !115

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !43
  store ptr %35, ptr %24, align 8, !tbaa !43
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !116

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !43
  store ptr %48, ptr %42, align 8, !tbaa !43
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
  br i1 %64, label %65, label %66, !prof !115

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !43
  store ptr %69, ptr %60, align 8, !tbaa !43
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !104
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #24
  store ptr %55, ptr %0, align 8, !tbaa !104
  store i64 %52, ptr %14, align 8, !tbaa !108
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !42
  %75 = load ptr, ptr %74, align 8, !tbaa !43
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !41
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !111
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !42
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !41
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %1) #13
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %0, align 8, !tbaa !12
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
  store ptr %12, ptr %0, align 8, !tbaa !20
  store i64 %4, ptr %5, align 8, !tbaa !19
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %5, %3 ]
  switch i64 %4, label %17 [
    i64 1, label %15
    i64 0, label %18
  ]

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !19
  store i8 %16, ptr %14, align 1, !tbaa !19
  br label %18

17:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr nonnull align 1 %1, i64 %4, i1 false)
  br label %18

18:                                               ; preds = %17, %15, %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %19, align 8, !tbaa !16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 %4
  store i8 0, ptr %20, align 1, !tbaa !19
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
  %28 = load ptr, ptr %21, align 8, !tbaa !85
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %28) #13
  br label %31

31:                                               ; preds = %26, %30
  store ptr null, ptr %21, align 8, !tbaa !85
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi { ptr, i32 } [ %27, %31 ], [ %25, %24 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !20
  %35 = icmp eq ptr %34, %5
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i64, ptr %5, align 8, !tbaa !19
  %38 = add i64 %37, 1
  tail call void @_ZdlPvm(ptr noundef %34, i64 noundef %38) #24
  br label %39

39:                                               ; preds = %32, %36
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !20
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !16
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %8, ptr %0, align 8, !tbaa !12
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
  store ptr %17, ptr %0, align 8, !tbaa !20
  store i64 %6, ptr %8, align 8, !tbaa !19
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ %17, %15 ], [ %8, %13 ]
  switch i64 %6, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %4, align 1, !tbaa !19
  store i8 %21, ptr %19, align 1, !tbaa !19
  br label %23

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %4, i64 %6, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %24, align 8, !tbaa !16
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %6
  store i8 0, ptr %25, align 1, !tbaa !19
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
  %33 = load ptr, ptr %26, align 8, !tbaa !85
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %33) #13
  br label %36

36:                                               ; preds = %31, %35
  store ptr null, ptr %26, align 8, !tbaa !85
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi { ptr, i32 } [ %32, %36 ], [ %30, %29 ]
  %39 = load ptr, ptr %0, align 8, !tbaa !20
  %40 = icmp eq ptr %39, %8
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i64, ptr %8, align 8, !tbaa !19
  %43 = add i64 %42, 1
  tail call void @_ZdlPvm(ptr noundef %39, i64 noundef %43) #24
  br label %44

44:                                               ; preds = %37, %41
  resume { ptr, i32 } %38
}

declare void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !85
  %7 = load ptr, ptr %0, align 8, !tbaa !20
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8, !tbaa !19
  %12 = add i64 %11, 1
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %12) #24
  br label %13

13:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load i64, ptr %1, align 8, !tbaa !65
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !12
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
  store ptr %19, ptr %0, align 8, !tbaa !20
  store i64 %4, ptr %7, align 8, !tbaa !19
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %4, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %6, align 1, !tbaa !19
  store i8 %23, ptr %21, align 1, !tbaa !19
  br label %25

24:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %6, i64 %4, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %26, align 8, !tbaa !16
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %4
  store i8 0, ptr %27, align 1, !tbaa !19
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
  %35 = load ptr, ptr %28, align 8, !tbaa !85
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %35) #13
  br label %38

38:                                               ; preds = %33, %37
  store ptr null, ptr %28, align 8, !tbaa !85
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi { ptr, i32 } [ %34, %38 ], [ %32, %31 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !20
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i64, ptr %7, align 8, !tbaa !19
  %45 = add i64 %44, 1
  tail call void @_ZdlPvm(ptr noundef %41, i64 noundef %45) #24
  br label %46

46:                                               ; preds = %39, %43
  resume { ptr, i32 } %40
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !12
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %8, align 8, !tbaa !16
  store i8 0, ptr %7, align 8, !tbaa !19
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
  store i8 0, ptr %16, align 1, !tbaa !19
  store ptr %16, ptr %0, align 8, !tbaa !20
  store i64 %14, ptr %7, align 8, !tbaa !19
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
  %30 = load i8, ptr %1, align 1, !tbaa !19
  store i8 %30, ptr %19, align 1, !tbaa !19
  br label %35

31:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %1, i64 %2, i1 false)
  br label %35

32:                                               ; preds = %21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %1, i64 noundef %2)
          to label %33 unwind label %66

33:                                               ; preds = %32
  %34 = load ptr, ptr %0, align 8, !tbaa !20
  br label %35

35:                                               ; preds = %28, %33, %31, %29
  %36 = phi ptr [ %34, %33 ], [ %19, %31 ], [ %19, %29 ], [ %19, %28 ]
  store i64 %2, ptr %8, align 8, !tbaa !16
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %2
  store i8 0, ptr %37, align 1, !tbaa !19
  %38 = load i64, ptr %8, align 8, !tbaa !16
  %39 = icmp ult i64 %38, 9223372036854775807
  tail call void @llvm.assume(i1 %39)
  %40 = sub nuw nsw i64 9223372036854775806, %38
  %41 = icmp ult i64 %40, %4
  br i1 %41, label %42, label %45

42:                                               ; preds = %35, %18, %11
  %43 = phi ptr [ @.str.9, %18 ], [ @.str.4, %11 ], [ @.str.9, %35 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %43) #22
          to label %44 unwind label %66

44:                                               ; preds = %42
  unreachable

45:                                               ; preds = %35
  %46 = add nuw i64 %38, %4
  %47 = load ptr, ptr %0, align 8, !tbaa !20
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
  br i1 %58, label %74, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds nuw i8, ptr %47, i64 %38
  %61 = icmp eq i64 %4, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i8, ptr %3, align 1, !tbaa !19
  store i8 %63, ptr %60, align 1, !tbaa !19
  br label %74

64:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %3, i64 %4, i1 false)
  br label %74

65:                                               ; preds = %51
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %38, i64 noundef 0, ptr noundef %3, i64 noundef %4)
          to label %74 unwind label %66

66:                                               ; preds = %42, %65, %32, %13
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %0, align 8, !tbaa !20
  %69 = icmp eq ptr %68, %7
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i64, ptr %7, align 8, !tbaa !19
  %72 = add i64 %71, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %72) #24
  br label %73

73:                                               ; preds = %66, %70
  resume { ptr, i32 } %67

74:                                               ; preds = %64, %62, %57, %65
  store i64 %46, ptr %8, align 8, !tbaa !16
  %75 = load ptr, ptr %0, align 8, !tbaa !20
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 %46
  store i8 0, ptr %76, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZdlPvm(ptr noundef %13, i64 noundef %64) #24
  br label %65

65:                                               ; preds = %61, %63
  store ptr %35, ptr %0, align 8, !tbaa !20
  store i64 %33, ptr %14, align 8, !tbaa !19
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { cold noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }

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
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!"branch_weights", i32 1, i32 1023}
!30 = !{!31, !35, i64 48}
!31 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !32, i64 0, !18, i64 8, !34, i64 16, !34, i64 48}
!32 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0}
!33 = !{!"any p2 pointer", !15, i64 0}
!34 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !35, i64 0, !35, i64 8, !35, i64 16, !32, i64 24}
!35 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!36 = !{!31, !35, i64 64}
!37 = !{!34, !35, i64 0}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!40 = distinct !{!40, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!41 = !{!34, !35, i64 8}
!42 = !{!34, !32, i64 24}
!43 = !{!35, !35, i64 0}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!46 = distinct !{!46, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!49 = distinct !{!49, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!52 = distinct !{!52, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!55 = distinct !{!55, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!58 = distinct !{!58, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!61 = distinct !{!61, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!64 = distinct !{!64, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!65 = !{!18, !18, i64 0}
!66 = !{!14, !14, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!69 = distinct !{!69, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!72 = distinct !{!72, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!75 = distinct !{!75, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!78 = distinct !{!78, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!81 = distinct !{!81, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!82 = !{!83, !18, i64 0}
!83 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !18, i64 0, !14, i64 8}
!84 = !{!83, !14, i64 8}
!85 = !{!86, !86, i64 0}
!86 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !15, i64 0}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!89 = distinct !{!89, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!92 = distinct !{!92, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!93 = !{!91, !88}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!96 = distinct !{!96, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!99 = distinct !{!99, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!100 = !{!15, !15, i64 0}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!103 = distinct !{!103, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!104 = !{!31, !32, i64 0}
!105 = !{!31, !32, i64 40}
!106 = !{!31, !32, i64 72}
!107 = distinct !{!107, !27}
!108 = !{!31, !18, i64 8}
!109 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!110 = distinct !{!110, !27}
!111 = !{!34, !35, i64 16}
!112 = !{!31, !35, i64 16}
!113 = distinct !{!113, !27}
!114 = distinct !{!114, !27}
!115 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!116 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
