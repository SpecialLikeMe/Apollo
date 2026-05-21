; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/8e140437caed6511.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/8e140437caed6511.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::locale::id" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::basic_ostream<char>::sentry" = type { i8, ptr }

$_ZN12__apo_stdlib16datetime_now_utcEv = comdat any

$_ZN12__apo_stdlib18datetime_now_localEv = comdat any

$_ZN12__apo_stdlib13format_tm_isoB5cxx11ERK2tmb = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St9_Put_timeIS3_E = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTIN10__cxxabiv115__forced_unwindE = external constant ptr
@_ZNSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE = external global %"class.std::locale::id", align 8

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2647_5_1428sys__native_datetime_now_utcEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib16datetime_now_utcEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16datetime_now_utcEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca i64, align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %4 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %4, ptr %1, align 8, !tbaa !12, !noalias !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !alias.scope !9
  %5 = call ptr @gmtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZN12__apo_stdlib13format_tm_isoB5cxx11ERK2tmb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i1 noundef zeroext true)
  %6 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11, !prof !14

8:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %9 unwind label %65

9:                                                ; preds = %8
  %10 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %11

11:                                               ; preds = %9, %0
  %12 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds i8, ptr %16, i64 -32
  %18 = icmp eq ptr %14, %17
  br i1 %18, label %40, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %20, ptr %14, align 8, !tbaa !23
  %21 = load ptr, ptr %2, align 8, !tbaa !26
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !28
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %33

29:                                               ; preds = %19
  store ptr %21, ptr %14, align 8, !tbaa !26
  %30 = load i64, ptr %22, align 8, !tbaa !29
  store i64 %30, ptr %20, align 8, !tbaa !29
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !28
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i64 [ %32, %29 ], [ %26, %24 ]
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %36 = icmp ult i64 %34, 9223372036854775807
  call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %34, ptr %37, align 8, !tbaa !28
  store ptr %22, ptr %2, align 8, !tbaa !26
  store i64 0, ptr %35, align 8, !tbaa !28
  store i8 0, ptr %22, align 8, !tbaa !29
  %38 = load ptr, ptr %13, align 8, !tbaa !15
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %39, ptr %13, align 8, !tbaa !15
  br label %43

40:                                               ; preds = %11
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %41 unwind label %65

41:                                               ; preds = %40
  %42 = load ptr, ptr %13, align 8, !tbaa !30, !noalias !31
  br label %43

43:                                               ; preds = %41, %33
  %44 = phi ptr [ %39, %33 ], [ %42, %41 ]
  %45 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %46 = load ptr, ptr %45, align 8, !tbaa !34, !noalias !31
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %50 = load ptr, ptr %49, align 8, !tbaa !35, !noalias !31
  %51 = getelementptr inbounds i8, ptr %50, i64 -8
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 512
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi ptr [ %53, %48 ], [ %44, %43 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 -32
  %57 = load ptr, ptr %56, align 8, !tbaa !26
  %58 = load ptr, ptr %2, align 8, !tbaa !26
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i64, ptr %59, align 8, !tbaa !29
  %63 = add i64 %62, 1
  call void @_ZdlPvm(ptr noundef %58, i64 noundef %63) #21
  br label %64

64:                                               ; preds = %54, %61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %57

65:                                               ; preds = %40, %8
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %2, align 8, !tbaa !26
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i64, ptr %68, align 8, !tbaa !29
  %72 = add i64 %71, 1
  call void @_ZdlPvm(ptr noundef %67, i64 noundef %72) #21
  br label %73

73:                                               ; preds = %65, %70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  resume { ptr, i32 } %66
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2647_5_1430sys__native_datetime_now_localEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib18datetime_now_localEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib18datetime_now_localEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %2 = alloca i64, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %5 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %5, ptr %2, align 8, !tbaa !12, !noalias !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !alias.scope !37
  %6 = call ptr @localtime_r(ptr noundef nonnull %2, ptr noundef nonnull align 8 %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5, !noalias !40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1), !noalias !40
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St9_Put_timeIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull align 8 dereferenceable(56) %4, ptr nonnull @.str.1)
          to label %8 unwind label %12, !noalias !40

8:                                                ; preds = %0
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %9)
          to label %14 unwind label %12

10:                                               ; preds = %97, %12
  %11 = phi { ptr, i32 } [ %13, %12 ], [ %90, %97 ]
  resume { ptr, i32 } %11

12:                                               ; preds = %8, %0
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5, !noalias !40
  br label %10

14:                                               ; preds = %8
  %15 = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !40
  store ptr %15, ptr %1, align 8, !tbaa !43, !noalias !40
  %16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !40
  %17 = getelementptr i8, ptr %15, i64 -24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  store ptr %16, ptr %19, align 8, !tbaa !43, !noalias !40
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %9, align 8, !tbaa !43, !noalias !40
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %21 = load ptr, ptr %20, align 8, !tbaa !26, !noalias !40
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i64, ptr %22, align 8, !tbaa !29, !noalias !40
  %26 = add i64 %25, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %26) #21
  br label %27

27:                                               ; preds = %14, %24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %9, align 8, !tbaa !43, !noalias !40
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28) #5
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %29) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5, !noalias !40
  %30 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35, !prof !14

32:                                               ; preds = %27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %33 unwind label %89

33:                                               ; preds = %32
  %34 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #5
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %35

35:                                               ; preds = %33, %27
  %36 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 48
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = getelementptr inbounds i8, ptr %40, i64 -32
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %44, ptr %38, align 8, !tbaa !23
  %45 = load ptr, ptr %3, align 8, !tbaa !26
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %50 = load i64, ptr %49, align 8, !tbaa !28
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  %52 = add nuw nsw i64 %50, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %44, ptr noundef nonnull align 8 dereferenceable(1) %46, i64 %52, i1 false)
  br label %57

53:                                               ; preds = %43
  store ptr %45, ptr %38, align 8, !tbaa !26
  %54 = load i64, ptr %46, align 8, !tbaa !29
  store i64 %54, ptr %44, align 8, !tbaa !29
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %56 = load i64, ptr %55, align 8, !tbaa !28
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i64 [ %56, %53 ], [ %50, %48 ]
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %60 = icmp ult i64 %58, 9223372036854775807
  call void @llvm.assume(i1 %60)
  %61 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %58, ptr %61, align 8, !tbaa !28
  store ptr %46, ptr %3, align 8, !tbaa !26
  store i64 0, ptr %59, align 8, !tbaa !28
  store i8 0, ptr %46, align 8, !tbaa !29
  %62 = load ptr, ptr %37, align 8, !tbaa !15
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 32
  store ptr %63, ptr %37, align 8, !tbaa !15
  br label %67

64:                                               ; preds = %35
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %65 unwind label %89

65:                                               ; preds = %64
  %66 = load ptr, ptr %37, align 8, !tbaa !30, !noalias !45
  br label %67

67:                                               ; preds = %65, %57
  %68 = phi ptr [ %63, %57 ], [ %66, %65 ]
  %69 = getelementptr inbounds nuw i8, ptr %36, i64 56
  %70 = load ptr, ptr %69, align 8, !tbaa !34, !noalias !45
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %36, i64 72
  %74 = load ptr, ptr %73, align 8, !tbaa !35, !noalias !45
  %75 = getelementptr inbounds i8, ptr %74, i64 -8
  %76 = load ptr, ptr %75, align 8, !tbaa !36
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 512
  br label %78

78:                                               ; preds = %72, %67
  %79 = phi ptr [ %77, %72 ], [ %68, %67 ]
  %80 = getelementptr inbounds i8, ptr %79, i64 -32
  %81 = load ptr, ptr %80, align 8, !tbaa !26
  %82 = load ptr, ptr %3, align 8, !tbaa !26
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i64, ptr %83, align 8, !tbaa !29
  %87 = add i64 %86, 1
  call void @_ZdlPvm(ptr noundef %82, i64 noundef %87) #21
  br label %88

88:                                               ; preds = %78, %85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret ptr %81

89:                                               ; preds = %64, %32
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load ptr, ptr %3, align 8, !tbaa !26
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i64, ptr %92, align 8, !tbaa !29
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %96) #21
  br label %97

97:                                               ; preds = %89, %94
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %10
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 -2147481748, -2147483648) i32 @_ZN32__apollo_inline_inline_2647_5_1431sys__native_datetime_year_localEv() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !48
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %6 = load i32, ptr %5, align 4, !tbaa !51
  %7 = add nsw i32 %6, 1900
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %7
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZN32__apollo_inline_inline_2647_5_1432sys__native_datetime_month_localEv() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !53
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = add nsw i32 %6, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %7
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2647_5_1430sys__native_datetime_day_localEv() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !57
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %6
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2647_5_1431sys__native_datetime_hour_localEv() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !61
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %6
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2647_5_1433sys__native_datetime_minute_localEv() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !65
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %6
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2647_5_1433sys__native_datetime_second_localEv() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !69
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = load i32, ptr %2, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %5
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZN32__apollo_inline_inline_2647_5_1428sys__native_monotonic_millisEv() local_unnamed_addr #2 {
  %1 = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #5
  %2 = sdiv i64 %1, 1000000
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 2147483647
  ret i32 %4
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_datetime_now_utc() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib16datetime_now_utcEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_datetime_now_local() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib18datetime_now_localEv()
  ret ptr %1
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local range(i32 -2147481748, -2147483648) i32 @sys__native_datetime_year_local() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !73
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %6 = load i32, ptr %5, align 4, !tbaa !51
  %7 = add nsw i32 %6, 1900
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %7
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @sys__native_datetime_month_local() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !76
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = add nsw i32 %6, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %7
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local i32 @sys__native_datetime_day_local() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !79
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %6
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local i32 @sys__native_datetime_hour_local() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !82
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %6
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local i32 @sys__native_datetime_minute_local() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !85
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %6
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local i32 @sys__native_datetime_second_local() local_unnamed_addr #2 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %3 = tail call i64 @time(ptr noundef null) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %3, ptr %1, align 8, !tbaa !12, !noalias !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !alias.scope !88
  %4 = call ptr @localtime_r(ptr noundef nonnull %1, ptr noundef nonnull align 8 %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %5 = load i32, ptr %2, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %5
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local range(i32 0, -2147483648) i32 @sys__native_monotonic_millis() local_unnamed_addr #2 {
  %1 = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #5
  %2 = sdiv i64 %1, 1000000
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 2147483647
  ret i32 %4
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13format_tm_isoB5cxx11ERK2tmb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca i8, align 1
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St9_Put_timeIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nonnull %1, ptr nonnull @.str.1)
          to label %7 unwind label %21

7:                                                ; preds = %3
  br i1 %2, label %8, label %23

8:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 90, ptr %4, align 1, !tbaa !29
  %9 = load ptr, ptr %5, align 8, !tbaa !43
  %10 = getelementptr i8, ptr %9, i64 -24
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %5, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = load i64, ptr %13, align 8, !tbaa !91
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %4, i64 noundef 1)
          to label %20 unwind label %21

18:                                               ; preds = %8
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 90)
          to label %20 unwind label %21

20:                                               ; preds = %18, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %23

21:                                               ; preds = %23, %18, %16, %3
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  resume { ptr, i32 } %22

23:                                               ; preds = %20, %7
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %24)
          to label %25 unwind label %21

25:                                               ; preds = %23
  %26 = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %26, ptr %5, align 8, !tbaa !43
  %27 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %28 = getelementptr i8, ptr %26, i64 -24
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds i8, ptr %5, i64 %29
  store ptr %27, ptr %30, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %24, align 8, !tbaa !43
  %31 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %32 = load ptr, ptr %31, align 8, !tbaa !26
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 96
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i64, ptr %33, align 8, !tbaa !29
  %37 = add i64 %36, 1
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #21
  br label %38

38:                                               ; preds = %25, %35
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %24, align 8, !tbaa !43
  %39 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39) #5
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %40) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !36, !noalias !100
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !36
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !103, !noalias !100
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !103
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !36, !noalias !104
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !36
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !103, !noalias !104
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !103
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !107
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !108
  %21 = load ptr, ptr %9, align 8, !tbaa !109
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #21
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !110

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !107
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !112
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #21
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #22
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !112
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !113

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  store ptr %12, ptr %0, align 8, !tbaa !107
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !36
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !114

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #5
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #21
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !110

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #23
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
  tail call void @__clang_call_terminate(ptr %39) #22
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #5
  %44 = load ptr, ptr %0, align 8, !tbaa !107
  %45 = load i64, ptr %6, align 8, !tbaa !112
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #23
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
  store ptr %55, ptr %56, align 8, !tbaa !115
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !35
  %60 = load ptr, ptr %58, align 8, !tbaa !36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !34
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !115
  store ptr %53, ptr %51, align 8, !tbaa !116
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !15
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #22
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
  tail call void @_ZSt9terminatev() #22
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
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !35
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !30
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = load ptr, ptr %19, align 8, !tbaa !26
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !29
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #21
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !29
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #21
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !26
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !29
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #21
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !26
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !29
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #21
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !26
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !29
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #21
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !26
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !29
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #21
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !26
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !29
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #21
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !26
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !29
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #21
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !26
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !29
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #21
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !26
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !29
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #21
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !26
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !29
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #21
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !26
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !29
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #21
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !26
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !29
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #21
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !26
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !29
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #21
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !26
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !29
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #21
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !26
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !29
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #21
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !35
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !117

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !115
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !26
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !29
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #21
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !118

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !34
  %168 = load ptr, ptr %2, align 8, !tbaa !30
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !26
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !29
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #21
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !118

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !30
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !26
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !29
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #21
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !118

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %26 = load ptr, ptr %25, align 8, !tbaa !115
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !112
  %39 = load ptr, ptr %0, align 8, !tbaa !107
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !109
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !36
  %51 = load ptr, ptr %3, align 8, !tbaa !15
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !23
  %53 = load ptr, ptr %1, align 8, !tbaa !26
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !28
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !26
  %62 = load i64, ptr %54, align 8, !tbaa !29
  store i64 %62, ptr %52, align 8, !tbaa !29
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !28
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !28
  store ptr %54, ptr %1, align 8, !tbaa !26
  store i64 0, ptr %64, align 8, !tbaa !28
  store i8 0, ptr %54, align 8, !tbaa !29
  %68 = load ptr, ptr %5, align 8, !tbaa !109
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !35
  %70 = load ptr, ptr %69, align 8, !tbaa !36
  store ptr %70, ptr %18, align 8, !tbaa !34
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !115
  store ptr %70, ptr %3, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !112
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !107
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
  br i1 %30, label %31, label %32, !prof !119

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
  br i1 %43, label %44, label %45, !prof !120

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
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #24
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !119

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
  %71 = load ptr, ptr %0, align 8, !tbaa !107
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #21
  store ptr %55, ptr %0, align 8, !tbaa !107
  store i64 %52, ptr %14, align 8, !tbaa !112
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !35
  %75 = load ptr, ptr %74, align 8, !tbaa !36
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !34
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !115
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !35
  %81 = load ptr, ptr %80, align 8, !tbaa !36
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !34
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: mustprogress sspstrong uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St9_Put_timeIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::basic_ostream<char>::sentry", align 8
  %5 = alloca %"class.std::locale", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @_ZNSo6sentryC1ERSo(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = load i8, ptr %4, align 8, !tbaa !121, !range !125, !noundef !126
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %8, label %92

8:                                                ; preds = %3
  %9 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #5
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 %9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %11 = load ptr, ptr %0, align 8, !tbaa !43
  %12 = getelementptr i8, ptr %11, i64 -24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 208
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %15) #5
  %16 = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE) #5
  %17 = load ptr, ptr %5, align 8, !tbaa !127
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = getelementptr inbounds nuw ptr, ptr %19, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !132
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %24 unwind label %48

24:                                               ; preds = %23
  unreachable

25:                                               ; preds = %8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %26 = load ptr, ptr %0, align 8, !tbaa !43
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 232
  %31 = load ptr, ptr %30, align 8, !tbaa !134
  %32 = icmp eq ptr %31, null
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds nuw i8, ptr %29, i64 225
  %35 = load i8, ptr %34, align 1, !tbaa !140, !range !125, !noundef !126
  %36 = trunc nuw i8 %35 to i1
  br i1 %36, label %39, label %37, !prof !119

37:                                               ; preds = %25
  %38 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %29, i8 noundef signext 32)
          to label %42 unwind label %50

39:                                               ; preds = %25
  %40 = getelementptr inbounds nuw i8, ptr %29, i64 224
  %41 = load i8, ptr %40, align 8, !tbaa !141
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i8 [ %41, %39 ], [ %38, %37 ]
  %44 = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr %31, i8 %33, ptr noundef nonnull align 8 dereferenceable(216) %29, i8 noundef signext %43, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %10)
          to label %45 unwind label %50

45:                                               ; preds = %42
  %46 = extractvalue { ptr, i8 } %44, 1
  %47 = trunc nuw i8 %46 to i1
  br i1 %47, label %82, label %92

48:                                               ; preds = %23
  %49 = landingpad { ptr, i32 }
          catch ptr @_ZTIN10__cxxabiv115__forced_unwindE
          catch ptr null
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %52

50:                                               ; preds = %37, %42
  %51 = landingpad { ptr, i32 }
          catch ptr @_ZTIN10__cxxabiv115__forced_unwindE
          catch ptr null
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  %54 = extractvalue { ptr, i32 } %53, 0
  %55 = extractvalue { ptr, i32 } %53, 1
  %56 = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN10__cxxabiv115__forced_unwindE) #5
  %57 = icmp eq i32 %55, %56
  %58 = call ptr @__cxa_begin_catch(ptr %54) #5
  %59 = load ptr, ptr %0, align 8, !tbaa !43
  %60 = getelementptr i8, ptr %59, i64 -24
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds i8, ptr %0, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %64 = load i32, ptr %63, align 4, !tbaa !142
  %65 = or i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !142
  br i1 %57, label %66, label %68

66:                                               ; preds = %52
  invoke void @__cxa_rethrow() #23
          to label %67 unwind label %80

67:                                               ; preds = %66
  unreachable

68:                                               ; preds = %52
  %69 = getelementptr inbounds nuw i8, ptr %62, i64 28
  %70 = load i32, ptr %69, align 4, !tbaa !143
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  invoke void @__cxa_rethrow() #23
          to label %74 unwind label %76

74:                                               ; preds = %73
  unreachable

75:                                               ; preds = %68
  invoke void @__cxa_end_catch()
          to label %92 unwind label %78

76:                                               ; preds = %73
  %77 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %90 unwind label %93

78:                                               ; preds = %82, %75
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %90

80:                                               ; preds = %66
  %81 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %90 unwind label %93

82:                                               ; preds = %45
  %83 = load ptr, ptr %0, align 8, !tbaa !43
  %84 = getelementptr i8, ptr %83, i64 -24
  %85 = load i64, ptr %84, align 8
  %86 = getelementptr inbounds i8, ptr %0, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %88 = load i32, ptr %87, align 8, !tbaa !144
  %89 = or i32 %88, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %86, i32 noundef %89)
          to label %92 unwind label %78

90:                                               ; preds = %80, %76, %78
  %91 = phi { ptr, i32 } [ %79, %78 ], [ %77, %76 ], [ %81, %80 ]
  call void @_ZNSo6sentryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  resume { ptr, i32 } %91

92:                                               ; preds = %45, %75, %82, %3
  call void @_ZNSo6sentryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret ptr %0

93:                                               ; preds = %80, %76
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNSo6sentryC1ERSo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #14

declare { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #15

; Function Attrs: mustprogress nounwind sspstrong uwtable
declare void @_ZNSo6sentryD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: cold noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress sspstrong uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #14

; Function Attrs: mustprogress sspstrong uwtable
declare void @_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(none) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { cold noreturn }

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
!10 = distinct !{!10, !11, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!11 = distinct !{!11, !"_ZN12__apo_stdlib11portable_tmElb"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"branch_weights", i32 1, i32 1023}
!15 = !{!16, !21, i64 48}
!16 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !17, i64 0, !13, i64 8, !20, i64 16, !20, i64 48}
!17 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!18 = !{!"any p2 pointer", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !21, i64 0, !21, i64 8, !21, i64 16, !17, i64 24}
!21 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0}
!22 = !{!16, !21, i64 64}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!25 = !{!"p1 omnipotent char", !19, i64 0}
!26 = !{!27, !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !13, i64 8, !7, i64 16}
!28 = !{!27, !13, i64 8}
!29 = !{!7, !7, i64 0}
!30 = !{!20, !21, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!33 = distinct !{!33, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!34 = !{!20, !21, i64 8}
!35 = !{!20, !17, i64 24}
!36 = !{!21, !21, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!39 = distinct !{!39, !"_ZN12__apo_stdlib11portable_tmElb"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN12__apo_stdlib13format_tm_isoB5cxx11ERK2tmb: argument 0"}
!42 = distinct !{!42, !"_ZN12__apo_stdlib13format_tm_isoB5cxx11ERK2tmb"}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !8, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!47 = distinct !{!47, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!50 = distinct !{!50, !"_ZN12__apo_stdlib11portable_tmElb"}
!51 = !{!52, !6, i64 20}
!52 = !{!"_ZTS2tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !25, i64 48}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!55 = distinct !{!55, !"_ZN12__apo_stdlib11portable_tmElb"}
!56 = !{!52, !6, i64 16}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!59 = distinct !{!59, !"_ZN12__apo_stdlib11portable_tmElb"}
!60 = !{!52, !6, i64 12}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!63 = distinct !{!63, !"_ZN12__apo_stdlib11portable_tmElb"}
!64 = !{!52, !6, i64 8}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!67 = distinct !{!67, !"_ZN12__apo_stdlib11portable_tmElb"}
!68 = !{!52, !6, i64 4}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!71 = distinct !{!71, !"_ZN12__apo_stdlib11portable_tmElb"}
!72 = !{!52, !6, i64 0}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!75 = distinct !{!75, !"_ZN12__apo_stdlib11portable_tmElb"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!78 = distinct !{!78, !"_ZN12__apo_stdlib11portable_tmElb"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!81 = distinct !{!81, !"_ZN12__apo_stdlib11portable_tmElb"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!84 = distinct !{!84, !"_ZN12__apo_stdlib11portable_tmElb"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!87 = distinct !{!87, !"_ZN12__apo_stdlib11portable_tmElb"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN12__apo_stdlib11portable_tmElb: argument 0"}
!90 = distinct !{!90, !"_ZN12__apo_stdlib11portable_tmElb"}
!91 = !{!92, !13, i64 16}
!92 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !93, i64 24, !94, i64 28, !94, i64 32, !95, i64 40, !96, i64 48, !7, i64 64, !6, i64 192, !97, i64 200, !98, i64 208}
!93 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!94 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!95 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!96 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !13, i64 8}
!97 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!98 = !{!"_ZTSSt6locale", !99, i64 0}
!99 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!102 = distinct !{!102, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!103 = !{!19, !19, i64 0}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!106 = distinct !{!106, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!107 = !{!16, !17, i64 0}
!108 = !{!16, !17, i64 40}
!109 = !{!16, !17, i64 72}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!16, !13, i64 8}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = distinct !{!114, !111}
!115 = !{!20, !21, i64 16}
!116 = !{!16, !21, i64 16}
!117 = distinct !{!117, !111}
!118 = distinct !{!118, !111}
!119 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!120 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!121 = !{!122, !123, i64 0}
!122 = !{!"_ZTSNSo6sentryE", !123, i64 0, !124, i64 8}
!123 = !{!"bool", !7, i64 0}
!124 = !{!"p1 _ZTSSo", !19, i64 0}
!125 = !{i8 0, i8 2}
!126 = !{}
!127 = !{!98, !99, i64 0}
!128 = !{!129, !130, i64 8}
!129 = !{!"_ZTSNSt6locale5_ImplE", !6, i64 0, !130, i64 8, !13, i64 16, !130, i64 24, !131, i64 32}
!130 = !{!"p2 _ZTSNSt6locale5facetE", !18, i64 0}
!131 = !{!"p2 omnipotent char", !18, i64 0}
!132 = !{!133, !133, i64 0}
!133 = !{!"p1 _ZTSNSt6locale5facetE", !19, i64 0}
!134 = !{!135, !136, i64 232}
!135 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !92, i64 0, !124, i64 216, !7, i64 224, !123, i64 225, !136, i64 232, !137, i64 240, !138, i64 248, !139, i64 256}
!136 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!137 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!138 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!139 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!140 = !{!135, !123, i64 225}
!141 = !{!135, !7, i64 224}
!142 = !{!94, !94, i64 0}
!143 = !{!92, !94, i64 28}
!144 = !{!92, !94, i64 32}
