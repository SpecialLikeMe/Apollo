; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/a05faa3317feba94.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/a05faa3317feba94.cpp"
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i8 10, ptr %2, align 1, !tbaa !9
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = getelementptr i8, ptr %9, i64 -24
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = load i64, ptr %13, align 8, !tbaa !12
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %2, i64 noundef 1)
  br label %20

18:                                               ; preds = %6
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 10)
  br label %20

20:                                               ; preds = %16, %18
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_1151_5_426sys__native_term_read_lineEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib14term_read_lineEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14term_read_lineEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %3, ptr %1, align 8, !tbaa !23
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %4, align 8, !tbaa !26
  store i8 0, ptr %3, align 8, !tbaa !9
  %5 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !10
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 240
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %13 unwind label %105

13:                                               ; preds = %12
  unreachable

14:                                               ; preds = %0
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %16 = load i8, ptr %15, align 8, !tbaa !36
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 67
  %20 = load i8, ptr %19, align 1, !tbaa !9
  br label %27

21:                                               ; preds = %14
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
          to label %22 unwind label %105

22:                                               ; preds = %21
  %23 = load ptr, ptr %10, align 8, !tbaa !10
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 48
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef signext i8 %25(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
          to label %27 unwind label %105

27:                                               ; preds = %22, %18
  %28 = phi i8 [ %20, %18 ], [ %26, %22 ]
  %29 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %28)
          to label %30 unwind label %105

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !23
  %32 = load ptr, ptr %1, align 8, !tbaa !42
  %33 = icmp eq ptr %32, %3
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, ptr %4, align 8, !tbaa !26
  %36 = icmp ult i64 %35, 16
  call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(1) %3, i64 %37, i1 false)
  br label %41

38:                                               ; preds = %30
  store ptr %32, ptr %2, align 8, !tbaa !42
  %39 = load i64, ptr %3, align 8, !tbaa !9
  store i64 %39, ptr %31, align 8, !tbaa !9
  %40 = load i64, ptr %4, align 8, !tbaa !26
  br label %41

41:                                               ; preds = %34, %38
  %42 = phi i64 [ %35, %34 ], [ %40, %38 ]
  %43 = icmp ult i64 %42, 9223372036854775807
  call void @llvm.assume(i1 %43)
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %42, ptr %44, align 8, !tbaa !26
  store ptr %3, ptr %1, align 8, !tbaa !42
  store i64 0, ptr %4, align 8, !tbaa !26
  store i8 0, ptr %3, align 8, !tbaa !9
  %45 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50, !prof !43

47:                                               ; preds = %41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %48 unwind label %107

48:                                               ; preds = %47
  %49 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #10
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %50

50:                                               ; preds = %48, %41
  %51 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 48
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 64
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  %56 = getelementptr inbounds i8, ptr %55, i64 -32
  %57 = icmp eq ptr %53, %56
  br i1 %57, label %75, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds nuw i8, ptr %53, i64 16
  store ptr %59, ptr %53, align 8, !tbaa !23
  %60 = load ptr, ptr %2, align 8, !tbaa !42
  %61 = icmp eq ptr %60, %31
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, ptr %44, align 8, !tbaa !26
  %64 = icmp ult i64 %63, 16
  call void @llvm.assume(i1 %64)
  %65 = add nuw nsw i64 %63, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %59, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %65, i1 false)
  br label %69

66:                                               ; preds = %58
  store ptr %60, ptr %53, align 8, !tbaa !42
  %67 = load i64, ptr %31, align 8, !tbaa !9
  store i64 %67, ptr %59, align 8, !tbaa !9
  %68 = load i64, ptr %44, align 8, !tbaa !26
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i64 [ %68, %66 ], [ %63, %62 ]
  %71 = icmp ult i64 %70, 9223372036854775807
  call void @llvm.assume(i1 %71)
  %72 = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 %70, ptr %72, align 8, !tbaa !26
  store ptr %31, ptr %2, align 8, !tbaa !42
  store i64 0, ptr %44, align 8, !tbaa !26
  store i8 0, ptr %31, align 8, !tbaa !9
  %73 = load ptr, ptr %52, align 8, !tbaa !44
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 32
  store ptr %74, ptr %52, align 8, !tbaa !44
  br label %78

75:                                               ; preds = %50
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %51, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %76 unwind label %107

76:                                               ; preds = %75
  %77 = load ptr, ptr %52, align 8, !tbaa !51, !noalias !52
  br label %78

78:                                               ; preds = %76, %69
  %79 = phi ptr [ %74, %69 ], [ %77, %76 ]
  %80 = getelementptr inbounds nuw i8, ptr %51, i64 56
  %81 = load ptr, ptr %80, align 8, !tbaa !55, !noalias !52
  %82 = icmp eq ptr %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = getelementptr inbounds nuw i8, ptr %51, i64 72
  %85 = load ptr, ptr %84, align 8, !tbaa !56, !noalias !52
  %86 = getelementptr inbounds i8, ptr %85, i64 -8
  %87 = load ptr, ptr %86, align 8, !tbaa !57
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 512
  br label %89

89:                                               ; preds = %83, %78
  %90 = phi ptr [ %88, %83 ], [ %79, %78 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 -32
  %92 = load ptr, ptr %91, align 8, !tbaa !42
  %93 = load ptr, ptr %2, align 8, !tbaa !42
  %94 = icmp eq ptr %93, %31
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i64, ptr %31, align 8, !tbaa !9
  %97 = add i64 %96, 1
  call void @_ZdlPvm(ptr noundef %93, i64 noundef %97) #24
  br label %98

98:                                               ; preds = %89, %95
  %99 = load ptr, ptr %1, align 8, !tbaa !42
  %100 = icmp eq ptr %99, %3
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i64, ptr %3, align 8, !tbaa !9
  %103 = add i64 %102, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %103) #24
  br label %104

104:                                              ; preds = %98, %101
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret ptr %92

105:                                              ; preds = %27, %22, %21, %12
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %114

107:                                              ; preds = %75, %47
  %108 = landingpad { ptr, i32 }
          cleanup
  %109 = load ptr, ptr %2, align 8, !tbaa !42
  %110 = icmp eq ptr %109, %31
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i64, ptr %31, align 8, !tbaa !9
  %113 = add i64 %112, 1
  call void @_ZdlPvm(ptr noundef %109, i64 noundef %113) #24
  br label %114

114:                                              ; preds = %107, %111, %105
  %115 = phi { ptr, i32 } [ %106, %105 ], [ %108, %111 ], [ %108, %107 ]
  %116 = load ptr, ptr %1, align 8, !tbaa !42
  %117 = icmp eq ptr %116, %3
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i64, ptr %3, align 8, !tbaa !9
  %120 = add i64 %119, 1
  call void @_ZdlPvm(ptr noundef %116, i64 noundef %120) #24
  br label %121

121:                                              ; preds = %114, %118
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  resume { ptr, i32 } %115
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_1151_5_423sys__native_term_is_ttyEv() local_unnamed_addr #2 {
  %1 = load ptr, ptr @stdout, align 8, !tbaa !58
  %2 = tail call i32 @fileno(ptr noundef %1) #10
  %3 = tail call i32 @isatty(i32 noundef %2) #10
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 0, 65536) i32 @_ZN31__apollo_inline_inline_1151_5_424sys__native_term_columnsEv() local_unnamed_addr #2 {
  %1 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @stdout, align 8, !tbaa !58
  %3 = tail call i32 @fileno(ptr noundef %2) #10
  %4 = call i32 (i32, i64, ...) @ioctl(i32 noundef %3, i64 noundef 21523, ptr noundef nonnull %1) #10
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp ne i16 %7, 0
  %10 = select i1 %5, i1 %9, i1 false
  %11 = select i1 %10, i32 %8, i32 80
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %11
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 0, 65536) i32 @_ZN31__apollo_inline_inline_1151_5_421sys__native_term_rowsEv() local_unnamed_addr #2 {
  %1 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @stdout, align 8, !tbaa !58
  %3 = tail call i32 @fileno(ptr noundef %2) #10
  %4 = call i32 (i32, i64, ...) @ioctl(i32 noundef %3, i64 noundef 21523, ptr noundef nonnull %1) #10
  %5 = icmp eq i32 %4, 0
  %6 = load i16, ptr %1, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ne i16 %6, 0
  %9 = select i1 %5, i1 %8, i1 false
  %10 = select i1 %9, i32 %7, i32 25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %10
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_422sys__native_term_clearEv() local_unnamed_addr #0 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 7)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_427sys__native_term_set_cursorEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @_ZN12__apo_stdlib15term_set_cursorEii(i32 noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib15term_set_cursorEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 comdat {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 2)
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 59, ptr %4, align 1, !tbaa !9
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !12
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
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 72, ptr %3, align 1, !tbaa !9
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load i64, ptr %25, align 8, !tbaa !12
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %3, i64 noundef 1)
  br label %32

30:                                               ; preds = %18
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 72)
  br label %32

32:                                               ; preds = %28, %30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_428sys__native_term_show_cursorEv() local_unnamed_addr #0 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 6)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_428sys__native_term_hide_cursorEv() local_unnamed_addr #0 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 6)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_429sys__native_term_set_color_fgEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 2)
  %4 = and i32 %0, 7
  %5 = add nuw nsw i32 %4, 30
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i8 109, ptr %2, align 1, !tbaa !9
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !12
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2, i64 noundef 1)
  br label %18

16:                                               ; preds = %1
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 109)
  br label %18

18:                                               ; preds = %14, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_429sys__native_term_set_color_bgEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 2)
  %4 = and i32 %0, 7
  %5 = or disjoint i32 %4, 40
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i8 109, ptr %2, align 1, !tbaa !9
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load i64, ptr %11, align 8, !tbaa !12
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2, i64 noundef 1)
  br label %18

16:                                               ; preds = %1
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 109)
  br label %18

18:                                               ; preds = %14, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_1151_5_422sys__native_term_resetEv() local_unnamed_addr #0 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 4)
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_term_read_line() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib14term_read_lineEv()
  ret ptr %1
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_term_is_tty() local_unnamed_addr #2 {
  %1 = load ptr, ptr @stdout, align 8, !tbaa !58
  %2 = tail call i32 @fileno(ptr noundef %1) #10
  %3 = tail call i32 @isatty(i32 noundef %2) #10
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local range(i32 0, 65536) i32 @sys__native_term_columns() local_unnamed_addr #2 {
  %1 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @stdout, align 8, !tbaa !58
  %3 = tail call i32 @fileno(ptr noundef %2) #10
  %4 = call i32 (i32, i64, ...) @ioctl(i32 noundef %3, i64 noundef 21523, ptr noundef nonnull %1) #10
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp ne i16 %7, 0
  %10 = select i1 %5, i1 %9, i1 false
  %11 = select i1 %10, i32 %8, i32 80
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %11
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local range(i32 0, 65536) i32 @sys__native_term_rows() local_unnamed_addr #2 {
  %1 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @stdout, align 8, !tbaa !58
  %3 = tail call i32 @fileno(ptr noundef %2) #10
  %4 = call i32 (i32, i64, ...) @ioctl(i32 noundef %3, i64 noundef 21523, ptr noundef nonnull %1) #10
  %5 = icmp eq i32 %4, 0
  %6 = load i16, ptr %1, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ne i16 %6, 0
  %9 = select i1 %5, i1 %8, i1 false
  %10 = select i1 %9, i32 %7, i32 25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
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
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: cold noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !57, !noalias !60
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !57
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !63, !noalias !60
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !63
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !57, !noalias !64
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !57
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !63, !noalias !64
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !63
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !68
  %21 = load ptr, ptr %9, align 8, !tbaa !69
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #24
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !70

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !67
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !72
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !72
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !73

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #27
  store ptr %12, ptr %0, align 8, !tbaa !67
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
  store ptr %20, ptr %19, align 8, !tbaa !57
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !74

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #10
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #24
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !70

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
  %44 = load ptr, ptr %0, align 8, !tbaa !67
  %45 = load i64, ptr %6, align 8, !tbaa !72
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
  store ptr %15, ptr %52, align 8, !tbaa !56
  %53 = load ptr, ptr %15, align 8, !tbaa !57
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !55
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !75
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !56
  %60 = load ptr, ptr %58, align 8, !tbaa !57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !55
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !75
  store ptr %53, ptr %51, align 8, !tbaa !76
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !44
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !56
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !56
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !51
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !9
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #24
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !9
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #24
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !42
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !9
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #24
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !9
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #24
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !9
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #24
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !9
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #24
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !42
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !9
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #24
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !42
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !9
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #24
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !42
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !9
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #24
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !42
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !9
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #24
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !42
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !9
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #24
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !42
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !9
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #24
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !42
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !9
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #24
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !42
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !9
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #24
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !42
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !9
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #24
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !42
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !9
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #24
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !56
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !77

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !75
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !42
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !9
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #24
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !78

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !55
  %168 = load ptr, ptr %2, align 8, !tbaa !51
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !42
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !9
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #24
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !78

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !51
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !42
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !9
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #24
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !78

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !51
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = load ptr, ptr %4, align 8, !tbaa !51
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
  %38 = load i64, ptr %37, align 8, !tbaa !72
  %39 = load ptr, ptr %0, align 8, !tbaa !67
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !69
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !57
  %51 = load ptr, ptr %3, align 8, !tbaa !44
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !23
  %53 = load ptr, ptr %1, align 8, !tbaa !42
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !26
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !42
  %62 = load i64, ptr %54, align 8, !tbaa !9
  store i64 %62, ptr %52, align 8, !tbaa !9
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !26
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !26
  store ptr %54, ptr %1, align 8, !tbaa !42
  store i64 0, ptr %64, align 8, !tbaa !26
  store i8 0, ptr %54, align 8, !tbaa !9
  %68 = load ptr, ptr %5, align 8, !tbaa !69
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !56
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  store ptr %70, ptr %18, align 8, !tbaa !55
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !75
  store ptr %70, ptr %3, align 8, !tbaa !44
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !72
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !67
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
  br i1 %30, label %31, label %32, !prof !79

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !57
  store ptr %35, ptr %24, align 8, !tbaa !57
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !80

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !57
  store ptr %48, ptr %42, align 8, !tbaa !57
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
  br i1 %64, label %65, label %66, !prof !79

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !57
  store ptr %69, ptr %60, align 8, !tbaa !57
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !67
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #24
  store ptr %55, ptr %0, align 8, !tbaa !67
  store i64 %52, ptr %14, align 8, !tbaa !72
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !56
  %75 = load ptr, ptr %74, align 8, !tbaa !57
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !55
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !75
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !56
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !55
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !75
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

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib12log_prefixedESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %11, ptr %9, align 8, !tbaa !23
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
  store ptr %23, ptr %9, align 8, !tbaa !42
  store i64 %0, ptr %11, align 8, !tbaa !9
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi ptr [ %23, %21 ], [ %11, %16 ]
  switch i64 %0, label %28 [
    i64 1, label %26
    i64 0, label %29
  ]

26:                                               ; preds = %24
  %27 = load i8, ptr %1, align 1, !tbaa !9
  store i8 %27, ptr %25, align 1, !tbaa !9
  br label %29

28:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %25, ptr align 1 %1, i64 %0, i1 false)
  br label %29

29:                                               ; preds = %28, %26, %24
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %0, ptr %30, align 8, !tbaa !26
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 %0
  store i8 0, ptr %31, align 1, !tbaa !9
  %32 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %33 unwind label %179

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %34, ptr %8, align 8, !tbaa !23, !alias.scope !81
  %35 = load ptr, ptr %32, align 8, !tbaa !42
  %36 = getelementptr inbounds nuw i8, ptr %32, i64 16
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !26
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  %42 = add nuw nsw i64 %40, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, ptr noundef nonnull align 8 dereferenceable(1) %36, i64 %42, i1 false)
  br label %47

43:                                               ; preds = %33
  store ptr %35, ptr %8, align 8, !tbaa !42, !alias.scope !81
  %44 = load i64, ptr %36, align 8, !tbaa !9
  store i64 %44, ptr %34, align 8, !tbaa !9, !alias.scope !81
  %45 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !26
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i64 [ %40, %38 ], [ %46, %43 ]
  %49 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %50 = icmp ult i64 %48, 9223372036854775807
  call void @llvm.assume(i1 %50)
  %51 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %48, ptr %51, align 8, !tbaa !26, !alias.scope !81
  store ptr %36, ptr %32, align 8, !tbaa !42
  store i64 0, ptr %49, align 8, !tbaa !26
  store i8 0, ptr %36, align 8, !tbaa !9
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %52 = load i64, ptr %51, align 8, !tbaa !26, !noalias !84
  %53 = icmp ult i64 %52, 9223372036854775807
  call void @llvm.assume(i1 %53)
  %54 = icmp samesign ugt i64 %52, 9223372036854775804
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %56 unwind label %181

56:                                               ; preds = %55
  unreachable

57:                                               ; preds = %47
  %58 = add nuw nsw i64 %52, 2
  %59 = load ptr, ptr %8, align 8, !tbaa !42, !noalias !84
  %60 = icmp eq ptr %59, %34
  %61 = load i64, ptr %34, align 8, !noalias !84
  br i1 %60, label %62, label %64

62:                                               ; preds = %57
  %63 = icmp samesign ugt i64 %52, 13
  br i1 %63, label %71, label %68

64:                                               ; preds = %57
  %65 = icmp samesign ugt i64 %61, 14
  call void @llvm.assume(i1 %65)
  %66 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %66)
  %67 = icmp samesign ugt i64 %58, %61
  br i1 %67, label %71, label %68

68:                                               ; preds = %64, %62
  %69 = getelementptr inbounds nuw i8, ptr %59, i64 %52
  store i16 8285, ptr %69, align 1, !noalias !84
  %70 = load ptr, ptr %8, align 8, !tbaa !42, !noalias !84
  br label %86

71:                                               ; preds = %64, %62
  %72 = phi i64 [ %61, %64 ], [ 15, %62 ]
  %73 = shl nuw i64 %72, 1
  %74 = icmp ult i64 %58, %73
  %75 = call i64 @llvm.umin.i64(i64 %73, i64 9223372036854775806)
  %76 = select i1 %74, i64 %75, i64 %58
  %77 = add nuw nsw i64 %76, 1
  %78 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %77) #27
          to label %79 unwind label %181

79:                                               ; preds = %71
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %78, ptr align 1 %59, i64 %52, i1 false)
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 %52
  store i16 8285, ptr %80, align 1
  br i1 %60, label %81, label %83

81:                                               ; preds = %79
  %82 = icmp samesign ult i64 %52, 16
  call void @llvm.assume(i1 %82)
  br label %85

83:                                               ; preds = %79
  %84 = add i64 %61, 1
  call void @_ZdlPvm(ptr noundef %59, i64 noundef %84) #24
  br label %85

85:                                               ; preds = %83, %81
  store ptr %78, ptr %8, align 8, !tbaa !42
  store i64 %76, ptr %34, align 8, !tbaa !9
  br label %86

86:                                               ; preds = %85, %68
  %87 = phi ptr [ %78, %85 ], [ %70, %68 ]
  store i64 %58, ptr %51, align 8, !tbaa !26, !noalias !84
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 %58
  store i8 0, ptr %88, align 1, !tbaa !9, !noalias !84
  %89 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %89, ptr %7, align 8, !tbaa !23, !alias.scope !84
  %90 = load ptr, ptr %8, align 8, !tbaa !42, !noalias !84
  %91 = icmp eq ptr %90, %34
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i64, ptr %51, align 8, !tbaa !26, !noalias !84
  %94 = icmp ult i64 %93, 16
  call void @llvm.assume(i1 %94)
  %95 = add nuw nsw i64 %93, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %89, ptr noundef nonnull align 8 dereferenceable(1) %34, i64 %95, i1 false)
  br label %99

96:                                               ; preds = %86
  store ptr %90, ptr %7, align 8, !tbaa !42, !alias.scope !84
  %97 = load i64, ptr %34, align 8, !tbaa !9, !noalias !84
  store i64 %97, ptr %89, align 8, !tbaa !9, !alias.scope !84
  %98 = load i64, ptr %51, align 8, !tbaa !26, !noalias !84
  br label %99

99:                                               ; preds = %96, %92
  %100 = phi i64 [ %93, %92 ], [ %98, %96 ]
  %101 = icmp ult i64 %100, 9223372036854775807
  call void @llvm.assume(i1 %101)
  %102 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %100, ptr %102, align 8, !tbaa !26, !alias.scope !84
  store ptr %34, ptr %8, align 8, !tbaa !42, !noalias !84
  store i64 0, ptr %51, align 8, !tbaa !26, !noalias !84
  store i8 0, ptr %34, align 8, !tbaa !9, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %103 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %103, ptr %10, align 8, !tbaa !23
  %104 = icmp eq ptr %3, null
  %105 = icmp ne i64 %2, 0
  %106 = and i1 %105, %104
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #23
          to label %108 unwind label %183

108:                                              ; preds = %107
  unreachable

109:                                              ; preds = %99
  %110 = icmp ugt i64 %2, 15
  br i1 %110, label %111, label %119

111:                                              ; preds = %109
  %112 = icmp ugt i64 %2, 9223372036854775806
  br i1 %112, label %113, label %115

113:                                              ; preds = %111
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
          to label %114 unwind label %183

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %111
  %116 = add nuw nsw i64 %2, 1
  %117 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %116) #27
          to label %118 unwind label %183

118:                                              ; preds = %115
  store ptr %117, ptr %10, align 8, !tbaa !42
  store i64 %2, ptr %103, align 8, !tbaa !9
  br label %119

119:                                              ; preds = %118, %109
  %120 = phi ptr [ %117, %118 ], [ %103, %109 ]
  switch i64 %2, label %123 [
    i64 1, label %121
    i64 0, label %124
  ]

121:                                              ; preds = %119
  %122 = load i8, ptr %3, align 1, !tbaa !9
  store i8 %122, ptr %120, align 1, !tbaa !9
  br label %124

123:                                              ; preds = %119
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %120, ptr align 1 %3, i64 %2, i1 false)
  br label %124

124:                                              ; preds = %123, %121, %119
  %125 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %2, ptr %125, align 8, !tbaa !26
  %126 = getelementptr inbounds nuw i8, ptr %120, i64 %2
  store i8 0, ptr %126, align 1, !tbaa !9
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %127 unwind label %185

127:                                              ; preds = %124
  %128 = load ptr, ptr %6, align 8, !tbaa !42
  %129 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %130 = load i64, ptr %129, align 8, !tbaa !26
  %131 = icmp ult i64 %130, 9223372036854775807
  call void @llvm.assume(i1 %131)
  %132 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %128, i64 noundef %130)
          to label %133 unwind label %187

133:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i8 10, ptr %5, align 1, !tbaa !9
  %134 = load ptr, ptr %132, align 8, !tbaa !10
  %135 = getelementptr i8, ptr %134, i64 -24
  %136 = load i64, ptr %135, align 8
  %137 = getelementptr inbounds i8, ptr %132, i64 %136
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 16
  %139 = load i64, ptr %138, align 8, !tbaa !12
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %133
  %142 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef nonnull %5, i64 noundef 1)
          to label %145 unwind label %187

143:                                              ; preds = %133
  %144 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %132, i8 noundef signext 10)
          to label %145 unwind label %187

145:                                              ; preds = %143, %141
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %146 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %147 unwind label %187

147:                                              ; preds = %145
  %148 = load ptr, ptr %6, align 8, !tbaa !42
  %149 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load i64, ptr %149, align 8, !tbaa !9
  %153 = add i64 %152, 1
  call void @_ZdlPvm(ptr noundef %148, i64 noundef %153) #24
  br label %154

154:                                              ; preds = %147, %151
  %155 = load ptr, ptr %10, align 8, !tbaa !42
  %156 = icmp eq ptr %155, %103
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i64, ptr %103, align 8, !tbaa !9
  %159 = add i64 %158, 1
  call void @_ZdlPvm(ptr noundef %155, i64 noundef %159) #24
  br label %160

160:                                              ; preds = %154, %157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %161 = load ptr, ptr %7, align 8, !tbaa !42
  %162 = icmp eq ptr %161, %89
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i64, ptr %89, align 8, !tbaa !9
  %165 = add i64 %164, 1
  call void @_ZdlPvm(ptr noundef %161, i64 noundef %165) #24
  br label %166

166:                                              ; preds = %160, %163
  %167 = load ptr, ptr %8, align 8, !tbaa !42
  %168 = icmp eq ptr %167, %34
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i64, ptr %34, align 8, !tbaa !9
  %171 = add i64 %170, 1
  call void @_ZdlPvm(ptr noundef %167, i64 noundef %171) #24
  br label %172

172:                                              ; preds = %166, %169
  %173 = load ptr, ptr %9, align 8, !tbaa !42
  %174 = icmp eq ptr %173, %11
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i64, ptr %11, align 8, !tbaa !9
  %177 = add i64 %176, 1
  call void @_ZdlPvm(ptr noundef %173, i64 noundef %177) #24
  br label %178

178:                                              ; preds = %172, %175
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret void

179:                                              ; preds = %29
  %180 = landingpad { ptr, i32 }
          cleanup
  br label %216

181:                                              ; preds = %71, %55
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %209

183:                                              ; preds = %115, %113, %107
  %184 = landingpad { ptr, i32 }
          cleanup
  br label %202

185:                                              ; preds = %124
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %195

187:                                              ; preds = %145, %143, %141, %127
  %188 = landingpad { ptr, i32 }
          cleanup
  %189 = load ptr, ptr %6, align 8, !tbaa !42
  %190 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %191 = icmp eq ptr %189, %190
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = load i64, ptr %190, align 8, !tbaa !9
  %194 = add i64 %193, 1
  call void @_ZdlPvm(ptr noundef %189, i64 noundef %194) #24
  br label %195

195:                                              ; preds = %187, %192, %185
  %196 = phi { ptr, i32 } [ %186, %185 ], [ %188, %192 ], [ %188, %187 ]
  %197 = load ptr, ptr %10, align 8, !tbaa !42
  %198 = icmp eq ptr %197, %103
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load i64, ptr %103, align 8, !tbaa !9
  %201 = add i64 %200, 1
  call void @_ZdlPvm(ptr noundef %197, i64 noundef %201) #24
  br label %202

202:                                              ; preds = %195, %199, %183
  %203 = phi { ptr, i32 } [ %184, %183 ], [ %196, %199 ], [ %196, %195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %204 = load ptr, ptr %7, align 8, !tbaa !42
  %205 = icmp eq ptr %204, %89
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load i64, ptr %89, align 8, !tbaa !9
  %208 = add i64 %207, 1
  call void @_ZdlPvm(ptr noundef %204, i64 noundef %208) #24
  br label %209

209:                                              ; preds = %202, %206, %181
  %210 = phi { ptr, i32 } [ %182, %181 ], [ %203, %206 ], [ %203, %202 ]
  %211 = load ptr, ptr %8, align 8, !tbaa !42
  %212 = icmp eq ptr %211, %34
  br i1 %212, label %216, label %213

213:                                              ; preds = %209
  %214 = load i64, ptr %34, align 8, !tbaa !9
  %215 = add i64 %214, 1
  call void @_ZdlPvm(ptr noundef %211, i64 noundef %215) #24
  br label %216

216:                                              ; preds = %209, %213, %179
  %217 = phi { ptr, i32 } [ %180, %179 ], [ %210, %213 ], [ %210, %209 ]
  %218 = load ptr, ptr %9, align 8, !tbaa !42
  %219 = icmp eq ptr %218, %11
  br i1 %219, label %223, label %220

220:                                              ; preds = %216
  %221 = load i64, ptr %11, align 8, !tbaa !9
  %222 = add i64 %221, 1
  call void @_ZdlPvm(ptr noundef %218, i64 noundef %222) #24
  br label %223

223:                                              ; preds = %216, %220
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  resume { ptr, i32 } %217
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !26
  %6 = icmp ult i64 %5, 9223372036854775807
  tail call void @llvm.assume(i1 %6)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !26
  %9 = icmp ult i64 %8, 9223372036854775807
  tail call void @llvm.assume(i1 %9)
  %10 = add nuw i64 %8, %5
  %11 = load ptr, ptr %1, align 8, !tbaa !42
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
  %22 = load ptr, ptr %2, align 8, !tbaa !42
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
  store ptr %36, ptr %0, align 8, !tbaa !23
  %37 = load ptr, ptr %35, align 8, !tbaa !42
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !26
  %43 = icmp ult i64 %42, 16
  tail call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %34
  store ptr %37, ptr %0, align 8, !tbaa !42
  %46 = load i64, ptr %38, align 8, !tbaa !9
  store i64 %46, ptr %36, align 8, !tbaa !9
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa !26
  %50 = icmp ult i64 %49, 9223372036854775807
  tail call void @llvm.assume(i1 %50)
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %49, ptr %51, align 8, !tbaa !26
  store ptr %38, ptr %35, align 8, !tbaa !42
  store i64 0, ptr %48, align 8, !tbaa !26
  store i8 0, ptr %38, align 8, !tbaa !9
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
  %66 = load i8, ptr %22, align 1, !tbaa !9
  store i8 %66, ptr %63, align 1, !tbaa !9
  br label %69

67:                                               ; preds = %62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %22, i64 %8, i1 false)
  br label %69

68:                                               ; preds = %59
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %5, i64 noundef 0, ptr noundef %22, i64 noundef %8)
  br label %69

69:                                               ; preds = %60, %65, %67, %68
  store i64 %10, ptr %4, align 8, !tbaa !26
  %70 = load ptr, ptr %1, align 8, !tbaa !42
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 %10
  store i8 0, ptr %71, align 1, !tbaa !9
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %72, ptr %0, align 8, !tbaa !23
  %73 = load ptr, ptr %1, align 8, !tbaa !42
  %74 = icmp eq ptr %73, %12
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i64, ptr %4, align 8, !tbaa !26
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  %78 = add nuw nsw i64 %76, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %72, ptr noundef nonnull align 8 dereferenceable(1) %12, i64 %78, i1 false)
  br label %82

79:                                               ; preds = %69
  store ptr %73, ptr %0, align 8, !tbaa !42
  %80 = load i64, ptr %12, align 8, !tbaa !9
  store i64 %80, ptr %72, align 8, !tbaa !9
  %81 = load i64, ptr %4, align 8, !tbaa !26
  br label %82

82:                                               ; preds = %75, %79
  %83 = phi i64 [ %76, %75 ], [ %81, %79 ]
  %84 = icmp ult i64 %83, 9223372036854775807
  tail call void @llvm.assume(i1 %84)
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %83, ptr %85, align 8, !tbaa !26
  store ptr %12, ptr %1, align 8, !tbaa !42
  store i64 0, ptr %4, align 8, !tbaa !26
  store i8 0, ptr %12, align 8, !tbaa !9
  br label %86

86:                                               ; preds = %47, %82
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !26
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
  %16 = load ptr, ptr %0, align 8, !tbaa !42
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
  %34 = select i1 %31, i1 true, i1 %33, !prof !87
  br i1 %34, label %35, label %50, !prof !87

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
  %44 = load i8, ptr %41, align 1, !tbaa !9
  store i8 %44, ptr %40, align 1, !tbaa !9
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
  %48 = load i8, ptr %3, align 1, !tbaa !9
  store i8 %48, ptr %28, align 1, !tbaa !9
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
  store i64 %15, ptr %6, align 8, !tbaa !26
  %53 = load ptr, ptr %0, align 8, !tbaa !42
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 %15
  store i8 0, ptr %54, align 1, !tbaa !9
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !26
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, %1
  %10 = sub i64 %7, %9
  %11 = sub i64 %4, %2
  %12 = add i64 %11, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !42
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
  %37 = load i8, ptr %13, align 1, !tbaa !9
  store i8 %37, ptr %35, align 1, !tbaa !9
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
  %47 = load i8, ptr %3, align 1, !tbaa !9
  store i8 %47, ptr %44, align 1, !tbaa !9
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
  %58 = load i8, ptr %55, align 1, !tbaa !9
  store i8 %58, ptr %53, align 1, !tbaa !9
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
  store ptr %35, ptr %0, align 8, !tbaa !42
  store i64 %33, ptr %14, align 8, !tbaa !9
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !8, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!25 = !{!"p1 omnipotent char", !18, i64 0}
!26 = !{!27, !14, i64 8}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !14, i64 8, !7, i64 16}
!28 = !{!29, !33, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !13, i64 0, !30, i64 216, !7, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!30 = !{!"p1 _ZTSSo", !18, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!36 = !{!37, !7, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!40 = !{!"p1 int", !18, i64 0}
!41 = !{!"p1 short", !18, i64 0}
!42 = !{!27, !25, i64 0}
!43 = !{!"branch_weights", i32 1, i32 1023}
!44 = !{!45, !49, i64 48}
!45 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !46, i64 0, !14, i64 8, !48, i64 16, !48, i64 48}
!46 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0}
!47 = !{!"any p2 pointer", !18, i64 0}
!48 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !49, i64 0, !49, i64 8, !49, i64 16, !46, i64 24}
!49 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!50 = !{!45, !49, i64 64}
!51 = !{!48, !49, i64 0}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!54 = distinct !{!54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!55 = !{!48, !49, i64 8}
!56 = !{!48, !46, i64 24}
!57 = !{!49, !49, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!62 = distinct !{!62, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!63 = !{!18, !18, i64 0}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!66 = distinct !{!66, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!67 = !{!45, !46, i64 0}
!68 = !{!45, !46, i64 40}
!69 = !{!45, !46, i64 72}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!45, !14, i64 8}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = distinct !{!74, !71}
!75 = !{!48, !49, i64 16}
!76 = !{!45, !49, i64 16}
!77 = distinct !{!77, !71}
!78 = distinct !{!78, !71}
!79 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!80 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!83 = distinct !{!83, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!86 = distinct !{!86, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!87 = !{!"branch_weights", i32 -2146410, i32 2146410}
