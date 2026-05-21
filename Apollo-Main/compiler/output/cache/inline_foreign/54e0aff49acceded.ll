; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/54e0aff49acceded.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/54e0aff49acceded.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.winsize = type { i16, i16, i16, i16 }

$_ZN12__apo_stdlib14term_read_lineEv = comdat any

$_ZN12__apo_stdlib15term_set_cursorEii = comdat any

$__clang_call_terminate = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZN12__apo_stdlib12log_prefixedESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[2J\1B[H\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\1B[\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\1B[?25h\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\1B[?25l\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"underline\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\1B[4m\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"italic\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\1B[3m\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"trace\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_426sys__native_term_print_rawEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %0, i64 noundef %6)
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_428sys__native_term_println_rawEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca i8, align 1
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %0, i64 noundef %7)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 10, ptr %2, align 1, !tbaa !5
  %9 = load ptr, ptr %8, align 8, !tbaa !8
  %10 = getelementptr i8, ptr %9, i64 -24
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = load i64, ptr %13, align 8, !tbaa !10
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %2, i64 noundef 1)
  br label %20

18:                                               ; preds = %6
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 10)
  br label %20

20:                                               ; preds = %16, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_1151_5_426sys__native_term_read_lineEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib14term_read_lineEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14term_read_lineEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %3, ptr %1, align 8, !tbaa !22
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %4, align 8, !tbaa !25
  store i8 0, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !8
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %13 unwind label %111

13:                                               ; preds = %12
  unreachable

14:                                               ; preds = %0
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %16 = load i8, ptr %15, align 8, !tbaa !35
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 67
  %20 = load i8, ptr %19, align 1, !tbaa !5
  br label %27

21:                                               ; preds = %14
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
          to label %22 unwind label %111

22:                                               ; preds = %21
  %23 = load ptr, ptr %10, align 8, !tbaa !8
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 48
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef signext i8 %25(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
          to label %27 unwind label %111

27:                                               ; preds = %22, %18
  %28 = phi i8 [ %20, %18 ], [ %26, %22 ]
  %29 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %28)
          to label %30 unwind label %111

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !22
  %32 = load ptr, ptr %1, align 8, !tbaa !41
  %33 = icmp eq ptr %32, %3
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, ptr %4, align 8, !tbaa !25
  %36 = icmp ult i64 %35, 16
  call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(1) %3, i64 %37, i1 false)
  br label %41

38:                                               ; preds = %30
  store ptr %32, ptr %2, align 8, !tbaa !41
  %39 = load i64, ptr %3, align 8, !tbaa !5
  store i64 %39, ptr %31, align 8, !tbaa !5
  %40 = load i64, ptr %4, align 8, !tbaa !25
  br label %41

41:                                               ; preds = %34, %38
  %42 = phi i64 [ %35, %34 ], [ %40, %38 ]
  %43 = icmp ult i64 %42, 9223372036854775807
  call void @llvm.assume(i1 %43)
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %42, ptr %44, align 8, !tbaa !25
  store ptr %3, ptr %1, align 8, !tbaa !41
  store i64 0, ptr %4, align 8, !tbaa !25
  store i8 0, ptr %3, align 8, !tbaa !5
  %45 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50, !prof !42

47:                                               ; preds = %41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %48 unwind label %113

48:                                               ; preds = %47
  %49 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #10
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %50

50:                                               ; preds = %48, %41
  %51 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 48
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 64
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  %56 = getelementptr inbounds i8, ptr %55, i64 -32
  %57 = icmp eq ptr %53, %56
  br i1 %57, label %75, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds nuw i8, ptr %53, i64 16
  store ptr %59, ptr %53, align 8, !tbaa !22
  %60 = load ptr, ptr %2, align 8, !tbaa !41
  %61 = icmp eq ptr %60, %31
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, ptr %44, align 8, !tbaa !25
  %64 = icmp ult i64 %63, 16
  call void @llvm.assume(i1 %64)
  %65 = add nuw nsw i64 %63, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %59, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %65, i1 false)
  br label %69

66:                                               ; preds = %58
  store ptr %60, ptr %53, align 8, !tbaa !41
  %67 = load i64, ptr %31, align 8, !tbaa !5
  store i64 %67, ptr %59, align 8, !tbaa !5
  %68 = load i64, ptr %44, align 8, !tbaa !25
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i64 [ %68, %66 ], [ %63, %62 ]
  %71 = icmp ult i64 %70, 9223372036854775807
  call void @llvm.assume(i1 %71)
  %72 = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 %70, ptr %72, align 8, !tbaa !25
  store ptr %31, ptr %2, align 8, !tbaa !41
  store i64 0, ptr %44, align 8, !tbaa !25
  store i8 0, ptr %31, align 8, !tbaa !5
  %73 = load ptr, ptr %52, align 8, !tbaa !43
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 32
  store ptr %74, ptr %52, align 8, !tbaa !43
  br label %78

75:                                               ; preds = %50
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %51, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %76 unwind label %113

76:                                               ; preds = %75
  %77 = load ptr, ptr %52, align 8, !tbaa !50, !noalias !51
  br label %78

78:                                               ; preds = %76, %69
  %79 = phi ptr [ %74, %69 ], [ %77, %76 ]
  %80 = getelementptr inbounds nuw i8, ptr %51, i64 56
  %81 = load ptr, ptr %80, align 8, !tbaa !54, !noalias !51
  %82 = icmp eq ptr %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = getelementptr inbounds nuw i8, ptr %51, i64 72
  %85 = load ptr, ptr %84, align 8, !tbaa !55, !noalias !51
  %86 = getelementptr inbounds i8, ptr %85, i64 -8
  %87 = load ptr, ptr %86, align 8, !tbaa !56
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 512
  br label %89

89:                                               ; preds = %83, %78
  %90 = phi ptr [ %88, %83 ], [ %79, %78 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 -32
  %92 = load ptr, ptr %91, align 8, !tbaa !41
  %93 = load ptr, ptr %2, align 8, !tbaa !41
  %94 = icmp eq ptr %93, %31
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i64, ptr %44, align 8, !tbaa !25
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %101

98:                                               ; preds = %89
  %99 = load i64, ptr %31, align 8, !tbaa !5
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %93, i64 noundef %100) #24
  br label %101

101:                                              ; preds = %95, %98
  %102 = load ptr, ptr %1, align 8, !tbaa !41
  %103 = icmp eq ptr %102, %3
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i64, ptr %4, align 8, !tbaa !25
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  br label %110

107:                                              ; preds = %101
  %108 = load i64, ptr %3, align 8, !tbaa !5
  %109 = add i64 %108, 1
  call void @_ZdlPvm(ptr noundef %102, i64 noundef %109) #24
  br label %110

110:                                              ; preds = %104, %107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #10
  ret ptr %92

111:                                              ; preds = %27, %22, %21, %12
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %123

113:                                              ; preds = %75, %47
  %114 = landingpad { ptr, i32 }
          cleanup
  %115 = load ptr, ptr %2, align 8, !tbaa !41
  %116 = icmp eq ptr %115, %31
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i64, ptr %44, align 8, !tbaa !25
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %123

120:                                              ; preds = %113
  %121 = load i64, ptr %31, align 8, !tbaa !5
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %115, i64 noundef %122) #24
  br label %123

123:                                              ; preds = %120, %117, %111
  %124 = phi { ptr, i32 } [ %112, %111 ], [ %114, %117 ], [ %114, %120 ]
  %125 = load ptr, ptr %1, align 8, !tbaa !41
  %126 = icmp eq ptr %125, %3
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, ptr %4, align 8, !tbaa !25
  %129 = icmp ult i64 %128, 16
  call void @llvm.assume(i1 %129)
  br label %133

130:                                              ; preds = %123
  %131 = load i64, ptr %3, align 8, !tbaa !5
  %132 = add i64 %131, 1
  call void @_ZdlPvm(ptr noundef %125, i64 noundef %132) #24
  br label %133

133:                                              ; preds = %127, %130
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #10
  resume { ptr, i32 } %124
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_1151_5_423sys__native_term_is_ttyEv() local_unnamed_addr #2 {
  %1 = load ptr, ptr @stdout, align 8, !tbaa !57
  %2 = tail call i32 @fileno(ptr noundef %1) #10
  %3 = tail call i32 @isatty(i32 noundef %2) #10
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 65536) i32 @_ZN31__apollo_inline_inline_1151_5_424sys__native_term_columnsEv() local_unnamed_addr #2 {
  %1 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @stdout, align 8, !tbaa !57
  %3 = tail call i32 @fileno(ptr noundef %2) #10
  %4 = call i32 (i32, i64, ...) @ioctl(i32 noundef %3, i64 noundef 21523, ptr noundef nonnull %1) #10
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp ne i16 %7, 0
  %10 = select i1 %5, i1 %9, i1 false
  %11 = select i1 %10, i32 %8, i32 80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  ret i32 %11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 65536) i32 @_ZN31__apollo_inline_inline_1151_5_421sys__native_term_rowsEv() local_unnamed_addr #2 {
  %1 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @stdout, align 8, !tbaa !57
  %3 = tail call i32 @fileno(ptr noundef %2) #10
  %4 = call i32 (i32, i64, ...) @ioctl(i32 noundef %3, i64 noundef 21523, ptr noundef nonnull %1) #10
  %5 = icmp eq i32 %4, 0
  %6 = load i16, ptr %1, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ne i16 %6, 0
  %9 = select i1 %5, i1 %8, i1 false
  %10 = select i1 %9, i32 %7, i32 25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_422sys__native_term_clearEv() local_unnamed_addr #0 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 7)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_427sys__native_term_set_cursorEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @_ZN12__apo_stdlib15term_set_cursorEii(i32 noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib15term_set_cursorEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 comdat {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 2)
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 59, ptr %4, align 1, !tbaa !5
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !10
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %4, i64 noundef 1)
  br label %18

16:                                               ; preds = %2
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 59)
  br label %18

18:                                               ; preds = %14, %16
  %19 = phi ptr [ %15, %14 ], [ %6, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 72, ptr %3, align 1, !tbaa !5
  %21 = load ptr, ptr %20, align 8, !tbaa !8
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load i64, ptr %25, align 8, !tbaa !10
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %3, i64 noundef 1)
  br label %32

30:                                               ; preds = %18
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 72)
  br label %32

32:                                               ; preds = %28, %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_428sys__native_term_show_cursorEv() local_unnamed_addr #0 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 6)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_428sys__native_term_hide_cursorEv() local_unnamed_addr #0 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 6)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_429sys__native_term_set_color_fgEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 2)
  %4 = and i32 %0, 7
  %5 = add nuw nsw i32 %4, 30
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 109, ptr %2, align 1, !tbaa !5
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !10
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2, i64 noundef 1)
  br label %18

16:                                               ; preds = %1
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 109)
  br label %18

18:                                               ; preds = %14, %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_429sys__native_term_set_color_bgEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 2)
  %4 = and i32 %0, 7
  %5 = or disjoint i32 %4, 40
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 109, ptr %2, align 1, !tbaa !5
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !10
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2, i64 noundef 1)
  br label %18

16:                                               ; preds = %1
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 109)
  br label %18

18:                                               ; preds = %14, %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_426sys__native_term_set_styleEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  switch i64 %4, label %17 [
    i64 4, label %5
    i64 9, label %8
    i64 6, label %11
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %0, ptr noundef nonnull dereferenceable(4) @.str.5, i64 4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %17

8:                                                ; preds = %3
  %9 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %0, ptr noundef nonnull dereferenceable(9) @.str.7, i64 9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %17

11:                                               ; preds = %3
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %0, ptr noundef nonnull dereferenceable(6) @.str.9, i64 6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %8, %5
  %15 = phi ptr [ @.str.6, %5 ], [ @.str.8, %8 ], [ @.str.10, %11 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %15, i64 noundef 4)
  br label %17

17:                                               ; preds = %1, %3, %5, %8, %11, %14
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_422sys__native_term_resetEv() local_unnamed_addr #0 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 4)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_420sys__native_log_infoEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  tail call void @_ZN12__apo_stdlib12log_prefixedESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 4, ptr nonnull @.str.12, i64 %6, ptr %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_420sys__native_log_warnEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  tail call void @_ZN12__apo_stdlib12log_prefixedESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 4, ptr nonnull @.str.21, i64 %6, ptr %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_421sys__native_log_errorEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  tail call void @_ZN12__apo_stdlib12log_prefixedESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 5, ptr nonnull @.str.22, i64 %6, ptr %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_421sys__native_log_debugEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  tail call void @_ZN12__apo_stdlib12log_prefixedESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 5, ptr nonnull @.str.23, i64 %6, ptr %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_421sys__native_log_traceEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  tail call void @_ZN12__apo_stdlib12log_prefixedESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 5, ptr nonnull @.str.24, i64 %6, ptr %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_term_read_line() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib14term_read_lineEv()
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 2) i32 @sys__native_term_is_tty() local_unnamed_addr #2 {
  %1 = load ptr, ptr @stdout, align 8, !tbaa !57
  %2 = tail call i32 @fileno(ptr noundef %1) #10
  %3 = tail call i32 @isatty(i32 noundef %2) #10
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 65536) i32 @sys__native_term_columns() local_unnamed_addr #2 {
  %1 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @stdout, align 8, !tbaa !57
  %3 = tail call i32 @fileno(ptr noundef %2) #10
  %4 = call i32 (i32, i64, ...) @ioctl(i32 noundef %3, i64 noundef 21523, ptr noundef nonnull %1) #10
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp ne i16 %7, 0
  %10 = select i1 %5, i1 %9, i1 false
  %11 = select i1 %10, i32 %8, i32 80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  ret i32 %11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 65536) i32 @sys__native_term_rows() local_unnamed_addr #2 {
  %1 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @stdout, align 8, !tbaa !57
  %3 = tail call i32 @fileno(ptr noundef %2) #10
  %4 = call i32 (i32, i64, ...) @ioctl(i32 noundef %3, i64 noundef 21523, ptr noundef nonnull %1) #10
  %5 = icmp eq i32 %4, 0
  %6 = load i16, ptr %1, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ne i16 %6, 0
  %9 = select i1 %5, i1 %8, i1 false
  %10 = select i1 %9, i32 %7, i32 25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #8

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: cold noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !56, !noalias !59
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !56
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !62, !noalias !59
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !62
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !56, !noalias !63
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !56
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !62, !noalias !63
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !62
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !67
  %21 = load ptr, ptr %9, align 8, !tbaa !68
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #24
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !69

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !66
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !71
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
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !71
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !72

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #27
  store ptr %12, ptr %0, align 8, !tbaa !66
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !56
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !73

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #10
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #24
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !69

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
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #10
  %44 = load ptr, ptr %0, align 8, !tbaa !66
  %45 = load i64, ptr %6, align 8, !tbaa !71
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
  store ptr %15, ptr %52, align 8, !tbaa !55
  %53 = load ptr, ptr %15, align 8, !tbaa !56
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !54
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !74
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !55
  %60 = load ptr, ptr %58, align 8, !tbaa !56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !54
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !74
  store ptr %53, ptr %51, align 8, !tbaa !75
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !43
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

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !55
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %210
  %11 = load ptr, ptr %4, align 8, !tbaa !55
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %212, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !50
  br i1 %15, label %253, label %214

17:                                               ; preds = %3, %210
  %18 = phi ptr [ %211, %210 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !25
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %17
  %28 = load i64, ptr %21, align 8, !tbaa !5
  %29 = add i64 %28, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #24
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, ptr %33, align 8, !tbaa !5
  %37 = add i64 %36, 1
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #24
  br label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !25
  %41 = icmp ult i64 %40, 16
  tail call void @llvm.assume(i1 %41)
  br label %42

42:                                               ; preds = %38, %35
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !5
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #24
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 72
  %52 = load i64, ptr %51, align 8, !tbaa !25
  %53 = icmp ult i64 %52, 16
  tail call void @llvm.assume(i1 %53)
  br label %54

54:                                               ; preds = %50, %47
  %55 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !41
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, ptr %57, align 8, !tbaa !5
  %61 = add i64 %60, 1
  tail call void @_ZdlPvm(ptr noundef %56, i64 noundef %61) #24
  br label %66

62:                                               ; preds = %54
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 104
  %64 = load i64, ptr %63, align 8, !tbaa !25
  %65 = icmp ult i64 %64, 16
  tail call void @llvm.assume(i1 %65)
  br label %66

66:                                               ; preds = %62, %59
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %68 = load ptr, ptr %67, align 8, !tbaa !41
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !5
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #24
  br label %78

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 136
  %76 = load i64, ptr %75, align 8, !tbaa !25
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  br label %78

78:                                               ; preds = %74, %71
  %79 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %80 = load ptr, ptr %79, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %81, align 8, !tbaa !5
  %85 = add i64 %84, 1
  tail call void @_ZdlPvm(ptr noundef %80, i64 noundef %85) #24
  br label %90

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 168
  %88 = load i64, ptr %87, align 8, !tbaa !25
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  br label %90

90:                                               ; preds = %86, %83
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %92 = load ptr, ptr %91, align 8, !tbaa !41
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !5
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #24
  br label %102

98:                                               ; preds = %90
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 200
  %100 = load i64, ptr %99, align 8, !tbaa !25
  %101 = icmp ult i64 %100, 16
  tail call void @llvm.assume(i1 %101)
  br label %102

102:                                              ; preds = %98, %95
  %103 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %104 = load ptr, ptr %103, align 8, !tbaa !41
  %105 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i64, ptr %105, align 8, !tbaa !5
  %109 = add i64 %108, 1
  tail call void @_ZdlPvm(ptr noundef %104, i64 noundef %109) #24
  br label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds nuw i8, ptr %19, i64 232
  %112 = load i64, ptr %111, align 8, !tbaa !25
  %113 = icmp ult i64 %112, 16
  tail call void @llvm.assume(i1 %113)
  br label %114

114:                                              ; preds = %110, %107
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %116 = load ptr, ptr %115, align 8, !tbaa !41
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !5
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #24
  br label %126

122:                                              ; preds = %114
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 264
  %124 = load i64, ptr %123, align 8, !tbaa !25
  %125 = icmp ult i64 %124, 16
  tail call void @llvm.assume(i1 %125)
  br label %126

126:                                              ; preds = %122, %119
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %128 = load ptr, ptr %127, align 8, !tbaa !41
  %129 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !5
  %133 = add i64 %132, 1
  tail call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #24
  br label %138

134:                                              ; preds = %126
  %135 = getelementptr inbounds nuw i8, ptr %19, i64 296
  %136 = load i64, ptr %135, align 8, !tbaa !25
  %137 = icmp ult i64 %136, 16
  tail call void @llvm.assume(i1 %137)
  br label %138

138:                                              ; preds = %134, %131
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %140 = load ptr, ptr %139, align 8, !tbaa !41
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !5
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #24
  br label %150

146:                                              ; preds = %138
  %147 = getelementptr inbounds nuw i8, ptr %19, i64 328
  %148 = load i64, ptr %147, align 8, !tbaa !25
  %149 = icmp ult i64 %148, 16
  tail call void @llvm.assume(i1 %149)
  br label %150

150:                                              ; preds = %146, %143
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %152 = load ptr, ptr %151, align 8, !tbaa !41
  %153 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i64, ptr %153, align 8, !tbaa !5
  %157 = add i64 %156, 1
  tail call void @_ZdlPvm(ptr noundef %152, i64 noundef %157) #24
  br label %162

158:                                              ; preds = %150
  %159 = getelementptr inbounds nuw i8, ptr %19, i64 360
  %160 = load i64, ptr %159, align 8, !tbaa !25
  %161 = icmp ult i64 %160, 16
  tail call void @llvm.assume(i1 %161)
  br label %162

162:                                              ; preds = %158, %155
  %163 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %164 = load ptr, ptr %163, align 8, !tbaa !41
  %165 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i64, ptr %165, align 8, !tbaa !5
  %169 = add i64 %168, 1
  tail call void @_ZdlPvm(ptr noundef %164, i64 noundef %169) #24
  br label %174

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 392
  %172 = load i64, ptr %171, align 8, !tbaa !25
  %173 = icmp ult i64 %172, 16
  tail call void @llvm.assume(i1 %173)
  br label %174

174:                                              ; preds = %170, %167
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %176 = load ptr, ptr %175, align 8, !tbaa !41
  %177 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i64, ptr %177, align 8, !tbaa !5
  %181 = add i64 %180, 1
  tail call void @_ZdlPvm(ptr noundef %176, i64 noundef %181) #24
  br label %186

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %19, i64 424
  %184 = load i64, ptr %183, align 8, !tbaa !25
  %185 = icmp ult i64 %184, 16
  tail call void @llvm.assume(i1 %185)
  br label %186

186:                                              ; preds = %182, %179
  %187 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %188 = load ptr, ptr %187, align 8, !tbaa !41
  %189 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i64, ptr %189, align 8, !tbaa !5
  %193 = add i64 %192, 1
  tail call void @_ZdlPvm(ptr noundef %188, i64 noundef %193) #24
  br label %198

194:                                              ; preds = %186
  %195 = getelementptr inbounds nuw i8, ptr %19, i64 456
  %196 = load i64, ptr %195, align 8, !tbaa !25
  %197 = icmp ult i64 %196, 16
  tail call void @llvm.assume(i1 %197)
  br label %198

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %200 = load ptr, ptr %199, align 8, !tbaa !41
  %201 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %202 = icmp eq ptr %200, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = load i64, ptr %201, align 8, !tbaa !5
  %205 = add i64 %204, 1
  tail call void @_ZdlPvm(ptr noundef %200, i64 noundef %205) #24
  br label %210

206:                                              ; preds = %198
  %207 = getelementptr inbounds nuw i8, ptr %19, i64 488
  %208 = load i64, ptr %207, align 8, !tbaa !25
  %209 = icmp ult i64 %208, 16
  tail call void @llvm.assume(i1 %209)
  br label %210

210:                                              ; preds = %206, %203
  %211 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %212 = load ptr, ptr %6, align 8, !tbaa !55
  %213 = icmp ult ptr %211, %212
  br i1 %213, label %17, label %10, !llvm.loop !76

214:                                              ; preds = %12
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %216 = load ptr, ptr %215, align 8, !tbaa !74
  %217 = icmp eq ptr %16, %216
  br i1 %217, label %233, label %218

218:                                              ; preds = %214, %230
  %219 = phi ptr [ %231, %230 ], [ %16, %214 ]
  %220 = load ptr, ptr %219, align 8, !tbaa !41
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 16
  %222 = icmp eq ptr %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 8
  %225 = load i64, ptr %224, align 8, !tbaa !25
  %226 = icmp ult i64 %225, 16
  tail call void @llvm.assume(i1 %226)
  br label %230

227:                                              ; preds = %218
  %228 = load i64, ptr %221, align 8, !tbaa !5
  %229 = add i64 %228, 1
  tail call void @_ZdlPvm(ptr noundef %220, i64 noundef %229) #24
  br label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %232 = icmp eq ptr %231, %216
  br i1 %232, label %233, label %218, !llvm.loop !77

233:                                              ; preds = %230, %214
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !54
  %236 = load ptr, ptr %2, align 8, !tbaa !50
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %271, label %238

238:                                              ; preds = %233, %250
  %239 = phi ptr [ %251, %250 ], [ %235, %233 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !41
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 16
  %242 = icmp eq ptr %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = getelementptr inbounds nuw i8, ptr %239, i64 8
  %245 = load i64, ptr %244, align 8, !tbaa !25
  %246 = icmp ult i64 %245, 16
  tail call void @llvm.assume(i1 %246)
  br label %250

247:                                              ; preds = %238
  %248 = load i64, ptr %241, align 8, !tbaa !5
  %249 = add i64 %248, 1
  tail call void @_ZdlPvm(ptr noundef %240, i64 noundef %249) #24
  br label %250

250:                                              ; preds = %247, %243
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %252 = icmp eq ptr %251, %236
  br i1 %252, label %271, label %238, !llvm.loop !77

253:                                              ; preds = %12
  %254 = load ptr, ptr %2, align 8, !tbaa !50
  %255 = icmp eq ptr %16, %254
  br i1 %255, label %271, label %256

256:                                              ; preds = %253, %268
  %257 = phi ptr [ %269, %268 ], [ %16, %253 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !41
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %260 = icmp eq ptr %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 8
  %263 = load i64, ptr %262, align 8, !tbaa !25
  %264 = icmp ult i64 %263, 16
  tail call void @llvm.assume(i1 %264)
  br label %268

265:                                              ; preds = %256
  %266 = load i64, ptr %259, align 8, !tbaa !5
  %267 = add i64 %266, 1
  tail call void @_ZdlPvm(ptr noundef %258, i64 noundef %267) #24
  br label %268

268:                                              ; preds = %265, %261
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %270 = icmp eq ptr %269, %254
  br i1 %270, label %271, label %256, !llvm.loop !77

271:                                              ; preds = %250, %268, %253, %233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !50
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = load ptr, ptr %4, align 8, !tbaa !50
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !71
  %39 = load ptr, ptr %0, align 8, !tbaa !66
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !68
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !56
  %51 = load ptr, ptr %3, align 8, !tbaa !43
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !22
  %53 = load ptr, ptr %1, align 8, !tbaa !41
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !25
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !41
  %62 = load i64, ptr %54, align 8, !tbaa !5
  store i64 %62, ptr %52, align 8, !tbaa !5
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !25
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !25
  store ptr %54, ptr %1, align 8, !tbaa !41
  store i64 0, ptr %64, align 8, !tbaa !25
  store i8 0, ptr %54, align 8, !tbaa !5
  %68 = load ptr, ptr %5, align 8, !tbaa !68
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !55
  %70 = load ptr, ptr %69, align 8, !tbaa !56
  store ptr %70, ptr %18, align 8, !tbaa !54
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !74
  store ptr %70, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !71
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !66
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
  br i1 %30, label %31, label %32, !prof !78

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !56
  store ptr %35, ptr %24, align 8, !tbaa !56
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !79

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !56
  store ptr %48, ptr %42, align 8, !tbaa !56
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #27
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !78

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !56
  store ptr %69, ptr %60, align 8, !tbaa !56
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !66
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #24
  store ptr %55, ptr %0, align 8, !tbaa !66
  store i64 %52, ptr %14, align 8, !tbaa !71
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %31 ], [ %24, %32 ], [ %24, %34 ], [ %24, %44 ], [ %24, %45 ], [ %24, %47 ]
  store ptr %74, ptr %6, align 8, !tbaa !55
  %75 = load ptr, ptr %74, align 8, !tbaa !56
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !54
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !74
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !55
  %81 = load ptr, ptr %80, align 8, !tbaa !56
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !54
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib12log_prefixedESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #10
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %11, ptr %9, align 8, !tbaa !22
  %12 = icmp eq ptr %1, null
  %13 = icmp ne i64 %0, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #23
  unreachable

16:                                               ; preds = %4
  %17 = icmp ugt i64 %0, 15
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = icmp ugt i64 %0, 9223372036854775806
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
  unreachable

21:                                               ; preds = %18
  %22 = add nuw nsw i64 %0, 1
  %23 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %22) #27
  store ptr %23, ptr %9, align 8, !tbaa !41
  store i64 %0, ptr %11, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi ptr [ %23, %21 ], [ %11, %16 ]
  switch i64 %0, label %28 [
    i64 1, label %26
    i64 0, label %29
  ]

26:                                               ; preds = %24
  %27 = load i8, ptr %1, align 1, !tbaa !5
  store i8 %27, ptr %25, align 1, !tbaa !5
  br label %29

28:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %25, ptr align 1 %1, i64 %0, i1 false)
  br label %29

29:                                               ; preds = %28, %26, %24
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %0, ptr %30, align 8, !tbaa !25
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 %0
  store i8 0, ptr %31, align 1, !tbaa !5
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %32 = load i64, ptr %30, align 8, !tbaa !25, !noalias !80
  %33 = icmp ult i64 %32, 9223372036854775807
  call void @llvm.assume(i1 %33)
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %35 unwind label %196

35:                                               ; preds = %29
  %36 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %36, ptr %8, align 8, !tbaa !22, !alias.scope !80
  %37 = load ptr, ptr %34, align 8, !tbaa !41
  %38 = getelementptr inbounds nuw i8, ptr %34, i64 16
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !25
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %49

45:                                               ; preds = %35
  store ptr %37, ptr %8, align 8, !tbaa !41, !alias.scope !80
  %46 = load i64, ptr %38, align 8, !tbaa !5
  store i64 %46, ptr %36, align 8, !tbaa !5, !alias.scope !80
  %47 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !25
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i64 [ %42, %40 ], [ %48, %45 ]
  %51 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %52 = icmp ult i64 %50, 9223372036854775807
  call void @llvm.assume(i1 %52)
  %53 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %50, ptr %53, align 8, !tbaa !25, !alias.scope !80
  store ptr %38, ptr %34, align 8, !tbaa !41
  store i64 0, ptr %51, align 8, !tbaa !25
  store i8 0, ptr %38, align 8, !tbaa !5
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %54 = load i64, ptr %53, align 8, !tbaa !25, !noalias !83
  %55 = icmp ult i64 %54, 9223372036854775807
  call void @llvm.assume(i1 %55)
  %56 = icmp samesign ugt i64 %54, 9223372036854775804
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %58 unwind label %198

58:                                               ; preds = %57
  unreachable

59:                                               ; preds = %49
  %60 = add nuw nsw i64 %54, 2
  %61 = load ptr, ptr %8, align 8, !tbaa !41, !noalias !83
  %62 = icmp eq ptr %61, %36
  %63 = load i64, ptr %36, align 8, !noalias !83
  br i1 %62, label %64, label %66

64:                                               ; preds = %59
  %65 = icmp samesign ugt i64 %54, 13
  br i1 %65, label %73, label %70

66:                                               ; preds = %59
  %67 = icmp samesign ugt i64 %63, 14
  call void @llvm.assume(i1 %67)
  %68 = icmp ult i64 %63, 9223372036854775807
  call void @llvm.assume(i1 %68)
  %69 = icmp samesign ugt i64 %60, %63
  br i1 %69, label %73, label %70

70:                                               ; preds = %66, %64
  %71 = getelementptr inbounds nuw i8, ptr %61, i64 %54
  store i16 8285, ptr %71, align 1, !noalias !83
  %72 = load ptr, ptr %8, align 8, !tbaa !41, !noalias !83
  br label %88

73:                                               ; preds = %66, %64
  %74 = phi i64 [ %63, %66 ], [ 15, %64 ]
  %75 = shl nuw i64 %74, 1
  %76 = icmp ult i64 %60, %75
  %77 = call i64 @llvm.umin.i64(i64 %75, i64 9223372036854775806)
  %78 = select i1 %76, i64 %77, i64 %60
  %79 = add nuw nsw i64 %78, 1
  %80 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %79) #27
          to label %81 unwind label %198

81:                                               ; preds = %73
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %80, ptr align 1 %61, i64 %54, i1 false)
  %82 = getelementptr inbounds nuw i8, ptr %80, i64 %54
  store i16 8285, ptr %82, align 1
  br i1 %62, label %83, label %85

83:                                               ; preds = %81
  %84 = icmp samesign ult i64 %54, 16
  call void @llvm.assume(i1 %84)
  br label %87

85:                                               ; preds = %81
  %86 = add i64 %63, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %86) #24
  br label %87

87:                                               ; preds = %85, %83
  store ptr %80, ptr %8, align 8, !tbaa !41
  store i64 %78, ptr %36, align 8, !tbaa !5
  br label %88

88:                                               ; preds = %87, %70
  %89 = phi ptr [ %80, %87 ], [ %72, %70 ]
  store i64 %60, ptr %53, align 8, !tbaa !25, !noalias !83
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 %60
  store i8 0, ptr %90, align 1, !tbaa !5, !noalias !83
  %91 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %91, ptr %7, align 8, !tbaa !22, !alias.scope !83
  %92 = load ptr, ptr %8, align 8, !tbaa !41, !noalias !83
  %93 = icmp eq ptr %92, %36
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i64, ptr %53, align 8, !tbaa !25, !noalias !83
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  %97 = add nuw nsw i64 %95, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %91, ptr noundef nonnull align 8 dereferenceable(1) %36, i64 %97, i1 false)
  br label %101

98:                                               ; preds = %88
  store ptr %92, ptr %7, align 8, !tbaa !41, !alias.scope !83
  %99 = load i64, ptr %36, align 8, !tbaa !5, !noalias !83
  store i64 %99, ptr %91, align 8, !tbaa !5, !alias.scope !83
  %100 = load i64, ptr %53, align 8, !tbaa !25, !noalias !83
  br label %101

101:                                              ; preds = %98, %94
  %102 = phi i64 [ %95, %94 ], [ %100, %98 ]
  %103 = icmp ult i64 %102, 9223372036854775807
  call void @llvm.assume(i1 %103)
  %104 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %102, ptr %104, align 8, !tbaa !25, !alias.scope !83
  store ptr %36, ptr %8, align 8, !tbaa !41, !noalias !83
  store i64 0, ptr %53, align 8, !tbaa !25, !noalias !83
  store i8 0, ptr %36, align 8, !tbaa !5, !noalias !83
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #10
  %105 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %105, ptr %10, align 8, !tbaa !22
  %106 = icmp eq ptr %3, null
  %107 = icmp ne i64 %2, 0
  %108 = and i1 %107, %106
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #23
          to label %110 unwind label %200

110:                                              ; preds = %109
  unreachable

111:                                              ; preds = %101
  %112 = icmp ugt i64 %2, 15
  br i1 %112, label %113, label %121

113:                                              ; preds = %111
  %114 = icmp ugt i64 %2, 9223372036854775806
  br i1 %114, label %115, label %117

115:                                              ; preds = %113
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
          to label %116 unwind label %200

116:                                              ; preds = %115
  unreachable

117:                                              ; preds = %113
  %118 = add nuw nsw i64 %2, 1
  %119 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %118) #27
          to label %120 unwind label %200

120:                                              ; preds = %117
  store ptr %119, ptr %10, align 8, !tbaa !41
  store i64 %2, ptr %105, align 8, !tbaa !5
  br label %121

121:                                              ; preds = %120, %111
  %122 = phi ptr [ %119, %120 ], [ %105, %111 ]
  switch i64 %2, label %125 [
    i64 1, label %123
    i64 0, label %126
  ]

123:                                              ; preds = %121
  %124 = load i8, ptr %3, align 1, !tbaa !5
  store i8 %124, ptr %122, align 1, !tbaa !5
  br label %126

125:                                              ; preds = %121
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %122, ptr align 1 %3, i64 %2, i1 false)
  br label %126

126:                                              ; preds = %125, %123, %121
  %127 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %2, ptr %127, align 8, !tbaa !25
  %128 = getelementptr inbounds nuw i8, ptr %122, i64 %2
  store i8 0, ptr %128, align 1, !tbaa !5
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %129 unwind label %202

129:                                              ; preds = %126
  %130 = load ptr, ptr %6, align 8, !tbaa !41
  %131 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %132 = load i64, ptr %131, align 8, !tbaa !25
  %133 = icmp ult i64 %132, 9223372036854775807
  call void @llvm.assume(i1 %133)
  %134 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %130, i64 noundef %132)
          to label %135 unwind label %204

135:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 10, ptr %5, align 1, !tbaa !5
  %136 = load ptr, ptr %134, align 8, !tbaa !8
  %137 = getelementptr i8, ptr %136, i64 -24
  %138 = load i64, ptr %137, align 8
  %139 = getelementptr inbounds i8, ptr %134, i64 %138
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %141 = load i64, ptr %140, align 8, !tbaa !10
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %135
  %144 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %134, ptr noundef nonnull %5, i64 noundef 1)
          to label %147 unwind label %204

145:                                              ; preds = %135
  %146 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %134, i8 noundef signext 10)
          to label %147 unwind label %204

147:                                              ; preds = %145, %143
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %148 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %149 unwind label %204

149:                                              ; preds = %147
  %150 = load ptr, ptr %6, align 8, !tbaa !41
  %151 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %152 = icmp eq ptr %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i64, ptr %131, align 8, !tbaa !25
  %155 = icmp ult i64 %154, 16
  call void @llvm.assume(i1 %155)
  br label %159

156:                                              ; preds = %149
  %157 = load i64, ptr %151, align 8, !tbaa !5
  %158 = add i64 %157, 1
  call void @_ZdlPvm(ptr noundef %150, i64 noundef %158) #24
  br label %159

159:                                              ; preds = %153, %156
  %160 = load ptr, ptr %10, align 8, !tbaa !41
  %161 = icmp eq ptr %160, %105
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i64, ptr %127, align 8, !tbaa !25
  %164 = icmp ult i64 %163, 16
  call void @llvm.assume(i1 %164)
  br label %168

165:                                              ; preds = %159
  %166 = load i64, ptr %105, align 8, !tbaa !5
  %167 = add i64 %166, 1
  call void @_ZdlPvm(ptr noundef %160, i64 noundef %167) #24
  br label %168

168:                                              ; preds = %162, %165
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  %169 = load ptr, ptr %7, align 8, !tbaa !41
  %170 = icmp eq ptr %169, %91
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i64, ptr %104, align 8, !tbaa !25
  %173 = icmp ult i64 %172, 16
  call void @llvm.assume(i1 %173)
  br label %177

174:                                              ; preds = %168
  %175 = load i64, ptr %91, align 8, !tbaa !5
  %176 = add i64 %175, 1
  call void @_ZdlPvm(ptr noundef %169, i64 noundef %176) #24
  br label %177

177:                                              ; preds = %171, %174
  %178 = load ptr, ptr %8, align 8, !tbaa !41
  %179 = icmp eq ptr %178, %36
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i64, ptr %53, align 8, !tbaa !25
  %182 = icmp ult i64 %181, 16
  call void @llvm.assume(i1 %182)
  br label %186

183:                                              ; preds = %177
  %184 = load i64, ptr %36, align 8, !tbaa !5
  %185 = add i64 %184, 1
  call void @_ZdlPvm(ptr noundef %178, i64 noundef %185) #24
  br label %186

186:                                              ; preds = %180, %183
  %187 = load ptr, ptr %9, align 8, !tbaa !41
  %188 = icmp eq ptr %187, %11
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i64, ptr %30, align 8, !tbaa !25
  %191 = icmp ult i64 %190, 16
  call void @llvm.assume(i1 %191)
  br label %195

192:                                              ; preds = %186
  %193 = load i64, ptr %11, align 8, !tbaa !5
  %194 = add i64 %193, 1
  call void @_ZdlPvm(ptr noundef %187, i64 noundef %194) #24
  br label %195

195:                                              ; preds = %189, %192
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  ret void

196:                                              ; preds = %29
  %197 = landingpad { ptr, i32 }
          cleanup
  br label %245

198:                                              ; preds = %73, %57
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %235

200:                                              ; preds = %117, %115, %109
  %201 = landingpad { ptr, i32 }
          cleanup
  br label %225

202:                                              ; preds = %126
  %203 = landingpad { ptr, i32 }
          cleanup
  br label %215

204:                                              ; preds = %147, %145, %143, %129
  %205 = landingpad { ptr, i32 }
          cleanup
  %206 = load ptr, ptr %6, align 8, !tbaa !41
  %207 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i64, ptr %131, align 8, !tbaa !25
  %211 = icmp ult i64 %210, 16
  call void @llvm.assume(i1 %211)
  br label %215

212:                                              ; preds = %204
  %213 = load i64, ptr %207, align 8, !tbaa !5
  %214 = add i64 %213, 1
  call void @_ZdlPvm(ptr noundef %206, i64 noundef %214) #24
  br label %215

215:                                              ; preds = %212, %209, %202
  %216 = phi { ptr, i32 } [ %203, %202 ], [ %205, %209 ], [ %205, %212 ]
  %217 = load ptr, ptr %10, align 8, !tbaa !41
  %218 = icmp eq ptr %217, %105
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i64, ptr %127, align 8, !tbaa !25
  %221 = icmp ult i64 %220, 16
  call void @llvm.assume(i1 %221)
  br label %225

222:                                              ; preds = %215
  %223 = load i64, ptr %105, align 8, !tbaa !5
  %224 = add i64 %223, 1
  call void @_ZdlPvm(ptr noundef %217, i64 noundef %224) #24
  br label %225

225:                                              ; preds = %222, %219, %200
  %226 = phi { ptr, i32 } [ %201, %200 ], [ %216, %219 ], [ %216, %222 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  %227 = load ptr, ptr %7, align 8, !tbaa !41
  %228 = icmp eq ptr %227, %91
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i64, ptr %104, align 8, !tbaa !25
  %231 = icmp ult i64 %230, 16
  call void @llvm.assume(i1 %231)
  br label %235

232:                                              ; preds = %225
  %233 = load i64, ptr %91, align 8, !tbaa !5
  %234 = add i64 %233, 1
  call void @_ZdlPvm(ptr noundef %227, i64 noundef %234) #24
  br label %235

235:                                              ; preds = %232, %229, %198
  %236 = phi { ptr, i32 } [ %199, %198 ], [ %226, %229 ], [ %226, %232 ]
  %237 = load ptr, ptr %8, align 8, !tbaa !41
  %238 = icmp eq ptr %237, %36
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i64, ptr %53, align 8, !tbaa !25
  %241 = icmp ult i64 %240, 16
  call void @llvm.assume(i1 %241)
  br label %245

242:                                              ; preds = %235
  %243 = load i64, ptr %36, align 8, !tbaa !5
  %244 = add i64 %243, 1
  call void @_ZdlPvm(ptr noundef %237, i64 noundef %244) #24
  br label %245

245:                                              ; preds = %242, %239, %196
  %246 = phi { ptr, i32 } [ %197, %196 ], [ %236, %239 ], [ %236, %242 ]
  %247 = load ptr, ptr %9, align 8, !tbaa !41
  %248 = icmp eq ptr %247, %11
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i64, ptr %30, align 8, !tbaa !25
  %251 = icmp ult i64 %250, 16
  call void @llvm.assume(i1 %251)
  br label %255

252:                                              ; preds = %245
  %253 = load i64, ptr %11, align 8, !tbaa !5
  %254 = add i64 %253, 1
  call void @_ZdlPvm(ptr noundef %247, i64 noundef %254) #24
  br label %255

255:                                              ; preds = %252, %249
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  resume { ptr, i32 } %246
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !25
  %6 = icmp ult i64 %5, 9223372036854775807
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !25
  %9 = icmp ult i64 %8, 9223372036854775807
  tail call void @llvm.assume(i1 %9)
  %10 = add nuw i64 %8, %5
  %11 = load ptr, ptr %1, align 8, !tbaa !41
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
  %22 = load ptr, ptr %2, align 8, !tbaa !41
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
  store ptr %36, ptr %0, align 8, !tbaa !22
  %37 = load ptr, ptr %35, align 8, !tbaa !41
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !25
  %43 = icmp ult i64 %42, 16
  tail call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %34
  store ptr %37, ptr %0, align 8, !tbaa !41
  %46 = load i64, ptr %38, align 8, !tbaa !5
  store i64 %46, ptr %36, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa !25
  %50 = icmp ult i64 %49, 9223372036854775807
  tail call void @llvm.assume(i1 %50)
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %49, ptr %51, align 8, !tbaa !25
  store ptr %38, ptr %35, align 8, !tbaa !41
  store i64 0, ptr %48, align 8, !tbaa !25
  store i8 0, ptr %38, align 8, !tbaa !5
  br label %86

52:                                               ; preds = %28, %16
  %53 = sub nuw nsw i64 9223372036854775806, %5
  %54 = icmp samesign ult i64 %53, %8
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
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
  %66 = load i8, ptr %22, align 1, !tbaa !5
  store i8 %66, ptr %63, align 1, !tbaa !5
  br label %69

67:                                               ; preds = %62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %22, i64 %8, i1 false)
  br label %69

68:                                               ; preds = %59
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %5, i64 noundef 0, ptr noundef %22, i64 noundef %8)
  br label %69

69:                                               ; preds = %60, %65, %67, %68
  store i64 %10, ptr %4, align 8, !tbaa !25
  %70 = load ptr, ptr %1, align 8, !tbaa !41
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 %10
  store i8 0, ptr %71, align 1, !tbaa !5
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %72, ptr %0, align 8, !tbaa !22
  %73 = load ptr, ptr %1, align 8, !tbaa !41
  %74 = icmp eq ptr %73, %12
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i64, ptr %4, align 8, !tbaa !25
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  %78 = add nuw nsw i64 %76, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %72, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %78, i1 false)
  br label %82

79:                                               ; preds = %69
  store ptr %73, ptr %0, align 8, !tbaa !41
  %80 = load i64, ptr %12, align 8, !tbaa !5
  store i64 %80, ptr %72, align 8, !tbaa !5
  %81 = load i64, ptr %4, align 8, !tbaa !25
  br label %82

82:                                               ; preds = %75, %79
  %83 = phi i64 [ %76, %75 ], [ %81, %79 ]
  %84 = icmp ult i64 %83, 9223372036854775807
  tail call void @llvm.assume(i1 %84)
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %83, ptr %85, align 8, !tbaa !25
  store ptr %12, ptr %1, align 8, !tbaa !41
  store i64 0, ptr %4, align 8, !tbaa !25
  store i8 0, ptr %12, align 8, !tbaa !5
  br label %86

86:                                               ; preds = %47, %82
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !25
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, 9223372036854775806
  %10 = sub i64 %9, %7
  %11 = icmp ult i64 %10, %4
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

13:                                               ; preds = %5
  %14 = sub i64 %4, %2
  %15 = add i64 %14, %7
  %16 = load ptr, ptr %0, align 8, !tbaa !41
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
  br i1 %34, label %35, label %50, !prof !86

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
  %44 = load i8, ptr %41, align 1, !tbaa !5
  store i8 %44, ptr %40, align 1, !tbaa !5
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
  %48 = load i8, ptr %3, align 1, !tbaa !5
  store i8 %48, ptr %28, align 1, !tbaa !5
  br label %52

49:                                               ; preds = %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %3, i64 %4, i1 false)
  br label %52

50:                                               ; preds = %27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %28, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %30) #28
  br label %52

51:                                               ; preds = %21
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %52

52:                                               ; preds = %46, %49, %47, %50, %51
  store i64 %15, ptr %6, align 8, !tbaa !25
  %53 = load ptr, ptr %0, align 8, !tbaa !41
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 %15
  store i8 0, ptr %54, align 1, !tbaa !5
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !25
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, %1
  %10 = sub i64 %7, %9
  %11 = sub i64 %4, %2
  %12 = add i64 %11, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !41
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
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
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #27
  switch i64 %1, label %38 [
    i64 0, label %39
    i64 1, label %36
  ]

36:                                               ; preds = %32
  %37 = load i8, ptr %13, align 1, !tbaa !5
  store i8 %37, ptr %35, align 1, !tbaa !5
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
  %47 = load i8, ptr %3, align 1, !tbaa !5
  store i8 %47, ptr %44, align 1, !tbaa !5
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
  %58 = load i8, ptr %55, align 1, !tbaa !5
  store i8 %58, ptr %53, align 1, !tbaa !5
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
  store ptr %35, ptr %0, align 8, !tbaa !41
  store i64 %33, ptr %14, align 8, !tbaa !5
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { cold noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !6, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !12, i64 8}
!18 = !{!"int", !6, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!24 = !{!"p1 omnipotent char", !16, i64 0}
!25 = !{!26, !12, i64 8}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !12, i64 8, !6, i64 16}
!27 = !{!28, !32, i64 240}
!28 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0, !29, i64 216, !6, i64 224, !30, i64 225, !31, i64 232, !32, i64 240, !33, i64 248, !34, i64 256}
!29 = !{!"p1 _ZTSSo", !16, i64 0}
!30 = !{!"bool", !6, i64 0}
!31 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!32 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!33 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!34 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!35 = !{!36, !6, i64 56}
!36 = !{!"_ZTSSt5ctypeIcE", !37, i64 0, !38, i64 16, !30, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!37 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!39 = !{!"p1 int", !16, i64 0}
!40 = !{!"p1 short", !16, i64 0}
!41 = !{!26, !24, i64 0}
!42 = !{!"branch_weights", i32 1, i32 1023}
!43 = !{!44, !48, i64 48}
!44 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !45, i64 0, !12, i64 8, !47, i64 16, !47, i64 48}
!45 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0}
!46 = !{!"any p2 pointer", !16, i64 0}
!47 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !48, i64 0, !48, i64 8, !48, i64 16, !45, i64 24}
!48 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!49 = !{!44, !48, i64 64}
!50 = !{!47, !48, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!53 = distinct !{!53, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!54 = !{!47, !48, i64 8}
!55 = !{!47, !45, i64 24}
!56 = !{!48, !48, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!61 = distinct !{!61, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!62 = !{!16, !16, i64 0}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!65 = distinct !{!65, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!66 = !{!44, !45, i64 0}
!67 = !{!44, !45, i64 40}
!68 = !{!44, !45, i64 72}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!44, !12, i64 8}
!72 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!73 = distinct !{!73, !70}
!74 = !{!47, !48, i64 16}
!75 = !{!44, !48, i64 16}
!76 = distinct !{!76, !70}
!77 = distinct !{!77, !70}
!78 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!79 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!82 = distinct !{!82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!85 = distinct !{!85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!86 = !{!"branch_weights", i32 -2146410, i32 2146410}
